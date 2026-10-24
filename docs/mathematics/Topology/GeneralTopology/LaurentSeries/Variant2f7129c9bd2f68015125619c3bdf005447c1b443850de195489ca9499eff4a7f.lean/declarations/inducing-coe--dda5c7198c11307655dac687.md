# inducing_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7538ae83-384b-77f9-81b2-2c3ae5393586",
  "kind": "theorem",
  "lexical_name": "inducing_coe",
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
  "slug": "inducing-coe--dda5c7198c11307655dac687",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 937,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda5c7198c11307655dac687167a5b3d1f0f9112eec0522865298602f30ff5f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7538ae83-384b-77f9-81b2-2c3ae5393586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 937–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducing_coe : IsUniformInducing ((↑) : K⟮X⟯ → K⸨X⸩) := by
  rw [isUniformInducing_iff, Filter.comap]
  ext S
  simp only [Filter.mem_mk, Set.mem_ofPred_eq, uniformity_eq_comap_nhds_zero,
    Filter.mem_comap]
  constructor
  · rintro ⟨T, ⟨⟨R, ⟨hR, pre_R⟩⟩, pre_T⟩⟩
    obtain ⟨d, hd⟩ := Valued.mem_nhds.mp hR
    use {P : K⟮X⟯ | Valued.v P < embedding d.1}
    simp only [Valued.mem_nhds, sub_zero]
    refine ⟨?_, subset_trans (fun _ _ ↦ pre_R ?_) pre_T⟩
    · obtain ⟨x, hx⟩ := RatFunc.valuation_surjective K (embedding d.1)
      use Units.mk0 (Valued.v.restrict x) (by
        rw [Valuation.restrict_def, ne_eq, restrict₀_eq_zero_iff]; simp [hx])
      simp [v_def, Valuation.restrict_lt_iff, ← hx]
    apply hd
    simp only [sub_zero, Set.mem_ofPred_eq]
    rw [← map_sub, Valuation.restrict_lt_iff_lt_embedding]
    simp only [valuation_def]
    rwa [← valuation_eq_LaurentSeries_valuation]
  · rintro ⟨_, ⟨hT, pre_T⟩⟩
    obtain ⟨d, hd⟩ := Valued.mem_nhds.mp hT
    set X := {f : K⸨X⸩ | Valued.v f < embedding d.1} with X_def
    refine ⟨(fun x : K⸨X⸩ × K⸨X⸩ ↦ x.snd - x.fst) ⁻¹' X, ⟨X, ?_⟩, ?_⟩
    · refine ⟨?_, Set.Subset.refl _⟩
      · simp only [Valued.mem_nhds, sub_zero, Valuation.restrict_lt_iff_lt_embedding]
        obtain ⟨x, hx⟩ := restrict₀_surjective _ d.1
        use Units.mk0 (Valued.v.restrict (x : K⸨X⸩)) (by
          simp only [ne_eq, map_eq_zero]
          intro h
          simp only [h, map_zero] at hx
          exact Units.ne_zero _ hx.symm)
        simp only [Units.val_mk0, ← Valuation.restrict_lt_iff_lt_embedding,
          X_def, Set.ofPred_subset_ofPred, Valuation.restrict_lt_iff]
        rw [← hx, embedding_restrict₀]
        simp [v_def, valuation_coe_ratFunc]
    · refine subset_trans (fun _ _ ↦ ?_) pre_T
      apply hd
      rwa [Set.mem_ofPred_eq, sub_zero, Valuation.restrict_lt_iff_lt_embedding, v_def,
        valuation_eq_LaurentSeries_valuation, map_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
