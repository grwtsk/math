# mertens_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f4e5229-c83b-fc1e-b9a1-86f209878a3d",
  "kind": "theorem",
  "lexical_name": "mertens_monomial",
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
  "slug": "mertens-monomial--a6dac95bd0439d89bf3c128d",
  "source": {
    "blob": "86b70c2c71a619fceb4266c9d678bde7fc968e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6dac95bd0439d89bf3c128dd02868c84ba50b686573a2d446c3ed7ef197cfa1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f4e5229-c83b-fc1e-b9a1-86f209878a3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_monomial (a : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    |(∑ n ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ n / n * Real.log n ^ a) - u ^ (a + 1) / (a + 1)|
      ≤ 2 * KM * (1 + u) ^ a := by
  have hderiv : ∀ v ∈ Set.Icc 0 u, HasDerivAt (fun v => v ^ a) ((a : ℝ) * v ^ (a - 1)) v := by
    intro v _
    simpa using (hasDerivAt_id v).fun_pow a
  have hcont : ContinuousOn (fun v => (a : ℝ) * v ^ (a - 1)) (Set.Icc 0 u) := by fun_prop
  have h := mertens_step hu hderiv hcont
  rw [integral_pow] at h
  rw [zero_pow (Nat.succ_ne_zero a), sub_zero] at h
  have h1 : |u ^ a| ≤ (1 + u) ^ a := by
    rw [abs_of_nonneg (pow_nonneg hu a)]
    exact pow_le_pow_left₀ hu (by linarith) a
  have h2 : ∫ v in (0:ℝ)..u, |(a : ℝ) * v ^ (a - 1)| ≤ (1 + u) ^ a := by
    have heq : ∀ v ∈ Set.uIcc 0 u, |(a : ℝ) * v ^ (a - 1)| = (a : ℝ) * v ^ (a - 1) := by
      intro v hv
      rw [Set.uIcc_of_le hu] at hv
      exact abs_of_nonneg (mul_nonneg (Nat.cast_nonneg a) (pow_nonneg hv.1 _))
    rw [intervalIntegral.integral_congr heq, intervalIntegral.integral_const_mul, integral_pow]
    rcases Nat.eq_zero_or_pos a with rfl | ha
    · simp
    · have hsub : a - 1 + 1 = a := Nat.sub_add_cancel ha
      rw [hsub]
      simp only [zero_pow (Nat.pos_iff_ne_zero.mp ha), sub_zero]
      have ha' : (a : ℝ) - 1 + 1 = a := by ring
      have hcast : ((a - 1 : ℕ) : ℝ) + 1 = a := by
        rw [Nat.cast_sub ha]; push_cast; ring
      rw [hcast]
      have hane : (a : ℝ) ≠ 0 := by exact_mod_cast (Nat.pos_iff_ne_zero.mp ha)
      rw [mul_div_cancel₀ _ hane]
      exact pow_le_pow_left₀ hu (by linarith) a
  have hpos : 0 ≤ KM := KM_nonneg
  calc |(∑ n ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ n / n * Real.log n ^ a) - u ^ (a + 1) / (a + 1)|
      ≤ KM * (|u ^ a| + ∫ v in (0:ℝ)..u, |(a : ℝ) * v ^ (a - 1)|) := h
    _ ≤ KM * ((1 + u) ^ a + (1 + u) ^ a) := by gcongr
    _ = 2 * KM * (1 + u) ^ a := by ring

/-- Σ_{n ≤ X, n not prime} Λ(n)(log n)^a/n ≤ 2·Cdef·(log X)^{a−1}... we only need the crude form with u:
for n ≤ e^u:  Σ_{n not prime} Λ n (log n)^{b-1}/n ≤ u^{b-2}·2Cdef  (b ≥ 2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86b70c2c71a619fceb4266c9d678bde7fc968e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
