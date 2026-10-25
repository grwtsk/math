# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Implication.Variante8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2be83fb9261ba85d1d8c40cfd87c15935504ee9c` · SHA-256 `e8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Rhetorical.Relations.Affinity

/-!
# Directed implication channel

Numerical implication affinity is the premise-to-conclusion cross-role block.
It is deliberately distinct from proof-bearing implication.  Hermitian
symmetry relates the reverse *role-swapped* entry, not the score obtained by
swapping concepts while keeping premise and conclusion roles fixed.
-/

noncomputable section

namespace DAF.Rhetorical

/-- Directed premise/conclusion affinity.  A null endpoint returns `none`. -/
def implicationAffinity
    (kernel : PositiveKernel RhetoricalIndex)
    (premise conclusion : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (premiseVector kernel premise)
    (conclusionVector kernel conclusion)

/-- Every defined implication affinity is Cauchy--Schwarz bounded. -/
theorem implicationAffinity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {premise conclusion : Universe.ConceptId}
    {score : ℝ}
    (computed : implicationAffinity kernel premise conclusion = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- Proof-bearing implication keeps its theorem identity and proof term.  No
constructor consumes an affinity score. -/
structure CertifiedImplication
    (interpret : Universe.ConceptId → Prop) where
  premise : Universe.ConceptId
  conclusion : Universe.ConceptId
  theoremId : Universe.TerrainNodeId
  proof : interpret premise → interpret conclusion

namespace CertifiedImplication

variable {interpret : Universe.ConceptId → Prop}

/-- Applying certified implication uses only the stored proof. -/
theorem apply
    (certificate : CertifiedImplication interpret)
    (premiseProof : interpret certificate.premise) :
    interpret certificate.conclusion :=
  certificate.proof premiseProof

end CertifiedImplication

end DAF.Rhetorical
```
