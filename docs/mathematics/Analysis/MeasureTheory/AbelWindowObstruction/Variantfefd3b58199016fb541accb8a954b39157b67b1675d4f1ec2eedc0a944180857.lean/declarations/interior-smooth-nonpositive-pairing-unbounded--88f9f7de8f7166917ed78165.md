# interior_smooth_nonpositive_pairing_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aee9aa28-ddcf-a57c-c651-8df6de9145b6",
  "kind": "theorem",
  "lexical_name": "interior_smooth_nonpositive_pairing_unbounded",
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
  "slug": "interior-smooth-nonpositive-pairing-unbounded--88f9f7de8f7166917ed78165",
  "source": {
    "blob": "8156fb760602343ccb25d47e00fc19bfa617323c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 23,
    "path": "GRWTSK/Analysis/MeasureTheory/AbelWindowObstruction/Variantfefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f9f7de8f7166917ed78165169eb33c618630c7bc25c752c3e319db785867f5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AbelWindowObstruction/Variantfefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee9aa28-ddcf-a57c-c651-8df6de9145b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_smooth_nonpositive_pairing_unbounded {K : ℝ → ℝ} (hK : Continuous K)
    (hK0 : K 0 < 0) {B : ℝ} (hB : 0 < B) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧
      Function.support F ⊆ Ioo 0 B ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * K x) ∧ Q < ∫ x in 0..B, F x * K x := by
  have hevent : ∀ᶠ x in 𝓝 (0 : ℝ), K x < 0 := hK.continuousAt.eventually_lt_const hK0
  obtain ⟨r, hr, hlocal⟩ := Metric.eventually_nhds_iff.mp hevent
  let c : ℝ := min (r / 4) (B / 4)
  have hc0 : 0 < c := lt_min (by linarith) (by linarith)
  have hcr : c ≤ r / 4 := min_le_left _ _
  have hcB : c ≤ B / 4 := min_le_right _ _
  let phi : ContDiffBump c := ⟨c / 4, c / 2, by linarith, by linarith⟩
  have hsupport : Function.support phi ⊆ Ioo 0 B := by
    intro x hx
    rw [phi.support_eq] at hx
    have hd : |x - c| < c / 2 := by simpa [Real.dist_eq] using Metric.mem_ball.mp hx
    have h := abs_lt.mp hd
    exact ⟨by linarith, by linarith⟩
  have hnegative : ∀ x ∈ Function.support phi, K x < 0 := by
    intro x hx
    have hp := hsupport hx
    have hxball : x ∈ Metric.ball c (c / 2) := by simpa [phi.support_eq] using hx
    have hd : |x - c| < c / 2 := by simpa [Real.dist_eq] using Metric.mem_ball.mp hxball
    have h := abs_lt.mp hd
    apply hlocal
    rw [Real.dist_eq, sub_zero, abs_of_pos hp.1]
    linarith
  have hphi : phi c = 1 := phi.one_of_mem_closedBall (by simp [phi.rIn_pos.le])
  have hpc : c ∈ Function.support phi := by change phi c ≠ 0; rw [hphi]; norm_num
  have hn : ∀ x, 0 ≤ phi x * (-K x) := by
    intro x
    by_cases hx : phi x = 0
    · rw [hx, zero_mul]
    · exact mul_nonneg phi.nonneg (neg_nonneg.mpr (hnegative x hx).le)
  have hcont : Continuous (fun x ↦ phi x * (-K x)) :=
    (phi.contDiff (n := 0)).continuous.mul hK.neg
  have hcompact : HasCompactSupport (fun x ↦ phi x * (-K x)) := phi.hasCompactSupport.mul_right
  have hJ : 0 < ∫ x, phi x * (-K x) :=
    hcont.integral_pos_of_hasCompactSupport_nonneg_nonzero hcompact hn (by
      rw [hphi, one_mul]
      exact (neg_pos.mpr (hnegative c hpc)).ne')
  let J : ℝ := ∫ x, phi x * (-K x)
  let scale : ℝ := (|Q| + 1) / J
  have hscale : 0 < scale := div_pos (by positivity) hJ
  let F : ℝ → ℝ := fun x ↦ -scale * phi x
  have hFc : ContDiff ℝ (↑(⊤ : ℕ∞)) F :=
    (contDiff_const : ContDiff ℝ (↑(⊤ : ℕ∞)) (fun _ : ℝ ↦ -scale)).mul (phi.contDiff (n := ⊤))
  have hFs : HasCompactSupport F := phi.hasCompactSupport.mul_left
  have hFsupport : Function.support F ⊆ Ioo 0 B := by
    intro x hx
    apply hsupport
    intro hzero
    exact hx (by simp [F, hzero])
  have hFi : Integrable (fun x ↦ F x * K x) :=
    (hFc.continuous.mul hK).integrable_of_hasCompactSupport hFs.mul_right
  have hpair : Function.support (fun x ↦ F x * K x) ⊆ Ioc 0 B := by
    intro x hx
    have hf : F x ≠ 0 := (mul_ne_zero_iff.mp hx).1
    have h := hFsupport hf
    exact ⟨h.1, h.2.le⟩
  have hvalue : (∫ x in 0..B, F x * K x) = |Q| + 1 := by
    rw [intervalIntegral.integral_eq_integral_of_support_subset hpair]
    have he : (fun x ↦ F x * K x) = fun x ↦ scale * (phi x * (-K x)) := by
      funext x; dsimp [F]; ring
    rw [he, integral_const_mul]
    change scale * J = |Q| + 1
    dsimp [scale]
    exact div_mul_cancel₀ _ hJ.ne'
  refine ⟨F, hFc, hFs, hFsupport, ?_, hFi, ?_⟩
  · intro x
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hscale.le) phi.nonneg
  · rw [hvalue]
    exact (le_abs_self Q).trans_lt (lt_add_one _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AbelWindowObstruction/Variantfefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AbelWindowObstruction/Variantfefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8156fb760602343ccb25d47e00fc19bfa617323c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
