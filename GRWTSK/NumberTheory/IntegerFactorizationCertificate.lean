/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.CompleteIntegerFactorization

/-!
# Binary certificates for complete integer factorization

For input `n`, each word has `w = n.log2 + 1` bits, least significant first.
The header declares the number of prime/exponent pairs. Exactly that many pairs
must follow. The parser rejects a count exceeding `n.log2`, truncated words and
trailing bits. All range, exponent-budget and ordering checks precede primality
tests and reconstruction. No power is evaluated on an unchecked exponent.

The product is formed by one multiplication per expanded prime occurrence. The
parameterized checker exposes both arithmetic calls. Its Boolean result on every
bit string is unchanged by exact replacements. A polynomial-bit machine primality
supplier and a representation/cost simulation for tape multiplication remain
separate obligations. The executable instance uses Lean natural arithmetic.
-/
namespace GRWTSK.IntegerFactorization.WireCertificate

/-- Serialize the low `w` bits, least significant first. The round-trip theorem
states the range on which this representation is faithful. -/
def word : ℕ → ℕ → List Bool
  | 0, _ => []
  | w + 1, x => decide (x % 2 = 1) :: word w (x / 2)

def readWord : ℕ → List Bool → Option (ℕ × List Bool)
  | 0, bits => some (0, bits)
  | _ + 1, [] => none
  | w + 1, bit :: bits =>
    (readWord w bits).map fun (x, rest) => ((if bit then 1 else 0) + 2 * x, rest)

@[simp] theorem word_length (w x : ℕ) : (word w x).length = w := by
  induction w generalizing x <;> simp [word, *]

theorem readWord_word (w x : ℕ) (rest : List Bool) (hx : x < 2 ^ w) :
    readWord w (word w x ++ rest) = some (x, rest) := by
  induction w generalizing x with
  | zero =>
    have : x = 0 := by simpa using hx
    simp [word, readWord, this]
  | succ w ih =>
    have hw : x / 2 < 2 ^ w := by rw [pow_succ] at hx; omega
    by_cases h : x % 2 = 1 <;>
      simp [word, readWord, ih _ hw, h] <;> omega

def encodeRows (w : ℕ) : List (ℕ × ℕ) → List Bool
  | [] => []
  | (p,e) :: xs => word w p ++ word w e ++ encodeRows w xs

def readRows (w : ℕ) : ℕ → List Bool → Option (List (ℕ × ℕ) × List Bool)
  | 0, bits => some ([], bits)
  | k + 1, bits => do
    let (p, rest) ← readWord w bits
    let (e, rest) ← readWord w rest
    let (rows, rest) ← readRows w k rest
    return ((p,e) :: rows, rest)

theorem readRows_encodeRows (w : ℕ) (xs : List (ℕ × ℕ)) (rest : List Bool)
    (h : ∀ t ∈ xs, t.1 < 2 ^ w ∧ t.2 < 2 ^ w) :
    readRows w xs.length (encodeRows w xs ++ rest) = some (xs, rest) := by
  induction xs with
  | nil => rfl
  | cons t xs ih =>
    obtain ⟨p,e⟩ := t
    have hp := h (p,e) (by simp)
    have ht : ∀ t ∈ xs, t.1 < 2 ^ w ∧ t.2 < 2 ^ w :=
      fun t hm => h t (List.mem_cons_of_mem _ hm)
    simp [encodeRows, readRows, List.append_assoc, readWord_word _ _ _ hp.1,
      readWord_word _ _ _ hp.2, ih ht]

def fits (n : ℕ) (xs : List (ℕ × ℕ)) : Prop :=
  xs.length ≤ n.log2 ∧ ∀ t ∈ xs, t.1 ≤ n ∧ t.2 ≤ n.log2

instance (n : ℕ) (xs : List (ℕ × ℕ)) : Decidable (fits n xs) := by
  unfold fits
  infer_instance

theorem complete_fits {n xs} (h : CompleteFactorization n xs) : fits n xs :=
  ⟨h.length_le, fun _ ht => ⟨h.prime_le ht, h.exponent_le ht⟩⟩

