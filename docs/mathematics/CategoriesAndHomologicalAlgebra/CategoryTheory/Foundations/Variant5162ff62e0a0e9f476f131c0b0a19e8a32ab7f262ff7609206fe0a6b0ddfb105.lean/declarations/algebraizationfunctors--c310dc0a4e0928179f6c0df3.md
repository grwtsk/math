# AlgebraizationFunctors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6227e8c4aaf95e7edcba033a225a57c4ee56e8db770585bb77bc98e907c59bcd",
  "kind": "structure",
  "lexical_name": "AlgebraizationFunctors",
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
  "slug": "algebraizationfunctors--c310dc0a4e0928179f6c0df3",
  "source": {
    "blob": "593da8fc92f7327e8788edca415a525b29e74cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c310dc0a4e0928179f6c0df348ed821fa0c4d21b1118d20eeba4df723af1d5ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6227e8c4aaf95e7edcba033a225a57c4ee56e8db770585bb77bc98e907c59bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AlgebraizationFunctors
    (C : AlgebraizationCategories.{uObj, uHom}) where
  PolAn : FunctorLike C.ProjPol C.AnPol
  PolAlg : FunctorLike C.AnPol C.ProjPol
  FormalCompletion : FunctorLike C.ProjPol C.FormalPol
  FormalAlgebraization : FunctorLike C.FormalPol C.ProjPol
  FormalGeneric : FunctorLike C.FormalPol C.AnPol
  HenPullback : FunctorLike C.CohAlg C.CohHen
  SemanticPullback : FunctorLike C.SemanticAlg C.SemanticHen
  TannakaEffective : FunctorLike C.TannakaGeom C.TannakaEff
  TannakaUnrestricted : FunctorLike C.TannakaGeom C.TannakaAll
  GlobalRealization : FunctorLike C.Global C.PlaceFamily

/-- Objectwise predicates required by the moduli-effectivity pipeline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variant5162ff62e0a0e9f476f131c0b0a19e8a32ab7f262ff7609206fe0a6b0ddfb105.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593da8fc92f7327e8788edca415a525b29e74cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
