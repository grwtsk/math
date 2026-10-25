# lt_omega_iff_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03d43c02-bef8-3734-0087-f709cbb7ab04",
  "kind": "theorem",
  "lexical_name": "lt_omega_iff_card_lt",
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
  "slug": "lt-omega-iff-card-lt--013943da3e427d25c266822a",
  "source": {
    "blob": "562414d7e2fc53046083df500e74c865ccfd0a00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 478,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant25fc0f3b5b875e1b67c12c5441ff805c7cec7afea6a8d6fdd3d05c39df7f5433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:013943da3e427d25c266822a79e93db245e2f95779e069187298d246923610b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant25fc0f3b5b875e1b67c12c5441ff805c7cec7afea6a8d6fdd3d05c39df7f5433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03d43c02-bef8-3734-0087-f709cbb7ab04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_omega_iff_card_lt {x o : Ordinal} : x < ω_ o ↔ x.card < ℵ_ o := by
  rw [← (isInitial_omega o).card_lt_card, card_omega]

/-! ### Beth cardinals -/

/-- The "pre-beth" function is defined so that `preBeth o` is the supremum of `2 ^ preBeth a` for
`a < o`. This implies `beth 0 = 0`, `beth (succ o) = 2 ^ beth o`, and that for a limit ordinal `o`,
`beth o` is the supremum of `beth a` for `a < o`.

For the usual function starting at `ℵ₀`, see `Cardinal.beth`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant25fc0f3b5b875e1b67c12c5441ff805c7cec7afea6a8d6fdd3d05c39df7f5433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Variant25fc0f3b5b875e1b67c12c5441ff805c7cec7afea6a8d6fdd3d05c39df7f5433.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562414d7e2fc53046083df500e74c865ccfd0a00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
