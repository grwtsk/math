/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedSuffix

/-!
# Schur checkpoint transport on a finite pivot interval

Two tapes share the node of every row, their initial checkpoint and the
anchors in the indicated pivot interval. Induction on `rowAt` identifies
their states through the interval endpoint. The state recursion does not
read the price caps. Equality of caps at each active pivot then transports
its full `PivotRows` predicate, including every updated row, and hence the
complete finite `BlockCaps` statement. The surviving endpoints use the
same pointwise state comparison.

A common upper node preserves the geometric cap replacement. Combining
this finite-interval result with suffix restriction returns the checked
block and every survivor at the original full-tape offset. No equality
of inactive anchors or caps is required. Every suffix node is required:
each updated row contributes its own node to the rounded denominator.
The initial and surviving checkpoint comparisons remain explicit.

The concrete consumer binds a two-pivot certificate on1600 active rows
to the same interval of a canonical packed tape, using just two complete
anchor/cap observations and all1600 node observations. Missing active
caps or a changed future-row node can invalidate this transfer; changes
outside the active anchor/cap interval do not enter the result. This is
finite exact transport. The full initial recurrence, source estimates
and high-complement lower bound remain separate obligations.
Independent mathematical review and prior-art novelty assessment are pending.
-/

set_option autoImplicit false
namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
open StructuredSchurNearestEven
variable {r N : ℕ}

/-- The row trajectory through a finite interval uses only its active anchors. -/
theorem Tape.rowAt_eq_of_interval (left right : Tape r N) (start length : ℕ)
    (hLength : start+length ≤ N)
    (leftInitial rightInitial : Fin N → GridRow r)
    (hNodes : ∀ i, left.node i = right.node i)
    (hAnchors : ∀ k : Fin length,
      left.anchor ⟨start+k.val,by omega⟩ = right.anchor ⟨start+k.val,by omega⟩)
    (hInitial : ∀ i, leftInitial i = rightInitial i)
    (k : ℕ) (hk : k ≤ length) (i : Fin N) :
    left.rowAt start leftInitial k i = right.rowAt start rightInitial k i := by
  induction k with
  | zero => exact hInitial i
  | succ k ih =>
    have hp : start+k < N := by omega
    rw [left.rowAt_succ start leftInitial k i hp,right.rowAt_succ start rightInitial k i hp]
    rw [ih (by omega),hNodes i,hNodes ⟨start+k,hp⟩,hAnchors ⟨k,by omega⟩]

/-- Full pivot bounds transport with caps equality only at pivots in the interval. -/
theorem Tape.blockCaps_of_interval (left right : Tape r N) (start length : ℕ)
    (hLength : start+length ≤ N)
    (leftInitial rightInitial : Fin N → GridRow r)
    (hNodes : ∀ i, left.node i = right.node i)
    (hAnchors : ∀ k : Fin length,
      left.anchor ⟨start+k.val,by omega⟩ = right.anchor ⟨start+k.val,by omega⟩)
    (hCaps : ∀ k : Fin length,
      left.caps ⟨start+k.val,by omega⟩ = right.caps ⟨start+k.val,by omega⟩)
    (hInitial : ∀ i, leftInitial i = rightInitial i)
    (checked : left.BlockCaps start leftInitial length hLength) :
    right.BlockCaps start rightInitial length hLength := by
  intro k
  have hLeft := checked k
  have hRows (i : Fin N) : left.rowAt start leftInitial k.val i = right.rowAt start rightInitial k.val i :=
    left.rowAt_eq_of_interval right start length hLength leftInitial rightInitial hNodes hAnchors hInitial
      k.val k.isLt.le i
  have hFunction : left.rowAt start leftInitial k.val = right.rowAt start rightInitial k.val := funext hRows
  change right.PivotRows ⟨start+k.val,by omega⟩ (right.rowAt start rightInitial k.val)
  change left.PivotRows ⟨start+k.val,by omega⟩ (left.rowAt start leftInitial k.val) at hLeft
  simpa only [Tape.PivotRows,hFunction,hAnchors k,hCaps k,hNodes] using hLeft

/-- Both the finite checked block and every surviving endpoint use the same interval data. -/
theorem Tape.blockCaps_checkpoint_of_interval (left right : Tape r N) (start length : ℕ)
    (hLength : start+length ≤ N)
    (leftInitial rightInitial leftNext rightNext : Fin N → GridRow r)
    (hNodes : ∀ i, left.node i = right.node i)
    (hAnchors : ∀ k : Fin length,
      left.anchor ⟨start+k.val,by omega⟩ = right.anchor ⟨start+k.val,by omega⟩)
    (hCaps : ∀ k : Fin length,
      left.caps ⟨start+k.val,by omega⟩ = right.caps ⟨start+k.val,by omega⟩)
    (hInitial : ∀ i, leftInitial i = rightInitial i)
    (hNext : ∀ i, start+length ≤ i.val → leftNext i = rightNext i)
    (checked : left.BlockCaps start leftInitial length hLength ∧
      ∀ i, start+length ≤ i.val → left.rowAt start leftInitial length i = leftNext i) :
    right.BlockCaps start rightInitial length hLength ∧
      ∀ i, start+length ≤ i.val → right.rowAt start rightInitial length i = rightNext i := by
  refine ⟨left.blockCaps_of_interval right start length hLength leftInitial rightInitial
    hNodes hAnchors hCaps hInitial checked.1,?_⟩
  intro i hi
  rw [←left.rowAt_eq_of_interval right start length hLength leftInitial rightInitial
    hNodes hAnchors hInitial length le_rfl i]
  exact (checked.2 i hi).trans (hNext i hi)

