# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroTestRegularity.Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d0e3168293b21b8c4b65add9302bd486f959a4f` · SHA-256 `eb82f06f71249ee220eaeffe02c215682cbe019c5ef33f122d190e2c77ffee3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TestInterior.Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.TestInterior.Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190","mathematical_subject":"Analysis.Calculus","original_sha256":"1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroTestRegularity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets

/-!
# Regularity of the unnormalized zero-side test

These lemmas supply the actual `F_A` used in RH-0010 (15)–(16) to the
smoothing construction. They retain its original normalization and prove
regularity across both zero-extension seams. They do not assert the smooth
explicit formula or the B3.2 identity.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TestInterior.Variant1a0078c6cc1ea4965f84f90252492cac7856de57f28e63f22fda94318bc64190

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroTestRegularity

open MeasureTheory Set
open scoped ContDiff Topology
open ZeroSideTargets Realization CorrelationRegularity

noncomputable section

/-- The exact unnormalized interior polynomial, before zero extension. -/
def testInterior (A x : ℝ) : ℝ := secondInterior A x - bumpInterior A x / 4

/-- Its ordinary first derivative, including the source scale factors. -/
def testInteriorDerivative (A x : ℝ) : ℝ := thirdInterior A x - firstInterior A x / 4

/-- The original zero-side test is precisely this closed-interval zero extension. -/
theorem actualTest_eq_indicator (A : ℝ) (hA : 1 ≤ A) :
    actualTest A = (Icc (-A) A).indicator (testInterior A) :=
  explicit_dilationTest_eq_indicator A (by linarith)

/-- Differentiation is polynomial computation, without an analytic admission premise. -/
theorem testInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (testInterior A) (testInteriorDerivative A x) x :=
  (secondInterior_hasDerivAt A x).sub ((bumpInterior_hasDerivAt A x).div_const 4)

/-- Both traces vanish at the two support endpoints. -/
theorem testInterior_frontier (A : ℝ) (hA : 1 ≤ A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    testInterior A x = 0 ∧ testInteriorDerivative A x = 0 := by
  have hne : A ≠ 0 := by linarith
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [testInterior, testInteriorDerivative,
      (bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2,
      (firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2,
      (secondInterior_endpoints A hne).1, (secondInterior_endpoints A hne).2,
      (thirdInterior_endpoints A hne).1, (thirdInterior_endpoints A hne).2]

/-- Global C¹ regularity of the actual unnormalized test includes both seams. -/
theorem actualTest_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (actualTest A) := by
  rw [actualTest_eq_indicator A hA, contDiff_one_iff_deriv]
  have hd := indicator_hasDerivAt (s := Icc (-A) A)
    (testInterior_hasDerivAt A) (testInterior_frontier A hA)
  refine ⟨fun x ↦ (hd x).differentiableAt, ?_⟩
  have heq : deriv ((Icc (-A) A).indicator (testInterior A)) =
      (Icc (-A) A).indicator (testInteriorDerivative A) := funext fun x ↦ (hd x).deriv
  rw [heq]
  have hc : Continuous (testInteriorDerivative A) := by
    unfold testInteriorDerivative thirdInterior firstInterior
    fun_prop
  exact hc.indicator (fun x hx ↦ (testInterior_frontier A hA x hx).2)

/-- Pointwise support control retains the original closed endpoints. -/
theorem actualTest_zero_of_notMem (A : ℝ) (hA : 1 ≤ A) (x : ℝ)
    (hx : x ∉ Icc (-A) A) : actualTest A x = 0 := by
  rw [actualTest_eq_indicator A hA]
  exact indicator_of_notMem hx _

/-- The source test has no support outside its exact interval. -/
theorem actualTest_support_subset (A : ℝ) (hA : 1 ≤ A) :
    Function.support (actualTest A) ⊆ Icc (-A) A := by
  intro x hx
  by_contra h
  exact hx (actualTest_zero_of_notMem A hA x h)

/-- Compact support is established before applying convolution theorems. -/
theorem actualTest_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (actualTest A) :=
  exists_compact_iff_hasCompactSupport.mp
    ⟨Icc (-A) A, isCompact_Icc, actualTest_zero_of_notMem A hA⟩

/-- The exact real polynomial and its symmetric support are even. -/
theorem actualTest_even (A : ℝ) (hA : 1 ≤ A) : Function.Even (actualTest A) := by
  intro x
  rw [actualTest_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]
  simp [indicator_apply, hm, testInterior, secondInterior, bumpInterior, neg_div]
  split_ifs <;> ring

/-- Genuine integrability follows from the proved continuous compact source test. -/
theorem actualTest_integrable (A : ℝ) (hA : 1 ≤ A) : Integrable (actualTest A) volume :=
  (actualTest_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA)

end
end ZeroTestRegularity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
