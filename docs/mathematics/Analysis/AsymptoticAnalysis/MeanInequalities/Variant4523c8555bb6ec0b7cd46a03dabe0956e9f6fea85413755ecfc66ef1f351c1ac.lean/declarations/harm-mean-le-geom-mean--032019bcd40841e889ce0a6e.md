# harm_mean_le_geom_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:498a7584-62c9-3908-ed80-f79133dc82d1",
  "kind": "theorem",
  "lexical_name": "harm_mean_le_geom_mean",
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
  "slug": "harm-mean-le-geom-mean--032019bcd40841e889ce0a6e",
  "source": {
    "blob": "9666dfd38e6814c2fa05f62bef682868468c0bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 387,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032019bcd40841e889ce0a6e97c3f9fc0b9728e3f295744101e17896619bb2c4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498a7584-62c9-3908-ed80-f79133dc82d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harm_mean_le_geom_mean {ι : Type*} (s : Finset ι) (hs : s.Nonempty) (w : ι → ℝ)
    (z : ι → ℝ) (hw : ∀ i ∈ s, 0 < w i) (hw' : 0 < ∑ i ∈ s, w i) (hz : ∀ i ∈ s, 0 < z i) :
    (∑ i ∈ s, w i) / (∑ i ∈ s, w i / z i) ≤ (∏ i ∈ s, z i ^ w i) ^ (∑ i ∈ s, w i)⁻¹ := by
  have := harm_mean_le_geom_mean_weighted s (fun i => (w i) / ∑ i ∈ s, w i) z hs ?_ ?_ hz
  · simp only at this
    set n := ∑ i ∈ s, w i
    nth_rw 1 [div_eq_mul_inv, (show n = (n⁻¹)⁻¹ by norm_num), ← mul_inv, Finset.mul_sum _ _ n⁻¹]
    simp_rw [inv_mul_eq_div n ((w _)/(z _)), div_right_comm _ _ n]
    convert this
    rw [← Real.finset_prod_rpow s _ (fun i hi ↦ Real.rpow_nonneg (le_of_lt <| hz i hi) _)]
    refine Finset.prod_congr rfl (fun i hi => ?_)
    rw [← Real.rpow_mul (le_of_lt <| hz i hi) (w _) n⁻¹, div_eq_mul_inv (w _) n]
  · exact fun i hi ↦ div_pos (hw i hi) hw'
  · simp_rw [div_eq_mul_inv (w _) (∑ i ∈ s, w i), ← Finset.sum_mul _ _ (∑ i ∈ s, w i)⁻¹]
    exact mul_inv_cancel₀ hw'.ne'

end Real

end HarmMeanLEGeomMean


section Young

/-! ### Young's inequality -/


namespace Real

/-- **Young's inequality**, a version for nonnegative real numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9666dfd38e6814c2fa05f62bef682868468c0bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
