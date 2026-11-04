/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.ConstrainedCapacityAllocation

/-!
# Exact lattice-point counting for two eligible capacity pools

Extend the existing two-pool feasibility model rather than replacing it. A
solution has nonnegative integer shares x,y with x+y=shared and the two affine
capacity inequalities. After reserving exclusive demand, x lies in the closed
integer interval [shared-(rightCapacity-rightOnly),
                   min shared (leftCapacity-leftOnly)].

Both reservation inequalities are retained. The count is zero if either fails;
otherwise it is upper+1-lower using truncated natural subtraction. The actual
counting certificate is a pair of mutually inverse functions between solutions
and `Fin count`. Thus a positive formula is not mistaken for an enumeration
proof. `integer_region_iff` identifies the original nonnegative integer lattice
slice, rather than counting arbitrary descriptions of the same allocation.

Primary argument: eliminate y using conservation, translate the interval by its
lower endpoint, and prove both round trips. Independent feasibility comparison
uses the previously proved three-cut criterion. Degenerate and exclusive-load
examples refute aggregate-capacity-only counting. This is a two-dimensional
bounded affine slice, not a general polyhedral counting algorithm, scheduler,
symmetry quotient, fairness theorem, or attributed Putnam problem solution.
Dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.Allocation.TwoPool

/-- Concrete allocations are pairs, not proof-object multiplicities. -/
def Solution (leftOnly rightOnly shared leftCapacity rightCapacity : Nat) :=
  { p : Nat × Nat // p.1 + p.2 = shared ∧
    leftOnly + p.1 ≤ leftCapacity ∧ rightOnly + p.2 ≤ rightCapacity }

def lower (rightOnly shared rightCapacity : Nat) : Nat :=
  shared - (rightCapacity - rightOnly)

def upper (leftOnly shared leftCapacity : Nat) : Nat :=
  min shared (leftCapacity - leftOnly)

/-- Failed exclusive reservations have zero solutions, even with spare other capacity. -/
def count (leftOnly rightOnly shared leftCapacity rightCapacity : Nat) : Nat :=
  if leftOnly ≤ leftCapacity ∧ rightOnly ≤ rightCapacity then
    upper leftOnly shared leftCapacity + 1 - lower rightOnly shared rightCapacity
  else 0

/-- Exact elimination of the second share, including all reservation premises. -/
theorem interval_iff (l r s L R : Nat) (p : Nat × Nat) :
    (p.1 + p.2 = s ∧ l + p.1 ≤ L ∧ r + p.2 ≤ R) ↔
      l ≤ L ∧ r ≤ R ∧ lower r s R ≤ p.1 ∧ p.1 ≤ upper l s L ∧ p.2 = s - p.1 := by
  simp only [lower, upper]
  omega

/-- Return to the repository's original existential feasibility predicate. -/
theorem solution_nonempty_iff (l r s L R : Nat) :
    Nonempty (Solution l r s L R) ↔
      GRWTSK.Order.Capacity.TwoPool.Feasible l r s L R := by
  constructor
  · intro h
    obtain ⟨p⟩ := h
    exact ⟨p.val.1, p.val.2, p.property⟩
  · intro h
    obtain ⟨x, y, hsum, hl, hr⟩ := h
    exact ⟨⟨(x, y), hsum, hl, hr⟩⟩

/-- The formula agrees with the independent three-cut feasibility theorem. -/
theorem count_positive_iff_feasible (l r s L R : Nat) :
    0 < count l r s L R ↔ GRWTSK.Order.Capacity.TwoPool.Feasible l r s L R := by
  rw [GRWTSK.Order.Capacity.TwoPool.feasible_iff]
  unfold count lower upper
  split <;> omega

variable {l r s L R : Nat}

/-- Rank the first share by its distance from the lower feasible endpoint. -/
def encode (p : Solution l r s L R) : Fin (count l r s L R) :=
  ⟨p.val.1 - lower r s R, by
    have bounds := (interval_iff l r s L R p.val).mp p.property
    have reserves : l ≤ L ∧ r ≤ R := ⟨bounds.1, bounds.2.1⟩
    simp only [count, if_pos reserves]
    dsimp [lower, upper] at *
    omega⟩

/-- Every index reconstructs an actual allocation satisfying the original inequalities. -/
def decode (i : Fin (count l r s L R)) : Solution l r s L R := by
  have reserves : l ≤ L ∧ r ≤ R := by
    by_cases h : l ≤ L ∧ r ≤ R
    · exact h
    · have impossible := i.isLt
      simp [count, h] at impossible
  have indexBound : i.val < upper l s L + 1 - lower r s R := by
    simpa only [count, if_pos reserves] using i.isLt
  refine ⟨(lower r s R + i.val, s - (lower r s R + i.val)), ?_⟩
  apply (interval_iff l r s L R _).mpr
  refine ⟨reserves.1, reserves.2, ?_, ?_, rfl⟩
  · omega
  · omega

