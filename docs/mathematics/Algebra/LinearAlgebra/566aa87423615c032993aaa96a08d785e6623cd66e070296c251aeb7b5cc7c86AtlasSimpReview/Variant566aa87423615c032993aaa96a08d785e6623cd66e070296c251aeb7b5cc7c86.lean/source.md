# Complete source: GRWTSK.Algebra.LinearAlgebra.566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86AtlasSimpReview.Variant566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10a731494541d3ff4aac031010eba4aeeb2aa0bb` · SHA-256 `566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
