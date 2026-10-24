# prime_harmonic_bound_at_x

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
      "line": 124,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0879dd97-c217-f6d4-84ac-b071df0fb052",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31e61666-19be-47d4-2870-57cd140c7063",
  "kind": "theorem",
  "lexical_name": "prime_harmonic_bound_at_x",
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
  "slug": "prime-harmonic-bound-at-x--6742d69258791684c6d3852c",
  "source": {
    "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 124,
    "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6742d69258791684c6d3852c7f1250c4f8b51b8620527e187b144d91bf79e645",
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

Occurrence: `result:31e61666-19be-47d4-2870-57cd140c7063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_harmonic_bound_at_x {x : ℝ} (hx : 2 ≤ x) :
    PPNCP04.Obstruction.harmonicMass (Nat.primesLE ⌊x⌋₊) ≤
      countConstant / Real.log 2 +
        countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
  have hx0 : 0 < x := by linarith
  have hx1 : 1 < x := by linarith
  have hlog2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hlogx : 0 < Real.log x := Real.log_pos hx1
  have hlogmono : Real.log 2 ≤ Real.log x := Real.log_le_log (by norm_num) hx
  have hendpoint : (Nat.primeCounting ⌊x⌋₊ : ℝ) / x ≤
      countConstant / Real.log 2 := by
    calc
      (Nat.primeCounting ⌊x⌋₊ : ℝ) / x ≤ (countConstant * x / Real.log x) / x :=
        div_le_div_of_nonneg_right (prime_count_bound hx) hx0.le
      _ = countConstant / Real.log x := by field_simp
      _ ≤ countConstant / Real.log 2 := by
        exact div_le_div_of_nonneg_left countConstant_positive.le hlog2 hlogmono
  have hpoint : ∀ t ∈ Icc (2 : ℝ) x,
      (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 ≤
        countConstant * (t⁻¹ / Real.log t) := by
    intro t ht
    have ht0 : 0 < t := by linarith [ht.1]
    have htlog : 0 < Real.log t := Real.log_pos (by linarith [ht.1])
    calc
      (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2 ≤
          (countConstant * t / Real.log t) / t ^ 2 :=
        div_le_div_of_nonneg_right (prime_count_bound ht.1) (sq_nonneg t)
      _ = countConstant * (t⁻¹ / Real.log t) := by
        field_simp
  have hintegral : (∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) ≤
      countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
    calc
      (∫ t in 2..x, (Nat.primeCounting ⌊t⌋₊ : ℝ) / t ^ 2) ≤
          ∫ t in 2..x, countConstant * (t⁻¹ / Real.log t) :=
        intervalIntegral.integral_mono_on hx (count_integrand_intervalIntegrable hx)
          (comparison_integrand_intervalIntegrable hx) hpoint
      _ = countConstant * (Real.log (Real.log x) - Real.log (Real.log 2)) := by
        rw [intervalIntegral.integral_const_mul,
          integral_inv_div_log (by norm_num : (1 : ℝ) < 2) hx1]
  rw [prime_reciprocal_abel hx]
  exact add_le_add hendpoint hintegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
