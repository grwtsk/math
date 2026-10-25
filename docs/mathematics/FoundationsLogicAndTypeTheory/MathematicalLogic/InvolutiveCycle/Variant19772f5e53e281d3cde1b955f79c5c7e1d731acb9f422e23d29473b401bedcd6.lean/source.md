# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvolutiveCycle.Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b4a06a3a583bdca093861eb0c3734692c76eadf` · SHA-256 `0356b9b5254c7ca0fbf5aade5b9b1e2888e0c8c4dd7d031c73a7af779de6b6ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CycleDirection.Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CycleDirection.Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8","mathematical_subject":"Logic.Foundations","original_sha256":"fcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/FiniteDynamics/InvolutiveCycle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.FiniteDynamics.Involution
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Cycles whose traversed edges are certified involutions

Direction is explicit data.  A positive-period cycle stores an embedding of
its cyclic indices into the carrier and one certified involution for every
edge.  The advance law fixes which endpoint each edge reaches; it does not
identify forward and reverse traversal.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CycleDirection.Variantfcd3019cc6fbdd4de1989fc30b03bc90947b260d94ee2b7a4d904ae92f0879b8

namespace FinitePermutationDynamics

universe u

/-- Traversal direction for an ordered finite cycle. -/
inductive CycleDirection
  | forward
  | reverse
  deriving DecidableEq, Repr

namespace CycleDirection

@[simp]
def opposite : CycleDirection → CycleDirection
  | .forward => .reverse
  | .reverse => .forward

@[simp]
theorem opposite_opposite (d : CycleDirection) : d.opposite.opposite = d := by
  cases d <;> rfl

end CycleDirection

/-- Cyclic successor on a nonempty finite index type. -/
def cycleSuccessor {period : Nat} (_positive : 0 < period) :
    Equiv.Perm (Fin period) :=
  finRotate period

/-- Cyclic predecessor, definitionally the inverse successor. -/
def cyclePredecessor {period : Nat} (positive : 0 < period) :
    Equiv.Perm (Fin period) :=
  (cycleSuccessor positive).symm

@[simp]
theorem cyclePredecessor_successor {period : Nat} (positive : 0 < period)
    (k : Fin period) :
    cyclePredecessor positive (cycleSuccessor positive k) = k := by
  simp [cyclePredecessor]

@[simp]
theorem cycleSuccessor_predecessor {period : Nat} (positive : 0 < period)
    (k : Fin period) :
    cycleSuccessor positive (cyclePredecessor positive k) = k := by
  simp [cyclePredecessor]

/-- A positively indexed cycle whose individual edge actions are involutions. -/
structure InvolutiveCycle
    (X : Type u) [Fintype X] [DecidableEq X] where
  period : Nat
  positive : 0 < period
  orbit : Fin period ↪ X
  edge : Fin period → CertifiedInvolution X
  advances :
    ∀ k, (edge k).act (orbit k) = orbit (cycleSuccessor positive k)

namespace InvolutiveCycle

variable {X : Type u} [Fintype X] [DecidableEq X]

theorem orbit_injective (cycle : InvolutiveCycle X) :
    Function.Injective cycle.orbit :=
  cycle.orbit.injective

theorem edge_returns (cycle : InvolutiveCycle X) (k : Fin cycle.period) :
    (cycle.edge k).act
        (cycle.orbit (cycleSuccessor cycle.positive k)) =
      cycle.orbit k := by
  rw [← cycle.advances k]
  exact (cycle.edge k).involutive _

/-- Transport all vertices and edge actions through an equivalence. -/
def transport
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : InvolutiveCycle X) : InvolutiveCycle Y where
  period := cycle.period
  positive := cycle.positive
  orbit := cycle.orbit.trans e.toEmbedding
  edge k := (cycle.edge k).transport e
  advances k := by
    simp [cycle.advances]

@[simp]
theorem transport_orbit
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : InvolutiveCycle X) (k : Fin cycle.period) :
    (cycle.transport e).orbit k = e (cycle.orbit k) :=
  rfl

@[simp]
theorem transport_edge_act
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : InvolutiveCycle X) (k : Fin cycle.period) (y : Y) :
    ((cycle.transport e).edge k).act y =
      e ((cycle.edge k).act (e.symm y)) :=
  rfl

end InvolutiveCycle

/-- An involutive cycle together with a declared traversal direction. -/
structure DirectedCycleQuantum
    (X : Type u) [Fintype X] [DecidableEq X]
    extends InvolutiveCycle X where
  direction : CycleDirection

namespace DirectedCycleQuantum

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- Reverse only the traversal designation; the anchored cycle is unchanged. -/
def reverse (cycle : DirectedCycleQuantum X) : DirectedCycleQuantum X :=
  { cycle with direction := cycle.direction.opposite }

@[simp]
theorem reverse_direction (cycle : DirectedCycleQuantum X) :
    cycle.reverse.direction = cycle.direction.opposite :=
  rfl

@[simp]
theorem reverse_reverse (cycle : DirectedCycleQuantum X) :
    cycle.reverse.reverse = cycle := by
  rcases cycle with ⟨base, direction⟩
  cases direction <;> rfl

/-- Transport a directed cycle without changing its direction. -/
def transport
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : DirectedCycleQuantum X) : DirectedCycleQuantum Y where
  toInvolutiveCycle := cycle.toInvolutiveCycle.transport e
  direction := cycle.direction

@[simp]
theorem transport_direction
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : DirectedCycleQuantum X) :
    (cycle.transport e).direction = cycle.direction :=
  rfl

end DirectedCycleQuantum

end FinitePermutationDynamics
```
