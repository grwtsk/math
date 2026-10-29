-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CarrierEq.Variante15ffea52ea7945974e9c841123640d797889a9e600df4f9230e55d6c1d8fae6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e15ffea52ea7945974e9c841123640d797889a9e600df4f9230e55d6c1d8fae6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CarrierEq.Variante15ffea52ea7945974e9c841123640d797889a9e600df4f9230e55d6c1d8fae6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e15ffea52ea7945974e9c841123640d797889a9e600df4f9230e55d6c1d8fae6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/ZeroSide/WeilFormulaImport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.WeilEF.Main
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport

/-!
# Pinned Weil explicit-formula import for Z2.6

This module exposes only the proved literature-form explicit formula from the
pinned external dependency and specializes it to the already constructed smooth
source kernel.

The external zero carrier is definitionally the repository's actual open-strip
zeta-zero carrier, and its weight is the same analytic multiplicity. The result
of specialization is intentionally left as `Zeta23.EF.literatureRHS`; transport
of that RHS to the independently defined source arithmetic form is a separate
Z2.6 increment.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CarrierEq.Variante15ffea52ea7945974e9c841123640d797889a9e600df4f9230e55d6c1d8fae6

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject
open SmoothExplicitFormula
open SmoothExplicitFormulaTransport

noncomputable section

/-- The external explicit-formula carrier is exactly the actual open-strip
zeta-zero predicate used by the frozen source object. -/
theorem carrier_eq :
    Zeta23.zetaZeroConfig.carrier =
      {z : ℂ | riemannZeta z = 0 ∧ 0 < z.re ∧ z.re < 1} := rfl

/-- The external coefficient is the same analytic multiplicity, with no
simplicity assumption. -/
theorem multiplicity_eq (p : ZeroPoint) :
    Zeta23.zetaZeroConfig.mult p.val = multiplicity p := rfl

/-- The unconditional pinned explicit formula, restated on the repository's
actual distinct-zero carrier. -/
theorem weil_formula (k : ℝ → ℂ) (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) :
    Summable (fun p : ZeroPoint ↦ (multiplicity p : ℂ) *
      Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) ∧
    (∑' p : ZeroPoint, (multiplicity p : ℂ) *
      Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) =
        Zeta23.EF.literatureRHS k :=
  Zeta23.WeilEF.EF_lit_zetaZeroConfig k hk hkc

/-- The source's named smooth transform is definitionally the literature
Fourier transform used by the imported formula. -/
theorem paperFT_smoothKernel (A ε : ℝ) (hε : 0 < ε) (w : ℂ) :
    Zeta23.paperFT (smoothKernel A ε hε) w =
      smoothKernelFT A ε hε w := rfl

/-- Specialization of the proved external formula to the prescribed smooth
source. The arithmetic side is deliberately still the literature RHS. -/
theorem smooth_kernel_literature_formula
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Summable (kernelPointTerm A ε hε) ∧
    (∑' p : ZeroPoint, kernelPointTerm A ε hε p) =
      Zeta23.EF.literatureRHS (smoothKernel A ε hε) := by
  have hadm := smooth_kernel_admission A ε hA hε hε1
  have h := weil_formula (smoothKernel A ε hε) hadm.1 hadm.2.1
  exact h

end
end FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
