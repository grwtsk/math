-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictRankCompletion.Varianta7dd82e2af894ff575bd9f40fe6f1a44b799e0696e39988e5bb861cc86c10576","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7dd82e2af894ff575bd9f40fe6f1a44b799e0696e39988e5bb861cc86c10576","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictRankCompletion.Varianta7dd82e2af894ff575bd9f40fe6f1a44b799e0696e39988e5bb861cc86c10576","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a7dd82e2af894ff575bd9f40fe6f1a44b799e0696e39988e5bb861cc86c10576","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/KQHArithmeticRankCompletion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith

/-!
# Exact rank-one completion algebra

These proved algebraic ingredients supply neither the native signed arithmetic
inequality nor a uniform scalar cap. The zero-margin example records the cross
term which a rank-one completion cannot repair. Research direction and
evaluation: grwtsk contributors. Derivation and formalization: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictRankCompletion.Varianta7dd82e2af894ff575bd9f40fe6f1a44b799e0696e39988e5bb861cc86c10576

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.KQHArithmeticRankCompletion

/-- A strict scalar margin pays the entire crossed term by an exact square. -/
theorem strict_rank_completion (a b d x y : ℝ) (ha : 0 < a) :
    0 ≤ a * x ^ 2 + 2 * b * x * y +
      (d + (b ^ 2 / a - d)) * y ^ 2 := by
  have he : a * x ^ 2 + 2 * b * x * y +
      (d + (b ^ 2 / a - d)) * y ^ 2 =
      a * (x + b / a * y) ^ 2 := by field_simp [ha.ne']; ring
  rw [he]
  positivity

/-- The transverse rank factor is paid with its actual squared length. -/
theorem strict_rank_completion_scaled (a b d s x y : ℝ) (ha : 0 < a)
    (hs : s ≠ 0) :
    0 ≤ a * x ^ 2 + 2 * b * x * y +
      (d + ((b ^ 2 / a - d) / s ^ 2) * s ^ 2) * y ^ 2 := by
  rw [div_mul_cancel₀ _ (pow_ne_zero _ hs)]
  exact strict_rank_completion a b d x y ha

/-- At zero scalar margin a nonzero cross term defeats every transverse penalty. -/
theorem zero_margin_cross_obstruction (k : ℝ) :
    ¬ ∀ x y : ℝ, 0 ≤ 2 * x * y + k * y ^ 2 := by
  intro h
  have hc := h (-(k + 1) / 2) 1
  norm_num at hc
  linarith

/-- The independently defined continuum's growing rank-one component can be
removed exactly. Here `a=H0/8-H''0/(2*A^2)>0` and `u=A^2`; the original
continuum `J22` then equals `u^2*(H0/4-a)`. -/
theorem continuous_baseline_certificate (I h a u x y : ℝ)
    (ha : 0 < a) (hh : h ≠ 0) :
    0 ≤ (I + h ^ 2 / (4 * a)) * (x + u * y / 4) ^ 2 -
      (I * (x + u * y / 4) ^ 2 + h * u * x * y +
        u ^ 2 * (h / 4 - a) * y ^ 2) := by
  have he : (I + h ^ 2 / (4 * a)) * (x + u * y / 4) ^ 2 -
      (I * (x + u * y / 4) ^ 2 + h * u * x * y +
        u ^ 2 * (h / 4 - a) * y ^ 2) =
      h ^ 2 / (4 * a) * (x + u * (1 / 4 - 2 * a / h) * y) ^ 2 := by
    field_simp [ha.ne', hh]
    ring
  rw [he]
  positivity

end FormalResearch.RiemannHypothesis.KQHArithmeticRankCompletion
