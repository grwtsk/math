# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InferenceGuards.Variant1284a87950e2048da75ef5483dcce11112318a4fecd9989fb25da4b9d274b503

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff85cc9aa3ec048d966beff95392877f69eae3b` · SHA-256 `d37bdcec4c08b7b886e4b06255646682e45f5d292be0406eb7495273ce99131d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TrivialZeroIsExcluded.Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TrivialZeroIsExcluded.Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/InferenceGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.MathematicalTooling.Reflection.Polarization
import FormalResearch.MathematicalTooling.Reflection.Interval
import FormalResearch.MathematicalTooling.Coverage.Finite
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Tactic.NormNum

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TrivialZeroIsExcluded.Variantf1663ba3d2b04f673e8edf0eb925866ffd2dd86c90b0e6d140b3a15d94d8b29f

namespace FormalResearch.RiemannHypothesis

/-- A genuine trivial zero is excluded from the exact RH domain. -/
theorem trivial_zero_is_excluded :
    riemannZeta (-2) = 0 ∧ ¬ NontrivialZetaZero (-2) := by
  constructor
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · intro h
    exact h.2.1 ⟨0, by norm_num⟩

/-- The pole exclusion remains explicit even in a total-function formalization of zeta. -/
theorem pole_is_excluded : ¬ NontrivialZetaZero 1 := by
  intro h
  exact h.2.2 rfl

/-- The critical-line reflection is not complex multiplication by `i`. -/
theorem critical_reflection_is_not_gaussian_rotation :
    criticalReflection (criticalReflection 1) = 1 ∧
      Complex.I * (Complex.I * 1) ≠ (1 : ℂ) := by
  constructor
  · exact critical_reflection_involutive _
  · norm_num

/-- A Hermitian matrix can have a strictly negative quadratic direction. -/
theorem hermitian_does_not_imply_positive_semidefinite :
    (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧
      ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := by
  constructor
  · simp [Matrix.IsHermitian]
  · intro h
    have hbad := h.dotProduct_mulVec_nonneg (fun _ ↦ 1)
    norm_num [dotProduct, Matrix.mulVec] at hbad

end FormalResearch.RiemannHypothesis
```
