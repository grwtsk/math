# abs_x_mul_cos_sub_sin_le_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:315c9eaa-5b0a-1da5-f4b0-fe8153a706de",
  "kind": "theorem",
  "lexical_name": "abs_x_mul_cos_sub_sin_le_sq",
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
  "slug": "abs-x-mul-cos-sub-sin-le-sq--fe25f865c7ebe94756dac581",
  "source": {
    "blob": "78e8fd84f810480297e8cf6dde76757f78c946e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe25f865c7ebe94756dac5817ff34829125431ce07e59be471d56cd420d01d0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315c9eaa-5b0a-1da5-f4b0-fe8153a706de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_x_mul_cos_sub_sin_le_sq (x : ℝ) : |x * cos x - sin x| ≤ x ^ 2 := by
  suffices ∀ x ≥ 0, |x * cos x - sin x| ≤ x ^ 2 by
    obtain h | h := le_total 0 x
    · exact this x h
    · rw [← abs_neg, ← neg_sq x]
      convert this (-x) (neg_nonneg.mpr h) using 2
      ring_nf
      simp only [cos_neg, sin_neg]
      ring
  intro x hx
  rw [abs_le]
  constructor
  · -- -x^2 ≤ x cos x - sin x, equivalently 0 ≤ x cos x - sin x + x^2
    -- Define g(t) = t * cos t - sin t + t^2, show g is monotone on [0,∞) with g(0) = 0
    let g : ℝ → ℝ := fun t => t * cos t - sin t + t^2
    have hg_diff : ∀ t, HasDerivAt g (t * (2 - sin t)) t := fun t => by
      have h1 : HasDerivAt (fun t => t * cos t) (1 * cos t + t * (-sin t)) t :=
        hasDerivAt_id t |>.mul (hasDerivAt_cos t)
      have h2 : HasDerivAt (fun t => t * cos t - sin t) (1 * cos t + t * (-sin t) - cos t) t :=
        h1.sub (hasDerivAt_sin t)
      have hpow : HasDerivAt (fun t => t^2) (2 * t) t := by
        have := hasDerivAt_pow 2 t
        simp only [Nat.cast_ofNat, Nat.add_one_sub_one, pow_one] at this
        exact this
      have h3 : HasDerivAt (fun t => t * cos t - sin t + t^2)
          (1 * cos t + t * (-sin t) - cos t + 2 * t) t :=
        h2.add hpow
      convert h3 using 1
      ring
    have hg_cont : Continuous g :=
      (continuous_id.mul continuous_cos).sub continuous_sin |>.add (continuous_pow 2)
    have hg_diffble : Differentiable ℝ g := fun t => (hg_diff t).differentiableAt
    have hg' : ∀ t, deriv g t = t * (2 - sin t) := fun t => (hg_diff t).deriv
    have hg_nonneg : ∀ t ∈ interior (Set.Ici (0:ℝ)), 0 ≤ deriv g t := by
      intro t ht
      rw [interior_Ici] at ht
      rw [hg' t]
      apply mul_nonneg (le_of_lt (Set.mem_Ioi.mp ht))
      linarith [sin_le_one t]
    have g_nonneg : 0 ≤ g x := by
      have hmono := monotoneOn_of_deriv_nonneg (convex_Ici 0) hg_cont.continuousOn
        hg_diffble.differentiableOn hg_nonneg
      have hg0 : g 0 = 0 := by simp [g]
      calc 0 = g 0 := hg0.symm
        _ ≤ g x := hmono (by simp : (0:ℝ) ∈ Set.Ici 0) (Set.mem_Ici.mpr hx) hx
    linarith [g_nonneg]
  · -- x cos x - sin x ≤ x^2, equivalently 0 ≤ x^2 - (x cos x - sin x)
    -- Define g(t) = t^2 - (t * cos t - sin t), show g is monotone on [0,∞) with g(0) = 0
    let g : ℝ → ℝ := fun t => t^2 - (t * cos t - sin t)
    have hg_diff : ∀ t, HasDerivAt g (t * (2 + sin t)) t := fun t => by
      have h1 : HasDerivAt (fun t => t * cos t) (1 * cos t + t * (-sin t)) t :=
        hasDerivAt_id t |>.mul (hasDerivAt_cos t)
      have h2 : HasDerivAt (fun t => t * cos t - sin t) (1 * cos t + t * (-sin t) - cos t) t :=
        h1.sub (hasDerivAt_sin t)
      have hpow : HasDerivAt (fun t => t^2) (2 * t) t := by
        have := hasDerivAt_pow 2 t
        simp only [Nat.cast_ofNat, Nat.add_one_sub_one, pow_one] at this
        exact this
      have h3 : HasDerivAt (fun t => t^2 - (t * cos t - sin t))
          (2 * t - (1 * cos t + t * (-sin t) - cos t)) t :=
        hpow.sub h2
      convert h3 using 1
      ring
    have hg_cont : Continuous g :=
      (continuous_pow 2).sub ((continuous_id.mul continuous_cos).sub continuous_sin)
    have hg_diffble : Differentiable ℝ g := fun t => (hg_diff t).differentiableAt
    have hg' : ∀ t, deriv g t = t * (2 + sin t) := fun t => (hg_diff t).deriv
    have hg_nonneg : ∀ t ∈ interior (Set.Ici (0:ℝ)), 0 ≤ deriv g t := by
      intro t ht
      rw [interior_Ici] at ht
      rw [hg' t]
      apply mul_nonneg (le_of_lt (Set.mem_Ioi.mp ht))
      linarith [neg_one_le_sin t]
    have g_nonneg : 0 ≤ g x := by
      have hmono := monotoneOn_of_deriv_nonneg (convex_Ici 0) hg_cont.continuousOn
        hg_diffble.differentiableOn hg_nonneg
      have hg0 : g 0 = 0 := by simp [g]
      calc 0 = g 0 := hg0.symm
        _ ≤ g x := hmono (by simp : (0:ℝ) ∈ Set.Ici 0) (Set.mem_Ici.mpr hx) hx
    linarith [g_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e8fd84f810480297e8cf6dde76757f78c946e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
