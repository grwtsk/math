# IsOpenMap.coborder_preimage_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7665035979a7f4e66214225fdaa18a651ddec13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf7e9817-f9ca-243e-72ef-9206e4c74762",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06fe02bc-dc0d-4aeb-082d-14010af5a788",
  "kind": "lemma",
  "lexical_name": "IsOpenMap.coborder_preimage_subset",
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
  "slug": "isopenmap-coborder-preimage-subset--386aab654850fa073b3de6db",
  "source": {
    "blob": "7665035979a7f4e66214225fdaa18a651ddec13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:386aab654850fa073b3de6db784af43514484624f99073bcfdaf22fbb5b4e9f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06fe02bc-dc0d-4aeb-082d-14010af5a788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpenMap.coborder_preimage_subset (hf : IsOpenMap f) (s : Set Y) :
    coborder (f ⁻¹' s) ⊆ f ⁻¹' (coborder s) := by
  rw [coborder, coborder, preimage_compl, preimage_sdiff, compl_subset_compl]
  apply sdiff_subset_sdiff_left
  exact hf.preimage_closure_subset_closure_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7665035979a7f4e66214225fdaa18a651ddec13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
