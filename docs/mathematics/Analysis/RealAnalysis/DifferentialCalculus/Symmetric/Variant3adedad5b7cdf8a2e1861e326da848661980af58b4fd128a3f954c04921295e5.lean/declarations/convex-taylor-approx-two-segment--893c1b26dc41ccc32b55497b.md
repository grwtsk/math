# Convex.taylor_approx_two_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13287760-9826-eae0-d61f-e07313ea0fb5",
  "kind": "theorem",
  "lexical_name": "Convex.taylor_approx_two_segment",
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
  "slug": "convex-taylor-approx-two-segment--893c1b26dc41ccc32b55497b",
  "source": {
    "blob": "0ffa96c5444b290667206d339dda1cfa7a22d25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:893c1b26dc41ccc32b55497ba0898fb7b95f144addf2da9e213016f36a78c4a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13287760-9826-eae0-d61f-e07313ea0fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.taylor_approx_two_segment {v w : E} (hv : x + v ∈ interior s)
    (hw : x + v + w ∈ interior s) :
    (fun h : ℝ => f (x + h • v + h • w)
        - f (x + h • v) - h • f' x w - h ^ 2 • f'' v w - (h ^ 2 / 2) • f'' w w) =o[𝓝[>] 0]
      fun h => h ^ 2 := by
  -- it suffices to check that the expression is bounded by `ε * ((‖v‖ + ‖w‖) * ‖w‖) * h^2` for
  -- small enough `h`, for any positive `ε`.
  refine IsLittleO.trans_isBigO
    (isLittleO_iff.2 fun ε εpos => ?_) (isBigO_const_mul_self ((‖v‖ + ‖w‖) * ‖w‖) _ _)
  -- consider a ball of radius `δ` around `x` in which the Taylor approximation for `f''` is
  -- good up to `δ`.
  rw [HasFDerivWithinAt, hasFDerivAtFilter_iff_isLittleO, isLittleO_iff] at hx
  rcases Metric.mem_nhdsWithin_iff.1 (hx εpos) with ⟨δ, δpos, sδ⟩
  have E1 : ∀ᶠ h in 𝓝[>] (0 : ℝ), h * (‖v‖ + ‖w‖) < δ := by
    have : Filter.Tendsto (fun h => h * (‖v‖ + ‖w‖)) (𝓝[>] (0 : ℝ)) (𝓝 (0 * (‖v‖ + ‖w‖))) :=
      (continuous_id.mul continuous_const).continuousWithinAt
    apply (tendsto_order.1 this).2 δ
    simpa only [zero_mul] using δpos
  have E2 : ∀ᶠ h in 𝓝[>] (0 : ℝ), (h : ℝ) < 1 :=
    mem_nhdsWithin_of_mem_nhds <| Iio_mem_nhds zero_lt_one
  filter_upwards [E1, E2, self_mem_nhdsWithin] with h hδ h_lt_1 hpos
  -- we consider `h` small enough that all points under consideration belong to this ball,
  -- and also with `0 < h < 1`.
  replace hpos : 0 < h := hpos
  have xt_mem : ∀ t ∈ Icc (0 : ℝ) 1, x + h • v + (t * h) • w ∈ interior s := by
    intro t ht
    have : x + h • v ∈ interior s := s_conv.add_smul_mem_interior xs hv ⟨hpos, h_lt_1.le⟩
    rw [← smul_smul]
    apply s_conv.interior.add_smul_mem this _ ht
    rw [add_assoc] at hw
    convert s_conv.add_smul_mem_interior xs hw ⟨hpos, h_lt_1.le⟩ using 1
    module
  -- define a function `g` on `[0,1]` (identified with `[v, v + w]`) such that `g 1 - g 0` is the
  -- quantity to be estimated. We will check that its derivative is given by an explicit
  -- expression `g'`, that we can bound. Then the desired bound for `g 1 - g 0` follows from the
  -- mean value inequality.
  let g t :=
    f (x + h • v + (t * h) • w) - (t * h) • f' x w - (t * h ^ 2) • f'' v w -
      ((t * h) ^ 2 / 2) • f'' w w
  set g' := fun t =>
    f' (x + h • v + (t * h) • w) (h • w) - h • f' x w - h ^ 2 • f'' v w - (t * h ^ 2) • f'' w w
    with hg'
  -- check that `g'` is the derivative of `g`, by a straightforward computation
  have g_deriv : ∀ t ∈ Icc (0 : ℝ) 1, HasDerivWithinAt g (g' t) (Icc 0 1) t := by
    intro t ht
    apply_rules [HasDerivWithinAt.sub, HasDerivWithinAt.add]
    · refine (hf _ ?_).comp_hasDerivWithinAt _ ?_
      · exact xt_mem t ht
      apply_rules [HasDerivAt.hasDerivWithinAt, HasDerivAt.const_add, HasDerivAt.smul_const,
        hasDerivAt_mul_const]
    · apply_rules [HasDerivAt.hasDerivWithinAt, HasDerivAt.smul_const, hasDerivAt_mul_const]
    · apply_rules [HasDerivAt.hasDerivWithinAt, HasDerivAt.smul_const, hasDerivAt_mul_const]
    · suffices H : HasDerivWithinAt (fun u => ((u * h) ^ 2 / 2) • f'' w w)
          ((((2 : ℕ) : ℝ) * (t * h) ^ (2 - 1) * (1 * h) / 2) • f'' w w) (Icc 0 1) t by
        convert H using 2
        ring
      apply_rules [HasDerivAt.hasDerivWithinAt, HasDerivAt.smul_const, hasDerivAt_id',
        HasDerivAt.pow, HasDerivAt.mul_const]
  -- check that `g'` is uniformly bounded, with a suitable bound `ε * ((‖v‖ + ‖w‖) * ‖w‖) * h^2`.
  have g'_bound : ∀ t ∈ Ico (0 : ℝ) 1, ‖g' t‖ ≤ ε * ((‖v‖ + ‖w‖) * ‖w‖) * h ^ 2 := by
    intro t ht
    have I : ‖h • v + (t * h) • w‖ ≤ h * (‖v‖ + ‖w‖) :=
      calc
        ‖h • v + (t * h) • w‖ ≤ ‖h • v‖ + ‖(t * h) • w‖ := norm_add_le _ _
        _ = h * ‖v‖ + t * (h * ‖w‖) := by
          simp only [norm_smul, Real.norm_eq_abs, hpos.le, abs_of_nonneg, abs_mul, ht.left,
            mul_assoc]
        _ ≤ h * ‖v‖ + 1 * (h * ‖w‖) := by gcongr; exact ht.2.le
        _ = h * (‖v‖ + ‖w‖) := by ring
    calc
      ‖g' t‖ = ‖(f' (x + h • v + (t * h) • w) - f' x - f'' (h • v + (t * h) • w)) (h • w)‖ := by
        rw [hg']
        congrm ‖?_‖
        simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.add_apply,
          ContinuousLinearMap.smul_apply, map_add, map_smul]
        module
      _ ≤ ‖f' (x + h • v + (t * h) • w) - f' x - f'' (h • v + (t * h) • w)‖ * ‖h • w‖ :=
        (ContinuousLinearMap.le_opNorm _ _)
      _ ≤ ε * ‖h • v + (t * h) • w‖ * ‖h • w‖ := by
        gcongr
        have H : x + h • v + (t * h) • w ∈ Metric.ball x δ ∩ interior s := by
          refine ⟨?_, xt_mem t ⟨ht.1, ht.2.le⟩⟩
          rw [add_assoc, add_mem_ball_iff_norm]
          exact I.trans_lt hδ
        simpa only [mem_setOf_eq, add_assoc x, add_sub_cancel_left] using sδ H
      _ ≤ ε * (‖h • v‖ + ‖h • w‖) * ‖h • w‖ := by
        gcongr
        apply (norm_add_le _ _).trans
        gcongr
        simp only [norm_smul, Real.norm_eq_abs, abs_mul, abs_of_nonneg, ht.1, hpos.le, mul_assoc]
        exact mul_le_of_le_one_left (by positivity) ht.2.le
      _ = ε * ((‖v‖ + ‖w‖) * ‖w‖) * h ^ 2 := by
        simp only [norm_smul, Real.norm_eq_abs, abs_mul, abs_of_nonneg, hpos.le]; ring
  -- conclude using the mean value inequality
  have I : ‖g 1 - g 0‖ ≤ ε * ((‖v‖ + ‖w‖) * ‖w‖) * h ^ 2 := by
    simpa only [mul_one, sub_zero] using
      norm_image_sub_le_of_norm_deriv_le_segment' g_deriv g'_bound 1 (right_mem_Icc.2 zero_le_one)
  convert I using 1
  · congr 1
    simp only [g, Nat.one_ne_zero, add_zero, one_mul, zero_div, zero_mul, sub_zero,
      zero_smul, Ne, not_false_iff, zero_pow, reduceCtorEq]
    abel
  · simp (discharger := positivity) only [Real.norm_eq_abs, abs_mul, abs_of_nonneg, abs_pow]
    ring

/-- One can get `f'' v w` as the limit of `h ^ (-2)` times the alternate sum of the values of `f`
along the vertices of a quadrilateral with sides `h v` and `h w` based at `x`.
In a setting where `f` is not guaranteed to be continuous at `f`, we can still
get this if we use a quadrilateral based at `h v + h w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffa96c5444b290667206d339dda1cfa7a22d25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
