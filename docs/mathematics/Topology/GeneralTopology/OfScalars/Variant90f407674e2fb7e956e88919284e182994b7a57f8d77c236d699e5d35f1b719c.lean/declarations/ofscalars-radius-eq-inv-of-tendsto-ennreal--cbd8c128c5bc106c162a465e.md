# ofScalars_radius_eq_inv_of_tendsto_ENNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18c2abd9-e9f9-0c36-764c-d8664c00f7e1",
  "kind": "theorem",
  "lexical_name": "ofScalars_radius_eq_inv_of_tendsto_ENNReal",
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
  "slug": "ofscalars-radius-eq-inv-of-tendsto-ennreal--cbd8c128c5bc106c162a465e",
  "source": {
    "blob": "e023a4985dca7a2838c80579aa7cd25c54e8bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd8c128c5bc106c162a465e71afc1ff2cbd94a624ec65724e779084bae3c3d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c2abd9-e9f9-0c36-764c-d8664c00f7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_radius_eq_inv_of_tendsto_ENNReal [NormOneClass E] {r : ℝ≥0∞}
    (hc' : Tendsto (fun n ↦ ENNReal.ofReal ‖c n.succ‖ / ENNReal.ofReal ‖c n‖) atTop (𝓝 r)) :
      (ofScalars E c).radius = r⁻¹ := by
  rcases ENNReal.trichotomy r with (hr | hr | hr)
  · simp_rw [hr, inv_zero] at hc' ⊢
    by_cases h : (∀ᶠ (n : ℕ) in atTop, c n ≠ 0)
    · apply ofScalars_radius_eq_top_of_tendsto E c h ?_
      refine Tendsto.congr' ?_ <| (tendsto_toReal zero_ne_top).comp hc'
      filter_upwards [h]
      simp
    · apply (ofScalars E c).radius_eq_top_of_eventually_eq_zero
      simp only [eventually_atTop, not_exists, not_forall, Classical.not_imp, not_not] at h ⊢
      obtain ⟨ti, hti⟩ := eventually_atTop.mp (hc'.eventually_ne zero_ne_top)
      obtain ⟨zi, hzi, z⟩ := h ti
      refine ⟨zi, Nat.le_induction (ofScalars_eq_zero_of_scalar_zero E z) fun n hmn a ↦ ?_⟩
      nontriviality E
      simp only [ofScalars_eq_zero] at a ⊢
      contrapose! hti
      exact ⟨n, hzi.trans hmn, ENNReal.div_eq_top.mpr (by simp [a, hti])⟩
  · simp_rw [hr, inv_top] at hc' ⊢
    apply ofScalars_radius_eq_zero_of_tendsto E c ((tendsto_add_atTop_iff_nat 1).mp ?_)
    refine tendsto_ofReal_nhds_top.mp (Tendsto.congr' ?_ ((tendsto_add_atTop_iff_nat 1).mpr hc'))
    filter_upwards [hc'.eventually_ne top_ne_zero] with n hn
    apply (ofReal_div_of_pos (Ne.lt_of_le (Ne.symm ?_) (norm_nonneg _))).symm
    aesop
  · have hr' := toReal_ne_zero.mp hr.ne.symm
    have hr'' := toNNReal_ne_zero.mpr hr' -- this result could go in ENNReal
    convert ofScalars_radius_eq_inv_of_tendsto E c hr'' ?_
    · simp [ENNReal.coe_inv hr'', ENNReal.coe_toNNReal (toReal_ne_zero.mp hr.ne.symm).2]
    · simp_rw [ENNReal.coe_toNNReal_eq_toReal]
      refine Tendsto.congr' ?_ <| (tendsto_toReal hr'.2).comp hc'
      filter_upwards [hc'.eventually_ne hr'.1, hc'.eventually_ne hr'.2]
      simp

end Normed

end FormalMultilinearSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e023a4985dca7a2838c80579aa7cd25c54e8bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
