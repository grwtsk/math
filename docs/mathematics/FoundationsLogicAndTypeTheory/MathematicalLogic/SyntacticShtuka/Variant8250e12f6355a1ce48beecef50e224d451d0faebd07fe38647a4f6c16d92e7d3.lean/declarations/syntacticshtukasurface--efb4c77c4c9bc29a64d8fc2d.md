# SyntacticShtukaSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49993245499cbb16600e37e2954f1f4e6a545a9207a13ceb5b913b596b3e87a6",
  "kind": "structure",
  "lexical_name": "SyntacticShtukaSurface",
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
  "slug": "syntacticshtukasurface--efb4c77c4c9bc29a64d8fc2d",
  "source": {
    "blob": "b674402f25a403ea80b06b047fceb7d01638fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efb4c77c4c9bc29a64d8fc2dab51351a4d866113243e5584b6fdf1d765f08b89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49993245499cbb16600e37e2954f1f4e6a545a9207a13ceb5b913b596b3e87a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SyntacticShtukaSurface (α : Type) where
  rawCarrier : CompressedString α
  normalizedCarrier : CompressedString α
  modification : RewriteStep rawCarrier normalizedCarrier
  preserves : PreservesSemanticsAndLookup rawCarrier normalizedCarrier
  frobeniusAnalogueLabel : String
  geometricFrobeniusClaim : Bool
  drinfeldShtukaClaim : Bool
  functionFieldRHClaim : Bool
  classicalRHClaim : Bool
  theoremPromotionClaim : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SyntacticShtuka/Variant8250e12f6355a1ce48beecef50e224d451d0faebd07fe38647a4f6c16d92e7d3.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b674402f25a403ea80b06b047fceb7d01638fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
