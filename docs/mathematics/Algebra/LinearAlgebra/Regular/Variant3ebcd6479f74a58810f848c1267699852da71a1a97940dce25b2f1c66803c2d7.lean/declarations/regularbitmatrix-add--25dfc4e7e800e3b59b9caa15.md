# regularBitMatrix_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3d68b3e45981d8f9dfe1cd423370b25fa42385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b739aa52-be0e-f2bd-f7d9-3b95ed0e1ad4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a75c790-bb4a-2fdc-ccd1-a3a050d4e12b",
  "kind": "theorem",
  "lexical_name": "regularBitMatrix_add",
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
  "slug": "regularbitmatrix-add--25dfc4e7e800e3b59b9caa15",
  "source": {
    "blob": "ab3d68b3e45981d8f9dfe1cd423370b25fa42385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25dfc4e7e800e3b59b9caa150e126daf1e2cb3f9482b30814a0adf19e063b559",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a75c790-bb4a-2fdc-ccd1-a3a050d4e12b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularBitMatrix_add
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularBitMatrix b (a + c) =
      BitMatrix.xor (regularBitMatrix b a) (regularBitMatrix b c) := by
  apply (boolMatrixGF2Equiv r r).injective
  rw [boolMatrixGF2Equiv_xor]
  simp [regularBitMatrix, regularMatrix_add]

/-- Field multiplication becomes transported ordinary matrix multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3d68b3e45981d8f9dfe1cd423370b25fa42385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
