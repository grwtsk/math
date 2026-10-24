# ChainComplex.linearYonedaObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b385cf633b408a682d4ee627f0fc95ad828f582531d1409ac671cc618d42e14f",
  "kind": "def",
  "lexical_name": "ChainComplex.linearYonedaObj",
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
  "slug": "chaincomplex-linearyonedaobj--6d95b9cdc03a4785c2251d1b",
  "source": {
    "blob": "9c08a7dd3398f66d5b2d049ab2cf232eedb10c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d95b9cdc03a4785c2251d1b55b2eead04a92b93f6202aa56271d8c382dc112e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b385cf633b408a682d4ee627f0fc95ad828f582531d1409ac671cc618d42e14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChainComplex.linearYonedaObj {α : Type*} [AddRightCancelSemigroup α] [One α]
    (X : ChainComplex C α) (A : Type*) [Ring A] [Linear A C] (Y : C) :
    CochainComplex (ModuleCat A) α :=
  ((((linearYoneda A C).obj Y).rightOp.mapHomologicalComplex _).obj X).unop

namespace CategoryTheory

namespace ProjectiveResolution

variable {X : C} (P : ProjectiveResolution X)

/-- `Ext` can be computed using a projective resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c08a7dd3398f66d5b2d049ab2cf232eedb10c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
