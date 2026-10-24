# GaloisCategory.getFiberFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321e39aff4d8a72dc2bd852ed5771dac23c3bb75396504e4224a31535be5e3ac",
  "kind": "def",
  "lexical_name": "GaloisCategory.getFiberFunctor",
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
  "slug": "galoiscategory-getfiberfunctor--2104cb9c9e85efa6045f7e2d",
  "source": {
    "blob": "3e4801c7f4317cec460f1c725166a9ad8873714b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 425,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2104cb9c9e85efa6045f7e2dc9811a6087b4750e6cf41925660c38a3d0efec10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321e39aff4d8a72dc2bd852ed5771dac23c3bb75396504e4224a31535be5e3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def GaloisCategory.getFiberFunctor
    (C : Type u₁) [Category.{u₂, u₁} C] [GaloisCategory C] : C ⥤ FintypeCat.{u₂} :=
  Classical.choose <| hasFiberFunctor C

open GaloisCategory

@[deprecated (since := "2026-08-10")]
alias PreGaloisCategory.GaloisCategory.getFiberFunctor := getFiberFunctor

namespace PreGaloisCategory

variable (C : Type u₁) [Category.{u₂, u₁} C] [GaloisCategory C]

/-- The arbitrarily chosen fiber functor `GaloisCategory.getFiberFunctor` is a fiber functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4801c7f4317cec460f1c725166a9ad8873714b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
