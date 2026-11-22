/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.AddressCanonicalPrimeEnumeration
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Option
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Nat.Size
import Mathlib.Tactic.NormNum.Prime

set_option autoImplicit false

/-!
# Exact description costs for binary transition tables

The consumer is the HS-95 serialization and generated-schedule comparison
for `google-deepmind/cryptids` at `3647718b5df22e1a61462dec0376bd204526285a`,
`artifacts/riemann_95/machine.txt`. Its two scanned symbols index one cell
each per state. A cell either halts or records write, direction and target.
The initial state and blank symbol conventions are fixed outside this table.

There are `1 + 4*n` actions and `(1 + 4*n)^(2*n)` tables. An injective map
into the `2^b` words of width `b` is possible exactly when there are enough
words. At `n = 95` this gives a minimum of 9 bits per action or 1629 bits
when coding a whole unrestricted table jointly. The cell-by-cell layouts
below recover each field from a positive target tag and a two-bit remainder,
reserving zero for halt. A literal first-window prime tag uses a 9-bit field,
whereas a 1-based dense rank uses a 7-bit field. Prime enumeration and the
count of primes below a label recover the tag's rank in its given window.

A called decoder must have the window and table payload. A schedule by
itself collides on the all-halt table and the constant nonhalting-action
table. A 5×19 pair takes 8 bits as separate coordinate fields and 7 bits
packed in mixed radix. These comparisons charge the declared overhead for
the chosen format. They concern uniform fixed-width representations and do
not determine the Kolmogorov complexity of one particular machine.
-/

namespace GRWTSK.ComputerScience.TransitionTableDescription

open BitMatrix.Carrier.SequentialPrimeSpecification

/-- A halted cell carries no fields. A nonhalting cell carries the written
symbol, movement direction and target. -/
abbrev Action (Q : Type*) := Option ((Bool × Bool) × Q)

/-- The implicit cell order is by state and scanned symbol. -/
abbrev Table (Q : Type*) := Q → Bool → Action Q

/-- The natural values of the `b`-bit words. -/
abbrev Word (b : ℕ) := Fin (2 ^ b)

theorem card_action (n : ℕ) : Fintype.card (Action (Fin n)) = 1 + 4 * n := by
  simp [Action, Nat.add_comm]

theorem card_table (n : ℕ) : Fintype.card (Table (Fin n)) = (1 + 4 * n) ^ (2 * n) := by
  simp [Table, Nat.add_comm, ← pow_mul]

/-- A uniform fixed-width code has exactly the cardinality constraint of its
code space. The reverse direction enumerates the finite source type. -/
theorem exactCode_iff {X : Type*} [Fintype X] (b : ℕ) :
    Nonempty (X ↪ Word b) ↔ Fintype.card X ≤ 2 ^ b := by
  rw [Function.Embedding.nonempty_iff_card_le, Fintype.card_fin]

private theorem width_iff {count previous width : ℕ}
    (hprev : 2 ^ previous < count) (hnext : count ≤ 2 ^ (previous + 1)) :
    count ≤ 2 ^ width ↔ previous + 1 ≤ width := by
  constructor
  · intro h
    by_contra hwidth
    have hpow := Nat.pow_le_pow_right (by decide : 0 < 2) (show width ≤ previous by omega)
    omega
  · intro h
    exact hnext.trans (Nat.pow_le_pow_right (by decide) h)

theorem action95_width (b : ℕ) : Nonempty (Action (Fin 95) ↪ Word b) ↔ 9 ≤ b := by
  rw [exactCode_iff, card_action]
  exact width_iff (previous := 8) (by decide) (by decide)

theorem table95_width (b : ℕ) : Nonempty (Table (Fin 95) ↪ Word b) ↔ 1629 ≤ b := by
  rw [exactCode_iff, card_table]
  exact width_iff (previous := 1628) (by decide +kernel) (by decide +kernel)

/-- The binary width of the numeral 95. -/
theorem numeral95_width : Nat.size 95 = 7 := by decide

/-- Rank or prime tags occupy the high field. The low two bits retain the
write and direction fields. The all-zero word is reserved for halt. -/
def actionWordValue {Q : Type*} (tag : Q → ℕ) : Action Q → ℕ
  | none => 0
  | some ((write, rightward), target) => 4 * tag target + 2 * write.toNat + rightward.toNat

private theorem actionWordValue_positive {Q : Type*} {tag : Q → ℕ} {q : Q}
    (hpos : 0 < tag q) (w d : Bool) : 0 < actionWordValue tag (some ((w, d), q)) := by
  change 0 < 4 * tag q + 2 * w.toNat + d.toNat
  omega

