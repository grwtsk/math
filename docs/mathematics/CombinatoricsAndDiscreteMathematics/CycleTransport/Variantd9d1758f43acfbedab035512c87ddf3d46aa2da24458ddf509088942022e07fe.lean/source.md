# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CycleTransport.Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c729cc82a0c98452be7d925093abd06c68df8b0` · SHA-256 `d9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.FiniteDynamics.InvolutiveCycle

/-!
# Ordered transport around an involutive cycle

Permutation multiplication is used in Mathlib's function order:
`(f * g) x = f (g x)`.  Consequently the recurrence

`T (k+1) = edge(k) * T k`

makes edge zero act first and realizes
`T k = edge(k-1) ∘ ... ∘ edge(0)`.  Reverse traversal uses the opposite
recurrence and is proved to be the inverse permutation.  No commutation of
distinct edge involutions is assumed.
-/

namespace FinitePermutationDynamics

universe u

namespace DirectedCycleQuantum

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- The periodically indexed edge permutation. -/
def edgePermAt (cycle : DirectedCycleQuantum X) (k : Nat) : Equiv.Perm X :=
  (cycle.edge ⟨k % cycle.period, Nat.mod_lt _ cycle.positive⟩).toPerm

/-- Forward ordered transport: edge zero acts first. -/
def forwardTransport (cycle : DirectedCycleQuantum X) : Nat → Equiv.Perm X
  | 0 => 1
  | k + 1 => cycle.edgePermAt k * cycle.forwardTransport k

/-- Reverse traversal of the same prefix.  Edge `k-1` acts first. -/
def reverseTransport (cycle : DirectedCycleQuantum X) : Nat → Equiv.Perm X
  | 0 => 1
  | k + 1 => cycle.reverseTransport k * cycle.edgePermAt k

/-- A forward segment beginning at an arbitrary edge index. -/
def forwardSegment (cycle : DirectedCycleQuantum X) (start : Nat) :
    Nat → Equiv.Perm X
  | 0 => 1
  | k + 1 => cycle.edgePermAt (start + k) * cycle.forwardSegment start k

/-- Prefix lengths include both zero and the complete period. -/
def forwardPrefix (cycle : DirectedCycleQuantum X)
    (k : Fin (cycle.period + 1)) : Equiv.Perm X :=
  cycle.forwardTransport k.val

/-- Reverse transport for an exact bounded prefix length. -/
def reversePrefix (cycle : DirectedCycleQuantum X)
    (k : Fin (cycle.period + 1)) : Equiv.Perm X :=
  cycle.reverseTransport k.val

/-- Transport selected by the cycle's explicit direction. -/
def orderedTransport (cycle : DirectedCycleQuantum X) (k : Nat) : Equiv.Perm X :=
  match cycle.direction with
  | .forward => cycle.forwardTransport k
  | .reverse => cycle.reverseTransport k

@[simp]
theorem orderedTransport_zero (cycle : DirectedCycleQuantum X) :
    cycle.orderedTransport 0 = 1 := by
  cases h : cycle.direction <;>
    simp [orderedTransport, h, forwardTransport, reverseTransport]

@[simp]
theorem forwardTransport_zero (cycle : DirectedCycleQuantum X) :
    cycle.forwardTransport 0 = 1 :=
  rfl

@[simp]
theorem reverseTransport_zero (cycle : DirectedCycleQuantum X) :
    cycle.reverseTransport 0 = 1 :=
  rfl

theorem forwardTransport_succ (cycle : DirectedCycleQuantum X) (k : Nat) :
    cycle.forwardTransport (k + 1) =
      cycle.edgePermAt k * cycle.forwardTransport k :=
  rfl

theorem reverseTransport_succ (cycle : DirectedCycleQuantum X) (k : Nat) :
    cycle.reverseTransport (k + 1) =
      cycle.reverseTransport k * cycle.edgePermAt k :=
  rfl

@[simp]
theorem forwardSegment_zero (cycle : DirectedCycleQuantum X) (start : Nat) :
    cycle.forwardSegment start 0 = 1 :=
  rfl

theorem forwardSegment_succ
    (cycle : DirectedCycleQuantum X) (start k : Nat) :
    cycle.forwardSegment start (k + 1) =
      cycle.edgePermAt (start + k) * cycle.forwardSegment start k :=
  rfl

/-- Exact prefix concatenation with the later segment acting after the prefix. -/
theorem forwardTransport_add
    (cycle : DirectedCycleQuantum X) (a b : Nat) :
    cycle.forwardTransport (a + b) =
      cycle.forwardSegment a b * cycle.forwardTransport a := by
  induction b with
  | zero => simp
  | succ b ih =>
      rw [Nat.add_succ, forwardTransport_succ, forwardSegment_succ, ih]
      simp only [mul_assoc]

