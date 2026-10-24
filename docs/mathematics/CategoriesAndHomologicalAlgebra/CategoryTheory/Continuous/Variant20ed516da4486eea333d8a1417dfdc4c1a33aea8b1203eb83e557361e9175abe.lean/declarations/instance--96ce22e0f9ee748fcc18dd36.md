# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:701870d28103d856200dbbe6e7281c0df1464bd3f6957bfd907a40a3e543df86",
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
  "slug": "instance--96ce22e0f9ee748fcc18dd36",
  "source": {
    "blob": "337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ce22e0f9ee748fcc18dd36962dc0ef0b36b127011428b3bc8024763f001ac7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:701870d28103d856200dbbe6e7281c0df1464bd3f6957bfd907a40a3e543df86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
