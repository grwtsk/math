# actual_cycle_work_le_square_compensated_ramp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f34ff170-88d6-dd22-3960-033cda6f3499",
  "kind": "theorem",
  "lexical_name": "actual_cycle_work_le_square_compensated_ramp",
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
  "slug": "actual-cycle-work-le-square-compensated-ramp--a886649d700042bc137aebe0",
  "source": {
    "blob": "7a75ac0a496ca6fc1f982ab076e7e76bebcab42a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variant4e29a21d1879eca888e72f6683c426711b5363bf0ecb778479d428480c00a049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a886649d700042bc137aebe0183db4375706ed939c99b8b8d6d5646cfdf35d86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variant4e29a21d1879eca888e72f6683c426711b5363bf0ecb778479d428480c00a049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34ff170-88d6-dd22-3960-033cda6f3499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cycle_work_le_square_compensated_ramp {u : ℕ} (hu : 1 ≤ u)
    (hentrance : cumulativeDiscrepancy ordinaryPrimeCoefficient u ≤ 0) (K : ℕ) :
    ordinaryPrimePrimitive (u + K : ℕ) - ordinaryPrimePrimitive u ≤
      mangoldtRamp u K - squareRamp u K := by
  rw [actual_compact_green_identity hu]
  have hclock := cellClock_nonneg (x := (u + K : ℕ)) hu
    (by exact_mod_cast (Nat.le_add_right u K))
  have hi := mul_nonpos_of_nonpos_of_nonneg hentrance hclock
  linarith [prime_ramp_le_mangoldt_minus_squares hu K]

/-- This is one endpoint's proposed new record, not the accumulated cycle energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variant4e29a21d1879eca888e72f6683c426711b5363bf0ecb778479d428480c00a049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCompactRamp/Variant4e29a21d1879eca888e72f6683c426711b5363bf0ecb778479d428480c00a049.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a75ac0a496ca6fc1f982ab076e7e76bebcab42a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
