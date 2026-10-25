# lt_opow_iff_log_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8cdd35a-129f-670e-a74f-0bcb4b041c30",
  "kind": "theorem",
  "lexical_name": "lt_opow_iff_log_lt",
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
  "slug": "lt-opow-iff-log-lt--b186db1426a8f6a0233b5a9f",
  "source": {
    "blob": "fc5a051de663b700813c4d5c95c3e9d46b8dd3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b186db1426a8f6a0233b5a9f18a10ce3a31ea4a4edcd61a5ef783a0450d0b238",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8cdd35a-129f-670e-a74f-0bcb4b041c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_opow_iff_log_lt {b x c : Ordinal} (hb : 1 < b) (hx : x ≠ 0) : x < (b^c) ↔ log b x < c :=
  lt_iff_lt_of_le_iff_le (opow_le_iff_le_log hb hx)
#align ordinal.lt_opow_iff_log_lt Ordinal.lt_opow_iff_log_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5a051de663b700813c4d5c95c3e9d46b8dd3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
