# CoalgHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86551de8efffec57227f18cea5e950097c7a734aa857943a4054a10c47ea2760",
  "kind": "class",
  "lexical_name": "CoalgHomClass",
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
  "slug": "coalghomclass--f3c7ffe440fdb25b965c5702",
  "source": {
    "blob": "d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3c7ffe440fdb25b965c5702f7d84ae19ea817b3c3c05cc00ee2e28750c36c01",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86551de8efffec57227f18cea5e950097c7a734aa857943a4054a10c47ea2760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CoalgHomClass (F : Type*) (R A B : outParam Type*)
    [CommSemiring R] [AddCommMonoid A] [Module R A] [AddCommMonoid B] [Module R B]
    [CoalgebraStruct R A] [CoalgebraStruct R B] [FunLike F A B] : Prop
    extends SemilinearMapClass F (RingHom.id R) A B where
  counit_comp : ∀ f : F, counit ∘ₗ (f : A →ₗ[R] B) = counit
  map_comp_comul : ∀ f : F, TensorProduct.map (f : A →ₗ[R] B)
    (f : A →ₗ[R] B) ∘ₗ comul = comul ∘ₗ (f : A →ₗ[R] B)

attribute [simp] CoalgHomClass.counit_comp CoalgHomClass.map_comp_comul

namespace CoalgHomClass

variable {R A B F : Type*} [CommSemiring R]
  [AddCommMonoid A] [Module R A] [AddCommMonoid B] [Module R B]
  [CoalgebraStruct R A] [CoalgebraStruct R B] [FunLike F A B]
  [CoalgHomClass F R A B]

/-- Turn an element of a type `F` satisfying `CoalgHomClass F R A B` into an actual
`CoalgHom`. This is declared as the default coercion from `F` to `A →ₗc[R] B`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
