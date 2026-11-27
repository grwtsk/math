import GRWTSK.NumberTheory.CompleteIntegerFactorization
import Mathlib.Data.Nat.Factors
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Size
import Mathlib.Computability.TuringMachine.Computable
import Mathlib.Tactic.Linarith

/-!
# Proper-divisor search and complete integer factorization

Local reductions by grwtsk contributors. The arithmetic objects are Mathlib's
`Nat.minFac`, `Nat.primeFactorsList` and little-endian `Nat.bits`. Each
internal node performs one primality test, one proper split and one exact
division. A leaf performs one primality test. The dyadic search records
every query, including a query whose answer is false. Its serialized cost
counts symbols on a three-symbol alphabet. Implementing these operations and
charging all other work on a fixed bit machine are separate obligations.

The full binary tree argument applies even to maximally uneven splits. It
charges repeated prime leaves separately: e.g. 4096 has twelve leaves.
-/

namespace GRWTSK.IntegerFactorization.Reductions

/-- The exact divisor-threshold decision predicate on decoded inputs. -/
def BoundedDivisor (n k : ℕ) : Prop :=
  ∃ d, 1 < d ∧ d < n ∧ d ∣ n ∧ d ≤ k

theorem boundedDivisor_mono {n j k : ℕ} (hj : BoundedDivisor n j) (hjk : j ≤ k) :
    BoundedDivisor n k := by
  obtain ⟨d, hd, hn, hv, hj⟩ := hj
  exact ⟨d, hd, hn, hv, hj.trans hjk⟩

theorem boundedDivisor_iff_minFac {n k : ℕ} (hn : 2 ≤ n) (hc : ¬ n.Prime) :
    BoundedDivisor n k ↔ n.minFac ≤ k := by
  constructor
  · rintro ⟨d, hd, _, hv, hk⟩
    exact (Nat.minFac_le_of_dvd hd hv).trans hk
  · intro hk
    exact ⟨_, (Nat.minFac_prime (by omega : n ≠ 1)).two_le,
      (Nat.not_prime_iff_minFac_lt hn).mp hc, Nat.minFac_dvd n, hk⟩

/-- Full output decides the threshold by inspecting its prime leaves. -/
theorem boundedDivisor_iff_mem_factors {n k : ℕ} (hn : 2 ≤ n) :
    BoundedDivisor n k ↔ ∃ p ∈ n.primeFactorsList, p < n ∧ p ≤ k := by
  constructor
  · rintro ⟨d, hd, hdn, hv, hk⟩
    have hle := Nat.minFac_le_of_dvd hd hv
    exact ⟨n.minFac, (Nat.mem_primeFactorsList (by omega : n ≠ 0)).mpr
      ⟨Nat.minFac_prime (by omega), Nat.minFac_dvd n⟩, lt_of_le_of_lt hle hdn, hle.trans hk⟩
  · rintro ⟨p, hp, hpn, hpk⟩
    exact ⟨p, (Nat.prime_of_mem_primeFactorsList hp).two_le, hpn,
      Nat.dvd_of_mem_primeFactorsList hp, hpk⟩

/-- The supplier may implement the three primitives on any backend whose
    arithmetic contracts agree. Its complexity is a separate hypothesis. -/
structure SplitPrimitives where
  isPrime : ℕ → Bool
  isPrime_spec : ∀ m, isPrime m = true ↔ m.Prime
  divisor : ℕ → ℕ
  proper : ∀ m, 2 ≤ m → ¬ m.Prime → 1 < divisor m ∧ divisor m < m ∧ divisor m ∣ m
  quotient : ℕ → ℕ → ℕ
  quotient_spec : ∀ m d, 1 < d → d ∣ m → quotient m d = m / d

/-- `minFac` is a valid arithmetic splitter independently of its implementation cost. -/
def minFacPrimitives : SplitPrimitives where
  isPrime m := decide m.Prime
  isPrime_spec _ := by simp
  divisor := Nat.minFac
  proper m hm hc := ⟨(Nat.minFac_prime (by omega : m ≠ 1)).two_le,
    (Nat.not_prime_iff_minFac_lt hm).mp hc, Nat.minFac_dvd m⟩
  quotient := Nat.div
  quotient_spec _ _ _ _ := rfl

