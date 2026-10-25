# val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05043837063f567b14d176d9f8f10590c6ba004f4b27eccc9bb2b6a1f7c4d10f",
  "kind": "def",
  "lexical_name": "val",
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
  "slug": "val--323adb3dcbf5394f25bed257",
  "source": {
    "blob": "ac4546542aa387f94c84ef017b60db63f15bcea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 790,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:323adb3dcbf5394f25bed2577baed735af5558317a79c5eba124099406515c8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05043837063f567b14d176d9f8f10590c6ba004f4b27eccc9bb2b6a1f7c4d10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def val : Valuation (PreTilt O p) ℝ≥0 where
  toFun := valAux K v O p
  map_one' := valAux_one hv
  map_mul' := valAux_mul hv
  map_zero' := valAux_zero
  map_add_le_max' := valAux_add hv

variable {K v O p}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Perfection/Variant377ea326ac6ddbdea37a640c8aa85899a6167ea3341ab037b2c3cbf004ce62b4.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4546542aa387f94c84ef017b60db63f15bcea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
