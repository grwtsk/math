# elementsMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58cb12fed6aa66cb70152f3d2c6669034225b9b232c7ca7ba9cca0dc9e30ae8a",
  "kind": "abbrev",
  "lexical_name": "elementsMk",
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
  "slug": "elementsmk--b7e79f0192b6e732d6f2d29b",
  "source": {
    "blob": "0bca8089dffdc44a446fd44459c46cf7029bfd8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Varianteb7fbb508eade44d5aa8cd1d78ff617f6702aa626c97a2630fdb01f8c19e08b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e79f0192b6e732d6f2d29bbb5287c9a8a3ac630afbbd561ec8007f0c2b2d04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Varianteb7fbb508eade44d5aa8cd1d78ff617f6702aa626c97a2630fdb01f8c19e08b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58cb12fed6aa66cb70152f3d2c6669034225b9b232c7ca7ba9cca0dc9e30ae8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev elementsMk {C : Type u₁} [Category.{v₁} C] {R : Cᵒᵖ ⥤ RingCat.{u}}
    (M : PresheafOfModules.{v} R) (X : Cᵒᵖ) (x : M.obj X) : M.Elements :=
  Functor.elementsMk _ X x

namespace Elements

variable {C : Type u} [Category.{v} C] {R : Cᵒᵖ ⥤ RingCat.{v}} {M : PresheafOfModules.{v} R}

/-- Given an element `m : M.Elements` of a presheaf of modules `M`, this is the
free presheaf of modules on the Yoneda presheaf of types corresponding to the
underlying object of `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Varianteb7fbb508eade44d5aa8cd1d78ff617f6702aa626c97a2630fdb01f8c19e08b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Varianteb7fbb508eade44d5aa8cd1d78ff617f6702aa626c97a2630fdb01f8c19e08b2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bca8089dffdc44a446fd44459c46cf7029bfd8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
