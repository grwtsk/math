# HasZeroMorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06967287ed1b6143d7c4f0815975023f6ed1bb76ad811792b5fc7f2cffabda5f",
  "kind": "class",
  "lexical_name": "HasZeroMorphisms",
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
  "slug": "haszeromorphisms--6c4b6300c6c01befc1e6cd27",
  "source": {
    "blob": "f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c4b6300c6c01befc1e6cd27b97eb3dff72ec9309f0d17e86c1553852c538164",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06967287ed1b6143d7c4f0815975023f6ed1bb76ad811792b5fc7f2cffabda5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasZeroMorphisms where
  /-- Every morphism space has zero -/
  [zero : ∀ X Y : C, Zero (X ⟶ Y)]
  /-- `f` composed with `0` is `0` -/
  comp_zero : ∀ {X Y : C} (f : X ⟶ Y) (Z : C), f ≫ (0 : Y ⟶ Z) = (0 : X ⟶ Z) := by cat_disch
  /-- `0` composed with `f` is `0` -/
  zero_comp : ∀ (X : C) {Y Z : C} (f : Y ⟶ Z), (0 : X ⟶ Y) ≫ f = (0 : X ⟶ Z) := by cat_disch

attribute [instance_reducible, instance] HasZeroMorphisms.zero

attribute [to_dual self] HasZeroMorphisms.zero
attribute [to_dual existing zero_comp] HasZeroMorphisms.comp_zero
attribute [to_dual self (reorder := comp_zero zero_comp (X f Z), zero (X Y))] HasZeroMorphisms.mk

variable {C D}

@[to_dual (attr := simp) zero_comp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant705fb6684fae3fe933520548480970e21153fdd50248ba4e667c8ede520299c1.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a7d3ce6cbf78c4c8daf63e7c5a4ccc1ce211cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
