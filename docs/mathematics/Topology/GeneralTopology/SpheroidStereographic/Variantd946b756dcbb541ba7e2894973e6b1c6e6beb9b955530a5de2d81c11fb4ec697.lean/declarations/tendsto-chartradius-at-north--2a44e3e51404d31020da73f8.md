# tendsto_chartRadius_at_north

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72e021039990e072da279bbfed404bfb08e00e71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca17f4a9-5c3f-eff2-c04c-28dc8e144513",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a79f5df-d7d4-42fb-7b15-ea1cca823374",
  "kind": "theorem",
  "lexical_name": "tendsto_chartRadius_at_north",
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
  "slug": "tendsto-chartradius-at-north--2a44e3e51404d31020da73f8",
  "source": {
    "blob": "72e021039990e072da279bbfed404bfb08e00e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a44e3e51404d31020da73f850599906ed34bb4adad5f3d7fb26003812f009ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a79f5df-d7d4-42fb-7b15-ea1cca823374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_chartRadius_at_north {a : ℝ} (ha : 0 < a) :
    Filter.Tendsto (fun θ : ℝ => a * Real.tan (θ / 2))
      (nhdsWithin Real.pi (Set.Iio Real.pi)) Filter.atTop := by
  have hhalf :
      Filter.Tendsto (fun θ : ℝ => θ / 2)
        (nhdsWithin Real.pi (Set.Iio Real.pi))
        (nhdsWithin (Real.pi / 2) (Set.Iio (Real.pi / 2))) := by
    refine tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩
    · exact (Filter.tendsto_id.div_const 2).mono_left nhdsWithin_le_nhds
    · filter_upwards [eventually_mem_nhdsWithin] with θ hθ
      change θ / 2 < Real.pi / 2
      change θ < Real.pi at hθ
      linarith
  exact (Filter.tendsto_const_mul_atTop_of_pos ha).2
    (Real.tendsto_tan_pi_div_two.comp hhalf)

/-- The explicit algebraic equivalence between the punctured spheroid and its
Euclidean stereographic chart.  No topology is installed by this definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e021039990e072da279bbfed404bfb08e00e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
