# crystal_has_infinitesimal_rigidity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33e227f091f646da0135f2b1a462f3486b0f5843",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2571bfa-07c7-e14a-2671-3f9dc713b25e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e6e6140-df53-a9a3-1ece-52280b1947df",
  "kind": "theorem",
  "lexical_name": "crystal_has_infinitesimal_rigidity",
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
  "slug": "crystal-has-infinitesimal-rigidity--5cc8c6fb02fc06820792e0e9",
  "source": {
    "blob": "33e227f091f646da0135f2b1a462f3486b0f5843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/Crystal/Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cc8c6fb02fc06820792e0e983ca665ba7962b1738636baceb1b6d5d74376f72",
  "verification": {
    "reference": "docs/verification/Algebra/Crystal/Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e6e6140-df53-a9a3-1ece-52280b1947df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crystal_has_infinitesimal_rigidity
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.infinitesimalRigidity :=
  Folder.CrystallineTensor.crystal_has_infinitesimal_rigidity F

end Crystal
end CrystallineTensor
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Crystal/Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Crystal/Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e227f091f646da0135f2b1a462f3486b0f5843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