inductive PrimeSplitTree where
  | leaf (p : ℕ) (prime : p.Prime)
  | split (left right : PrimeSplitTree)

namespace PrimeSplitTree

def value : PrimeSplitTree → ℕ
  | .leaf p _ => p
  | .split l r => l.value * r.value

def leaves : PrimeSplitTree → List ℕ
  | .leaf p _ => [p]
  | .split l r => l.leaves ++ r.leaves

def splits : PrimeSplitTree → ℕ
  | .leaf _ _ => 0
  | .split l r => l.splits + r.splits + 1

theorem two_le_value (t : PrimeSplitTree) : 2 ≤ t.value := by
  induction t with
  | leaf p hp => exact hp.two_le
  | split l r hl hr =>
    change 2 ≤ l.value * r.value
    exact le_trans (by decide : 2 ≤ 2 * 2) (Nat.mul_le_mul hl hr)

theorem leaves_prod (t : PrimeSplitTree) : t.leaves.prod = t.value := by
  induction t with
  | leaf => simp [leaves, value]
  | split l r hl hr => simp [leaves, value, hl, hr]

theorem leaves_prime (t : PrimeSplitTree) : ∀ p ∈ t.leaves, Nat.Prime p := by
  induction t with
  | leaf p hp => simpa [leaves] using hp
  | split l r hl hr =>
    intro p hp
    rcases List.mem_append.mp hp with h | h
    · exact hl p h
    · exact hr p h

theorem leaves_perm (t : PrimeSplitTree) : t.leaves.Perm t.value.primeFactorsList :=
  Nat.primeFactorsList_unique t.leaves_prod t.leaves_prime

/-- Sorting and multiplicity counting turn the actual leaves into the canonical prime-power list. -/
def output (t : PrimeSplitTree) : List (ℕ × ℕ) := compress (t.leaves.mergeSort (· ≤ ·))

theorem output_eq_canonical (t : PrimeSplitTree) : t.output = canonical t.value := by
  have hs : t.leaves.mergeSort (· ≤ ·) = t.value.primeFactorsList :=
    List.Perm.eq_of_sortedLE (List.sortedLE_mergeSort (l := t.leaves)) (Nat.primeFactorsList_sorted _)
      ((List.mergeSort_perm _ _).trans t.leaves_perm)
  simp only [output, hs, compress_primeFactorsList]

theorem output_complete (t : PrimeSplitTree) : CompleteFactorization t.value t.output :=
  (complete_iff_eq_canonical t.two_le_value).mpr t.output_eq_canonical

theorem splits_add_one (t : PrimeSplitTree) : t.splits + 1 = t.leaves.length := by
  induction t with
  | leaf => rfl
  | split l r hl hr =>
    simp only [splits, leaves, List.length_append]
    omega

theorem two_pow_leaves_le_value (t : PrimeSplitTree) : 2 ^ t.leaves.length ≤ t.value := by
  induction t with
  | leaf p hp => simpa [leaves, value] using hp.two_le
  | split l r hl hr =>
    simpa only [leaves, value, List.length_append, pow_add] using Nat.mul_le_mul hl hr

theorem leaves_le_log (t : PrimeSplitTree) : t.leaves.length ≤ Nat.log 2 t.value :=
  Nat.le_log_of_pow_le (by decide) t.two_pow_leaves_le_value

/-- Width monotonicity applies at every recursive edge, including the larger
    cofactor of an uneven split. -/
theorem children_le (l r : PrimeSplitTree) :
    l.value ≤ (split l r).value ∧ r.value ≤ (split l r).value := by
  change l.value ≤ l.value * r.value ∧ r.value ≤ l.value * r.value
  have hl := l.two_le_value
  have hr := r.two_le_value
  constructor
  · simpa using Nat.mul_le_mul_left l.value (show 1 ≤ r.value by omega)
  · simpa using Nat.mul_le_mul_right r.value (show 1 ≤ l.value by omega)