/-- Refuse unrepresentable rows before word truncation. The empty bit string
cannot contain a header and is rejected by the checker. -/
def encode (n : ℕ) (xs : List (ℕ × ℕ)) : List Bool :=
  if fits n xs then word (n.log2 + 1) xs.length ++ encodeRows (n.log2 + 1) xs else []

def decode (n : ℕ) (bits : List Bool) : Option (List (ℕ × ℕ)) := do
  let w := n.log2 + 1
  let (k, body) ← readWord w bits
  if k ≤ n.log2 then
    let (xs, rest) ← readRows w k body
    if rest.isEmpty then some xs else none
  else none

theorem encodeRows_length (w : ℕ) (xs : List (ℕ × ℕ)) :
    (encodeRows w xs).length = (2 * w) * xs.length := by
  induction xs with
  | nil => simp [encodeRows]
  | cons t xs ih =>
    obtain ⟨p,e⟩ := t
    simp [encodeRows, ih, Nat.mul_succ, Nat.two_mul, Nat.add_comm, Nat.add_assoc]

theorem encode_length (n : ℕ) (xs : List (ℕ × ℕ)) (hf : fits n xs) :
    (encode n xs).length = (n.log2 + 1) * (1 + 2 * xs.length) := by
  simp only [encode, ite_eq_left hf, List.length_append, word_length, encodeRows_length]
  conv_rhs => rw [Nat.mul_add, Nat.mul_one]
  ac_rfl

theorem canonical_wire_length {n : ℕ} {xs : List (ℕ × ℕ)}
    (h : CompleteFactorization n xs) :
    (encode n xs).length ≤ (n.log2 + 1) * (1 + 2 * n.log2) := by
  rw [encode_length n xs (complete_fits h)]
  gcongr
  exact h.length_le

theorem decode_encode {n : ℕ} {xs : List (ℕ × ℕ)}
    (h : CompleteFactorization n xs) : decode n (encode n xs) = some xs := by
  have hn := Nat.lt_log2_self (n := n)
  have hl := (h.length_le.trans (Nat.log2_le_self n)).trans_lt hn
  have hw : ∀ t ∈ xs, t.1 < 2 ^ (n.log2 + 1) ∧ t.2 < 2 ^ (n.log2 + 1) :=
    fun t ht => ⟨(h.prime_le ht).trans_lt hn,
      ((h.exponent_le ht).trans (Nat.log2_le_self n)).trans_lt hn⟩
  have hr := readRows_encodeRows (n.log2 + 1) xs [] hw
  simp only [List.append_nil] at hr
  simp [decode, encode, complete_fits h, readWord_word _ _ _ hl, h.length_le, hr]

/-- The numerical guards are evaluated before any primality test or product. -/
def admissible (n : ℕ) (xs : List (ℕ × ℕ)) : Prop :=
  2 ≤ n ∧ xs.length ≤ n.log2 ∧ (xs.map Prod.snd).sum ≤ n.log2 ∧
  xs.Pairwise (fun a b => a.1 < b.1) ∧ ∀ t ∈ xs, t.1 ≤ n ∧ 0 < t.2

instance (n : ℕ) (xs : List (ℕ × ℕ)) : Decidable (admissible n xs) := by
  unfold admissible
  infer_instance

def productUsing (mul : ℕ → ℕ → ℕ) : List ℕ → ℕ
  | [] => 1
  | p :: ps => mul p (productUsing mul ps)

theorem productUsing_eq (mul : ℕ → ℕ → ℕ) (hm : ∀ x y, mul x y = x * y)
    (ps : List ℕ) : productUsing mul ps = ps.prod := by
  induction ps with
  | nil => rfl
  | cons p ps ih => simp [productUsing, hm, ih]

