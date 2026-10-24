# MonoidalFunctor.μIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:131ef6142acc8be16f73e62c8d022026eddfa4f43ab8304135ef16aed4860434",
  "kind": "def",
  "lexical_name": "MonoidalFunctor.μIso",
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
  "slug": "monoidalfunctor-iso--a04a400f394299b60c3966dd",
  "source": {
    "blob": "169b5f183f272966a185cc2a98f70309666c0d49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a04a400f394299b60c3966dd34d6e471b85d58001ec9cfb59ffbe96e3ce9bf69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:131ef6142acc8be16f73e62c8d022026eddfa4f43ab8304135ef16aed4860434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def MonoidalFunctor.μIso (F : MonoidalFunctor.{v₁, v₂} C D) (X Y : C) :
    F.obj X ⊗ F.obj Y ≅ F.obj (X ⊗ Y) :=
  asIso (F.μ X Y)
#align category_theory.monoidal_functor.μ_iso CategoryTheory.MonoidalFunctor.μIso

end

open MonoidalCategory

namespace LaxMonoidalFunctor

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory.{v₁} C]

/-- The identity lax monoidal functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169b5f183f272966a185cc2a98f70309666c0d49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
