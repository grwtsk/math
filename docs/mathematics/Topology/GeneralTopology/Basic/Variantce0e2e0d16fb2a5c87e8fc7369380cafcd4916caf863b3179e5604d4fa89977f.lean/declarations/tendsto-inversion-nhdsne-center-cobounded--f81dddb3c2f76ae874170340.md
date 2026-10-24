# tendsto_inversion_nhdsNE_center_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85fe116d952a2b5acc626f068347f635b7a83702",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1712c330-23ce-3524-6583-cd4c8e38de6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aefd4aac-9906-7fd0-396f-8a7b3f928ea5",
  "kind": "theorem",
  "lexical_name": "tendsto_inversion_nhdsNE_center_cobounded",
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
  "slug": "tendsto-inversion-nhdsne-center-cobounded--f81dddb3c2f76ae874170340",
  "source": {
    "blob": "85fe116d952a2b5acc626f068347f635b7a83702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81dddb3c2f76ae874170340fe82ac5f7defaeaf8b4197c0fa58010fcb3ba275",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aefd4aac-9906-7fd0-396f-8a7b3f928ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inversion_nhdsNE_center_cobounded {c : P} {R : ℝ} (hR : R ≠ 0) :
    Tendsto (inversion c R) (𝓝[≠] c) (Bornology.cobounded P) := by
  rw [← tendsto_dist_left_atTop_iff c]
  have hdist : Tendsto (dist c) (𝓝[≠] c) (𝓝[>] (0 : ℝ)) := by
    rw [tendsto_nhdsWithin_iff]
    refine ⟨tendsto_nhdsWithin_of_tendsto_nhds ?_, eventually_nhdsWithin_of_forall ?_⟩
    · rw [← dist_self c]
      exact ContinuousAt.tendsto <| by fun_prop
    · aesop
  have hratio : Tendsto (fun x : P ↦ dist c (inversion c R x)) (𝓝[≠] c) atTop := by
    simp_rw [dist_center_inversion, div_eq_mul_inv]
    exact hdist.inv_tendsto_nhdsGT_zero.const_mul_atTop <| by rwa [sq_pos_iff]
  simpa using hratio

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantce0e2e0d16fb2a5c87e8fc7369380cafcd4916caf863b3179e5604d4fa89977f.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85fe116d952a2b5acc626f068347f635b7a83702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
