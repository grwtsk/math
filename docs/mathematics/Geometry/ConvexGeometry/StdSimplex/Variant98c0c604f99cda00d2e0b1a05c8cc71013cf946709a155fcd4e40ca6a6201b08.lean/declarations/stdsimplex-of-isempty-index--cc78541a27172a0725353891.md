# stdSimplex_of_isEmpty_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7f9b7d0aca42f7db84a2c58337e85c54285cb86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dadac93f-23e0-27ef-dc89-6efd7373a3bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:467e12b4-efe2-1131-f522-1771176788e9",
  "kind": "lemma",
  "lexical_name": "stdSimplex_of_isEmpty_index",
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
  "slug": "stdsimplex-of-isempty-index--cc78541a27172a0725353891",
  "source": {
    "blob": "c7f9b7d0aca42f7db84a2c58337e85c54285cb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc78541a27172a0725353891024a7784972c856b272a9c522e5094b39867bdca",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:467e12b4-efe2-1131-f522-1771176788e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stdSimplex_of_isEmpty_index [IsEmpty ι] [Nontrivial 𝕜] : stdSimplex 𝕜 ι = ∅ :=
  eq_empty_of_forall_notMem <| by rintro f ⟨-, hf⟩; simp at hf

@[deprecated StdSimplex.instUnique (since := "2026-08-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f9b7d0aca42f7db84a2c58337e85c54285cb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
