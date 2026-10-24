# CoconeMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c27e7f6658db42cb1e6f98a941fde9571ea62942c02e46dff7fa33f9073992d",
  "kind": "structure",
  "lexical_name": "CoconeMorphism",
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
  "slug": "coconemorphism--1121b984fa4335f364a7f78d",
  "source": {
    "blob": "d182de4914d4364a5abeb889c5adcca21ec3155d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 489,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant8af5f29d64cf5f38fa353232037ff995c7d2e915e5365e5d3a9a282c69a973c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1121b984fa4335f364a7f78d93b9d00fadf521a873df9594b821f172a3cc85a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant8af5f29d64cf5f38fa353232037ff995c7d2e915e5365e5d3a9a282c69a973c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c27e7f6658db42cb1e6f98a941fde9571ea62942c02e46dff7fa33f9073992d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoconeMorphism (A B : Cocone F) where
  /-- A morphism between the (co)vertex objects in `C` -/
  Hom : A.pt ⟶ B.pt
  /-- The triangle made from the two natural transformations and `Hom` commutes -/
  w : ∀ j : J, A.ι.app j ≫ Hom = B.ι.app j := by aesop_cat
#align category_theory.limits.cocone_morphism CategoryTheory.Limits.CoconeMorphism
#align category_theory.limits.cocone_morphism.w' CategoryTheory.Limits.CoconeMorphism.w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant8af5f29d64cf5f38fa353232037ff995c7d2e915e5365e5d3a9a282c69a973c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant8af5f29d64cf5f38fa353232037ff995c7d2e915e5365e5d3a9a282c69a973c9.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d182de4914d4364a5abeb889c5adcca21ec3155d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
