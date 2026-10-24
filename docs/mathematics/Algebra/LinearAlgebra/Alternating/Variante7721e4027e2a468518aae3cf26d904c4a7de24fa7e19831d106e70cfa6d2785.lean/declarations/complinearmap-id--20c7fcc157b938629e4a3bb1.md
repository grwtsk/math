# compLinearMap_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "842689df5f4245e6656367412382e03726ee3e18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7894a1d8-6f11-8b6e-7479-2dd5b89b9b1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53b602ba-931d-50cf-b7fc-88c2a458f00f",
  "kind": "theorem",
  "lexical_name": "compLinearMap_id",
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
  "slug": "complinearmap-id--20c7fcc157b938629e4a3bb1",
  "source": {
    "blob": "842689df5f4245e6656367412382e03726ee3e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 590,
    "path": "GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c7fcc157b938629e4a3bb10d471f052020091c0a0257b3889a905964c09fbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b602ba-931d-50cf-b7fc-88c2a458f00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compLinearMap_id (f : AlternatingMap R M N ι) : f.compLinearMap LinearMap.id = f :=
  ext fun _ => rfl
#align alternating_map.comp_linear_map_id AlternatingMap.compLinearMap_id

/-- Composing with a surjective linear map is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Alternating/Variante7721e4027e2a468518aae3cf26d904c4a7de24fa7e19831d106e70cfa6d2785.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `842689df5f4245e6656367412382e03726ee3e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
