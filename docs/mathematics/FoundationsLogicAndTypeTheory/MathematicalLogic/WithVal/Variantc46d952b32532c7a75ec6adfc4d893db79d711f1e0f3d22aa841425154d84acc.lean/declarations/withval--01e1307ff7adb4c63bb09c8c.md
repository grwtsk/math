# WithVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0897e2d932504bac1beded86a35e5d5d5f08fb1439ca238e4ea79947d314791e",
  "kind": "structure",
  "lexical_name": "WithVal",
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
  "slug": "withval--01e1307ff7adb4c63bb09c8c",
  "source": {
    "blob": "7b494de6e79649733541d4f419393d601dfbdf43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01e1307ff7adb4c63bb09c8ce7ea3700bb90e8e25c959b10f1b8af186dd7753d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0897e2d932504bac1beded86a35e5d5d5f08fb1439ca238e4ea79947d314791e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WithVal [Ring R] (v : Valuation R Γ₀) where
  /-- Converts an element of `R` to an element of `WithVal v`. -/
  toVal (v) ::
  /-- Converts an element of `WithVal v` to an element of `R`. -/
  ofVal : R

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prevents `toVal v x` being printed as `{ ofAbs := x }` by `delabStructureInstance`. -/
@[app_delab WithVal.toVal]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b494de6e79649733541d4f419393d601dfbdf43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
