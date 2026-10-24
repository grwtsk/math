-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeilFormulaImport.Variant4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WeilFormulaImport.Variant4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_weil_formula_import.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeilFormulaImport.Variant4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12

#print axioms Zeta23.WeilEF.EF_lit_zetaZeroConfig
#print axioms FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.weil_formula
#print axioms FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.smooth_kernel_literature_formula

example (k : ℝ → ℂ) (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun p : FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.ZeroPoint ↦
      (FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.multiplicity p : ℂ) *
        Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) ∧
    (∑' p : FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.ZeroPoint,
      (FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.multiplicity p : ℂ) *
        Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) =
      Zeta23.EF.literatureRHS k :=
  FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.weil_formula k hk hkc
