# singularHomologyFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:582abc175e0a0d19c6b3eebd744428cf716be1a79cea3147f1b0608734805bab",
  "kind": "def",
  "lexical_name": "singularHomologyFunctor",
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
  "slug": "singularhomologyfunctor--56cab03ac8f0224cdf61df06",
  "source": {
    "blob": "9dadc8eca432a19b8ecb4749b0849cf9c0ab85b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56cab03ac8f0224cdf61df0622933d0692770c0ca267d9edb2b4b843f1dfbce5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:582abc175e0a0d19c6b3eebd744428cf716be1a79cea3147f1b0608734805bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def singularHomologyFunctor [CategoryWithHomology C] : C ⥤ TopCat.{w} ⥤ C :=
  singularChainComplexFunctor C ⋙
    (Functor.whiskeringRight _ _ _).obj (HomologicalComplex.homologyFunctor _ _ n)

section Adjunction

open Limits _root_.SSet
open scoped Simplicial
open HomologicalComplex (eval)

/-- The adjunction `Hom(Cⁿ(-, X), F) ≃ Hom(X, F(Δ[n]))` for `X : C` and `F : Top ⥤ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad9f372e7f7136bf95db06aefbbb48a82102c6453756ed22138cde767d6423f4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dadc8eca432a19b8ecb4749b0849cf9c0ab85b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
