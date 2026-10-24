# surjOn_closedBall_of_nonlinearRightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8beb796bfd3527757f916bab31851c955bb5406d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e55a140a541a9e769928f62f363f8744f1a9876e1f2d72109817897bfe3270a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19785653-53c6-4823-75ac-910048384122",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae18105b-34c3-22dc-bacd-871db8e3a1b3",
  "kind": "theorem",
  "lexical_name": "surjOn_closedBall_of_nonlinearRightInverse",
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
  "slug": "surjon-closedball-of-nonlinearrightinverse--7e1decff2a12a8a3fe846241",
  "source": {
    "blob": "8beb796bfd3527757f916bab31851c955bb5406d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variante55a140a541a9e769928f62f363f8744f1a9876e1f2d72109817897bfe3270a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e1decff2a12a8a3fe846241d15b0ecac44b1ec9810898a103d157f900df852c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variante55a140a541a9e769928f62f363f8744f1a9876e1f2d72109817897bfe3270a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae18105b-34c3-22dc-bacd-871db8e3a1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjOn_closedBall_of_nonlinearRightInverse (hf : ApproximatesLinearOn f f' s c)
    (f'symm : f'.NonlinearRightInverse) {ε : ℝ} {b : E} (ε0 : 0 ≤ ε) (hε : closedBall b ε ⊆ s) :
    SurjOn f (closedBall b ε) (closedBall (f b) (((f'symm.nnnorm : ℝ)⁻¹ - c) * ε)) := by
  intro y hy
  cases' le_or_lt (f'symm.nnnorm : ℝ)⁻¹ c with hc hc
  · refine' ⟨b, by simp [ε0], _⟩
    have : dist y (f b) ≤ 0 :=
      (mem_closedBall.1 hy).trans (mul_nonpos_of_nonpos_of_nonneg (by linarith) ε0)
    simp only [dist_le_zero] at this
    rw [this]
  have If' : (0 : ℝ) < f'symm.nnnorm := by rw [← inv_pos]; exact (NNReal.coe_nonneg _).trans_lt hc
  have Icf' : (c : ℝ) * f'symm.nnnorm < 1 := by rwa [inv_eq_one_div, lt_div_iff If'] at hc
  have Jf' : (f'symm.nnnorm : ℝ) ≠ 0 := ne_of_gt If'
  have Jcf' : (1 : ℝ) - c * f'symm.nnnorm ≠ 0 := by apply ne_of_gt; linarith
  /- We have to show that `y` can be written as `f x` for some `x ∈ closed_ball b ε`.
    The idea of the proof is to apply the Banach contraction principle to the map
    `g : x ↦ x + f'symm (y - f x)`, as a fixed point of this map satisfies `f x = y`.
    When `f'symm` is a genuine linear inverse, `g` is a contracting map. In our case, since `f'symm`
    is nonlinear, this map is not contracting (it is not even continuous), but still the proof of
    the contraction theorem holds: `uₙ = gⁿ b` is a Cauchy sequence, converging exponentially fast
    to the desired point `x`. Instead of appealing to general results, we check this by hand.

    The main point is that `f (u n)` becomes exponentially close to `y`, and therefore
    `dist (u (n+1)) (u n)` becomes exponentally small, making it possible to get an inductive
    bound on `dist (u n) b`, from which one checks that `u n` stays in the ball on which one has a
    control. Therefore, the bound can be checked at the next step, and so on inductively.
    -/
  set g := fun x => x + f'symm (y - f x) with hg
  set u := fun n : ℕ => g^[n] b with hu
  have usucc : ∀ n, u (n + 1) = g (u n) := by simp [hu, ← iterate_succ_apply' g _ b]
  -- First bound: if `f z` is close to `y`, then `g z` is close to `z` (i.e., almost a fixed point).
  have A : ∀ z, dist (g z) z ≤ f'symm.nnnorm * dist (f z) y := by
    intro z
    rw [dist_eq_norm, hg, add_sub_cancel', dist_eq_norm']
    exact f'symm.bound _
  -- Second bound: if `z` and `g z` are in the set with good control, then `f (g z)` becomes closer
  -- to `y` than `f z` was (this uses the linear approximation property, and is the reason for the
  -- choice of the formula for `g`).
  have B :
    ∀ z ∈ closedBall b ε,
      g z ∈ closedBall b ε → dist (f (g z)) y ≤ c * f'symm.nnnorm * dist (f z) y := by
    intro z hz hgz
    set v := f'symm (y - f z)
    calc
      dist (f (g z)) y = ‖f (z + v) - y‖ := by rw [dist_eq_norm]
      _ = ‖f (z + v) - f z - f' v + f' v - (y - f z)‖ := by congr 1; abel
      _ = ‖f (z + v) - f z - f' (z + v - z)‖ := by
        simp only [ContinuousLinearMap.NonlinearRightInverse.right_inv, add_sub_cancel',
          sub_add_cancel]
      _ ≤ c * ‖z + v - z‖ := (hf _ (hε hgz) _ (hε hz))
      _ ≤ c * (f'symm.nnnorm * dist (f z) y) := by
        gcongr
        simpa [dist_eq_norm'] using f'symm.bound (y - f z)
      _ = c * f'symm.nnnorm * dist (f z) y := by ring
  -- Third bound: a complicated bound on `dist w b` (that will show up in the induction) is enough
  -- to check that `w` is in the ball on which one has controls. Will be used to check that `u n`
  -- belongs to this ball for all `n`.
  have C : ∀ (n : ℕ) (w : E), dist w b ≤ f'symm.nnnorm * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n) /
      (1 - c * f'symm.nnnorm) * dist (f b) y → w ∈ closedBall b ε := fun n w hw ↦ by
    apply hw.trans
    rw [div_mul_eq_mul_div, div_le_iff]; swap; · linarith
    calc
      (f'symm.nnnorm : ℝ) * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n) * dist (f b) y =
          f'symm.nnnorm * dist (f b) y * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n) :=
        by ring
      _ ≤ f'symm.nnnorm * dist (f b) y * 1 := by
        gcongr
        rw [sub_le_self_iff]
        positivity
      _ ≤ f'symm.nnnorm * (((f'symm.nnnorm : ℝ)⁻¹ - c) * ε) := by
        rw [mul_one]
        gcongr
        exact mem_closedBall'.1 hy
      _ = ε * (1 - c * f'symm.nnnorm) := by field_simp; ring

  /- Main inductive control: `f (u n)` becomes exponentially close to `y`, and therefore
    `dist (u (n+1)) (u n)` becomes exponentally small, making it possible to get an inductive
    bound on `dist (u n) b`, from which one checks that `u n` remains in the ball on which we
    have estimates. -/
  have D : ∀ n : ℕ, dist (f (u n)) y ≤ ((c : ℝ) * f'symm.nnnorm) ^ n * dist (f b) y ∧
      dist (u n) b ≤ f'symm.nnnorm * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n) /
        (1 - (c : ℝ) * f'symm.nnnorm) * dist (f b) y := fun n ↦ by
    induction' n with n IH; · simp [hu, le_refl]
    rw [usucc]
    have Ign : dist (g (u n)) b ≤ f'symm.nnnorm * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n.succ) /
        (1 - c * f'symm.nnnorm) * dist (f b) y :=
      calc
        dist (g (u n)) b ≤ dist (g (u n)) (u n) + dist (u n) b := dist_triangle _ _ _
        _ ≤ f'symm.nnnorm * dist (f (u n)) y + dist (u n) b := (add_le_add (A _) le_rfl)
        _ ≤ f'symm.nnnorm * (((c : ℝ) * f'symm.nnnorm) ^ n * dist (f b) y) +
              f'symm.nnnorm * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n) / (1 - c * f'symm.nnnorm) *
                dist (f b) y := by gcongr; exact IH.1; exact IH.2
        _ = f'symm.nnnorm * (1 - ((c : ℝ) * f'symm.nnnorm) ^ n.succ) /
              (1 - (c : ℝ) * f'symm.nnnorm) * dist (f b) y := by
          field_simp [Jcf', pow_succ]; ring
    refine' ⟨_, Ign⟩
    calc
      dist (f (g (u n))) y ≤ c * f'symm.nnnorm * dist (f (u n)) y :=
        B _ (C n _ IH.2) (C n.succ _ Ign)
      _ ≤ (c : ℝ) * f'symm.nnnorm * (((c : ℝ) * f'symm.nnnorm) ^ n * dist (f b) y) := by
        gcongr
        apply IH.1
      _ = ((c : ℝ) * f'symm.nnnorm) ^ n.succ * dist (f b) y := by simp only [pow_succ']; ring
  -- Deduce from the inductive bound that `uₙ` is a Cauchy sequence, therefore converging.
  have : CauchySeq u
  · refine cauchySeq_of_le_geometric _ (↑f'symm.nnnorm * dist (f b) y) Icf' fun n ↦ ?_
    calc
      dist (u n) (u (n + 1)) = dist (g (u n)) (u n) := by rw [usucc, dist_comm]
      _ ≤ f'symm.nnnorm * dist (f (u n)) y := (A _)
      _ ≤ f'symm.nnnorm * (((c : ℝ) * f'symm.nnnorm) ^ n * dist (f b) y) := by
        gcongr
        exact (D n).1
      _ = f'symm.nnnorm * dist (f b) y * ((c : ℝ) * f'symm.nnnorm) ^ n := by ring
  obtain ⟨x, hx⟩ : ∃ x, Tendsto u atTop (𝓝 x) := cauchySeq_tendsto_of_complete this
  -- As all the `uₙ` belong to the ball `closed_ball b ε`, so does their limit `x`.
  have xmem : x ∈ closedBall b ε :=
    isClosed_ball.mem_of_tendsto hx (eventually_of_forall fun n => C n _ (D n).2)
  refine' ⟨x, xmem, _⟩
  -- It remains to check that `f x = y`. This follows from continuity of `f` on `closed_ball b ε`
  -- and from the fact that `f uₙ` is converging to `y` by construction.
  have hx' : Tendsto u atTop (𝓝[closedBall b ε] x) := by
    simp only [nhdsWithin, tendsto_inf, hx, true_and_iff, ge_iff_le, tendsto_principal]
    exact eventually_of_forall fun n => C n _ (D n).2
  have T1 : Tendsto (f ∘ u) atTop (𝓝 (f x)) :=
    (hf.continuousOn.mono hε x xmem).tendsto.comp hx'
  have T2 : Tendsto (f ∘ u) atTop (𝓝 y) := by
    rw [tendsto_iff_dist_tendsto_zero]
    refine' squeeze_zero (fun _ => dist_nonneg) (fun n => (D n).1) _
    simpa using (tendsto_pow_atTop_nhds_0_of_lt_1 (by positivity) Icf').mul tendsto_const_nhds
  exact tendsto_nhds_unique T1 T2
#align approximates_linear_on.surj_on_closed_ball_of_nonlinear_right_inverse ApproximatesLinearOn.surjOn_closedBall_of_nonlinearRightInverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variante55a140a541a9e769928f62f363f8744f1a9876e1f2d72109817897bfe3270a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variante55a140a541a9e769928f62f363f8744f1a9876e1f2d72109817897bfe3270a2.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8beb796bfd3527757f916bab31851c955bb5406d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
