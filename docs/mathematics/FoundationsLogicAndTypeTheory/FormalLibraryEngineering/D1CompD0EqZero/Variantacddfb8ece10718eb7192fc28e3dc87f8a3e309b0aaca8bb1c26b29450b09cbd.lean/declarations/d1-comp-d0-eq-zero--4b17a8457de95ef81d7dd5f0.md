# d1_comp_d0_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d67f5610be1380351d5e2bdf7230ff4b88ac9ffa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acddfb8ece10718eb7192fc28e3dc87f8a3e309b0aaca8bb1c26b29450b09cbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80c5e3dd-e455-4610-d9f7-15adf910fee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db4a4aba-332b-1ef2-beb0-ac659e5c67a4",
  "kind": "theorem",
  "lexical_name": "d1_comp_d0_eq_zero",
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
  "slug": "d1-comp-d0-eq-zero--4b17a8457de95ef81d7dd5f0",
  "source": {
    "blob": "d67f5610be1380351d5e2bdf7230ff4b88ac9ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D1CompD0EqZero/Variantacddfb8ece10718eb7192fc28e3dc87f8a3e309b0aaca8bb1c26b29450b09cbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b17a8457de95ef81d7dd5f0bed8e666ffdd726d8b0f6dc5316599e28f41d91c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D1CompD0EqZero/Variantacddfb8ece10718eb7192fc28e3dc87f8a3e309b0aaca8bb1c26b29450b09cbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4a4aba-332b-1ef2-beb0-ac659e5c67a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d1_comp_d0_eq_zero (potential : C0) (square : NamingSquare) :
    d1 (d0 potential) square = NameFeatureVector.zero := by
  funext feature
  simp only [d1, d0, NameFeatureVector.add, NameFeatureVector.sub,
    NameFeatureVector.zero, NamingSquare.topEdge, NamingSquare.rightEdge,
    NamingSquare.bottomEdge, NamingSquare.leftEdge]
  abel

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D1CompD0EqZero/Variantacddfb8ece10718eb7192fc28e3dc87f8a3e309b0aaca8bb1c26b29450b09cbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D1CompD0EqZero/Variantacddfb8ece10718eb7192fc28e3dc87f8a3e309b0aaca8bb1c26b29450b09cbd.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67f5610be1380351d5e2bdf7230ff4b88ac9ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
