# muq_le_log_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:007a0d3f-50ee-86ba-91be-da7b10c8d1a7",
  "kind": "theorem",
  "lexical_name": "muq_le_log_uniform",
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
  "slug": "muq-le-log-uniform--30a0dfe6f0a0f35fc6441551",
  "source": {
    "blob": "6140043765504284b68ec21dfd2c5dd00c05a4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a0dfe6f0a0f35fc64415514c06bc10753d1fec7d7ba763bc198a4371634225",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:007a0d3f-50ee-86ba-91be-da7b10c8d1a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_le_log_uniform {κ q : ℕ} [NeZero q] {C : ℝ} (hC : 0 ≤ C)
    (hst : ∀ τ : ℝ, 1 ≤ |τ| →
      |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))| ≤ C / τ ^ 2)
    (hq1 : 1 ≤ q) : ∀ τ : ℝ, 1 ≤ τ →
    |muq κ q τ| ≤ (C + 2) * Real.log ((q:ℝ) * (τ + 3)) := by
  intro τ hτ
  have hτ0 : (0:ℝ) < τ := by linarith
  have hq0 : (0:ℝ) < (q:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne q)
  have hq1' : (1:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq1
  have h1 := hst τ (by rw [abs_of_pos hτ0]; exact hτ)
  rw [abs_of_pos hτ0] at h1
  obtain ⟨hl, hr⟩ := abs_le.mp h1
  set L : ℝ := Real.log ((q:ℝ) * (τ + 3)) with hLdef
  have hqt4 : (4:ℝ) ≤ (q:ℝ) * (τ + 3) := by nlinarith
  have hL1 : 1 ≤ L := by
    rw [hLdef, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  -- 0 ≤ log(qτ/2π) ≤ L   and   C/τ² ≤ C
  have harg : Real.log ((q:ℝ) * τ / (2 * Real.pi)) ≤ L := by
    rw [hLdef]
    apply Real.log_le_log (by positivity)
    have hπ3 := Real.pi_gt_three
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have hCτ : |C / τ ^ 2| ≤ C := by
    rw [abs_div, abs_of_nonneg hC, abs_of_pos (by positivity : (0:ℝ) < τ ^ 2)]
    apply div_le_self hC (by nlinarith)
  obtain ⟨hCl, hCr⟩ := abs_le.mp hCτ
  have h2π0 : 0 < 1 / (2 * Real.pi) := by positivity
  have h2π1 : 1 / (2 * Real.pi) ≤ 1 := by
    rw [div_le_one (by positivity)]; nlinarith [Real.pi_gt_three]
  -- lower bound for log(qτ/2π): ≥ −log(2π) ≥ −2 ≥ −2L  (qτ ≥ 1·1 = 1 ⇒ log ≥ −log 2π)
  have hlow : -(2 * L) ≤ 1 / (2 * Real.pi) * Real.log ((q:ℝ) * τ / (2 * Real.pi)) := by
    have h7 : Real.log ((q:ℝ) * τ / (2 * Real.pi)) ≥ -Real.log (2 * Real.pi) := by
      rw [Real.log_div (by positivity) (by positivity)]
      have : 0 ≤ Real.log ((q:ℝ) * τ) := Real.log_nonneg (by nlinarith)
      linarith
    have h8 : Real.log (2 * Real.pi) ≤ 2 * L := by
      have h9 : Real.log (2 * Real.pi) ≤ Real.log 16 := by
        apply Real.log_le_log (by positivity)
        nlinarith [Real.pi_lt_d2]
      have h10 : Real.log 16 = 2 * Real.log 4 := by
        rw [show (16:ℝ) = 4^2 by norm_num, Real.log_pow]; push_cast; ring
      have h11 : Real.log 4 ≤ L := by
        rw [hLdef]; exact Real.log_le_log (by norm_num) hqt4
      linarith
    have hln2π0 : 0 ≤ Real.log (2 * Real.pi) :=
      Real.log_nonneg (by nlinarith [Real.pi_gt_three])
    have h12 := mul_le_mul_of_nonneg_left h7 h2π0.le
    -- h12 : (1/2π)·(−log 2π) ≤ (1/2π)·log(qτ/2π)
    have h13 : -(2 * L) ≤ 1 / (2 * Real.pi) * -(Real.log (2 * Real.pi)) := by
      have h14 : 1 / (2 * Real.pi) * Real.log (2 * Real.pi) ≤ 1 * (2 * L) := by
        apply mul_le_mul h2π1 h8 hln2π0 (by norm_num)
      nlinarith
    linarith
  rw [abs_le]
  constructor
  · have : 1 / (2 * Real.pi) * Real.log ((q:ℝ) * τ / (2 * Real.pi)) - C ≤ muq κ q τ := by linarith
    nlinarith
  · have hup : 1 / (2 * Real.pi) * Real.log ((q:ℝ) * τ / (2 * Real.pi)) ≤ L := by
      rcases le_or_gt 0 (Real.log ((q:ℝ) * τ / (2 * Real.pi))) with h | h
      · calc 1 / (2 * Real.pi) * Real.log ((q:ℝ) * τ / (2 * Real.pi))
            ≤ 1 * Real.log ((q:ℝ) * τ / (2 * Real.pi)) := mul_le_mul_of_nonneg_right h2π1 h
          _ = Real.log ((q:ℝ) * τ / (2 * Real.pi)) := one_mul _
          _ ≤ L := harg
      · nlinarith
    nlinarith

set_option maxHeartbeats 3200000 in
/-- q-uniform main-term assembly, parametric in the uniform Backlund and H-Γ(χ)-bounded inputs
(shapes = RvMChiUniform's backlund_horizontalChi_uniform / gammaFactsChi_uniform). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6140043765504284b68ec21dfd2c5dd00c05a4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
