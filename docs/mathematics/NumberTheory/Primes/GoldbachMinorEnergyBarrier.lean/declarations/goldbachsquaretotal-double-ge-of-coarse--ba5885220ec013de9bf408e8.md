# goldbachSquareTotal_double_ge_of_coarse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36208165-f10e-5350-8495-bad76d934831",
  "kind": "theorem",
  "lexical_name": "goldbachSquareTotal_double_ge_of_coarse",
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
  "slug": "goldbachsquaretotal-double-ge-of-coarse--ba5885220ec013de9bf408e8",
  "source": {
    "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5885220ec013de9bf408e83f68cdc9d196af04081f03f5b6495c51f5308290",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36208165-f10e-5350-8495-bad76d934831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSquareTotal_double_ge_of_coarse
    (hθ : GoldbachThetaCoarseEstimates) {n : ℕ} (hn : 4000000 ≤ n) :
    497 * (n : ℝ) * Real.log (n : ℝ) / 500 ≤ goldbachPrimeLogSquareTotal (2 * n) := by
  have htwo : 4000000 ≤ 2 * n := by omega
  have hlow := (abs_le.mp (hθ.2 (2 * n) htwo)).1
  have hupp := (abs_le.mp (hθ.2 n hn)).2
  push_cast at hlow
  have hdiff : 497 * (n : ℝ) / 500 ≤
      goldbachPrimeLogTotal (2 * n) - goldbachPrimeLogTotal n := by linarith
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))
  have hbase := goldbachSquareTotal_double_ge_log_theta_difference (show 2 ≤ n by omega)
  nlinarith [mul_nonneg hlog (sub_nonneg.mpr hdiff)]

/-- The absolute minor integral grows at least like N log N at fixed Q=2.
All hypotheses are the inherited coarse scalar estimates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
