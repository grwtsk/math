# image_eq_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00260a5d2d2df205f5c41684b465a2f918f8694e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76d3b8f1-3fbf-4faf-0d28-a6c537f898ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d66a1252-9b4d-e41c-7e2c-3bf4415853df",
  "kind": "theorem",
  "lexical_name": "image_eq_preimage",
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
  "slug": "image-eq-preimage--d57b698ee607a07ad4785daf",
  "source": {
    "blob": "00260a5d2d2df205f5c41684b465a2f918f8694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57b698ee607a07ad4785daf70fa4ed023ee1ac07fdb739109f944a2acee57e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66a1252-9b4d-e41c-7e2c-3bf4415853df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_eq_preimage (t : τ) (s : Set α) : ϕ t '' s = ϕ (-t) ⁻¹' s :=
  (ϕ.toHomeomorph t).toEquiv.image_eq_preimage s

end Flow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00260a5d2d2df205f5c41684b465a2f918f8694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
