# liminf_sub_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2178a4bd5c2665c9cb5596199ee5c4ef842991c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1612,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ca1afce-b1dd-f4c1-4bf5-81ae572a0f83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12fdf64a-f7e0-82d7-08ac-5a422ee59dd4",
  "kind": "lemma",
  "lexical_name": "liminf_sub_const",
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
  "slug": "liminf-sub-const--59e4b773f844c9f89fe1c4ce",
  "source": {
    "blob": "2178a4bd5c2665c9cb5596199ee5c4ef842991c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1616,
    "line": 1612,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e4b773f844c9f89fe1c4ce111bc7e10b9fb0dc254a5e58e8e9e7e2d6df26ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12fdf64a-f7e0-82d7-08ac-5a422ee59dd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1612–1616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liminf_sub_const (F : Filter ι) [NeBot F] (f : ι → ℝ≥0∞) (c : ℝ≥0∞) :
    Filter.liminf (fun i ↦ f i - c) F = Filter.liminf f F - c :=
  (Monotone.map_limsInf_of_continuousAt (F := F.map f) (f := fun (x : ℝ≥0∞) ↦ x - c)
    (fun _ _ h ↦ tsub_le_tsub_right h c) (continuous_sub_right c).continuousAt).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean#L1612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2178a4bd5c2665c9cb5596199ee5c4ef842991c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
