# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PR268AnalyticMultiplicityAudit.Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42de9584f74a9ae0fcafd6757ce33620d54989e0` · SHA-256 `ac3471ece989bb9c4a8c165146e10de40b79dce81ff4de73369e5e42bcad5dec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderMulNonvanishing.Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.OrderMulNonvanishing.Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass2/multiplicity_review/PR268AnalyticMultiplicityAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Complex.Basic

/-!
# Analytic multiplicity under normalization and local coordinates

These local theorems preserve the analytic order in `ℕ∞`, including infinite
order. They are generic support for actual-source product and spectral-divisor
comparisons. No determinant, Xi identity, spectral model, or simple spectrum is
constructed here. Zero-set equality alone is explicitly insufficient.

Codex AI authored these adapters and their fixtures, reusing the pinned Mathlib
analytic-order theory. Source attribution and the remaining actual-source and
operator obligations are recorded in `docs/research/spectral/divisor-order.md`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderMulNonvanishing.Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e

namespace FormalResearch.MathematicalTooling.AnalyticMultiplicity

open Filter
open scoped Topology

/-- A nonvanishing analytic normalization preserves the complete local order. -/
theorem order_mul_nonvanishing {f c : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) (hc : AnalyticAt ℂ c z) (hc0 : c z ≠ 0) :
    analyticOrderAt (fun w ↦ c w * f w) z = analyticOrderAt f z := by
  simpa only [Pi.mul_def, hc.analyticOrderAt_eq_zero.mpr hc0, zero_add] using
    analyticOrderAt_mul hc hf

/-- A literal local source identity transports multiplicity through its
nonvanishing normalization. Equality merely of zero sets is not a premise. -/
theorem order_eq_of_local_normalization {f g c : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) (hc : AnalyticAt ℂ c z) (hc0 : c z ≠ 0)
    (hsource : g =ᶠ[𝓝 z] fun w ↦ c w * f w) :
    analyticOrderAt g z = analyticOrderAt f z := by
  exact (analyticOrderAt_congr hsource).trans (order_mul_nonvanishing hf hc hc0)

/-- Local source identification through an unramified coordinate and a
nonvanishing analytic normalization preserves analytic multiplicity. -/
theorem order_eq_of_local_coordinate {f g c φ : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f (φ z)) (hc : AnalyticAt ℂ c z) (hc0 : c z ≠ 0)
    (hφ : AnalyticAt ℂ φ z) (hφ' : deriv φ z ≠ 0)
    (hsource : g =ᶠ[𝓝 z] fun w ↦ c w * f (φ w)) :
    analyticOrderAt g z = analyticOrderAt f (φ z) := by
  calc
    analyticOrderAt g z = analyticOrderAt (f ∘ φ) z :=
      order_eq_of_local_normalization (hf.comp hφ) hc hc0 hsource
    _ = analyticOrderAt f (φ z) := analyticOrderAt_comp_of_deriv_ne_zero hφ hφ'

/-- A simple zero transports only after the exact local multiplicity bridge
and its nonvanishing/unramified hypotheses are supplied. -/
theorem simple_iff_of_local_coordinate {f g c φ : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f (φ z)) (hc : AnalyticAt ℂ c z) (hc0 : c z ≠ 0)
    (hφ : AnalyticAt ℂ φ z) (hφ' : deriv φ z ≠ 0)
    (hsource : g =ᶠ[𝓝 z] fun w ↦ c w * f (φ w)) :
    analyticOrderAt g z = 1 ↔ analyticOrderAt f (φ z) = 1 := by
  rw [order_eq_of_local_coordinate hf hc hc0 hφ hφ' hsource]

/-- Squaring preserves local order away from its ramification point. A grouped
occurrence enumeration still requires its own no-overcounting theorem. -/
theorem order_comp_square {f : ℂ → ℂ} {u : ℂ} (hu : u ≠ 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) u = analyticOrderAt f (u ^ 2) := by
  apply analyticOrderAt_comp_of_deriv_ne_zero (g := fun z : ℂ ↦ z ^ 2) (by fun_prop)
  rw [show deriv (fun z : ℂ ↦ z ^ 2) u = 2 * u by simp]
  exact mul_ne_zero (by norm_num) hu

/-- The opposite square-root coordinates carry the same, undoubled order. -/
theorem order_comp_square_neg {f : ℂ → ℂ} {u : ℂ} (hu : u ≠ 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) (-u) =
      analyticOrderAt (fun z ↦ f (z ^ 2)) u := by
  rw [order_comp_square (neg_ne_zero.mpr hu), order_comp_square hu, neg_sq]

/-- At the excluded coordinate `u = 0`, an analytic square substitution doubles
the complete order. The nonzero-coordinate premise above is essential. -/
theorem order_comp_square_zero {f : ℂ → ℂ} (hf : AnalyticAt ℂ f 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) 0 = analyticOrderAt f 0 * 2 := by
  have hf' : AnalyticAt ℂ f ((0 : ℂ) ^ 2) := by simpa using hf
  have horder : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
    simpa [Pi.pow_def] using
      analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2)
  simpa [Function.comp_def, horder] using
    hf'.analyticOrderAt_comp (g := fun z : ℂ ↦ z ^ 2) (analyticAt_id.pow 2)

/-- A simple and a double zero have identical zero support. -/
theorem same_zero_support_different_order :
    (∀ z : ℂ, z = 0 ↔ z ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ ↦ z) 0 = 1 ∧
      analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
  refine ⟨fun z ↦ (pow_eq_zero_iff (by decide)).symm, ?_, ?_⟩
  · exact analyticOrderAt_id
  · simpa [Pi.pow_def] using
      analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2)

end FormalResearch.MathematicalTooling.AnalyticMultiplicity


open FormalResearch.MathematicalTooling.AnalyticMultiplicity

/-- A genuine nonvanishing normalization transports a simple coordinate zero. -/
example : analyticOrderAt (fun z : ℂ ↦ 3 * (z - 2)) 2 = 1 := by
  have h := order_mul_nonvanishing (f := fun z : ℂ ↦ z - 2)
    (c := fun _ : ℂ ↦ 3) (z := 2) (by fun_prop) (by fun_prop) (by norm_num)
  simpa using h

/-- Both roots of a descended simple zero have order one, each counted once. -/
example :
    analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) 1 = 1 ∧
      analyticOrderAt (fun z : ℂ ↦ z ^ 2 - 1) (-1) = 1 := by
  constructor
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := 1) (by norm_num)
  · simpa using order_comp_square (f := fun z : ℂ ↦ z - 1)
      (u := -1) (by norm_num)

/-- A vanishing normalization may change multiplicity despite equal zero sets. -/
example :
    (∀ z : ℂ, z = 0 ↔ z ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ ↦ z) 0 ≠
        analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 := by
  obtain ⟨hsupport, hsimple, hdouble⟩ := same_zero_support_different_order
  refine ⟨hsupport, ?_⟩
  rw [hsimple, hdouble]
  norm_num

/-- The branch point is ramified, so its order is doubled rather than preserved. -/
example : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
  have hid : analyticOrderAt (fun z : ℂ ↦ z) 0 = 1 := analyticOrderAt_id
  simpa only [hid, one_mul] using order_comp_square_zero (f := fun z : ℂ ↦ z) analyticAt_id

#print axioms order_mul_nonvanishing
#print axioms order_eq_of_local_normalization
#print axioms order_eq_of_local_coordinate
#print axioms simple_iff_of_local_coordinate
#print axioms order_comp_square
#print axioms order_comp_square_neg
#print axioms order_comp_square_zero
#print axioms same_zero_support_different_order
```