private theorem actionWordValue_fields {Q : Type*} (tag : Q → ℕ) (q : Q) (w d : Bool) :
    let value := actionWordValue tag (some ((w, d), q))
    value / 4 = tag q ∧ decide (2 ≤ value % 4) = w ∧ decide (value % 2 = 1) = d := by
  cases w <;> cases d <;> simp [actionWordValue] <;> omega

theorem actionWordValue_injective {Q : Type*} {tag : Q → ℕ}
    (htag : Function.Injective tag) (hpos : ∀ q, 0 < tag q) :
    Function.Injective (actionWordValue tag) := by
  intro first second heq
  cases first with
  | none =>
    cases second with
    | none => rfl
    | some second =>
      obtain ⟨⟨w, d⟩, q⟩ := second
      exact False.elim (Nat.ne_of_gt (actionWordValue_positive (hpos q) w d) heq.symm)
  | some first =>
    obtain ⟨⟨w, d⟩, q⟩ := first
    cases second with
    | none => exact False.elim (Nat.ne_of_gt (actionWordValue_positive (hpos q) w d) heq)
    | some second =>
      obtain ⟨⟨w', d'⟩, q'⟩ := second
      obtain ⟨hq, hw, hd⟩ := actionWordValue_fields tag q w d
      obtain ⟨hq', hw', hd'⟩ := actionWordValue_fields tag q' w' d'
      rw [heq] at hq hw hd
      rw [htag (hq.symm.trans hq'), hw.symm.trans hw', hd.symm.trans hd']

private theorem actionWordValue_lt {Q : Type*} {tag : Q → ℕ} {bits : ℕ}
    (hbound : ∀ q, tag q < 2 ^ bits) (action : Action Q) :
    actionWordValue tag action < 2 ^ (bits + 2) := by
  cases action with
  | none => exact Nat.two_pow_pos _
  | some data =>
    obtain ⟨⟨w, d⟩, q⟩ := data
    have hq := hbound q
    rw [actionWordValue, pow_add]
    change 4 * tag q + 2 * w.toNat + d.toNat < 2 ^ bits * 4
    cases w <;> cases d <;> simp <;> omega

/-- Every action has a concrete word in the specified, separately allocated
target and action fields. -/
def taggedActionCode {Q : Type*} {tag : Q → ℕ} {bits : ℕ}
    (htag : Function.Injective tag) (hpos : ∀ q, 0 < tag q)
    (hbound : ∀ q, tag q < 2 ^ bits) : Action Q ↪ Word (bits + 2) where
  toFun action := ⟨actionWordValue tag action, actionWordValue_lt hbound action⟩
  inj' := fun _ _ h => actionWordValue_injective htag hpos (congrArg Fin.val h)

/-- Decode a halt sentinel or a tagged action. The outer `none` records a
tag outside the decoder's allowed domain. -/
def decodeActionWord {Q : Type*} (decodeTag : ℕ → Option Q) (word : ℕ) : Option (Action Q) :=
  if word = 0 then some none
  else (decodeTag (word / 4)).map fun target =>
    some ((decide (2 ≤ word % 4), decide (word % 2 = 1)), target)

theorem decodeActionWord_actionWordValue {Q : Type*} {tag : Q → ℕ}
    {decodeTag : ℕ → Option Q} (hpos : ∀ q, 0 < tag q)
    (hdecode : ∀ q, decodeTag (tag q) = some q) (action : Action Q) :
    decodeActionWord decodeTag (actionWordValue tag action) = some action := by
  cases action with
  | none => rfl
  | some data =>
    obtain ⟨⟨w, d⟩, q⟩ := data
    obtain ⟨hq, hw, hd⟩ := actionWordValue_fields tag q w d
    unfold decodeActionWord
    rw [ite_eq_right (Nat.ne_of_gt (actionWordValue_positive (hpos q) w d)), hq, hw, hd, hdecode]
    rfl

/-- State ranks are stored one-based so tag zero can mark halt. -/
def rankActionCode : Action (Fin 95) ↪ Word 9 :=
  taggedActionCode (bits := 7) (tag := fun q : Fin 95 => q.val + 1)
    (fun _ _ eq => Fin.ext (Nat.add_right_cancel eq)) (by simp)
    (fun q => by have := q.isLt; omega)

/-- Accept exactly the positive target tags for the dense rank codec. -/
def decodeRankTag (tag : ℕ) : Option (Fin 95) :=
  if h : 0 < tag ∧ tag ≤ 95 then some ⟨tag - 1, by omega⟩ else none

theorem decode_rankActionCode (action : Action (Fin 95)) :
    decodeActionWord decodeRankTag (rankActionCode action).val = some action := by
  apply decodeActionWord_actionWordValue (tag := fun q : Fin 95 => q.val + 1) (by simp) _ action
  intro q
  simp [decodeRankTag, q.isLt]

/-- The ordered prime label of a state in a given window. -/
noncomputable def primeTag (window : ℕ) (q : Fin 95) : ℕ :=
  canonicalPrimeEnumeration.value (95 * window + q.val)

theorem primeTag_prime (window : ℕ) (q : Fin 95) : Nat.Prime (primeTag window q) :=
  canonicalPrimeEnumeration_prime _

/-- Invert a valid window tag by counting primes strictly below it. -/
def primeRank (window tag : ℕ) : ℕ := Nat.count Nat.Prime tag - 95 * window

@[simp] theorem primeRank_primeTag (window : ℕ) (q : Fin 95) :
    primeRank window (primeTag window q) = q.val := by
  rw [primeRank, primeTag, canonicalPrimeEnumeration_value,
    Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime]
  omega

theorem primeTag_injective (window : ℕ) : Function.Injective (primeTag window) := by
  intro q r eq
  exact Fin.ext (by simpa using congrArg (primeRank window) eq)

/-- Recover a rank only for a prime in the requested window. -/
def decodeWindowTag (window tag : ℕ) : Option (Fin 95) :=
  if h : Nat.Prime tag ∧ 95 * window ≤ Nat.count Nat.Prime tag ∧ primeRank window tag < 95
  then some ⟨primeRank window tag, h.2.2⟩ else none

@[simp] theorem decodeWindowTag_primeTag (window : ℕ) (q : Fin 95) :
    decodeWindowTag window (primeTag window q) = some q := by
  have hstart : 95 * window ≤ Nat.count Nat.Prime (primeTag window q) := by
    simp [primeTag, Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime]
  simp [decodeWindowTag, primeTag_prime, hstart, q.isLt]

theorem last_firstWindow_prime : primeTag 0 (94 : Fin 95) = 499 := by
  have hcount : Nat.count Nat.Prime 499 = 94 := by decide +kernel
  have hprime : Nat.Prime 499 := by norm_num
  have hnth := Nat.nth_count hprime
  rw [hcount] at hnth
  exact hnth

theorem primeTag_le_last (window : ℕ) (q : Fin 95) : primeTag window q ≤ primeTag window 94 := by
  have hq : q.val ≤ (94 : Fin 95).val := by have := q.isLt; omega
  exact canonicalPrimeEnumeration_strictlyIncreasing.monotone (Nat.add_le_add_left hq (95 * window))

/-- A uniform literal label field must accommodate the largest prime in its window. -/
noncomputable def primeFieldWidth (window : ℕ) : ℕ := Nat.size (primeTag window 94)

theorem primeFieldWidth_le_iff (window b : ℕ) :
    (∀ q : Fin 95, primeTag window q < 2 ^ b) ↔ primeFieldWidth window ≤ b := by
  rw [primeFieldWidth, Nat.size_le]
  exact ⟨fun h => h 94, fun h q => (primeTag_le_last window q).trans_lt h⟩

theorem firstWindow_primeFieldWidth : primeFieldWidth 0 = 9 := by
  rw [primeFieldWidth, last_firstWindow_prime]
  decide

theorem firstWindow_prime_field_least (b : ℕ) :
    (∀ q : Fin 95, primeTag 0 q < 2 ^ b) ↔ 9 ≤ b := by
  rw [primeFieldWidth_le_iff, firstWindow_primeFieldWidth]

/-- A raw prime-tagged action of the first window fits in eleven bits. -/
noncomputable def firstWindowPrimeActionCode : Action (Fin 95) ↪ Word 11 :=
  taggedActionCode (bits := 9) (primeTag_injective 0)
    (fun q => (primeTag_prime 0 q).pos)
    ((firstWindow_prime_field_least 9).mpr le_rfl)

theorem decode_firstWindowPrimeActionCode (action : Action (Fin 95)) :
    decodeActionWord (decodeWindowTag 0) (firstWindowPrimeActionCode action).val =
      some action :=
  decodeActionWord_actionWordValue (fun q => (primeTag_prime 0 q).pos)
    (decodeWindowTag_primeTag 0) action

/-- Relabel a table in window `window` while keeping its original cell order.
Every nonhalting action retains all three fields. -/
noncomputable def primeTable (window : ℕ) (table : Table (Fin 95)) :
    Fin 95 → Bool → Action ℕ :=
  fun q symbol => (table q symbol).map (fun (fields, target) => (fields, primeTag window target))

/-- Bits that carry a valid source table are recovered exactly, cell by cell.
The decoder law is asserted on the image of the specified encoding. -/
theorem decodePrimeTable_primeTable (window : ℕ) (table : Table (Fin 95))
    (q : Fin 95) (symbol : Bool) :
    decodeActionWord (decodeWindowTag window) (actionWordValue id (primeTable window table q symbol)) =
      some (table q symbol) := by
  unfold primeTable
  cases table q symbol with
  | none => rfl
  | some data =>
    obtain ⟨fields, target⟩ := data
    exact decodeActionWord_actionWordValue (tag := primeTag window)
      (fun q => (primeTag_prime window q).pos) (decodeWindowTag_primeTag window) (some (fields, target))

/-- A window-only observation is shared by distinct transition tables. -/
theorem primeSchedule_does_not_determine_table (window : ℕ) :
    ¬ ∃ decode : (Fin 95 → ℕ) → Table (Fin 95), ∀ table, decode (primeTag window) = table := by
  rintro ⟨decode, h⟩
  let halt : Table (Fin 95) := fun _ _ => none
  let move : Table (Fin 95) := fun _ _ => some ((false, false), 0)
  have heq := (h halt).symm.trans (h move)
  have hcell := congrFun (congrFun heq 0) false
  simp [halt, move] at hcell

theorem composite_tag_and_halt_have_distinct_decodes :
    decodeActionWord (decodeWindowTag 0) (4 * 4) = none ∧
      decodeActionWord (decodeWindowTag 0) 0 = some none := by decide

/-- All lengths are in bits. The overheads are fixed-format or framed costs
supplied by the caller, including framing if the components need it. -/
structure Overhead where
  windowSeed : ℕ
  generator : ℕ
  decoder : ℕ
  proofData : ℕ

def Overhead.total (overhead : Overhead) : ℕ :=
  overhead.windowSeed + overhead.generator + overhead.decoder + overhead.proofData

def payloadCost (states actionWidth : ℕ) : ℕ := 2 * states * actionWidth

def rankTableCost (overhead : Overhead) : ℕ := payloadCost 95 9 + overhead.total

def firstWindowPrimeTableCost (overhead : Overhead) : ℕ := payloadCost 95 11 + overhead.total

/-- Fixed 9-bit values for each tag when the ordered first window is included. -/
def firstWindowLiteralScheduleCost : ℕ := 95 * 9

def firstWindowWithLiteralScheduleCost (overhead : Overhead) : ℕ :=
  firstWindowPrimeTableCost overhead + firstWindowLiteralScheduleCost

/-- The generated prime-window layout carries dense actions plus all declared
overheads. Its generator and seed reconstruct the window's labels. -/
def generatedWindowCost (overhead : Overhead) : ℕ := rankTableCost overhead

theorem payload_costs :
    payloadCost 95 9 = 1710 ∧ payloadCost 95 11 = 2090 ∧
      firstWindowLiteralScheduleCost = 855 := by decide

theorem generated_lt_literal_iff (generated literal : Overhead) :
    generatedWindowCost generated < firstWindowWithLiteralScheduleCost literal ↔
      generated.total < 1235 + literal.total := by
  unfold generatedWindowCost rankTableCost firstWindowWithLiteralScheduleCost
    firstWindowPrimeTableCost firstWindowLiteralScheduleCost payloadCost
  omega

theorem generated_lt_prime_payload_iff (generated literal : Overhead) :
    generatedWindowCost generated < firstWindowPrimeTableCost literal ↔
      generated.total < 380 + literal.total := by
  unfold generatedWindowCost rankTableCost firstWindowPrimeTableCost payloadCost
  omega

/-- The specified separate product fields use 3 bits for 5 choices and 5
bits for 19 choices. The product as a single word needs only 7 bits. -/
theorem product95_widths (a b packed : ℕ) :
    (Nonempty (Fin 5 ↪ Word a) ↔ 3 ≤ a) ∧
    (Nonempty (Fin 19 ↪ Word b) ↔ 5 ≤ b) ∧
    (Nonempty ((Fin 5 × Fin 19) ↪ Word packed) ↔ 7 ≤ packed) := by
  simp only [exactCode_iff, Fintype.card_fin, Fintype.card_prod]
  exact ⟨width_iff (previous := 2) (by decide) (by decide),
    width_iff (previous := 4) (by decide) (by decide),
    width_iff (previous := 6) (by decide) (by decide)⟩

/-- Splitting the target field into two independently padded product fields
uses one additional bit in each of the 190 cells. -/
theorem product95_separate_payload : payloadCost 95 (3 + 5 + 2) = 1900 := by decide

end GRWTSK.ComputerScience.TransitionTableDescription