/-- A common upper node gives the same paid caps at each active pivot. -/
theorem Tape.geometric_blockCaps_checkpoint_of_interval (left right : Tape r N)
    (upper : ℤ) (start length : ℕ) (hLength : start+length ≤ N)
    (leftInitial rightInitial leftNext rightNext : Fin N → GridRow r)
    (hNodes : ∀ i, left.node i = right.node i)
    (hAnchors : ∀ k : Fin length,
      left.anchor ⟨start+k.val,by omega⟩ = right.anchor ⟨start+k.val,by omega⟩)
    (hCaps : ∀ k : Fin length,
      left.caps ⟨start+k.val,by omega⟩ = right.caps ⟨start+k.val,by omega⟩)
    (hInitial : ∀ i, leftInitial i = rightInitial i)
    (hNext : ∀ i, start+length ≤ i.val → leftNext i = rightNext i)
    (checked : (left.withGeometricCaps upper).BlockCaps start leftInitial length hLength ∧
      ∀ i, start+length ≤ i.val →
        (left.withGeometricCaps upper).rowAt start leftInitial length i = leftNext i) :
    (right.withGeometricCaps upper).BlockCaps start rightInitial length hLength ∧
      ∀ i, start+length ≤ i.val →
        (right.withGeometricCaps upper).rowAt start rightInitial length i = rightNext i := by
  apply (left.withGeometricCaps upper).blockCaps_checkpoint_of_interval (right.withGeometricCaps upper)
    start length hLength leftInitial rightInitial leftNext rightNext hNodes hAnchors ?_ hInitial hNext checked
  intro k
  simp only [Tape.withGeometricCaps,hCaps k,hNodes]

/-- A locally checked finite interval returns to its original suffix offset.
Only the interval's anchors and caps, all suffix nodes and both checkpoints are compared. -/
theorem Tape.geometric_blockCaps_checkpoint_of_suffix_interval (tape : Tape r N)
    (start n : ℕ) (hTotal : start+n=N) (localTape : Tape r n) (upper : ℤ)
    (localInitial localNext : Fin n → GridRow r) (checkpoint next : Fin N → GridRow r)
    (length : ℕ) (hLength : length ≤ n)
    (hNodes : ∀ i, localTape.node i = tape.node (suffixEmbedding start n hTotal i))
    (hAnchors : ∀ k : Fin length,
      localTape.anchor ⟨k.val,by omega⟩ = tape.anchor (suffixEmbedding start n hTotal ⟨k.val,by omega⟩))
    (hCaps : ∀ k : Fin length,
      localTape.caps ⟨k.val,by omega⟩ = tape.caps (suffixEmbedding start n hTotal ⟨k.val,by omega⟩))
    (hInitial : ∀ i, localInitial i = checkpoint (suffixEmbedding start n hTotal i))
    (hNext : ∀ i, length ≤ i.val → localNext i = next (suffixEmbedding start n hTotal i))
    (checked : (localTape.withGeometricCaps upper).BlockCaps 0 localInitial length (by omega) ∧
      ∀ i, length ≤ i.val → (localTape.withGeometricCaps upper).rowAt 0 localInitial length i = localNext i) :
    (tape.withGeometricCaps upper).BlockCaps start checkpoint length (by omega) ∧
      ∀ i, start+length ≤ i.val →
        (tape.withGeometricCaps upper).rowAt start checkpoint length i = next i := by
  have transported := localTape.geometric_blockCaps_checkpoint_of_interval
    (tape.restrictSuffix start n hTotal) upper 0 length (by omega) localInitial
    (checkpoint ∘ suffixEmbedding start n hTotal) localNext (next ∘ suffixEmbedding start n hTotal)
    hNodes (fun k => by simpa only [Nat.zero_add,Tape.restrictSuffix,Function.comp_apply] using hAnchors k)
    (fun k => by simpa only [Nat.zero_add,Tape.restrictSuffix,Function.comp_apply] using hCaps k)
    hInitial (fun i hi => hNext i (by simpa only [Nat.zero_add] using hi))
    ⟨checked.1,fun i hi => checked.2 i (by simpa only [Nat.zero_add] using hi)⟩
  apply (tape.withGeometricCaps upper).blockCaps_checkpoint_of_restrictSuffix
    start n hTotal checkpoint next length hLength
  simpa only [Tape.restrictSuffix_withGeometricCaps,Nat.zero_add,Function.comp_apply] using transported

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
