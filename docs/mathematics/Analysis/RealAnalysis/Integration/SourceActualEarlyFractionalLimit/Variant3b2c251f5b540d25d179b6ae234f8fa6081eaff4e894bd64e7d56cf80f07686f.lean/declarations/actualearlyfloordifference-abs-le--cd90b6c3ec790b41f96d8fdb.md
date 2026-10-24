# actualEarlyFloorDifference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c856167d-ec79-1b68-60d3-c681036252ac",
  "kind": "theorem",
  "lexical_name": "actualEarlyFloorDifference_abs_le",
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
  "slug": "actualearlyfloordifference-abs-le--cd90b6c3ec790b41f96d8fdb",
  "source": {
    "blob": "db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd90b6c3ec790b41f96d8fdb54cb1d6fb84d64d3b090edf8868a20fb7be10304",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c856167d-ec79-1b68-60d3-c681036252ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEarlyFloorDifference_abs_le {A x : ℝ} (hA : 91 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    |(⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x - earlyUnitFloorDensity x| ≤
      ((20 * Real.log (vaughanCutoff A : ℝ) +
        5 * (Real.log (vaughanCutoff A : ℝ)) ^ 2) / A ^ 2) * (1 / Real.sqrt x) := by
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hs0 : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  let T := Real.log (vaughanCutoff A : ℝ)
  have ht0 : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have htT : Real.log x ≤ T := Real.log_le_log hx0 hx.2
  have hT0 : 0 ≤ T := ht0.trans htT
  have hB0 : 0 ≤ (20 * T + 5 * T ^ 2) / A ^ 2 := by positivity
  have hB := (actualCriticalDeviation_abs_le hA ht0).trans
    (show (20 * Real.log x + 5 * (Real.log x) ^ 2) / A ^ 2 ≤
      (20 * T + 5 * T ^ 2) / A ^ 2 by
        apply div_le_div_of_nonneg_right _ (sq_nonneg A)
        nlinarith)
  have hE : (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x - earlyUnitFloorDensity x =
      ((⌊x⌋₊ : ℝ) / (x * Real.sqrt x)) *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
          (sourceCorrelation explicitSecondDerivative A (Real.log x) - 1) / 2) := by
    rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
    simp only [Real.log_one, zero_add]
    rw [exp_neg_half_log_eq_inv_sqrt hx0]
    unfold earlyUnitFloorDensity
    field_simp
    ring
  have hfac : (⌊x⌋₊ : ℝ) / (x * Real.sqrt x) ≤ 1 / Real.sqrt x := by
    have hf := div_le_div_of_nonneg_right (Nat.floor_le hx0.le) (mul_pos hx0 hs0).le
    calc
      _ ≤ x / (x * Real.sqrt x) := hf
      _ = _ := by field_simp
  rw [hE, abs_mul, abs_of_nonneg (by positivity :
    (0 : ℝ) ≤ (⌊x⌋₊ : ℝ) / (x * Real.sqrt x))]
  calc
    _ ≤ ((⌊x⌋₊ : ℝ) / (x * Real.sqrt x)) * ((20 * T + 5 * T ^ 2) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hB (by positivity)
    _ ≤ (1 / Real.sqrt x) * ((20 * T + 5 * T ^ 2) / A ^ 2) :=
      mul_le_mul_of_nonneg_right hfac hB0
    _ = _ := by ring

/-- Explicit actual early-profile approximation error, with its exact natural floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