/-- No solution disappears in the finite encoding. -/
theorem decode_encode (p : Solution l r s L R) : decode (encode p) = p := by
  have bounds := (interval_iff l r s L R p.val).mp p.property
  apply Subtype.ext
  apply Prod.ext
  · change lower r s R + (p.val.1 - lower r s R) = p.val.1
    omega
  · change s - (lower r s R + (p.val.1 - lower r s R)) = p.val.2
    omega

/-- No index duplicates a different index's allocation. -/
theorem encode_decode (i : Fin (count l r s L R)) : encode (decode i) = i := by
  apply Fin.ext
  change lower r s R + i.val - lower r s R = i.val
  omega

/-- Exact cardinality is witnessed by an explicit bijection, not a numerical guess. -/
theorem exact_count :
    (∀ p : Solution l r s L R, decode (encode p) = p) ∧
      (∀ i : Fin (count l r s L R), encode (decode i) = i) :=
  ⟨decode_encode, encode_decode⟩

theorem encoding_injective (p q : Solution l r s L R)
    (h : encode p = encode q) : p = q := by
  calc
    p = decode (encode p) := (decode_encode p).symm
    _ = decode (encode q) := congrArg decode h
    _ = q := decode_encode q

theorem decoding_surjective (p : Solution l r s L R) :
    ∃ i : Fin (count l r s L R), decode i = p :=
  ⟨encode p, decode_encode p⟩

/-- A zero count is equivalent to absence of an allocation, not absence of a search result. -/
theorem count_zero_iff (l r s L R : Nat) :
    count l r s L R = 0 ↔ ¬ GRWTSK.Order.Capacity.TwoPool.Feasible l r s L R := by
  have equivalent := count_positive_iff_feasible l r s L R
  constructor
  · intro zero feasible
    have positive := equivalent.mpr feasible
    omega
  · intro absent
    by_cases positive : 0 < count l r s L R
    · exact False.elim (absent (equivalent.mp positive))
    · omega

/-- Pool exchange is a genuine symmetry of these equations, not of arbitrary channels. -/
theorem count_swap (l r s L R : Nat) : count l r s L R = count r l s R L := by
  unfold count lower upper
  split <;> split <;> omega

/-- Enlarging capacities preserves and can add allocations for the same demands. -/
theorem count_mono_capacity (l r s L R L' R' : Nat)
    (hl : L ≤ L') (hr : R ≤ R') : count l r s L R ≤ count l r s L' R' := by
  unfold count lower upper
  split <;> split <;> omega

/-- The actual integer lattice region is cut out by affine equalities and inequalities. -/
def IntegerRegion (l r s L R : Nat) (p : Int × Int) : Prop :=
  0 ≤ p.1 ∧ 0 ≤ p.2 ∧ p.1 + p.2 = (s : Int) ∧
    (l : Int) + p.1 ≤ (L : Int) ∧ (r : Int) + p.2 ≤ (R : Int)

/-- No negative lattice points or fractional allocations enter the finite count. -/
theorem integer_region_iff (l r s L R : Nat) (p : Int × Int) :
    IntegerRegion l r s L R p ↔
      ∃ q : Solution l r s L R,
        (q.val.1 : Int) = p.1 ∧ (q.val.2 : Int) = p.2 := by
  constructor
  · intro h
    have nonnegativeLeft := h.1
    have nonnegativeRight := h.2.1
    have conservation := h.2.2.1
    have leftBound := h.2.2.2.1
    have rightBound := h.2.2.2.2
    have fits : p.1.toNat + p.2.toNat = s ∧
        l + p.1.toNat ≤ L ∧ r + p.2.toNat ≤ R := by omega
    refine ⟨⟨(p.1.toNat, p.2.toNat), fits⟩, ?_, ?_⟩ <;> dsimp <;> omega
  · intro h
    obtain ⟨q, hleft, hright⟩ := h
    have fits := q.property
    unfold IntegerRegion
    omega

/-- With no shared demand there is one allocation exactly when reservations fit. -/
theorem zero_shared_count (l r L R : Nat) :
    count l r 0 L R = if l ≤ L ∧ r ≤ R then 1 else 0 := by
  simp [count, lower, upper]

/-- Total capacity can conceal an exclusive-demand obstruction. -/
theorem exclusive_overload_zero_count (L spare : Nat) :
    count (L + 1) 0 0 L spare = 0 := by
  apply (count_zero_iff _ _ _ _ _).mpr
  exact GRWTSK.Order.Capacity.TwoPool.exclusive_overload_not_repaired_elsewhere L spare

theorem three_flexible_splits : count 0 0 2 2 2 = 3 := by decide

theorem one_reserved_split : count 1 1 2 2 2 = 1 := by decide

theorem no_overloaded_split : count 1 1 3 2 2 = 0 := by decide

end GRWTSK.Combinatorics.Allocation.TwoPool
