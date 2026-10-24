# ulift_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5257616193dec9069c0c8d98098348978df1a6dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a3ba936-07f0-b9a8-d578-a70b494d46d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19be03cd-3af9-02f5-cd16-34df1dbaf109",
  "kind": "theorem",
  "lexical_name": "ulift_apply",
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
  "slug": "ulift-apply--7dcec1833abfc20eaa8a8ae0",
  "source": {
    "blob": "5257616193dec9069c0c8d98098348978df1a6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 146,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dcec1833abfc20eaa8a8ae0d470e05bc9735f007fcdb7c55ecb5f4bc7ca9f42",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19be03cd-3af9-02f5-cd16-34df1dbaf109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ulift_apply (i : ULift.{u} I) (x : X) : H.uliftMap (i, x) = H (i.down, x) :=
  rfl
#align continuous_map.homotopy.ulift_apply ContinuousMap.Homotopy.ulift_apply

/-- An abbreviation for `prodToProdTop`, with some types already in place to help the
 typechecker. In particular, the first path should be on the ulifted unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5257616193dec9069c0c8d98098348978df1a6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
