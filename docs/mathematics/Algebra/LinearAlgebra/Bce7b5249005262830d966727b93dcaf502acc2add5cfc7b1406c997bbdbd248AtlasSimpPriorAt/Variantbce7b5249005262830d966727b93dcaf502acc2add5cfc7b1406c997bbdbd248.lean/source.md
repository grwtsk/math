# Complete source: GRWTSK.Algebra.LinearAlgebra.Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt.Variantbce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `114e029f4cbf572dceff4040e2cb15e480121c63` · SHA-256 `bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.ScalarSchur

set_option autoImplicit false
namespace FormalResearch.PositiveAtlas
open MomentCumulant
universe u v

attribute [local simp] BlockSchurSolver.residual_autonomous
  MomentCumulant.orderedBlockEquivParts_apply_val scalarProvenanceResidual_apply

example {n : ℕ} (B : Finset (Fin n)) (j : Fin B.card) :
    ((blockOrderIso B j).1 : Fin n) ∈ B := by simp

section Blocks
variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P] [AddCommGroup U] [Module ℝ U]
variable {G : PositiveForm (P × U)}
example (S : BlockSchurSolver G) (u : U) :
    S.project (autonomousInclusion u) = provenanceInclusion (S.solve u) := by simp
example (S : BlockSchurSolver G) (u : U) :
    S.projector.residualMap (autonomousInclusion u) =
      autonomousInclusion u - provenanceInclusion (S.solve u) := by simp
end Blocks

example {V : Type u} {X : Type v}
    [AddCommGroup V] [Module ℝ V] [AddCommGroup X] [Module ℝ X]
    (I : LinearIntervention X V) (x : X) :
    (LinearComparator.zero : LinearComparator V).responseDifference I x = 0 := by simp

example {n : ℕ} (c : OrderedFinpartition n) (m : Fin c.length) :
    ((orderedBlockEquivParts c m : (orderedToDirectionPartition c).parts) : Finset (Fin n)) =
      orderedBlock c m := by simp

example {V : Type u} [AddCommGroup V] [Module ℝ V] (z : V × V) :
    swapInvolution (swapInvolution z) = z := by simp

example (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) (x : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualMap x =
      (-(b / a) * x.2, x.2) := by simp
end FormalResearch.PositiveAtlas
```
