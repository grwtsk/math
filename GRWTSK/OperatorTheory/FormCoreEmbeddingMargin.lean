/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-! Scalar accounting for an actual form-core embedding, if supplied.
Norm and form errors refer to the same vector and regulator. No physical
embedding, continuum form or uniform margin is constructed here.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.FormCoreEmbeddingMargin

theorem physical_energy_lower_bound
    (physicalEnergy regulatedEnergy physicalNormSq regulatedNormSq
      scale gap normLoss formLoss : ℝ)
    (hscale : 0 ≤ scale) (hgap : 0 ≤ gap)
    (hregulated : gap * regulatedNormSq ≤ regulatedEnergy)
    (hnorm : (1 - normLoss) * physicalNormSq ≤ regulatedNormSq)
    (hform : scale * regulatedEnergy - formLoss * physicalNormSq ≤ physicalEnergy) :
    (scale * gap * (1 - normLoss) - formLoss) * physicalNormSq ≤ physicalEnergy := by
  have hn := mul_le_mul_of_nonneg_left hnorm (mul_nonneg hscale hgap)
  have he := mul_le_mul_of_nonneg_left hregulated hscale
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.FormCoreEmbeddingMargin
