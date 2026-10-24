# ofScalars_radius_eq_top_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07c86755bf2e0624c86f048d3ab7bcffff772981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:730b3b03-53f2-702b-ee10-104272e59877",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc25e051-7244-8fa7-1be6-dfffcb6ff6e7",
  "kind": "theorem",
  "lexical_name": "ofScalars_radius_eq_top_of_tendsto",
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
  "slug": "ofscalars-radius-eq-top-of-tendsto--95895bb0633603664d1d2ec4",
  "source": {
    "blob": "07c86755bf2e0624c86f048d3ab7bcffff772981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95895bb0633603664d1d2ec4796db3afaba91a9715370dfc083abbc30bc81b1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc25e051-7244-8fa7-1be6-dfffcb6ff6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_radius_eq_top_of_tendsto (hc : ∀ᶠ n in atTop, c n ≠ 0)
    (hc' : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop (𝓝 0)) : (ofScalars E c).radius = ⊤ := by
  refine radius_eq_top_of_summable_norm _ fun r' ↦ ?_
  by_cases hrz : r' = 0
  · apply Summable.comp_nat_add (k := 1)
    simp [hrz]
    exact (summable_const_iff 0).mpr rfl
  · refine Summable.of_norm_bounded_eventually (fun n ↦ ‖‖c n‖ * r' ^ n‖) ?_ ?_
    · apply summable_of_ratio_test_tendsto_lt_one zero_lt_one (hc.mp (Eventually.of_forall ?_))
      · simp only [norm_norm]
        exact mul_zero (_ : ℝ) ▸ tendsto_succ_norm_div_norm _ hrz (NNReal.coe_zero ▸ hc')
      · aesop
    · filter_upwards [eventually_cofinite_ne 0] with n hn
      simp only [norm_mul, norm_norm, norm_pow, NNReal.norm_eq]
      gcongr
      exact ofScalars_norm_le E c n (Nat.pos_iff_ne_zero.mpr hn)

/-- If `‖c n.succ‖ / ‖c n‖` is unbounded, then the radius of convergence is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07c86755bf2e0624c86f048d3ab7bcffff772981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
