# mapHomotopyCategory_prod_id_comp_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1e74b4b4a88601ae3fb70be84333e1ab17fe1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a90cda41815653b75dfcf2bf59653c6b08263d073d4d4a5d597bf2f82f9cf53f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91768b08-7052-5810-7bc7-6518acadc866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d38f2d2-9399-a46b-363b-ea1f1e052200",
  "kind": "lemma",
  "lexical_name": "mapHomotopyCategory_prod_id_comp_inverse",
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
  "slug": "maphomotopycategory-prod-id-comp-inverse--8e64125a4a35fed6c382fadf",
  "source": {
    "blob": "e1e74b4b4a88601ae3fb70be84333e1ab17fe1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Varianta90cda41815653b75dfcf2bf59653c6b08263d073d4d4a5d597bf2f82f9cf53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e64125a4a35fed6c382fadfb91e2406e003c798a1f3940e2675902b90f171d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Varianta90cda41815653b75dfcf2bf59653c6b08263d073d4d4a5d597bf2f82f9cf53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d38f2d2-9399-a46b-363b-ea1f1e052200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapHomotopyCategory_prod_id_comp_inverse (f : X ⟶ X') :
    (mapHomotopyCategory f).prod (𝟭 _) ⋙ inverse X' Y =
      inverse X Y ⋙ mapHomotopyCategory (f ▷ Y) :=
  Functor.ext_of_iso (mapHomotopyCategoryProdIdCompInverseIso _ _) (fun _ ↦ rfl)

variable {Y} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Varianta90cda41815653b75dfcf2bf59653c6b08263d073d4d4a5d597bf2f82f9cf53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Varianta90cda41815653b75dfcf2bf59653c6b08263d073d4d4a5d597bf2f82f9cf53f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e74b4b4a88601ae3fb70be84333e1ab17fe1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
