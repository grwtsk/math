# actual_adjusted_column_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d49504d7-0f36-a10b-82be-431e06d7c190",
  "kind": "theorem",
  "lexical_name": "actual_adjusted_column_eq_closed_inventory",
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
  "slug": "actual-adjusted-column-eq-closed-inventory--3e46ea7fbe92262b562deb19",
  "source": {
    "blob": "3c52e1574b6865627220b3aa15ad08712d480a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e46ea7fbe92262b562deb1951e173608ab1b591d8da71684e60e2423450d9c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49504d7-0f36-a10b-82be-431e06d7c190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adjusted_column_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualCriticalAdjustedColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
        centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredHalfUpperDefect A) := by
  unfold actualCriticalAdjustedColumnPrimitive
  rw [actualAdjointColumnPrimitive_eq_closed_inventory hA hs0 hs1, Real.exp_half]
  unfold actualCenteredHalfUpperDefect
  ring

/-- Actual short Moebius quotients and harmonic rows expand the full adjusted column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant13eb37df67a0e9992d9ab5043b0ff8be7bdc28e97d2bf93b361546da81549334.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c52e1574b6865627220b3aa15ad08712d480a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
