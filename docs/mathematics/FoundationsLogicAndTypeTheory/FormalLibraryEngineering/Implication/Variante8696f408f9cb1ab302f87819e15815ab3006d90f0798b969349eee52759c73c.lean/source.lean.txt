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
