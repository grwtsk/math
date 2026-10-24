# density_correction_prime_half_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34925622-ba58-66b0-784a-f416cc85b5eb",
  "kind": "theorem",
  "lexical_name": "density_correction_prime_half_tail",
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
  "slug": "density-correction-prime-half-tail--d1fc05b12601049fc311c6a3",
  "source": {
    "blob": "ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 94,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1fc05b12601049fc311c6a31dc9da475b58e7c724c4d57faadee7b531facb5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34925622-ba58-66b0-784a-f416cc85b5eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_correction_prime_half_tail {p : ℕ} (hp : p.Prime) (K : ℕ) :
    (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + K + 1)) /
      Real.sqrt (p : ℝ) ^ (k + K + 1)) =
      (1 / Real.sqrt (p : ℝ)) ^ K /
        (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using
      (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
  have hs0 : 0 < Real.sqrt (p : ℝ) := by linarith
  have hq : 1 / Real.sqrt (p : ℝ) < 1 := (div_lt_one hs0).mpr hs1
  have h := density_correction_prime_tsum_tail hp (one_div_nonneg.mpr hs0.le) hq K
  simp only [one_div_pow, ← div_eq_mul_one_div] at h
  rw [h]
  calc
    (1 / Real.sqrt (p : ℝ) ^ (K + 1)) /
        (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ))) =
        (1 / Real.sqrt (p : ℝ)) ^ K *
          ((1 / Real.sqrt (p : ℝ)) /
            (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ)))) := by
      rw [← one_div_pow, pow_succ]
      ring
    _ = (1 / Real.sqrt (p : ℝ)) ^ K /
        (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
      rw [density_prime_half_mass_algebra hp]
      ring

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
