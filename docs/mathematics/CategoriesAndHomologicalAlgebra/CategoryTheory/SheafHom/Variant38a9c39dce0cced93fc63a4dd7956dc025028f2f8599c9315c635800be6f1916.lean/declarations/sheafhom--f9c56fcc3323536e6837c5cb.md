# sheafHom'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52cd3aa2b6bcdcf157f005c0f57f5530aac88168ef170da5a02b5778d72281dd",
  "kind": "def",
  "lexical_name": "sheafHom'",
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
  "slug": "sheafhom--f9c56fcc3323536e6837c5cb",
  "source": {
    "blob": "2089ac7932f034973dae9f495e82887779378516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9c56fcc3323536e6837c5cbb6f65996e069a07a4bb5fa7695392f9ad10c701b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52cd3aa2b6bcdcf157f005c0f57f5530aac88168ef170da5a02b5778d72281dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafHom' (F G : Sheaf J A) : Cᵒᵖ ⥤ Type _ where
  obj X := ((J.overPullback A X.unop).obj F ⟶ (J.overPullback A X.unop).obj G)
  map f := ↾((J.overMapPullback A f.unop).map)
  map_id X := by
    ext φ : 4
    exact ConcreteCategory.congr_hom ((presheafHom F.1 G.1).map_id X) φ.1
  map_comp f g := by
    ext φ : 4
    exact ConcreteCategory.congr_hom ((presheafHom F.1 G.1).map_comp f g) φ.1

/-- The canonical isomorphism `sheafHom' F G ≅ presheafHom F.1 G.1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2089ac7932f034973dae9f495e82887779378516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