theorem forwardTransport_succ_apply
    (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    cycle.forwardTransport (k + 1) x =
      cycle.edgePermAt k (cycle.forwardTransport k x) :=
  rfl

theorem reverseTransport_succ_apply
    (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    cycle.reverseTransport (k + 1) x =
      cycle.reverseTransport k (cycle.edgePermAt k x) :=
  rfl

@[simp]
theorem edgePermAt_symm (cycle : DirectedCycleQuantum X) (k : Nat) :
    (cycle.edgePermAt k).symm = cycle.edgePermAt k := by
  apply CertifiedInvolution.toPerm_symm

/-- Reverse traversal is exactly the inverse of forward traversal. -/
theorem reverseTransport_eq_symm_forward
    (cycle : DirectedCycleQuantum X) (k : Nat) :
    cycle.reverseTransport k = (cycle.forwardTransport k).symm := by
  induction k with
  | zero => rfl
  | succ k ih =>
      rw [reverseTransport_succ, forwardTransport_succ, ih]
      ext x
      change (cycle.forwardTransport k).symm (cycle.edgePermAt k x) =
        (cycle.forwardTransport k).symm ((cycle.edgePermAt k).symm x)
      rw [edgePermAt_symm]

@[simp]
theorem reverseTransport_forwardTransport
    (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    cycle.reverseTransport k (cycle.forwardTransport k x) = x := by
  rw [reverseTransport_eq_symm_forward]
  exact (cycle.forwardTransport k).symm_apply_apply x

@[simp]
theorem forwardTransport_reverseTransport
    (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    cycle.forwardTransport k (cycle.reverseTransport k x) = x := by
  rw [reverseTransport_eq_symm_forward]
  exact (cycle.forwardTransport k).apply_symm_apply x

theorem reversePrefix_eq_symm_forwardPrefix
    (cycle : DirectedCycleQuantum X) (k : Fin (cycle.period + 1)) :
    cycle.reversePrefix k = (cycle.forwardPrefix k).symm :=
  cycle.reverseTransport_eq_symm_forward k.val

@[simp]
theorem orderedTransport_forward
    (cycle : DirectedCycleQuantum X) (h : cycle.direction = .forward) (k : Nat) :
    cycle.orderedTransport k = cycle.forwardTransport k := by
  simp [orderedTransport, h]

@[simp]
theorem orderedTransport_reverse
    (cycle : DirectedCycleQuantum X) (h : cycle.direction = .reverse) (k : Nat) :
    cycle.orderedTransport k = cycle.reverseTransport k := by
  simp [orderedTransport, h]

/-- Transport of edge-ordered dynamics through an equivalence is pointwise exact. -/
theorem transport_forward_apply
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    (cycle.transport e).forwardTransport k (e x) =
      e (cycle.forwardTransport k x) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [forwardTransport_succ_apply, forwardTransport_succ_apply, ih]
      simp [edgePermAt, DirectedCycleQuantum.transport,
        InvolutiveCycle.transport, CertifiedInvolution.transport]

/--
A certified cyclic re-indexing preserves the successor relation.  Storing the
commuting square avoids treating an arbitrary permutation of edge labels as a
rotation of the directed cycle.
-/
structure CyclicReindexing (cycle : DirectedCycleQuantum X) where
  index : Equiv.Perm (Fin cycle.period)
  successor_commutes : ∀ k,
    index (cycleSuccessor cycle.positive k) =
      cycleSuccessor cycle.positive (index k)

namespace CyclicReindexing

/-- Re-index a directed cycle without changing its state-space action. -/
def cycle
    {original : DirectedCycleQuantum X}
    (reindexing : CyclicReindexing original) : DirectedCycleQuantum X where
  period := original.period
  positive := original.positive
  orbit :=
    { toFun := fun k => original.orbit (reindexing.index k)
      inj' := original.orbit.injective.comp reindexing.index.injective }
  edge := fun k => original.edge (reindexing.index k)
  advances := by
    intro k
    change
      (original.edge (reindexing.index k)).act
          (original.orbit (reindexing.index k)) =
        original.orbit
          (reindexing.index (cycleSuccessor original.positive k))
    rw [reindexing.successor_commutes]
    exact original.advances (reindexing.index k)
  direction := original.direction

@[simp]
theorem cycle_orbit
    {original : DirectedCycleQuantum X}
    (reindexing : CyclicReindexing original)
    (k : Fin original.period) :
    reindexing.cycle.orbit k = original.orbit (reindexing.index k) :=
  rfl

@[simp]
theorem cycle_edge
    {original : DirectedCycleQuantum X}
    (reindexing : CyclicReindexing original)
    (k : Fin original.period) :
    reindexing.cycle.edge k = original.edge (reindexing.index k) :=
  rfl

@[simp]
theorem cycle_direction
    {original : DirectedCycleQuantum X}
    (reindexing : CyclicReindexing original) :
    reindexing.cycle.direction = original.direction :=
  rfl

end CyclicReindexing

/--
Evidence that the ordered transport around one complete cycle has genuinely
higher order.  This deliberately does not follow from the involutivity of the
individual edges.
-/
structure CompleteCycleOrderWitness (cycle : DirectedCycleQuantum X) where
  order : Nat
  order_gt_two : 2 < order
  returns : (cycle.forwardTransport cycle.period) ^ order = 1
  minimal : ∀ k, 0 < k → k < order →
    (cycle.forwardTransport cycle.period) ^ k ≠ 1

theorem completeCycleTransport_not_involutive
    {cycle : DirectedCycleQuantum X}
    (witness : CompleteCycleOrderWitness cycle) :
    (cycle.forwardTransport cycle.period) ^ 2 ≠ 1 := by
  exact witness.minimal 2 (by decide) witness.order_gt_two

end DirectedCycleQuantum

end FinitePermutationDynamics
```
