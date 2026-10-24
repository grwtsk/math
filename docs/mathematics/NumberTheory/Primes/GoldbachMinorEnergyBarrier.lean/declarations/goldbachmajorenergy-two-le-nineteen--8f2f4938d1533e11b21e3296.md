# goldbachMajorEnergy_two_le_nineteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ff1e25-d863-142f-47df-286cde6039a8",
  "kind": "theorem",
  "lexical_name": "goldbachMajorEnergy_two_le_nineteen",
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
  "slug": "goldbachmajorenergy-two-le-nineteen--8f2f4938d1533e11b21e3296",
  "source": {
    "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f2f4938d1533e11b21e32968eff48d45d1fc89a102d962c515024f0df960d34",
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

Occurrence: `result:f8ff1e25-d863-142f-47df-286cde6039a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachMajorEnergy_two_le_nineteen
    (hθ : GoldbachThetaCoarseEstimates) {N : ℕ} (hN : 4000000 ≤ N) :
    goldbachMajorEnergy 2 N ≤ 19 * (N : ℝ) := by
  have hupper := (abs_le.mp (hθ.2 N hN)).2
  have hnonneg := goldbachPrimeLogTotal_nonneg N
  have hN0 : (0 : ℝ) ≤ N := by positivity
  have ht : goldbachPrimeLogTotal N ≤ 501 * (N : ℝ) / 500 := by linarith
  have hs : goldbachPrimeLogTotal N ^ 2 ≤ (501 * (N : ℝ) / 500) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht)
      (show 0 ≤ 501 * (N : ℝ) / 500 + goldbachPrimeLogTotal N by positivity)]
  have hXp : (0 : ℝ) < (N + 1 : ℝ) := by positivity
  apply (goldbachMajorEnergy_two_le_theta_square N).trans
  apply (div_le_iff₀ hXp).2
  nlinarith [sq_nonneg (N : ℝ)]

/-- Primes above n each contribute an additional factor at least log n to
the square total. Lower primes and both endpoints remain in the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
