# AdditiveFunctor.ofRightExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:973150abf88cc77e8a30255dd83a791d12feda80a2ec4ed9fc6d8953b1e4d20e",
  "kind": "def",
  "lexical_name": "AdditiveFunctor.ofRightExact",
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
  "slug": "additivefunctor-ofrightexact--0f13601b59989b84098352b2",
  "source": {
    "blob": "07bb905051cd698a3876ce4fb19453914e7d8fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f13601b59989b84098352b2fb062164bb4274b52b885de1fd3545fec58cf53e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:973150abf88cc77e8a30255dd83a791d12feda80a2ec4ed9fc6d8953b1e4d20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AdditiveFunctor.ofRightExact : (C ⥤ᵣ D) ⥤ C ⥤+ D :=
  FullSubcategory.map fun F ⟨_⟩ =>
    Functor.additive_of_preservesBinaryBiproducts F
set_option linter.uppercaseLean3 false in
#align category_theory.AdditiveFunctor.of_right_exact CategoryTheory.AdditiveFunctor.ofRightExact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant0d06fd91fa6aefb4f8a7274f37253193c9837a6a38b6c6bfeb74a890b0e4ba25.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07bb905051cd698a3876ce4fb19453914e7d8fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
