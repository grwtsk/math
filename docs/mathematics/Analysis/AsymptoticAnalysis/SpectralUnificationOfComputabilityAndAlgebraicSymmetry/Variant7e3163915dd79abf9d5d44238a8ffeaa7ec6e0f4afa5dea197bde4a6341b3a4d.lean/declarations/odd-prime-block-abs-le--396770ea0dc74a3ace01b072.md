# odd_prime_block_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e380f4-c990-1202-d20a-a906c6b31728",
  "kind": "theorem",
  "lexical_name": "odd_prime_block_abs_le",
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
  "slug": "odd-prime-block-abs-le--396770ea0dc74a3ace01b072",
  "source": {
    "blob": "2c23ac91c5940382a69516714bf1fe1bfd215828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 180,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396770ea0dc74a3ace01b0725097c9b9687afa6ca17f15a8bbddbacafdbecf0e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e380f4-c990-1202-d20a-a906c6b31728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_prime_block_abs_le (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : 2 ≤ p) (s : Finset ℕ) :
    |∑ k ∈ s, Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
      sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| ≤
      2 * (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) := by
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (show 1 ≤ p by omega)
  have hw : 0 ≤ Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p) :=
    div_nonneg (Real.log_nonneg hp1) (by positivity)
  calc
    _ ≤ ∑ k ∈ s, |Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
        sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ s, (Real.log (p : ℝ) / ((p : ℝ) * Real.sqrt p)) * (1 / (p : ℝ)) ^ k := by
      apply Finset.sum_le_sum
      intro k _
      rw [abs_mul, odd_power_weight_eq p k hp, abs_of_nonneg (mul_nonneg hw (by positivity))]
      exact mul_le_of_le_one_right (mul_nonneg hw (by positivity))
        (actual_correlation_abs_le_one A _ hA)
    _ ≤ _ := by
      rw [← Finset.mul_sum]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (finite_inverse_geom_le_two p hp s) hw

/-- The complete actual odd higher-prime-power sector is uniformly bounded,
independently of its moving finite cutoff and every real source scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7e3163915dd79abf9d5d44238a8ffeaa7ec6e0f4afa5dea197bde4a6341b3a4d.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c23ac91c5940382a69516714bf1fe1bfd215828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
