# Cocone.category

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6776522add8754bba16c949462dae52154e53c7dec8bc84313b6b12067918a5f",
  "kind": "instance",
  "lexical_name": "Cocone.category",
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
  "slug": "cocone-category--10f8de8fbf00e4d560f25382",
  "source": {
    "blob": "2336d0efb66a3a1c205eefef1e14299a139b6924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 496,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10f8de8fbf00e4d560f25382285320a8a5d7d7f1a9751016bad5634700af6d23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6776522add8754bba16c949462dae52154e53c7dec8bc84313b6b12067918a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Cocone.category : Category (Cocone F) where
  Hom A B := CoconeMorphism A B
  comp f g := { Hom := f.Hom ≫ g.Hom }
  id B := { Hom := 𝟙 B.pt }
#align category_theory.limits.cocone.category CategoryTheory.Limits.Cocone.category

-- Porting note: if we do not have `simps` automatically generate the lemma for simplifying
-- the Hom field of a category, we need to write the `ext` lemma in terms of the categorical
-- morphism, rather than the underlying structure.
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336d0efb66a3a1c205eefef1e14299a139b6924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
