# prime_reciprocal_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b7ef83-ab27-11bd-0066-8f988c30d298",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12f27b53-5fda-e314-26ee-ce0aee0c610d",
  "kind": "theorem",
  "lexical_name": "prime_reciprocal_abel",
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
  "slug": "prime-reciprocal-abel--1879b5548a8b55c46feb0663",
  "source": {
    "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 60,
    "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1879b5548a8b55c46feb06633d83b6bd946e3afed09860161136943010703b92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f27b53-5fda-e314-26ee-ce0aee0c610d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_reciprocal_abel {x : ℝ} (hx : 2 ≤ x) :
    PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) =
      (Nat.primeCounting ⌊x⌋₊ : ℝ) / x +
        ∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 := by
  have hsum : PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) =
      ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, (n : ℝ)⁻¹ * primeIndicator n := by
    simp [PPNCP04.Obstruction.harmonicMass, Nat.primesLE_eq_filter_Icc_zero,
      Finset.sum_filter, primeIndicator, one_div]
  have hdiff : ∀ z ∈ Icc (2 : ℝ) x,
      DifferentiableAt ℝ (fun t : ℝ => t⁻¹) z := by
    intro z hz
    have hz0 : z ≠ 0 := by linarith [hz.1]
    fun_prop
  have hint : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Icc 2 x) := by
    simp only [deriv_inv']
    apply ContinuousOn.integrableOn_Icc
    intro z hz
    have hz0 : z ≠ 0 := by linarith [hz.1]
    have hzsq : z ^ 2 ≠ 0 := pow_ne_zero 2 hz0
    exact (by fun_prop : ContinuousAt (fun t : ℝ => -(t ^ 2)⁻¹) z).continuousWithinAt
  rw [hsum, sum_mul_eq_sub_integral_mul₁ primeIndicator
    (by norm_num [primeIndicator]) (by norm_num [primeIndicator]) x hdiff hint,
    indicator_sum_is_count, ← intervalIntegral.integral_of_le hx]
  have hderiv : (∫ t in 2..x, deriv (fun u : ℝ => u⁻¹) t *
      ∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeIndicator n) =
      -(∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro t ht
    change deriv (fun u : ℝ => u⁻¹) t *
      (∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeIndicator n) =
        -((Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2)
    rw [deriv_inv, indicator_sum_is_count]
    simp [div_eq_mul_inv]
    ring
  rw [hderiv]
  simp [div_eq_mul_inv]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
