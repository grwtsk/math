-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomial.Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiJetPolynomial.Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/52/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9--JetPolynomials-01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Finite polynomial identities for the first five theta source derivatives

These are exact scalar polynomial certificates. The positive-mode exponential
factor is kept outside the polynomials. No infinite-series interchange or source
Wronskian sign is asserted by the finite identities alone.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetPolynomial.Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

/-- Polynomial factors in derivatives of a literal theta mode, through order four. -/
def thetaPhiJetPolynomial (k : Fin 5) (y : ℝ) : ℝ :=
  ![2 * y - 3,
    -8 * y ^ 2 + 30 * y - 15,
    32 * y ^ 3 - 224 * y ^ 2 + 330 * y - 75,
    -128 * y ^ 4 + 1440 * y ^ 3 - 4232 * y ^ 2 + 3270 * y - 375,
    512 * y ^ 5 - 8448 * y ^ 4 + 41408 * y ^ 3 -
      68096 * y ^ 2 + 30930 * y - 1875] k

/-- Explicit polynomial bounds valid already at `y ≥ 3`. -/
theorem thetaPhiJetPolynomial_abs_le (k : Fin 5) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial k y| ≤ 2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by dsimp [x]; ring
  rw [he]
  have hplus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> simp only [thetaPhiJetPolynomial, Matrix.cons_val_zero,
      Matrix.cons_val_succ, Fin.val_zero, Fin.val_succ] <;> norm_num <;> ring_nf <;> positivity
  have hminus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> simp only [thetaPhiJetPolynomial, Matrix.cons_val_zero,
      Matrix.cons_val_succ, Fin.val_zero, Fin.val_succ] <;> norm_num <;> ring_nf <;> positivity
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
