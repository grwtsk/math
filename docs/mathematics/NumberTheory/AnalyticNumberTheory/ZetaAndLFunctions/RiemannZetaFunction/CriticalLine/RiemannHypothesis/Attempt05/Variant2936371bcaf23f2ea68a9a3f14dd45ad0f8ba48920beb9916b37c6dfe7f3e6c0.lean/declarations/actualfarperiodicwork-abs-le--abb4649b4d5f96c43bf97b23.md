# actualFarPeriodicWork_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee604b66-e2ec-4267-e725-02a833895e97",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_abs_le",
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
  "slug": "actualfarperiodicwork-abs-le--abb4649b4d5f96c43bf97b23",
  "source": {
    "blob": "db4193b3591d86793d2e625b9ad0b4d7b4f26e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant2936371bcaf23f2ea68a9a3f14dd45ad0f8ba48920beb9916b37c6dfe7f3e6c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb4649b4d5f96c43bf97b23b5248b7ec5e6b5c77ef209afebfc6a4e01f8c5a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant2936371bcaf23f2ea68a9a3f14dd45ad0f8ba48920beb9916b37c6dfe7f3e6c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee604b66-e2ec-4267-e725-02a833895e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_abs_le {A l : ℝ} (hA : 91 ≤ A)
    (hl : (vaughanCutoff A : ℝ) ≤ l)
    (hlK : l ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ))
    (hlv : actualTimeLower A ≤ 2 * A - Real.log l)
    (hvN : 2 * A - Real.log l ≤ Real.log (sourceKernelCutoff A : ℝ)) :
    |actualFarPeriodicWork A l| ≤
      (8 / (3 * A)) * (Real.log 4 + 4 + Real.log 2) *
        (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) *
          Real.exp (A - 2 * Real.log l) := by
  have hA1 : 1 ≤ A := by linarith
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) :=
    by exact_mod_cast vaughanCutoff_pos A hA1
  have hl0 : 0 < l := by linarith
  have ht0 : 0 ≤ actualTimeLower A := Real.log_nonneg hU1
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  let v : ℝ := 2 * A - Real.log l
  let C : ℝ := Real.log 4 + 4 + Real.log 2
  let D : ℝ := (32 / (3 * A)) *
    ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
      Real.exp (-3 * Real.log l / 2)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hI1 := actualFarPeriodicWork_intervalIntegrable hA hl hlK hlv
  have hIN := actualFarPeriodicWork_intervalIntegrable hA hl hlK (hlv.trans hvN)
  have hI2 := hI1.symm.trans hIN
  have hzero : (∫ t in v..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K) = 0 := by
    calc
      _ = ∫ _t in v..Real.log (sourceKernelCutoff A : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        rw [uIcc_of_le hvN] at ht
        rw [actualPhysicalPeriodicPrefixRow_zero_right hA1 hl0 hlK ht.1, mul_zero]
      _ = 0 := by simp
  have he : actualFarPeriodicWork A l = ∫ t in actualTimeLower A..v,
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K := by
    unfold actualFarPeriodicWork
    rw [← intervalIntegral.integral_add_adjacent_intervals hI1 hI2]
    change _ + (∫ t in v..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K) = _
    rw [hzero, add_zero]
  have hg : IntervalIntegrable (fun t : ℝ => 2 * C * D * Real.exp (t / 2))
      volume (actualTimeLower A) v := (by fun_prop :
        Continuous (fun t : ℝ => 2 * C * D * Real.exp (t / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ t : ℝ, t ∈ Ioc (actualTimeLower A) v →
      ‖actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K‖ ≤
        2 * C * D * Real.exp (t / 2) := by
    filter_upwards with t ht
    rw [Real.norm_eq_abs, abs_mul]
    have hP : |actualAdjointTimePrimitive A 0 t| ≤ 2 * C := by
      simpa only [C, abs_zero, add_zero] using
        actualAdjointTimePrimitive_abs_le (offset := (0 : ℝ)) hA1 ht.1.le
    have hR : |actualPhysicalPeriodicPrefixRow A t l K| ≤ D * Real.exp (t / 2) := by
      have hh := actualPhysicalPeriodicPrefixRow_abs_le hA (ht0.trans ht.1.le) hl hlK
      dsimp [D]
      nlinarith
    calc
      _ ≤ (2 * C) * (D * Real.exp (t / 2)) :=
        mul_le_mul hP hR (abs_nonneg _) (by positivity)
      _ = _ := by ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hlv hb hg
  rw [← he, Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hm := mul_le_mul_of_nonneg_left (exp_half_integral_le (actualTimeLower A) v)
    (show 0 ≤ 2 * C * D by positivity)
  apply hn.trans (hm.trans_eq ?_)
  have hv : Real.exp (-3 * Real.log l / 2) * Real.exp (v / 2) =
      Real.exp (A - 2 * Real.log l) := by
    rw [← Real.exp_add]
    congr 1
    dsimp [v]
    ring
  dsimp [C, D]
  rw [show (2 * (Real.log 4 + 4 + Real.log 2) *
      (32 / (3 * A) * ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        Real.exp (-3 * Real.log l / 2))) * (2 * Real.exp (v / 2)) =
      (8 / (3 * A)) * (Real.log 4 + 4 + Real.log 2) *
        (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) *
          (Real.exp (-3 * Real.log l / 2) * Real.exp (v / 2)) by ring, hv]

/-- The moving cutoff lies in the literal original column/time box at every stated real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant2936371bcaf23f2ea68a9a3f14dd45ad0f8ba48920beb9916b37c6dfe7f3e6c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant2936371bcaf23f2ea68a9a3f14dd45ad0f8ba48920beb9916b37c6dfe7f3e6c0.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4193b3591d86793d2e625b9ad0b4d7b4f26e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
