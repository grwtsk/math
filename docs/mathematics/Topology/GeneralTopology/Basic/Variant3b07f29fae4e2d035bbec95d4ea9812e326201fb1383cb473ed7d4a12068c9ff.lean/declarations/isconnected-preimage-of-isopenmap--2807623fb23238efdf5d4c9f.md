# IsConnected.preimage_of_isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0efc7f68ed6795e790d7b8078877ff0ac2385bb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17b8492e-9180-3e5a-62cd-f7d59935f8dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b5e2d7-2736-5056-0b86-d4d288f05bf3",
  "kind": "theorem",
  "lexical_name": "IsConnected.preimage_of_isOpenMap",
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
  "slug": "isconnected-preimage-of-isopenmap--2807623fb23238efdf5d4c9f",
  "source": {
    "blob": "0efc7f68ed6795e790d7b8078877ff0ac2385bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2807623fb23238efdf5d4c9f59c4c0ce5733d05a13005e0268d883df01a4d91b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b5e2d7-2736-5056-0b86-d4d288f05bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsConnected.preimage_of_isOpenMap [TopologicalSpace β] {s : Set β} (hs : IsConnected s)
    {f : α → β} (hinj : Function.Injective f) (hf : IsOpenMap f) (hsf : s ⊆ range f) :
    IsConnected (f ⁻¹' s) :=
  ⟨hs.nonempty.preimage' hsf, hs.isPreconnected.preimage_of_isOpenMap hinj hf hsf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3b07f29fae4e2d035bbec95d4ea9812e326201fb1383cb473ed7d4a12068c9ff.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0efc7f68ed6795e790d7b8078877ff0ac2385bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
