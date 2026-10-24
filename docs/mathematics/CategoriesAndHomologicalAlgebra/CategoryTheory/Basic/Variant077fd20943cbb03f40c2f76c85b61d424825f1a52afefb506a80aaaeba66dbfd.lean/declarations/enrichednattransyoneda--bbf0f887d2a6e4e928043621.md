# enrichedNatTransYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2c12f83385e4a35502ecb8d0c3b025d8db03a8f76645c1d50a6fe56ea2c51f",
  "kind": "def",
  "lexical_name": "enrichedNatTransYoneda",
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
  "slug": "enrichednattransyoneda--bbf0f887d2a6e4e928043621",
  "source": {
    "blob": "b2426f0203ae2c149cbb557430e7f311f60ec97e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 497,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbf0f887d2a6e4e928043621187919550df7e8da55d0c0502be603afc5354c70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2c12f83385e4a35502ecb8d0c3b025d8db03a8f76645c1d50a6fe56ea2c51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enrichedNatTransYoneda (F G : EnrichedFunctor V C D) : Vᵒᵖ ⥤ Type (max u₁ w) where
  obj A := GradedNatTrans ((Center.ofBraided V).obj (unop A)) F G
  map f := ↾fun σ ↦
    { app X := f.unop ≫ σ.app X
      naturality X Y := by
        have p := σ.naturality X Y
        dsimp at p ⊢
        rw [← id_tensor_comp_tensor_id (f.unop ≫ σ.app Y) _, id_tensor_comp, Category.assoc,
          Category.assoc, ← braiding_naturality_assoc, id_tensor_comp_tensor_id_assoc, p,
          tensorHom_comp_tensorHom_assoc, Category.id_comp] }

-- TODO assuming `[HasLimits C]` construct the actual object of natural transformations
-- and show that the functor category is `V`-enriched.
end

section

attribute [local instance] categoryOfEnrichedCategoryType

/-- We verify that an enriched functor between `Type v` enriched categories
is just the same thing as an honest functor.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2426f0203ae2c149cbb557430e7f311f60ec97e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
