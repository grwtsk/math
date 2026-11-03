/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.FormCoreEmbeddingMargin

set_option autoImplicit false

/-! Accounting after an actual vacuum projection, with a retained energy
correction. No projection estimate or physical embedding is assumed to have
been constructed. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ProjectedFormCoreMargin

theorem projected_physical_lower_bound
    (E rawEnergy projectedEnergy normSq projectedNormSq
      scale gap normLoss overlapLoss formLoss projectionLoss : ℝ)
    (hs : 0 ≤ scale) (hg : 0 ≤ gap)
    (hn : (1 - normLoss - overlapLoss) * normSq ≤ projectedNormSq)
    (he : gap * projectedNormSq ≤ projectedEnergy)
    (hp : projectedEnergy - projectionLoss * normSq ≤ rawEnergy)
    (hf : scale * rawEnergy - formLoss * normSq ≤ E) :
    (scale * (gap * (1 - normLoss - overlapLoss) - projectionLoss) - formLoss)
      * normSq ≤ E := by
  have h1 := mul_le_mul_of_nonneg_left hn (mul_nonneg hs hg)
  have h2 := mul_le_mul_of_nonneg_left he hs
  have h3 := mul_le_mul_of_nonneg_left hp hs
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ProjectedFormCoreMargin
