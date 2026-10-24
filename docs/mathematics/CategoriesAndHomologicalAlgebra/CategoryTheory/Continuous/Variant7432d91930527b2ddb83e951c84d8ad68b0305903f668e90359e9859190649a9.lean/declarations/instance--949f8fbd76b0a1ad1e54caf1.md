# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b9e5262530c8b750a73dd67f3897772fc07f85e1023e1b2f6964e4ffc888ab8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--949f8fbd76b0a1ad1e54caf1",
  "source": {
    "blob": "6d29b125fd73ffbdca9005486679a7a662cbe24f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:949f8fbd76b0a1ad1e54caf104f52205df6fb424ea291bd324a8c95cb9da8eb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b9e5262530c8b750a73dd67f3897772fc07f85e1023e1b2f6964e4ffc888ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : DiscreteContAction V G) :
    DiscreteTopology ((CategoryTheory.forget₂ _ TopCat).obj X) :=
  X.property

end DiscreteContAction

namespace CategoryTheory

variable {V W : Type*} [Category* V] {FV : V → V → Type*} {CV : V → Type*}
    [∀ X Y, FunLike (FV X Y) (CV X) (CV Y)]
    [ConcreteCategory V FV] [HasForget₂ V TopCat]
    [Category* W] {FW : W → W → Type*} {CW : W → Type*} [∀ X Y, FunLike (FW X Y) (CW X) (CW Y)]
    [ConcreteCategory W FW] [HasForget₂ W TopCat]
    (G : Type*) [Monoid G] [TopologicalSpace G]

namespace Functor

/-- Continuous version of `Functor.mapAction`. -/
@[simps! obj_obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d29b125fd73ffbdca9005486679a7a662cbe24f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