/-- A bound on the value at every product subtree, including computations
on malformed rows that pass the numerical guards and fail the product check. -/
theorem product_le_power {n : ℕ} (ps : List ℕ) (hp : ∀ p ∈ ps, p ≤ n) :
    ps.prod ≤ n ^ ps.length := by
  induction ps with
  | nil => simp
  | cons p ps ih =>
    simpa [pow_succ, Nat.mul_comm] using
      Nat.mul_le_mul (hp p (by simp)) (ih fun q hq => hp q (List.mem_cons_of_mem _ hq))

def checkRowsWith (prime : ℕ → Bool) (mul : ℕ → ℕ → ℕ) (n : ℕ)
    (xs : List (ℕ × ℕ)) : Bool :=
  if admissible n xs then
    if ∀ t ∈ xs, prime t.1 = true then decide (productUsing mul (expand xs) = n)
    else false
  else false

theorem checkRowsWith_iff (prime : ℕ → Bool) (mul : ℕ → ℕ → ℕ)
    (hp : ∀ p, prime p = true ↔ Nat.Prime p) (hm : ∀ x y, mul x y = x * y)
    (n : ℕ) (xs : List (ℕ × ℕ)) :
    checkRowsWith prime mul n xs = true ↔ CompleteFactorization n xs := by
  constructor
  · intro hc
    by_cases ha : admissible n xs
    · by_cases hps : ∀ t ∈ xs, prime t.1 = true
      · have hprod : (expand xs).prod = n := by
          simpa only [checkRowsWith, ite_eq_left ha, ite_eq_left hps, decide_eq_true_eq,
            productUsing_eq mul hm] using hc
        obtain ⟨hn, _, _, hord, hb⟩ := ha
        exact ⟨hn, hord, fun t ht => ⟨(hp _).mp (hps t ht), (hb t ht).2⟩, hprod⟩
      · simp only [checkRowsWith, ite_eq_left ha, ite_eq_right hps, Bool.false_eq_true] at hc
    · simp [checkRowsWith, ha] at hc
  · intro h
    have ha : admissible n xs := ⟨h.domain, h.length_le, h.sum_exponents_le, h.ordered,
      fun t ht => ⟨h.prime_le ht, (h.valid t ht).2⟩⟩
    have hps : ∀ t ∈ xs, prime t.1 = true := fun t ht => (hp _).mpr (h.valid t ht).1
    simp only [checkRowsWith, ite_eq_left ha, ite_eq_left hps, productUsing_eq mul hm, h.product,
      decide_true]

def checkWith (prime : ℕ → Bool) (mul : ℕ → ℕ → ℕ) (n : ℕ) (bits : List Bool) : Bool :=
  match decode n bits with
  | none => false
  | some xs => checkRowsWith prime mul n xs

abbrev check := checkWith (fun p => decide (Nat.Prime p)) Nat.mul

theorem checkWith_iff (prime : ℕ → Bool) (mul : ℕ → ℕ → ℕ)
    (hp : ∀ p, prime p = true ↔ Nat.Prime p) (hm : ∀ x y, mul x y = x * y)
    (n : ℕ) (bits : List Bool) :
    checkWith prime mul n bits = true ↔
      ∃ xs, decode n bits = some xs ∧ CompleteFactorization n xs := by
  cases hd : decode n bits with
  | none => simp [checkWith, hd]
  | some xs => simp [checkWith, hd, checkRowsWith_iff prime mul hp hm]

theorem check_encode {n : ℕ} {xs : List (ℕ × ℕ)}
    (h : CompleteFactorization n xs) : check n (encode n xs) = true :=
  (checkWith_iff _ _ (fun _ => by simp) (fun _ _ => rfl) _ _).mpr ⟨xs, decode_encode h, h⟩

/-- Extensional caller equivalence includes malformed bit strings. -/
theorem checkWith_replace (prime : ℕ → Bool) (mul : ℕ → ℕ → ℕ)
    (hp : ∀ p, prime p = true ↔ Nat.Prime p) (hm : ∀ x y, mul x y = x * y)
    (n : ℕ) (bits : List Bool) : checkWith prime mul n bits = check n bits := by
  apply Bool.eq_iff_iff.mpr
  exact (checkWith_iff prime mul hp hm _ _).trans
    (checkWith_iff _ _ (fun _ => by simp) (fun _ _ => rfl) _ _).symm


