# integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80da24b9-aaf7-4089-5bda-19b615c65e26",
  "kind": "theorem",
  "lexical_name": "integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂",
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
  "slug": "integral-divergence-of-hasfderivwithinat-off-countable-aux--0c4cabd1daf83dc07ea0bc8a",
  "source": {
    "blob": "e0a63d7418cb2e445b084e44d95c32f5748ab07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4cabd1daf83dc07ea0bc8a2621692be75ce251612122d82dab40960ab5a30c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80da24b9-aaf7-4089-5bda-19b615c65e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂ (I : Box (Fin (n + 1)))
    (f : ℝⁿ⁺¹ → Eⁿ⁺¹)
    (f' : ℝⁿ⁺¹ → ℝⁿ⁺¹ →L[ℝ] Eⁿ⁺¹)
    (s : Set ℝⁿ⁺¹) (hs : s.Countable) (Hc : ContinuousOn f (Box.Icc I))
    (Hd : ∀ x ∈ Box.Ioo I \ s, HasFDerivAt f (f' x) x)
    (Hi : IntegrableOn (∑ i, f' · (e i) i) (Box.Icc I)) :
    (∫ x in Box.Icc I, ∑ i, f' x (e i) i) =
      ∑ i : Fin (n + 1),
        ((∫ x in Box.Icc (I.face i), f (i.insertNth (I.upper i) x) i) -
          ∫ x in Box.Icc (I.face i), f (i.insertNth (I.lower i) x) i) := by
  /- Choose a monotone sequence `J k` of subboxes that cover the interior of `I` and prove that
    these boxes satisfy the assumptions of the previous lemma. -/
  rcases I.exists_seq_mono_tendsto with ⟨J, hJ_sub, hJl, hJu⟩
  have hJ_sub' : ∀ k, Box.Icc (J k) ⊆ Box.Icc I := fun k => (hJ_sub k).trans I.Ioo_subset_Icc
  have hJ_le : ∀ k, J k ≤ I := fun k => Box.le_iff_Icc.2 (hJ_sub' k)
  have HcJ : ∀ k, ContinuousOn f (Box.Icc (J k)) := fun k => Hc.mono (hJ_sub' k)
  have HdJ : ∀ (k), ∀ x ∈ (Box.Icc (J k)) \ s, HasFDerivWithinAt f (f' x) (Box.Icc (J k)) x :=
    fun k x hx => (Hd x ⟨hJ_sub k hx.1, hx.2⟩).hasFDerivWithinAt
  have HiJ : ∀ k, IntegrableOn (∑ i, f' · (e i) i) (Box.Icc (J k)) volume := fun k =>
    Hi.mono_set (hJ_sub' k)
  -- Apply the previous lemma to `J k`.
  have HJ_eq := fun k =>
    integral_divergence_of_hasFDerivWithinAt_off_countable_aux₁ (J k) f f' s hs (HcJ k) (HdJ k)
      (HiJ k)
  -- Note that the LHS of `HJ_eq k` tends to the LHS of the goal as `k → ∞`.
  have hI_tendsto :
    Tendsto (fun k => ∫ x in Box.Icc (J k), ∑ i, f' x (e i) i) atTop
      (𝓝 (∫ x in Box.Icc I, ∑ i, f' x (e i) i)) := by
    simp only [IntegrableOn, ← Measure.restrict_congr_set (Box.Ioo_ae_eq_Icc _)] at Hi ⊢
    rw [← Box.iUnion_Ioo_of_tendsto J.monotone hJl hJu] at Hi ⊢
    exact tendsto_set_integral_of_monotone (fun k => (J k).measurableSet_Ioo)
      (Box.Ioo.comp J).monotone Hi
  -- Thus it suffices to prove the same about the RHS.
  refine' tendsto_nhds_unique_of_eventuallyEq hI_tendsto _ (eventually_of_forall HJ_eq)
  clear hI_tendsto
  rw [tendsto_pi_nhds] at hJl hJu
  /- We'll need to prove a similar statement about the integrals over the front sides and the
    integrals over the back sides. In order to avoid repeating ourselves, we formulate a lemma. -/
  suffices ∀ (i : Fin (n + 1)) (c : ℕ → ℝ) (d), (∀ k, c k ∈ Icc (I.lower i) (I.upper i)) →
    Tendsto c atTop (𝓝 d) →
      Tendsto (fun k => ∫ x in Box.Icc ((J k).face i), f (i.insertNth (c k) x) i) atTop
        (𝓝 <| ∫ x in Box.Icc (I.face i), f (i.insertNth d x) i) by
    rw [Box.Icc_eq_pi] at hJ_sub'
    refine' tendsto_finset_sum _ fun i _ => (this _ _ _ _ (hJu _)).sub (this _ _ _ _ (hJl _))
    exacts [fun k => hJ_sub' k (J k).upper_mem_Icc _ trivial, fun k =>
      hJ_sub' k (J k).lower_mem_Icc _ trivial]
  intro i c d hc hcd
  /- First we prove that the integrals of the restriction of `f` to `{x | x i = d}` over increasing
    boxes `((J k).face i).Icc` tend to the desired limit. The proof mostly repeats the one above. -/
  have hd : d ∈ Icc (I.lower i) (I.upper i) :=
    isClosed_Icc.mem_of_tendsto hcd (eventually_of_forall hc)
  have Hic : ∀ k, IntegrableOn (fun x => f (i.insertNth (c k) x) i) (Box.Icc (I.face i)) := fun k =>
    (Box.continuousOn_face_Icc ((continuous_apply i).comp_continuousOn Hc) (hc k)).integrableOn_Icc
  have Hid : IntegrableOn (fun x => f (i.insertNth d x) i) (Box.Icc (I.face i)) :=
    (Box.continuousOn_face_Icc ((continuous_apply i).comp_continuousOn Hc) hd).integrableOn_Icc
  have H :
    Tendsto (fun k => ∫ x in Box.Icc ((J k).face i), f (i.insertNth d x) i) atTop
      (𝓝 <| ∫ x in Box.Icc (I.face i), f (i.insertNth d x) i) := by
    have hIoo : (⋃ k, Box.Ioo ((J k).face i)) = Box.Ioo (I.face i) :=
      Box.iUnion_Ioo_of_tendsto ((Box.monotone_face i).comp J.monotone)
        (tendsto_pi_nhds.2 fun _ => hJl _) (tendsto_pi_nhds.2 fun _ => hJu _)
    simp only [IntegrableOn, ← Measure.restrict_congr_set (Box.Ioo_ae_eq_Icc _), ← hIoo] at Hid ⊢
    exact tendsto_set_integral_of_monotone (fun k => ((J k).face i).measurableSet_Ioo)
      (Box.Ioo.monotone.comp ((Box.monotone_face i).comp J.monotone)) Hid
  /- Thus it suffices to show that the distance between the integrals of the restrictions of `f` to
    `{x | x i = c k}` and `{x | x i = d}` over `((J k).face i).Icc` tends to zero as `k → ∞`. Choose
    `ε > 0`. -/
  refine' H.congr_dist (Metric.nhds_basis_closedBall.tendsto_right_iff.2 fun ε εpos => _)
  have hvol_pos : ∀ J : Box (Fin n), 0 < ∏ j, (J.upper j - J.lower j) := fun J =>
    prod_pos fun j hj => sub_pos.2 <| J.lower_lt_upper _
  /- Choose `δ > 0` such that for any `x y ∈ I.Icc` at distance at most `δ`, the distance between
    `f x` and `f y` is at most `ε / volume (I.face i).Icc`, then the distance between the integrals
    is at most `(ε / volume (I.face i).Icc) * volume ((J k).face i).Icc ≤ ε`. -/
  rcases Metric.uniformContinuousOn_iff_le.1 (I.isCompact_Icc.uniformContinuousOn_of_continuous Hc)
      (ε / ∏ j, ((I.face i).upper j - (I.face i).lower j)) (div_pos εpos (hvol_pos (I.face i)))
    with ⟨δ, δpos, hδ⟩
  refine' (hcd.eventually (Metric.ball_mem_nhds _ δpos)).mono fun k hk => _
  have Hsub : Box.Icc ((J k).face i) ⊆ Box.Icc (I.face i) :=
    Box.le_iff_Icc.1 (Box.face_mono (hJ_le _) i)
  rw [mem_closedBall_zero_iff, Real.norm_eq_abs, abs_of_nonneg dist_nonneg, dist_eq_norm,
    ← integral_sub (Hid.mono_set Hsub) ((Hic _).mono_set Hsub)]
  calc
    ‖∫ x in Box.Icc ((J k).face i), f (i.insertNth d x) i - f (i.insertNth (c k) x) i‖ ≤
        (ε / ∏ j, ((I.face i).upper j - (I.face i).lower j)) *
          (volume (Box.Icc ((J k).face i))).toReal := by
      refine norm_set_integral_le_of_norm_le_const' (((J k).face i).measure_Icc_lt_top _)
        ((J k).face i).measurableSet_Icc fun x hx => ?_
      rw [← dist_eq_norm]
      calc
        dist (f (i.insertNth d x) i) (f (i.insertNth (c k) x) i) ≤
            dist (f (i.insertNth d x)) (f (i.insertNth (c k) x)) :=
          dist_le_pi_dist (f (i.insertNth d x)) (f (i.insertNth (c k) x)) i
        _ ≤ ε / ∏ j, ((I.face i).upper j - (I.face i).lower j) :=
          hδ _ (I.mapsTo_insertNth_face_Icc hd <| Hsub hx) _
            (I.mapsTo_insertNth_face_Icc (hc _) <| Hsub hx) ?_
      rw [Fin.dist_insertNth_insertNth, dist_self, dist_comm]
      exact max_le hk.le δpos.lt.le
    _ ≤ ε := by
      rw [Box.Icc_def, Real.volume_Icc_pi_toReal ((J k).face i).lower_le_upper,
        ← le_div_iff (hvol_pos _)]
      refine' div_le_div_of_le_left εpos.le (hvol_pos _)
        (prod_le_prod (fun j _ => _) fun j _ => _)
      exacts [sub_nonneg.2 (Box.lower_le_upper _ _),
        sub_le_sub ((hJ_sub' _ (J _).upper_mem_Icc).2 _) ((hJ_sub' _ (J _).lower_mem_Icc).1 _)]
#align measure_theory.integral_divergence_of_has_fderiv_within_at_off_countable_aux₂ MeasureTheory.integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂

variable (a b : Fin (n + 1) → ℝ)

local notation "face " i => Set.Icc (a ∘ Fin.succAbove i) (b ∘ Fin.succAbove i)
local notation:max "frontFace " i:arg => Fin.insertNth i (b i)
local notation:max "backFace " i:arg => Fin.insertNth i (a i)

/-- **Divergence theorem** for Bochner integral. If `f : ℝⁿ⁺¹ → Eⁿ⁺¹` is continuous on a rectangular
box `[a, b] : Set ℝⁿ⁺¹`, `a ≤ b`, is differentiable on its interior with derivative
`f' : ℝⁿ⁺¹ → ℝⁿ⁺¹ →L[ℝ] Eⁿ⁺¹` and the divergence `fun x ↦ ∑ i, f' x eᵢ i` is integrable on `[a, b]`,
where `eᵢ = Pi.single i 1` is the `i`-th basis vector, then its integral is equal to the sum of
integrals of `f` over the faces of `[a, b]`, taken with appropriate signs.

Moreover, the same is true if the function is not differentiable at countably many
points of the interior of `[a, b]`.

We represent both faces `x i = a i` and `x i = b i` as the box
`face i = [a ∘ Fin.succAbove i, b ∘ Fin.succAbove i]` in `ℝⁿ`, where
`Fin.succAbove : Fin n ↪o Fin (n + 1)` is the order embedding with range `{i}ᶜ`. The restrictions
of `f : ℝⁿ⁺¹ → Eⁿ⁺¹` to these faces are given by `f ∘ backFace i` and `f ∘ frontFace i`, where
`backFace i = Fin.insertNth i (a i)` and `frontFace i = Fin.insertNth i (b i)` are embeddings
`ℝⁿ → ℝⁿ⁺¹` that take `y : ℝⁿ` and insert `a i` (resp., `b i`) as `i`-th coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant14f75f98ada7258899294fd0893e4dc8d9ffdfc088fbbd5db2b08e3aeb5a5a49.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a63d7418cb2e445b084e44d95c32f5748ab07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
