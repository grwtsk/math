# goldbachMajorEnergy_two_le_theta_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9b367d0-a184-6ee3-1917-3c64ae5b15f5",
  "kind": "theorem",
  "lexical_name": "goldbachMajorEnergy_two_le_theta_square",
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
  "slug": "goldbachmajorenergy-two-le-theta-square--e0783e47be89dd37484d8a74",
  "source": {
    "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0783e47be89dd37484d8a744001447c35f63df78935e09cf6be9378fe51f49e",
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

Occurrence: `result:c9b367d0-a184-6ee3-1917-3c64ae5b15f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachMajorEnergy_two_le_theta_square (N : ℕ) :
    goldbachMajorEnergy 2 N ≤ 18 * goldbachPrimeLogTotal N ^ 2 / (N + 1 : ℝ) := by
  have hfinite : volume (goldbachRationalMajorArcSet 2 N) < ⊤ :=
    (measure_mono (goldbachRationalMajorArcSet_subset_unit 2 N)).trans_lt (by simp)
  have hcap : ∀ x ∈ goldbachRationalMajorArcSet 2 N,
      ‖goldbachExponentialEnergy N x‖ ≤ goldbachPrimeLogTotal N ^ 2 := by
    intro x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (goldbachExponentialEnergy_nonneg N x)]
    have hb := norm_goldbachExponentialSum_le_primeLogTotal N x
    have hθ := goldbachPrimeLogTotal_nonneg N
    unfold goldbachExponentialEnergy
    nlinarith [mul_nonneg (sub_nonneg.mpr hb)
      (show 0 ≤ goldbachPrimeLogTotal N + ‖goldbachExponentialSum N x‖ by positivity)]
  have hi := norm_setIntegral_le_of_norm_le_const hfinite hcap
  change ‖goldbachMajorEnergy 2 N‖ ≤
    goldbachPrimeLogTotal N ^ 2 * volume.real (goldbachRationalMajorArcSet 2 N) at hi
  rw [Real.norm_eq_abs, abs_of_nonneg (goldbachMajorEnergy_nonneg 2 N)] at hi
  calc
    goldbachMajorEnergy 2 N ≤
        goldbachPrimeLogTotal N ^ 2 * volume.real (goldbachRationalMajorArcSet 2 N) := hi
    _ ≤ goldbachPrimeLogTotal N ^ 2 * (18 / (N + 1 : ℝ)) :=
      mul_le_mul_of_nonneg_left (measureReal_goldbachMajorArcSet_two_le N) (sq_nonneg _)
    _ = 18 * goldbachPrimeLogTotal N ^ 2 / (N + 1 : ℝ) := by ring

/-- The inherited scalar input makes the major absolute energy at most 19N.
The constant is conservative and uses no signed-major approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
