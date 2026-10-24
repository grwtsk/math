# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient.Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10048b6982a9a9d54b4ff758d2ea2bb7fa3c33c4` · SHA-256 `5ca190e5b516f9451e3b64168237640af66365324ffe0a49abd6b1f5adcb829a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryQuotientFactorDraft.Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BoundaryQuotientFactorDraft.Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f","mathematical_subject":"Analysis.Calculus","original_sha256":"824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/82/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f--BoundaryQuotientDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.AnalyticMultiplicity
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Mul

/-!
UNCOMPILED, IGNORED PROOF DRAFT for issue #240. No declaration here is an
accepted theorem or an axiom. Codex authored this draft from pinned Mathlib APIs.
Compilation is intentionally pending the serialized repository verifier.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryQuotientFactorDraft.Variant824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27f

open Filter
open scoped Topology

namespace FormalResearch.MathematicalTooling.AnalyticMultiplicity

/-- Candidate local factorization of the original total quotient, including its center value. -/
theorem boundary_quotient_factor_draft {f u : ℂ → ℂ} {z₀ : ℂ} (n : ℕ)
    (hu : AnalyticAt ℂ u z₀) (hu0 : u z₀ ≠ 0)
    (hfactor : f =ᶠ[𝓝 z₀] fun w ↦ (w - z₀) ^ (n + 1) * u w) :
    ∃ v : ℂ → ℂ, AnalyticAt ℂ v z₀ ∧ v z₀ ≠ 0 ∧
      (fun w ↦ f w / (f w + deriv f w)) =ᶠ[𝓝 z₀]
        (fun w ↦ (w - z₀) * (u w / v w)) := by
  let v : ℂ → ℂ := fun w ↦ ((n + 1 : ℕ) : ℂ) * u w +
    (w - z₀) * (u w + deriv u w)
  have hv : AnalyticAt ℂ v z₀ := by
    dsimp only [v]
    exact (analyticAt_const.mul hu).add
      ((analyticAt_id.sub analyticAt_const).mul (hu.add hu.deriv))
  have hv0 : v z₀ ≠ 0 := by
    dsimp only [v]
    simp only [sub_self, zero_mul, add_zero]
    exact mul_ne_zero (Nat.cast_ne_zero.mpr (by omega)) hu0
  have hf0 : f z₀ = 0 := by
    simpa using hfactor.self_of_nhds
  have hderiv : deriv f =ᶠ[𝓝 z₀] fun w ↦
      ((n + 1 : ℕ) : ℂ) * (w - z₀) ^ n * u w +
        (w - z₀) ^ (n + 1) * deriv u w := by
    filter_upwards [hfactor.deriv, hu.eventually_analyticAt] with w hw hau
    have hd := (((hasDerivAt_id w).sub_const z₀).fun_pow (n + 1)).fun_mul
      hau.differentiableAt.hasDerivAt
    exact hw.trans (by simpa using hd.deriv)
  refine ⟨v, hv, hv0, ?_⟩
  filter_upwards [hfactor, hderiv, hv.continuousAt.eventually_ne hv0] with w hfw hdfw hvw
  by_cases hw0 : w = z₀
  · subst w
    simp [hf0]
  · have hp : (w - z₀) ^ n ≠ 0 := pow_ne_zero _ (sub_ne_zero.mpr hw0)
    have hden : f w + deriv f w = (w - z₀) ^ n * v w := by
      rw [hfw, hdfw]
      dsimp only [v]
      simp only [pow_succ]
      ring
    rw [hden, hfw, pow_succ]
    field_simp [hp, hvw] <;> ring

