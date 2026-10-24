# NativeTopography

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4a1390eb8089c9233fc780205a03c5bd7dcd173d648e504b9c9fe04620ebf25",
  "kind": "structure",
  "lexical_name": "NativeTopography",
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
  "slug": "nativetopography--35ada88fb63c6a41c7869b68",
  "source": {
    "blob": "2a7f2784b51bb2d8b803553e1fff7aacc5cb77db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35ada88fb63c6a41c7869b6810a3091dfe4986e76ce5126f5df69031d100d4bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4a1390eb8089c9233fc780205a03c5bd7dcd173d648e504b9c9fe04620ebf25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NativeTopography
    (Log Inf Epi Site Wis : Type u)
    [CategoryTheory.Category.{v} Log]
    [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    [CategoryTheory.Category.{v} Epi]
    [CategoryTheory.Category.{v} Site]
    [CategoryTheory.Category.{v} Wis]
    (J : CategoryTheory.GrothendieckTopology Site) where
  system : ThinkSystem Log Inf Epi Site Wis J
  monoidalCoherenceReceiptHash : String
  sheafGluingReceiptHash : String
  omegaInvariantReceiptHash : String
  kleisliReceiptHash : String
  usesClassicalOmega : Bool
  usesFloatOmega : Bool
  claimBearing : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7f2784b51bb2d8b803553e1fff7aacc5cb77db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
