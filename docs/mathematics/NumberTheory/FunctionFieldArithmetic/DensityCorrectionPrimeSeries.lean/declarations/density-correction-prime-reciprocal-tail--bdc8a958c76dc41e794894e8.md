# density_correction_prime_reciprocal_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5199d09a-7779-d55c-0baf-24d046b852b7",
  "kind": "theorem",
  "lexical_name": "density_correction_prime_reciprocal_tail",
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
  "slug": "density-correction-prime-reciprocal-tail--bdc8a958c76dc41e794894e8",
  "source": {
    "blob": "e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdc8a958c76dc41e794894e8dcaae010824debe161acdba00b733ac667ef99c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5199d09a-7779-d55c-0baf-24d046b852b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_correction_prime_reciprocal_tail {p : ℕ} (hp : p.Prime) (K : ℕ) :
    (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + K + 1)) / (p : ℝ) ^ (k + K + 1)) =
      (1 / (p : ℝ)) ^ K / ((p : ℝ)^2 - 1) := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hq : (1 / (p : ℝ)) < 1 := (div_lt_one hp0).mpr hp1
  have h := density_correction_prime_tsum_tail hp (one_div_nonneg.mpr hp0.le) hq K
  simp only [one_div_pow, ← div_eq_mul_one_div] at h
  rw [h]
  calc
    (1 / (p : ℝ) ^ (K + 1)) / (((p : ℝ) + 1) * (1 - 1 / (p : ℝ))) =
        (1 / (p : ℝ)) ^ K * ((1 / (p : ℝ)) / (((p : ℝ) + 1) * (1 - 1 / (p : ℝ)))) := by
      rw [← one_div_pow, pow_succ]
      ring
    _ = (1 / (p : ℝ)) ^ K / ((p : ℝ)^2 - 1) := by
      rw [density_prime_reciprocal_mass_algebra hp]
      ring

/-- The exponent-zero atom plus all positive powers gives the exact Euler factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