/-- All three operand/output values at every taken multiplication fit this width.
The proof uses the guards alone and includes incorrect proposed products. -/
theorem suffix_fits {n : ℕ} {xs : List (ℕ × ℕ)} (ha : admissible n xs)
    {initial tail : List ℕ} (he : expand xs = initial ++ tail) :
    tail.prod < 2 ^ ((n.log2 + 1) * (n.log2 + 1) + 1) := by
  obtain ⟨_, _, hsum, _, hb⟩ := ha
  have hlen : tail.length ≤ n.log2 := by
    rw [← length_expand, he, List.length_append] at hsum
    omega
  have hbound : ∀ p ∈ tail, p ≤ n := by
    intro p hp
    have hm : p ∈ expand xs := he ▸ List.mem_append_right initial hp
    obtain ⟨t, ht, hr⟩ := List.mem_flatMap.mp hm
    exact (List.eq_of_mem_replicate hr) ▸ (hb t ht).1
  have hn := Nat.lt_log2_self (n := n)
  calc
    tail.prod ≤ n ^ tail.length := product_le_power tail hbound
    _ ≤ (2 ^ (n.log2 + 1)) ^ tail.length := Nat.pow_le_pow_left hn.le _
    _ = 2 ^ ((n.log2 + 1) * tail.length) := (pow_mul _ _ _).symm
    _ < 2 ^ ((n.log2 + 1) * (n.log2 + 1) + 1) := by
      apply Nat.pow_lt_pow_right (by decide : 1 < 2)
      exact Nat.lt_succ_of_le (Nat.mul_le_mul_left (n.log2 + 1) (Nat.le_succ_of_le hlen))

theorem reconstruction_calls_le {n : ℕ} {xs : List (ℕ × ℕ)} (ha : admissible n xs) :
    (expand xs).length ≤ n.log2 := by
  rw [length_expand]
  exact ha.2.2.1

/-- Entry-point regression checks for accepted and malformed wire images. -/
example : check 2 (encode 2 [(2,1)]) = true := by decide
example : check 13 (encode 13 [(13,1)]) = true := by decide
example : check 4096 (encode 4096 [(2,12)]) = true := by decide
example : check 72 (encode 72 [(2,3),(3,2)]) = true := by decide
example : check 202 (encode 202 [(2,1),(101,1)]) = true := by decide
example : check 8 (encode 8 [(2,0)]) = false := by decide
example : check 9 (encode 9 [(9,1)]) = false := by decide
example : check 6 (encode 6 [(3,1),(2,1)]) = false := by decide
example : check 4 (encode 4 [(2,1),(2,1)]) = false := by decide
example : check 12 (encode 12 [(2,1),(3,1)]) = false := by decide
example : check 2 [] = false := by decide
example : check 2 (encode 2 [(6,1)]) = false := by decide
example : check 2 (encode 2 [(2,5)]) = false := by decide
example : check 13 (word 4 4) = false := by decide
example : check 2 (encode 2 [(2,1)] ++ [false]) = false := by decide

/-- Hostile raw words bypass the encoder's numerical checks. -/
example :
    let raw := word 2 1 ++ encodeRows 2 [(3,1)]
    decode 2 raw = some [(3,1)] ∧ check 2 raw = false := by decide

example :
    let raw := word 2 1 ++ encodeRows 2 [(2,2)]
    decode 2 raw = some [(2,2)] ∧ check 2 raw = false := by decide

example :
    let raw := word 2 2 ++ encodeRows 2 [(2,1),(2,1)]
    decode 2 raw = none ∧ check 2 raw = false := by decide

example :
    let raw := word 2 1 ++ word 2 2 ++ [true]
    decode 2 raw = none ∧ check 2 raw = false := by decide

end GRWTSK.IntegerFactorization.WireCertificate
