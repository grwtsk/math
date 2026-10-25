# log_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e28048a9-e28a-03e0-f5a6-2e0a730271db",
  "kind": "theorem",
  "lexical_name": "log_zero_right",
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
  "slug": "log-zero-right--d08381462c119fc642853cae",
  "source": {
    "blob": "fc5a051de663b700813c4d5c95c3e9d46b8dd3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08381462c119fc642853cae50a5be317263bf31c097becda28147d7f2af73ba",
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

Occurrence: `result:e28048a9-e28a-03e0-f5a6-2e0a730271db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_zero_right (b : Ordinal) : log b 0 = 0 :=
  if b1 : 1 < b then by
    rw [log_def b1, ← Ordinal.le_zero, pred_le]
    apply csInf_le'
    dsimp
    rw [succ_zero, opow_one]
    exact zero_lt_one.trans b1
  else by simp only [log_of_not_one_lt_left b1]
#align ordinal.log_zero_right Ordinal.log_zero_right

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantd80c28f11344f181fae56577d03bfbfb8d04b315e0e67ba3c0f1b4bb23d045d6.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5a051de663b700813c4d5c95c3e9d46b8dd3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
