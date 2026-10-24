# integral_Mnear_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190a05eb-1269-140a-36d2-86562b3ef39a",
  "kind": "lemma",
  "lexical_name": "integral_Mnear_le",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "integral-mnear-le--9deda244e16d72a8081648e0",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 467,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9deda244e16d72a8081648e0243aaeb63ec541245fc0a2d4cadfdb7110aac642",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190a05eb-1269-140a-36d2-86562b3ef39a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_Mnear_le (hF : LocalHypsCoreW cϱ p F) (hB : 0 ≤ B) (hT : 1 ≤ p.T) :
    ∫ Δ in Ioc 0 (2 * p.T), Mnear cϱ p B Δ
      ≤ B * ((∫ r in Ioi 0, psiA cϱ p r)
        + p.L / (2 * π) * ((∫ r in Ioi 0, psiA cϱ p r) + cϱ / p.w * Real.log (2 * p.T))) := by
  have hT0 : 0 < p.T := by linarith
  set Ψ' := ∫ r in Ioi 0, psiA cϱ p r with hΨ'
  have hΨ0 : 0 ≤ Ψ' := setIntegral_nonneg measurableSet_Ioi fun r _ => psiA_nonneg_of hF r
  have hc : (0:ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hL := hF.L_pos

  have hmeas : Measurable fun Δ : ℝ => min Ψ' (cϱ / (p.w * Δ)) :=
    measurable_const.min (measurable_const.div (measurable_const.mul measurable_id))
  have hmin_int : ∀ (a b : ℝ), 0 ≤ a →
      IntegrableOn (fun Δ : ℝ => min Ψ' (cϱ / (p.w * Δ))) (Ioc a b) := by
    intro a b ha
    refine Integrable.mono' (g := fun _ => Ψ')
      (integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top))
      hmeas.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with Δ hΔ
    have hΔ0 : 0 < Δ := lt_of_le_of_lt ha hΔ.1
    rw [Real.norm_eq_abs, abs_of_nonneg (le_min hΨ0 (by positivity))]
    exact min_le_left _ _
  -- (1) ∫_{Ioc 0 2T} ψ ≤ Ψ'
  have h1 : ∫ Δ in Ioc 0 (2 * p.T), psiA cϱ p Δ ≤ Ψ' :=
    setIntegral_mono_set hF.psi_integrable.integrableOn
      (Filter.Eventually.of_forall fun r => psiA_nonneg_of hF r)
      (Filter.Eventually.of_forall Ioc_subset_Ioi_self)
  -- (2) ∫_{Ioc 0 2T} min(Ψ', c/(wΔ)) ≤ Ψ' + (c/w) log 2T  (split at Δ = 1)
  have h2 : ∫ Δ in Ioc 0 (2 * p.T), min Ψ' (cϱ / (p.w * Δ)) ≤ Ψ' + cϱ / p.w * Real.log (2 * p.T) := by
    have h12 : (1:ℝ) ≤ 2 * p.T := by linarith
    have hsplit : ∫ Δ in Ioc 0 (2 * p.T), min Ψ' (cϱ / (p.w * Δ))
        = (∫ Δ in Ioc 0 1, min Ψ' (cϱ / (p.w * Δ))) + ∫ Δ in Ioc 1 (2 * p.T), min Ψ' (cϱ / (p.w * Δ)) := by
      rw [← setIntegral_union ?_ measurableSet_Ioc (hmin_int 0 1 le_rfl) (hmin_int 1 _ zero_le_one),
        Set.Ioc_union_Ioc_eq_Ioc zero_le_one h12]
      exact Set.disjoint_left.mpr fun x hx hx' => not_lt.mpr hx.2 hx'.1
    have ha : ∫ Δ in Ioc 0 1, min Ψ' (cϱ / (p.w * Δ)) ≤ Ψ' := by
      calc ∫ Δ in Ioc 0 1, min Ψ' (cϱ / (p.w * Δ)) ≤ ∫ Δ in Ioc (0:ℝ) 1, Ψ' :=
            setIntegral_mono_on (hmin_int 0 1 le_rfl)
              (integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top))
              measurableSet_Ioc (fun Δ _ => min_le_left _ _)
        _ = Ψ' := by rw [setIntegral_const]; simp [Measure.real, Real.volume_Ioc]
    have hb : ∫ Δ in Ioc 1 (2 * p.T), min Ψ' (cϱ / (p.w * Δ))
        ≤ cϱ / p.w * Real.log (2 * p.T) := by
      have hcont : ContinuousOn (fun Δ : ℝ => cϱ / p.w * Δ⁻¹) (Icc 1 (2 * p.T)) := by
        apply ContinuousOn.mul continuousOn_const
        exact (continuousOn_inv₀).mono fun x hx => ne_of_gt (lt_of_lt_of_le one_pos hx.1)
      calc ∫ Δ in Ioc 1 (2 * p.T), min Ψ' (cϱ / (p.w * Δ))
          ≤ ∫ Δ in Ioc 1 (2 * p.T), cϱ / p.w * Δ⁻¹ := by
            refine setIntegral_mono_on (hmin_int 1 _ zero_le_one)
              (hcont.integrableOn_Icc.mono_set Ioc_subset_Icc_self) measurableSet_Ioc ?_
            intro Δ _
            rw [← div_eq_mul_inv, ← div_mul_eq_div_div]
            exact min_le_right _ _
        _ = cϱ / p.w * ∫ Δ in Ioc 1 (2 * p.T), Δ⁻¹ := integral_const_mul _ _
        _ = cϱ / p.w * Real.log (2 * p.T) := by
            rw [← intervalIntegral.integral_of_le h12, integral_inv_of_pos one_pos (by linarith),
              div_one]
    rw [hsplit]; linarith
  unfold Mnear
  rw [integral_const_mul, integral_add hF.psi_integrable.integrableOn
    ((hmin_int 0 _ le_rfl).const_mul _), integral_const_mul]
  refine mul_le_mul_of_nonneg_left (add_le_add h1 ?_) hB
  exact mul_le_mul_of_nonneg_left h2 (by positivity)

/-- far integral (§5.3): ∫_{2T}^∞ Mfar ≤ (d/T)(c/w)(B/2 + 4). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