/-- Candidate general finite positive-order result, retaining the original total quotient. -/
theorem boundary_quotient_of_succ_order_draft {f : ℂ → ℂ} {z₀ : ℂ} (n : ℕ)
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = (n + 1 : ℕ)) :
    AnalyticAt ℂ (fun w ↦ f w / (f w + deriv f w)) z₀ ∧
      analyticOrderAt (fun w ↦ f w / (f w + deriv f w)) z₀ = 1 := by
  obtain ⟨u, hu, hu0, hfactor⟩ := hf.analyticOrderAt_eq_natCast.mp horder
  have hfactor' : f =ᶠ[𝓝 z₀] fun w ↦ (w - z₀) ^ (n + 1) * u w := by
    simpa only [smul_eq_mul] using hfactor
  obtain ⟨v, hv, hv0, hq⟩ := boundary_quotient_factor_draft n hu hu0 hfactor'
  have hc : AnalyticAt ℂ (fun w ↦ u w / v w) z₀ := hu.div hv hv0
  have hc0 : u z₀ / v z₀ ≠ 0 := div_ne_zero hu0 hv0
  have hqa : AnalyticAt ℂ (fun w ↦ (w - z₀) * (u w / v w)) z₀ :=
    (analyticAt_id.sub analyticAt_const).mul hc
  have hsource : (fun w ↦ f w / (f w + deriv f w)) =ᶠ[𝓝 z₀]
      (fun w ↦ (u w / v w) * id (w - z₀)) := by
    filter_upwards [hq] with w hw
    exact hw.trans (mul_comm _ _)
  refine ⟨hqa.congr hq.symm, ?_⟩
  simpa using order_eq_of_local_coordinate (f := id)
    (g := fun w ↦ f w / (f w + deriv f w)) (c := fun w ↦ u w / v w)
    (φ := fun w ↦ w - z₀) analyticAt_id hc hc0 (by fun_prop) (by simp) hsource

/-- Candidate natural-order wrapper with the exact all-m≥1 quantifier. -/
theorem boundary_quotient_simple_draft {f : ℂ → ℂ} {z₀ : ℂ} {m : ℕ}
    (hf : AnalyticAt ℂ f z₀) (hm : 0 < m) (horder : analyticOrderAt f z₀ = m) :
    AnalyticAt ℂ (fun w ↦ f w / (f w + deriv f w)) z₀ ∧
      analyticOrderAt (fun w ↦ f w / (f w + deriv f w)) z₀ = 1 := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hm)
  exact boundary_quotient_of_succ_order_draft n hf horder

-- UNCOMPILED exact fixtures, to be moved into the focused test module only
-- after this draft compiles without admissions.
example : analyticOrderAt (fun w : ℂ ↦ w ^ 1) 0 = 1 ∧
    AnalyticAt ℂ (fun w : ℂ ↦ w ^ 1 / (w ^ 1 + deriv (fun w : ℂ ↦ w ^ 1) w)) 0 ∧
    analyticOrderAt (fun w : ℂ ↦ w ^ 1 / (w ^ 1 + deriv (fun w : ℂ ↦ w ^ 1) w)) 0 = 1 := by
  have horder : analyticOrderAt (fun w : ℂ ↦ w ^ 1) 0 = 1 := by
    simpa [Pi.pow_def] using analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 1)
  exact ⟨horder, boundary_quotient_simple_draft (m := 1) (by fun_prop) (by decide) horder⟩

example : analyticOrderAt (fun w : ℂ ↦ w ^ 2) 0 = 2 ∧
    AnalyticAt ℂ (fun w : ℂ ↦ w ^ 2 / (w ^ 2 + deriv (fun w : ℂ ↦ w ^ 2) w)) 0 ∧
    analyticOrderAt (fun w : ℂ ↦ w ^ 2 / (w ^ 2 + deriv (fun w : ℂ ↦ w ^ 2) w)) 0 = 1 := by
  have horder : analyticOrderAt (fun w : ℂ ↦ w ^ 2) 0 = 2 := by
    simpa [Pi.pow_def] using analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2)
  exact ⟨horder, boundary_quotient_simple_draft (m := 2) (by fun_prop) (by decide) horder⟩

example : analyticOrderAt (fun w : ℂ ↦ w ^ 3) 0 = 3 ∧
    AnalyticAt ℂ (fun w : ℂ ↦ w ^ 3 / (w ^ 3 + deriv (fun w : ℂ ↦ w ^ 3) w)) 0 ∧
    analyticOrderAt (fun w : ℂ ↦ w ^ 3 / (w ^ 3 + deriv (fun w : ℂ ↦ w ^ 3) w)) 0 = 1 := by
  have horder : analyticOrderAt (fun w : ℂ ↦ w ^ 3) 0 = 3 := by
    simpa [Pi.pow_def] using analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 3)
  exact ⟨horder, boundary_quotient_simple_draft (m := 3) (by fun_prop) (by decide) horder⟩

-- No zero-set support equality at every point is claimed for total rational
-- functions: total division can introduce zeros at poles away from the local germ.

end FormalResearch.MathematicalTooling.AnalyticMultiplicity
```