/-- Every internal split uses the two arithmetic results of the same supplier. -/
def follows (ops : SplitPrimitives) : PrimeSplitTree → Prop
  | .leaf _ _ => True
  | .split l r =>
    ops.divisor (l.value * r.value) = l.value ∧
    ops.quotient (l.value * r.value) l.value = r.value ∧ follows ops l ∧ follows ops r

/-- Assemble both children of a certified split by well-founded recursion. -/
def build (ops : SplitPrimitives) (m : ℕ) (hm : 2 ≤ m) : {t : PrimeSplitTree // t.value = m ∧ t.follows ops} :=
  if hp : ops.isPrime m = true then
    ⟨.leaf m ((ops.isPrime_spec m).mp hp), rfl, trivial⟩
  else by
    let d := ops.divisor m
    let q := ops.quotient m d
    obtain ⟨hd, hdlt, hdvd⟩ := ops.proper m hm (fun h => hp ((ops.isPrime_spec m).mpr h))
    have hq : q = m / d := ops.quotient_spec m d hd hdvd
    have hprod : d * q = m := by rw [hq, Nat.mul_div_cancel' hdvd]
    have hq2 : 2 ≤ q := by
      by_contra! h
      have hsmall := Nat.mul_le_mul_left d (show q ≤ 1 by omega)
      simp only [Nat.mul_one] at hsmall
      change d < m at hdlt
      omega
    have hql : q < m := hq.trans_lt (Nat.div_lt_self (by omega) hd)
    let left := build ops d hd
    let right := build ops q hq2
    refine ⟨.split left.val right.val, ?_, ?_⟩
    · simpa only [value, left.property.1, right.property.1] using hprod
    · simp only [follows, left.property.1, right.property.1, hprod]
      exact ⟨rfl, rfl, left.property.2, right.property.2⟩
termination_by m
decreasing_by all_goals assumption

/-- Source-specific resource functions charge the actual integer widths. -/
def primitiveCost (S A D : ℕ → ℕ) : PrimeSplitTree → ℕ
  | .leaf p _ => A p.size
  | .split l r =>
    let b := (l.value * r.value).size
    A b + S b + D b + primitiveCost S A D l + primitiveCost S A D r

theorem primitiveCost_le (t : PrimeSplitTree) (S A D : ℕ → ℕ)
    (hS : Monotone S) (hA : Monotone A) (hD : Monotone D) (b : ℕ) (hb : t.value.size ≤ b) :
    t.primitiveCost S A D ≤ (2 * t.splits + 1) * A b + t.splits * (S b + D b) := by
  induction t with
  | leaf p hp => simpa [primitiveCost, splits, value] using hA hb
  | split l r hl hr =>
    have ⟨hlr, hrr⟩ := children_le l r
    have hleft := hl ((Nat.size_le_size hlr).trans hb)
    have hright := hr ((Nat.size_le_size hrr).trans hb)
    change (l.value * r.value).size ≤ b at hb
    have hnode := Nat.add_le_add (Nat.add_le_add (hA hb) (hS hb)) (hD hb)
    simp only [primitiveCost, splits]
    nlinarith only [hleft, hright, hnode]

/-- Conditional caller bound. `rest` covers stack operations, sorting,
    encoding, output and any representation movement on the same execution. -/
theorem executionCost_le (t : PrimeSplitTree) (S A D : ℕ → ℕ)
    (hS : Monotone S) (hA : Monotone A) (hD : Monotone D)
    (b rest time : ℕ) (hb : t.value.size ≤ b)
    (ht : time ≤ t.primitiveCost S A D + rest) :
    time ≤ 2 * b * (S b + A b + D b) + rest := by
  have hs := t.splits_add_one
  have hwidth := Nat.lt_size.mpr t.two_pow_leaves_le_value
  have h1 : 2 * t.splits + 1 ≤ 2 * b := by omega
  have h2 : t.splits ≤ 2 * b := by omega
  have hcost := t.primitiveCost_le S A D hS hA hD b hb
  have htotal := Nat.add_le_add (Nat.mul_le_mul_right (A b) h1)
    (Nat.mul_le_mul_right (S b + D b) h2)
  nlinarith only [ht, hcost, htotal]

end PrimeSplitTree

/-- Return the first threshold and the list of all thresholds queried in order.
    The initial target lies in the half-open dyadic interval (lo, lo + 2^depth]. -/
def bisect (ask : ℕ → Bool) : ℕ → ℕ → ℕ × List ℕ
  | 0, lo => (lo + 1, [])
  | d + 1, lo =>
    let mid := lo + 2 ^ d
    let rest := bisect ask d (if ask mid then lo else mid)
    (rest.1, mid :: rest.2)

theorem bisect_length (ask : ℕ → Bool) (d lo : ℕ) : (bisect ask d lo).2.length = d := by
  induction d generalizing lo with
  | zero => rfl
  | succ d ih => simp [bisect, ih]

theorem bisect_correct (ask : ℕ → Bool) (target : ℕ)
    (hask : ∀ k, ask k = true ↔ target ≤ k) (d lo : ℕ)
    (hl : lo < target) (hu : target ≤ lo + 2 ^ d) :
    (bisect ask d lo).1 = target := by
  induction d generalizing lo with
  | zero => simp only [pow_zero] at hu; simp only [bisect]; omega
  | succ d ih =>
    rw [pow_succ] at hu
    by_cases h : target ≤ lo + 2 ^ d
    · simpa [bisect, (hask _).mpr h] using ih lo hl h
    · have hf : ask (lo + 2 ^ d) = false := by simpa using mt (hask _).mp h
      simpa [bisect, hf] using ih (lo + 2 ^ d) (by omega) (by omega)

theorem bisect_query_bounds (ask : ℕ → Bool) (d lo k : ℕ) (hk : k ∈ (bisect ask d lo).2) :
    lo < k ∧ k < lo + 2 ^ d := by
  induction d generalizing lo with
  | zero => simp [bisect] at hk
  | succ d ih =>
    have hp : 0 < 2 ^ d := Nat.two_pow_pos d
    rw [pow_succ]
    cases ha : ask (lo + 2 ^ d) <;> simp [bisect, ha] at hk
    · rcases hk with e | h
      · omega
      · have := ih (lo + 2 ^ d) h; omega
    · rcases hk with e | h
      · omega
      · have := ih lo h; omega

/-- The binary search algorithm recovers the least prime divisor from
    the exact decision oracle on every composite. -/
theorem bisect_divisor (n : ℕ) (hn : 2 ≤ n) (hc : ¬ n.Prime) (ask : ℕ → Bool)
    (ha : ∀ k, ask k = true ↔ BoundedDivisor n k) :
    (bisect ask n.size 0).1 = n.minFac := by
  apply bisect_correct _ _ (fun k => (ha k).trans (boundedDivisor_iff_minFac hn hc))
  · exact Nat.minFac_pos _
  · exact le_of_lt (lt_of_le_of_lt (Nat.minFac_le (by omega)) (by simpa using Nat.lt_size_self n))

/-- One separator outside the binary alphabet, little-endian numerals, zero
    represented by an empty bit sequence. Parent and threshold fields are separate. -/
def encodeQuery (n k : ℕ) : List (Option Bool) := n.bits.map some ++ none :: k.bits.map some

theorem encodeQuery_length (n k : ℕ) : (encodeQuery n k).length = n.size + k.size + 1 := by
  simp [encodeQuery, Nat.size_eq_bits_len, Nat.add_assoc]

/-- Words outside the image of canonical encodings and both low inputs 0,1
    are rejected. -/
def BinaryDivisorLanguage (word : List (Option Bool)) : Prop :=
  ∃ n k, word = encodeQuery n k ∧ BoundedDivisor n k

private theorem bits_value (n : ℕ) : n.bits.foldr Nat.bit 0 = n := by
  induction n using Nat.binaryRec' with
  | zero => simp
  | bit b n h ih => simp [Nat.bits_append_bit _ _ h, ih]

/-- The parser reads the first field until the unique separator and then
    processes only binary symbols. Canonical re-encoding rejects redundant high zeros. -/
private def splitFields : List (Option Bool) → Option (List Bool × List Bool)
  | [] => none
  | none :: tail => (tail.mapM id).map (fun right => ([], right))
  | some b :: tail => (splitFields tail).map (fun (left, right) => (b :: left, right))

private theorem splitFields_encode (a b : List Bool) :
    splitFields (a.map some ++ none :: b.map some) = some (a, b) := by
  have hb : List.mapM (m := Option) id (b.map some) = some b := by
    induction b with
    | nil => rfl
    | cons x xs ih => simp [List.mapM_cons, ih]
  induction a with
  | nil => simp [splitFields, hb]
  | cons x xs ih => simp [splitFields, ih]

def decodeQuery (word : List (Option Bool)) : Option (ℕ × ℕ) := do
  let (a, b) ← splitFields word
  let n := a.foldr Nat.bit 0
  let k := b.foldr Nat.bit 0
  if encodeQuery n k = word then some (n, k) else none

theorem decode_encode (n k : ℕ) : decodeQuery (encodeQuery n k) = some (n, k) := by
  unfold decodeQuery encodeQuery
  simp [splitFields_encode, bits_value]

theorem language_encode_iff (n k : ℕ) : BinaryDivisorLanguage (encodeQuery n k) ↔ BoundedDivisor n k := by
  constructor
  · rintro ⟨m, j, he, h⟩
    have he' := congrArg decodeQuery he
    simp only [decode_encode, Option.some.injEq, Prod.mk.injEq] at he'
    obtain ⟨rfl, rfl⟩ := he'
    exact h
  · exact fun h => ⟨_, _, rfl, h⟩

theorem prime_iff_no_proper_divisor {n : ℕ} (hn : 2 ≤ n) :
    n.Prime ↔ ¬ BoundedDivisor n (n - 1) := by
  constructor
  · rintro hp ⟨d, hd, hdn, hv, _⟩
    have hm := Nat.minFac_le_of_dvd hd hv
    rw [hp.minFac_eq] at hm
    omega
  · intro h
    by_contra hc
    apply h
    apply (boundedDivisor_iff_minFac hn hc).mpr
    have := (Nat.not_prime_iff_minFac_lt hn).mp hc
    omega

/-- The wire-level oracle, followed by dyadic search, supplies precisely the
    splitter interface consumed by `PrimeSplitTree.build`. -/
def decisionPrimitives (oracle : List (Option Bool) → Bool)
    (horacle : ∀ w, oracle w = true ↔ BinaryDivisorLanguage w) : SplitPrimitives where
  isPrime n := if 2 ≤ n then !(oracle (encodeQuery n (n - 1))) else false
  isPrime_spec n := by
    by_cases hn : 2 ≤ n
    · have hh := (horacle (encodeQuery n (n - 1))).trans (language_encode_iff n (n - 1))
      simp only [hn, ↓reduceIte]
      rw [prime_iff_no_proper_divisor hn, ← hh]
      cases oracle (encodeQuery n (n - 1)) <;> decide
    · simp only [hn, ↓reduceIte, Bool.false_eq_true, false_iff]
      exact fun h => hn h.two_le
  quotient := Nat.div
  quotient_spec _ _ _ _ := rfl
  divisor n := (bisect (fun k => oracle (encodeQuery n k)) n.size 0).1
  proper n hn hc := by
    have h := bisect_divisor n hn hc (fun k => oracle (encodeQuery n k))
      (fun k => (horacle _).trans (language_encode_iff n k))
    rw [h]
    exact minFacPrimitives.proper n hn hc

/-- Executable decision in the other direction, given complete output. -/
def decideFromOutput (n k : ℕ) (xs : List (ℕ × ℕ)) : Bool :=
  (expand xs).any (fun p => decide (p < n ∧ p ≤ k))

theorem decideFromOutput_spec {n k : ℕ} {xs : List (ℕ × ℕ)}
    (h : CompleteFactorization n xs) :
    decideFromOutput n k xs = true ↔ BoundedDivisor n k := by
  rw [boundedDivisor_iff_mem_factors h.domain]
  simp [decideFromOutput, h.expand_eq]

theorem query_length_le (n : ℕ) (ask : ℕ → Bool) {k : ℕ} (h : k ∈ (bisect ask n.size 0).2) :
    (encodeQuery n k).length ≤ 2 * n.size + 1 := by
  have hk := (bisect_query_bounds ask n.size 0 k h).2
  simp only [Nat.zero_add] at hk
  rw [encodeQuery_length]
  have := Nat.size_le.mpr hk
  omega

/-- Total serialized symbols supplied to the oracle over one splitter call. -/
theorem serialized_queries_le (n : ℕ) (ask : ℕ → Bool) :
    (((bisect ask n.size 0).2.map (fun k => (encodeQuery n k).length)).sum) ≤
      n.size * (2 * n.size + 1) := by
  have bound (ks : List ℕ) (hs : ∀ k ∈ ks, (encodeQuery n k).length ≤ 2 * n.size + 1) :
      (ks.map (fun k => (encodeQuery n k).length)).sum ≤ ks.length * (2 * n.size + 1) := by
    induction ks with
    | nil => simp
    | cons k ks ih =>
      have hh := hs k (by simp)
      have ht := ih (fun j hj => hs j (by simp [hj]))
      simp only [List.map_cons, List.sum_cons, List.length_cons]
      rw [Nat.add_mul, Nat.one_mul]
      omega
  simpa only [bisect_length] using bound _ (fun _ hk => query_length_le n ask hk)


/-- One initial existence query per tested node, plus one query per input
    bit at each composite splitter. `bisect_length` identifies that trace cost. -/
theorem tree_query_count_le (t : PrimeSplitTree) :
    t.primitiveCost id (fun _ => 1) (fun _ => 0) ≤
      2 * t.splits + 1 + t.splits * t.value.size := by
  simpa using t.primitiveCost_le id (fun _ => 1) (fun _ => 0)
    monotone_id monotone_const monotone_const t.value.size le_rfl

/-- The extra existence query has its own serialized cost at every node. -/
theorem existence_query_length_le (n : ℕ) : (encodeQuery n (n-1)).length ≤ 2*n.size+1 := by
  rw [encodeQuery_length]
  have := Nat.size_le_size (Nat.sub_le n 1)
  omega

/-! ## Composition on a single deterministic machine

A configuration records the *entire* machine, including work stacks. The
left and right continuation values describe the suspended caller. Each premise
below is a bounded execution of the very same transition function. These
premises can be established independently for an implemented caller. They do
not follow from the existence of arbitrary stand-alone machines for S, A, D.
-/

open Turing StateTransition

/-- A fixed compiled caller's local entry, continuation, and return contracts.
    H charges frame construction/movement. Leaf output is a singleton and
    child returns must concatenate their repeated-prime outputs in order. -/
structure SplitMachine (tm : FinTM2) (Frame : Type) (ops : SplitPrimitives)
    (S A D H : ℕ → ℕ) where
  enter : ℕ → Frame → tm.Cfg
  leave : List ℕ → Frame → tm.Cfg
  leftFrame : ℕ → ℕ → Frame → Frame
  rightFrame : ℕ → ℕ → List ℕ → Frame → Frame
  leaf : ∀ p : ℕ, p.Prime → ∀ f,
    EvalsToInTime tm.step (enter p f) (some (leave [p] f)) (A p.size + H p.size)
  push : ∀ l r, 2 ≤ l → 2 ≤ r → ops.divisor (l*r) = l → ops.quotient (l*r) l = r → ∀ f,
    EvalsToInTime tm.step (enter (l*r) f) (some (enter l (leftFrame l r f)))
      (A (l*r).size + S (l*r).size + D (l*r).size + H (l*r).size)
  resume : ∀ (l r : PrimeSplitTree) f, EvalsToInTime tm.step
    (leave l.leaves (leftFrame l.value r.value f))
    (some (enter r.value (rightFrame l.value r.value l.leaves f))) (H (l.value*r.value).size)
  pop : ∀ (l r : PrimeSplitTree) f, EvalsToInTime tm.step
    (leave r.leaves (rightFrame l.value r.value l.leaves f))
    (some (leave (l.leaves ++ r.leaves) f)) (H (l.value*r.value).size)

private def chain {σ : Type} {step : σ → Option σ} {a b c : σ} {i j : ℕ}
    (h : EvalsToInTime step a (some b) i) (g : EvalsToInTime step b (some c) j) :
    EvalsToInTime step a (some c) (i+j) := by
  simpa only [Nat.add_comm j i] using EvalsToInTime.trans step i j a b (some c) h g

private def widen {σ : Type} {step : σ → Option σ} {a b : σ} {i j : ℕ}
    (h : EvalsToInTime step a (some b) i) (hij : i ≤ j) :
    EvalsToInTime step a (some b) j := ⟨h.toEvalsTo, h.steps_le_m.trans hij⟩

/-- Compose the actual transitions at matching full configurations. -/
noncomputable def SplitMachine.runTree {tm Frame ops S A D H} (M : SplitMachine tm Frame ops S A D H)
    (t : PrimeSplitTree) (ht : t.follows ops) (f : Frame) :
    EvalsToInTime tm.step (M.enter t.value f) (some (M.leave t.leaves f))
      (t.primitiveCost S (fun w => A w + 3 * H w) D) := by
  induction t generalizing f with
  | leaf p hp =>
    apply widen (M.leaf p hp f)
    simp only [PrimeSplitTree.primitiveCost]
    omega
  | split l r ihl ihr =>
    obtain ⟨hd, hq, hl, hr⟩ := ht
    let lrun := ihl hl (M.leftFrame l.value r.value f)
    let rrun := ihr hr (M.rightFrame l.value r.value l.leaves f)
    let start := M.push _ _ l.two_le_value r.two_le_value hd hq f
    let next := M.resume l r f
    let done_ := M.pop l r f
    apply widen (chain (chain (chain (chain start lrun) next) rrun) done_)
    simp only [PrimeSplitTree.primitiveCost]
    omega

/-- Conditional end-to-end machine bound. Staging, canonicalization, sorting,
    serializing and clearing work tapes enter through `setup` and `finish`
    at the actual initial/final configurations. -/
noncomputable def SplitMachine.completeOutput {tm Frame ops S A D H} (M : SplitMachine tm Frame ops S A D H)
    (hS : Monotone S) (hA : Monotone A) (hD : Monotone D) (hH : Monotone H)
    (n : ℕ) (hn : 2 ≤ n) (frame : Frame)
    (wireIn : List (tm.Γ tm.k₀)) (encode : List (ℕ × ℕ) → List (tm.Γ tm.k₁))
    (setup finish : ℕ)
    (start : EvalsToInTime tm.step (initList tm wireIn) (some (M.enter n frame)) setup)
    (done_ : ∀ t : PrimeSplitTree, t.value = n →
      EvalsToInTime tm.step (M.leave t.leaves frame) (some (haltList tm (encode t.output))) finish) :
    TM2OutputsInTime tm wireIn (some (encode (canonical n)))
      (setup + 2 * n.size * (S n.size + (A n.size + 3 * H n.size) + D n.size) + finish) := by
  obtain ⟨t, he, ht⟩ := PrimeSplitTree.build ops n hn
  let run := M.runTree t ht frame
  have hmon : Monotone (fun w => A w + 3 * H w) := fun i j hij =>
    Nat.add_le_add (hA hij) (Nat.mul_le_mul_left 3 (hH hij))
  have cost := t.executionCost_le S (fun w => A w + 3 * H w) D hS hmon hD n.size 0
    (t.primitiveCost S (fun w => A w + 3 * H w) D) (by simp [he]) (by omega)
  simp only [Nat.add_zero] at cost
  have hentry : M.enter t.value frame = M.enter n frame := by rw [he]
  have hout : t.output = canonical n := by rw [t.output_eq_canonical, he]
  have init' : EvalsToInTime tm.step (initList tm wireIn) (some (M.enter t.value frame)) setup :=
    hentry.symm ▸ start
  have fin := done_ t he
  rw [hout] at fin
  exact chain (chain init' (widen run cost)) fin

end GRWTSK.IntegerFactorization.Reductions
