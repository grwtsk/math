# IsCofilteredOrEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b591a8f21247ec4299e5103a9de8c73ec4dfaa5e700f3ecf8dbcee43173e23c",
  "kind": "class",
  "lexical_name": "IsCofilteredOrEmpty",
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
  "slug": "iscofilteredorempty--1a26a7e05093ee0fd43ceb41",
  "source": {
    "blob": "b235eda0da9b0fb1432eb49acf0644db09b0de9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 585,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a26a7e05093ee0fd43ceb41213d171e8ec98f16c17a176f73ce5453242affbe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b591a8f21247ec4299e5103a9de8c73ec4dfaa5e700f3ecf8dbcee43173e23c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsCofilteredOrEmpty : Prop where
  /-- for every pair of objects there exists another object "to the left" -/
  cone_objs : ∀ X Y : C, ∃ (W : _) (_ : W ⟶ X) (_ : W ⟶ Y), True
  /-- for every pair of parallel morphisms there exists a morphism to the left
  so the compositions are equal -/
  cone_maps : ∀ ⦃X Y : C⦄ (f g : X ⟶ Y), ∃ (W : _) (h : W ⟶ X), h ≫ f = h ≫ g

/-- A category `IsCofiltered` if
1. for every pair of objects there exists another object "to the left",
2. for every pair of parallel morphisms there exists a morphism to the left so the compositions
   are equal, and
3. there exists some object. -/
@[stacks 04AZ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235eda0da9b0fb1432eb49acf0644db09b0de9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
