# norm_logDeriv_archChi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:914003ea-0959-b5e0-1432-8afde65f73dd",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_archChi_le",
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
  "slug": "norm-logderiv-archchi-le--f75c3f38ce651c3df9489788",
  "source": {
    "blob": "14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f75c3f38ce651c3df9489788b92c726d5c479b974ab3c996adc8d17df5d25d40",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:914003ea-0959-b5e0-1432-8afde65f73dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_archChi_le (hκ : κ ≤ 1) : ∃ C : ℝ, 0 < C ∧ ∀ σ t : ℝ, 1 / 2 ≤ σ → σ ≤ 3 / 2 →
    ‖logDeriv (archChi q κ) (σ + t * I)‖ ≤ C * Real.log (2 + |t|) := by
  obtain ⟨C, hC, hψ⟩ := digamma_growth_wide
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  set A : ℝ := Real.log q / 2 + Real.log Real.pi / 2 with hA
  have hA0 : 0 ≤ A := by
    have h1 : 0 ≤ Real.log q := Real.log_natCast_nonneg q
    have h2 : 0 ≤ Real.log Real.pi := Real.log_nonneg (by linarith [Real.pi_gt_three])
    positivity
  refine ⟨A / Real.log 2 + C, by positivity, fun σ t h1 h2 => ?_⟩
  have hre : 0 < ((σ : ℂ) + t * I).re := by simp; linarith
  rw [logDeriv_archChi q κ hre]
  have hκ0 : (0:ℝ) ≤ κ := Nat.cast_nonneg κ
  have hκ1 : (κ:ℝ) ≤ 1 := by exact_mod_cast hκ
  have hw1 : 1 / 4 ≤ ((((σ : ℂ) + t * I) + κ) / 2).re := by simp; linarith
  have hw2 : ((((σ : ℂ) + t * I) + κ) / 2).re ≤ 2 := by simp; linarith
  have hψb := hψ _ hw1 hw2
  have him : |((((σ : ℂ) + t * I) + κ) / 2).im| = |t| / 2 := by simp [abs_div]
  rw [him] at hψb
  have hlogmono : Real.log (2 + |t| / 2) ≤ Real.log (2 + |t|) :=
    Real.log_le_log (by positivity) (by linarith [abs_nonneg t])
  have hlog2le : Real.log 2 ≤ Real.log (2 + |t|) :=
    Real.log_le_log (by norm_num) (by linarith [abs_nonneg t])
  have hlogpos : 0 ≤ Real.log (2 + |t|) := le_trans hlog2.le hlog2le
  have hn1 : ‖(Real.log q : ℂ) / 2‖ = Real.log q / 2 := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.log_natCast_nonneg q)]
    simp
  have hn2 : ‖-(Real.log Real.pi : ℂ) / 2‖ = Real.log Real.pi / 2 := by
    rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Real.log_nonneg (by linarith [Real.pi_gt_three]))]
    simp
  have hn3 : ‖(1/2 : ℂ) * Complex.digamma ((((σ : ℂ) + t * I) + κ) / 2)‖
      ≤ (1/2) * (C * Real.log (2 + |t|)) := by
    rw [norm_mul, show ‖(1/2:ℂ)‖ = 1/2 by norm_num]
    exact mul_le_mul_of_nonneg_left (hψb.trans (mul_le_mul_of_nonneg_left hlogmono hC.le)) (by norm_num)
  calc ‖(Real.log q : ℂ) / 2 + (-(Real.log Real.pi : ℂ) / 2
        + (1/2 : ℂ) * Complex.digamma ((((σ : ℂ) + t * I) + κ) / 2))‖
      ≤ ‖(Real.log q : ℂ) / 2‖ + (‖-(Real.log Real.pi : ℂ) / 2‖
        + ‖(1/2 : ℂ) * Complex.digamma ((((σ : ℂ) + t * I) + κ) / 2)‖) :=
        (norm_add_le _ _).trans (add_le_add le_rfl (norm_add_le _ _))
    _ ≤ A + C * Real.log (2 + |t|) := by rw [hn1, hn2, hA]; nlinarith
    _ ≤ (A / Real.log 2 + C) * Real.log (2 + |t|) := by
        rw [add_mul]
        have : A ≤ A / Real.log 2 * Real.log (2 + |t|) := by
          rw [div_mul_eq_mul_div, le_div_iff₀ hlog2]
          exact mul_le_mul_of_nonneg_left hlog2le hA0
        linarith

/-- `logDeriv (archChi q κ)` is complex-differentiable on re > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
