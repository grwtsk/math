# inverse_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81ca4832acfaa4ea6a654f8c6f0c1431ca70109b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea61d3a-b33f-d7c8-0ba5-ff779f962026",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b67e1e3-5099-1637-008f-9d864052336c",
  "kind": "theorem",
  "lexical_name": "inverse_inv",
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
  "slug": "inverse-inv--9e2aa192a226bc20e4a571c0",
  "source": {
    "blob": "81ca4832acfaa4ea6a654f8c6f0c1431ca70109b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 578,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2aa192a226bc20e4a571c09eede44348ebf1cd02103fa4c6bbbf1f0cde5c78",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b67e1e3-5099-1637-008f-9d864052336c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_inv (E : C ≌ D) : E.inverse.inv = E.functor :=
  rfl
#align category_theory.equivalence.inverse_inv CategoryTheory.Equivalence.inverse_inv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ca4832acfaa4ea6a654f8c6f0c1431ca70109b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
