# monoidalOfChosenFiniteProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7402d0976275c8c7738a655081b7b3017e842de81a18de8dba8f34c6d72093ed",
  "kind": "def",
  "lexical_name": "monoidalOfChosenFiniteProducts",
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
  "slug": "monoidalofchosenfiniteproducts--6bd3d88cf1933379c6f03442",
  "source": {
    "blob": "44e1b1f1c70c37962a067ac9c6920d0eac40b86e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 334,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bd3d88cf1933379c6f03442ab7ff2e92da0b1cb2897fdf69a2095fb9fe3cb60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7402d0976275c8c7738a655081b7b3017e842de81a18de8dba8f34c6d72093ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalOfChosenFiniteProducts : MonoidalCategory C := .ofTensorHom
  (tensorUnit' := 𝒯.cone.pt)
  (tensorObj := tensorObj ℬ)
  (tensorHom := tensorHom ℬ)
  (tensor_id := tensor_id ℬ)
  (tensor_comp := tensor_comp ℬ)
  (associator := BinaryFan.associatorOfLimitCone ℬ)
  (leftUnitor := fun X ↦ BinaryFan.leftUnitor 𝒯.isLimit (ℬ 𝒯.cone.pt X).isLimit)
  (rightUnitor := fun X ↦ BinaryFan.rightUnitor 𝒯.isLimit (ℬ X 𝒯.cone.pt).isLimit)
  (pentagon := pentagon ℬ)
  (triangle := triangle 𝒯 ℬ)
  (leftUnitor_naturality := leftUnitor_naturality 𝒯 ℬ)
  (rightUnitor_naturality := rightUnitor_naturality 𝒯 ℬ)
  (associator_naturality := associator_naturality ℬ)
#align category_theory.monoidal_of_chosen_finite_products CategoryTheory.monoidalOfChosenFiniteProducts

namespace MonoidalOfChosenFiniteProducts

open MonoidalCategory

/-- A type synonym for `C` carrying a monoidal category structure corresponding to
a fixed choice of limit data for the empty functor, and for `pair X Y` for every `X Y : C`.

This is an implementation detail for `SymmetricOfChosenFiniteProducts`.
-/
-- Porting note: no `has_nonempty_instance` linter.
-- @[nolint has_nonempty_instance]
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44e1b1f1c70c37962a067ac9c6920d0eac40b86e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
