# actualLowerStripInterior_anchored_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac044b13-d0ee-0dda-601a-3cc98b66fc6f",
  "kind": "theorem",
  "lexical_name": "actualLowerStripInterior_anchored_abs_le",
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
  "slug": "actuallowerstripinterior-anchored-abs-le--a7d948dd0b048b37a35dd5c5",
  "source": {
    "blob": "4e0c1870d9be99c3f92939044028641caf660a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7d948dd0b048b37a35dd5c58b86063e31b4fc5485ed4edc705c7c72aa75dfc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac044b13-d0ee-0dda-601a-3cc98b66fc6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerStripInterior_anchored_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |actualLowerStripInterior A offset w| ≤
      32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp (-w / 2)) * (Real.exp (w / 2) - 1) := by
  obtain ⟨hb, hl, hs⟩ := strip_orders hA hw
  let D : ℝ := 4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
    ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) *
    (1 - Real.exp (-w / 2))
  have hrho : 0 ≤ 1 - Real.exp (-w / 2) := by
    apply sub_nonneg.mpr
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have he (t : ℝ) : 0 ≤ D * Real.exp (t / 2) := by positivity
  have hi (t : ℝ) (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w)) :
      |∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A offset (t, s)| ≤
          (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)) *
            Real.exp (t / 2) := by
    have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hs
      (Filter.Eventually.of_forall (fun s hs' => by
        rw [Real.norm_eq_abs]
        exact strip_density_abs_le hA hw ht ⟨hs'.1.le, hs'.2⟩))
      (((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable
        _ _).const_mul (D * Real.exp (t / 2)))
    rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hs] at hn
    nlinarith [mul_nonneg (he t) (Real.exp_pos (-actualColumnUpper A / 2)).le]
  have ho := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hb
    (Filter.Eventually.of_forall (fun t ht => by
      rw [Real.norm_eq_abs]
      exact hi t ⟨ht.1.le, ht.2⟩))
    (((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _).const_mul
      (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)))
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_half_integral _ _ hb] at ho
  have hbexp : Real.exp (actualLowerStripUpper A w / 2) ≤
      Real.exp (actualTimeLower A / 2) * Real.exp (w / 2) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hm := min_le_right (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)
    dsimp only [actualLowerStripUpper]
    linarith
  have heprod : Real.exp (actualTimeLower A / 2) *
      Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) ≤ 1 := by
    rw [← Real.exp_add, ← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hdelta : 0 ≤ Real.exp (w / 2) - 1 := by
    have := Real.exp_le_exp.mpr (show (0 : ℝ) ≤ w / 2 by linarith)
    simpa using sub_nonneg.mpr this
  have hmass : |actualLowerStripInterior A offset w| ≤
      4 * D * (Real.exp (w / 2) - 1) := by
    have hcoef : 0 ≤ 2 * D *
        Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) := by positivity
    have he1 := mul_le_mul_of_nonneg_left
      (sub_le_sub_right hbexp (Real.exp (actualTimeLower A / 2))) hcoef
    have he2 := mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_right heprod hdelta) (by positivity : 0 ≤ 4 * D)
    dsimp only [actualLowerStripInterior]
    nlinarith
  have hUA : (vaughanCutoff A : ℝ) - 1 ≤ A ^ 2 := by
    have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
    linarith
  have hscale : A ^ 2 * (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 := by
    have h67 : 67 / A ^ 2 ≤ (3 / 4 : ℝ) :=
      (div_le_iff₀ (by positivity : 0 < A ^ 2)).mpr (by nlinarith)
    calc
      _ = 67 / A ^ 2 + 5 / 4 := by field_simp
      _ ≤ 2 := by linarith
  have hUb : ((vaughanCutoff A : ℝ) - 1) *
      (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 :=
    (mul_le_mul_of_nonneg_right hUA (by positivity)).trans hscale
  have hCE : 0 ≤ Real.log 4 + 4 + Real.log 2 + |offset| := by positivity
  have hDb : 4 * D ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
      (1 - Real.exp (-w / 2)) := by
    have hh := mul_le_mul_of_nonneg_left hUb (show 0 ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp (-w / 2)) by positivity)
    dsimp only [D]
    nlinarith
  exact hmass.trans (mul_le_mul_of_nonneg_right hDb hdelta)


/-- The same genuine strip bound exposes its balanced quadratic width expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0c1870d9be99c3f92939044028641caf660a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
