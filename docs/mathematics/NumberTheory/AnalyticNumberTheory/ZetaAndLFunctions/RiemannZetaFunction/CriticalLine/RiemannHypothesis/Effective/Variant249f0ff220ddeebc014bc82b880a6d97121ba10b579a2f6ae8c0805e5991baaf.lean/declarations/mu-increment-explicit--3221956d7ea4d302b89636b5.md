# mu_increment_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eeab35a-c170-5bf9-27d8-70509e791be3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d37a07-59c4-6419-5c83-70aa65bd748f",
  "kind": "theorem",
  "lexical_name": "mu_increment_explicit",
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
  "slug": "mu-increment-explicit--3221956d7ea4d302b89636b5",
  "source": {
    "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 333,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3221956d7ea4d302b89636b57d33ebe70557fd5d4d54f1bd9d9d1a0b56fec37d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d37a07-59c4-6419-5c83-70aa65bd748f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mu_increment_explicit (t : ℝ) (ht : 2 ≤ t) (r : ℝ) (htr : 2 ≤ t + r) :
    |Zeta23.mu (t + r) - Zeta23.mu t| ≤ 16 * (|r| + r ^ 2) / t := by
  have ht0 : (0:ℝ) < t := by linarith
  have hsmooth : ContDiff ℝ ⊤ (Zeta23.mu) := by
    rw [mu_eq_muq01]
    exact (Zeta23.ThmE.GammaChi.gammaFactsChi (κ := 0) (q := 1) (by norm_num) (by norm_num)).smooth
  have hdiff : Differentiable ℝ Zeta23.mu := hsmooth.differentiable (by simp)
  -- derivative bound on [m, ∞) for m ≥ 1
  have hderiv_on : ∀ m : ℝ, 1 ≤ m → ∀ τ ∈ Set.Icc (min t (t+r)) (max t (t+r)),
      m ≤ |τ| → |deriv Zeta23.mu τ| ≤ (24 / Real.pi) / m := by
    intro m hm τ _ hmτ
    have h1 := mu_deriv_bound_explicit τ (le_trans hm hmτ)
    calc |deriv Zeta23.mu τ| ≤ (24 / Real.pi) / |τ| := h1
      _ ≤ (24 / Real.pi) / m := by
          gcongr
  rcases le_or_gt (t/2) (t + r) with hbig | hsmall
  · -- whole segment in [t/2, ∞), t/2 ≥ 1
    have hm1 : (1:ℝ) ≤ t/2 := by linarith
    have hseg : ∀ τ ∈ Set.Icc (min t (t+r)) (max t (t+r)), (t/2 : ℝ) ≤ |τ| := by
      intro τ hτ
      have h1 : t/2 ≤ τ := by
        rcases le_total t (t+r) with h | h
        · rw [min_eq_left h] at hτ
          linarith [hτ.1]
        · rw [min_eq_right h] at hτ
          linarith [hτ.1]
      calc t/2 ≤ τ := h1
        _ ≤ |τ| := le_abs_self τ
    have hbound : ∀ τ ∈ Set.Icc (min t (t+r)) (max t (t+r)),
        ‖deriv Zeta23.mu τ‖ ≤ (24 / Real.pi) / (t/2) := by
      intro τ hτ
      rw [Real.norm_eq_abs]
      exact hderiv_on (t/2) hm1 τ hτ (hseg τ hτ)
    have hmem1 : t ∈ Set.Icc (min t (t+r)) (max t (t+r)) :=
      ⟨min_le_left _ _, le_max_left _ _⟩
    have hmem2 : t + r ∈ Set.Icc (min t (t+r)) (max t (t+r)) :=
      ⟨min_le_right _ _, le_max_right _ _⟩
    have hmvt := (convex_Icc (min t (t+r)) (max t (t+r))).norm_image_sub_le_of_norm_deriv_le
      (f := Zeta23.mu) (fun τ _ => hdiff τ) hbound hmem1 hmem2
    rw [Real.norm_eq_abs, show t + r - t = r by ring, Real.norm_eq_abs] at hmvt
    have hπ3 : (3:ℝ) ≤ Real.pi := Real.pi_gt_three.le
    have hcoef : (24 / Real.pi) / (t/2) ≤ 16 / t := by
      rw [div_div_eq_mul_div, div_le_div_iff₀ ht0 ht0]
      have h24 : 24 / Real.pi ≤ 8 := by
        rw [div_le_iff₀ (by linarith : (0:ℝ) < Real.pi)]
        linarith
      nlinarith
    calc |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (24 / Real.pi) / (t/2) * |r| := hmvt
      _ ≤ 16 / t * |r| := by
          have : (0:ℝ) ≤ |r| := abs_nonneg r
          exact mul_le_mul_of_nonneg_right hcoef this
      _ ≤ 16 * (|r| + r ^ 2) / t := by
          rw [div_mul_eq_mul_div]
          gcongr
          nlinarith [sq_nonneg r, abs_nonneg r]
  · -- t + r < t/2: then |r| > t/2; both endpoints ≥ 2 so |μ′| ≤ 12/π on the segment
    have hr2 : t + r < t/2 := hsmall
    have hrneg : r < -(t/2) := by linarith
    have hrabs : t/2 < |r| := by
      rw [abs_of_neg (by linarith : r < 0)]
      linarith
    have hseg2 : ∀ τ ∈ Set.Icc (min t (t+r)) (max t (t+r)), (2:ℝ) ≤ |τ| := by
      intro τ hτ
      have hmin : min t (t+r) = t + r := min_eq_right (by linarith)
      rw [hmin] at hτ
      have h1 : 2 ≤ τ := le_trans htr hτ.1
      calc (2:ℝ) ≤ τ := h1
        _ ≤ |τ| := le_abs_self τ
    have hbound2 : ∀ τ ∈ Set.Icc (min t (t+r)) (max t (t+r)),
        ‖deriv Zeta23.mu τ‖ ≤ (24 / Real.pi) / 2 := by
      intro τ hτ
      rw [Real.norm_eq_abs]
      exact hderiv_on 2 (by norm_num) τ hτ (hseg2 τ hτ)
    have hmem1 : t ∈ Set.Icc (min t (t+r)) (max t (t+r)) :=
      ⟨min_le_left _ _, le_max_left _ _⟩
    have hmem2 : t + r ∈ Set.Icc (min t (t+r)) (max t (t+r)) :=
      ⟨min_le_right _ _, le_max_right _ _⟩
    have hmvt := (convex_Icc (min t (t+r)) (max t (t+r))).norm_image_sub_le_of_norm_deriv_le
      (f := Zeta23.mu) (fun τ _ => hdiff τ) hbound2 hmem1 hmem2
    rw [Real.norm_eq_abs, show t + r - t = r by ring, Real.norm_eq_abs] at hmvt
    have hπ3 : (3:ℝ) ≤ Real.pi := Real.pi_gt_three.le
    have h24 : 24 / Real.pi ≤ 8 := by
      rw [div_le_iff₀ (by linarith : (0:ℝ) < Real.pi)]
      linarith
    -- (12/π)|r| ≤ 4|r| ≤ 8 r²/t  (since |r| > t/2 → r² > |r|·t/2 → r²/t > |r|/2)
    calc |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (24 / Real.pi) / 2 * |r| := hmvt
      _ ≤ 4 * |r| := by nlinarith [abs_nonneg r]
      _ ≤ 16 * (|r| + r ^ 2) / t := by
          rw [le_div_iff₀ ht0]
          have hr2' : |r| * t ≤ 2 * r ^ 2 := by
            have h1 : |r| * t < |r| * (2 * |r|) := by
              have : (0:ℝ) < |r| := by linarith
              nlinarith
            nlinarith [sq_abs r]
          nlinarith [abs_nonneg r, sq_nonneg r]

/-! ## E2(i): explicit local zero count away from the origin -/

set_option maxHeartbeats 800000 in
/-- **E2(i)**: for |t + 1/2| ≥ 6, the unit-window zero count satisfies
N(t, t+1] ≤ 540000000·log(|t|+3) — explicit, via reflection halving
(zetaZeroConfig.N_le_two_mul_half) + the explicit partial-fraction count conjunct
(the half-window {Re ≥ 1/2, ordinate ∈ (t, t+1]} sits inside the counting ball
of radius (22/25)(91/50) around 2 + (t+1/2)i: distance² ≤ (3/2)² + (1/2)² < 1.6016²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
