# mellin_hasDerivAt_of_isBigO_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d34445d8-07a7-5556-6821-3f038ef09d54",
  "kind": "theorem",
  "lexical_name": "mellin_hasDerivAt_of_isBigO_rpow",
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
  "slug": "mellin-hasderivat-of-isbigo-rpow--9ca00b38b71b912010adb9cc",
  "source": {
    "blob": "4ac40eca236d0582f2c5da6432498f6bc604fd20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca00b38b71b912010adb9cc91596a5840a38bd8aac6c1fa7566b0d46d6ad0cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d34445d8-07a7-5556-6821-3f038ef09d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_hasDerivAt_of_isBigO_rpow [NormedSpace ℂ E] {a b : ℝ}
    {f : ℝ → E} {s : ℂ} (hfc : LocallyIntegrableOn f (Ioi 0)) (hf_top : f =O[atTop] (· ^ (-a)))
    (hs_top : s.re < a) (hf_bot : f =O[𝓝[>] 0] (· ^ (-b))) (hs_bot : b < s.re) :
    MellinConvergent (fun t => log t • f t) s ∧
      HasDerivAt (mellin f) (mellin (fun t => log t • f t) s) s := by
  set F : ℂ → ℝ → E := fun (z : ℂ) (t : ℝ) => (t : ℂ) ^ (z - 1) • f t
  set F' : ℂ → ℝ → E := fun (z : ℂ) (t : ℝ) => ((t : ℂ) ^ (z - 1) * log t) • f t
  -- A convenient radius of ball within which we can uniformly bound the derivative.
  obtain ⟨v, hv0, hv1, hv2⟩ : ∃ v : ℝ, 0 < v ∧ v < s.re - b ∧ v < a - s.re := by
    obtain ⟨w, hw1, hw2⟩ := exists_between (sub_pos.mpr hs_top)
    obtain ⟨w', hw1', hw2'⟩ := exists_between (sub_pos.mpr hs_bot)
    exact
      ⟨min w w', lt_min hw1 hw1', (min_le_right _ _).trans_lt hw2', (min_le_left _ _).trans_lt hw2⟩
  let bound : ℝ → ℝ := fun t : ℝ => (t ^ (s.re + v - 1) + t ^ (s.re - v - 1)) * |log t| * ‖f t‖
  have h1 : ∀ᶠ z : ℂ in 𝓝 s, AEStronglyMeasurable (F z) (volume.restrict <| Ioi 0) := by
    refine Eventually.of_forall fun z => AEStronglyMeasurable.smul ?_ hfc.aestronglyMeasurable
    refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_Ioi
    refine continuousOn_of_forall_continuousAt fun t ht => ?_
    exact continuousAt_ofReal_cpow_const _ _ (Or.inr <| ne_of_gt ht)
  have h2 : IntegrableOn (F s) (Ioi (0 : ℝ)) := by
    exact mellinConvergent_of_isBigO_rpow hfc hf_top hs_top hf_bot hs_bot
  have h3 : AEStronglyMeasurable (F' s) (volume.restrict <| Ioi 0) := by
    apply LocallyIntegrableOn.aestronglyMeasurable
    refine hfc.continuousOn_smul isOpen_Ioi.isLocallyClosed
      ((continuousOn_of_forall_continuousAt fun t ht => ?_).mul ?_)
    · exact continuousAt_ofReal_cpow_const _ _ (Or.inr <| ne_of_gt ht)
    · refine continuous_ofReal.comp_continuousOn ?_
      exact continuousOn_log.mono (subset_compl_singleton_iff.mpr notMem_Ioi_self)
  have h4 : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ z : ℂ, z ∈ Metric.ball s v → ‖F' z t‖ ≤ bound t := by
    refine (ae_restrict_mem measurableSet_Ioi).mono fun t ht z hz => ?_
    simp_rw [F', bound, norm_smul, norm_mul, norm_real, mul_assoc]
    gcongr
    rw [norm_cpow_eq_rpow_re_of_pos ht]
    rcases le_or_lt 1 t with h | h
    · refine le_add_of_le_of_nonneg (rpow_le_rpow_of_exponent_le h ?_)
        (rpow_nonneg (zero_le_one.trans h) _)
      rw [sub_re, one_re, sub_le_sub_iff_right]
      rw [mem_ball_iff_norm] at hz
      have hz' := (re_le_norm _).trans hz.le
      rwa [sub_re, sub_le_iff_le_add'] at hz'
    · refine
        le_add_of_nonneg_of_le (rpow_pos_of_pos ht _).le (rpow_le_rpow_of_exponent_ge ht h.le ?_)
      rw [sub_re, one_re, sub_le_iff_le_add, sub_add_cancel]
      rw [mem_ball_iff_norm'] at hz
      have hz' := (re_le_norm _).trans hz.le
      rwa [sub_re, sub_le_iff_le_add, ← sub_le_iff_le_add'] at hz'
  have h5 : IntegrableOn bound (Ioi 0) := by
    simp_rw [bound, add_mul, mul_assoc]
    suffices ∀ {j : ℝ}, b < j → j < a →
        IntegrableOn (fun t : ℝ => t ^ (j - 1) * (|log t| * ‖f t‖)) (Ioi 0) volume by
      refine Integrable.add (this ?_ ?_) (this ?_ ?_)
      all_goals linarith
    · intro j hj hj'
      obtain ⟨w, hw1, hw2⟩ := exists_between hj
      obtain ⟨w', hw1', hw2'⟩ := exists_between hj'
      refine mellin_convergent_of_isBigO_scalar ?_ ?_ hw1' ?_ hw2
      · simp_rw [mul_comm]
        refine hfc.norm.mul_continuousOn ?_ isOpen_Ioi.isLocallyClosed
        refine Continuous.comp_continuousOn _root_.continuous_abs (continuousOn_log.mono ?_)
        exact subset_compl_singleton_iff.mpr notMem_Ioi_self
      · refine (isBigO_rpow_top_log_smul hw2' hf_top).norm_left.congr_left fun t ↦ ?_
        simp only [norm_smul, Real.norm_eq_abs]
      · refine (isBigO_rpow_zero_log_smul hw1 hf_bot).norm_left.congr_left fun t ↦ ?_
        simp only [norm_smul, Real.norm_eq_abs]
  have h6 : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ y : ℂ, y ∈ Metric.ball s v → HasDerivAt (fun z : ℂ => F z t) (F' y t) y := by
    refine (ae_restrict_mem measurableSet_Ioi).mono fun t ht y _ => ?_
    have ht' : (t : ℂ) ≠ 0 := ofReal_ne_zero.mpr (ne_of_gt ht)
    have u1 : HasDerivAt (fun z : ℂ => (t : ℂ) ^ (z - 1)) (t ^ (y - 1) * log t) y := by
      convert ((hasDerivAt_id' y).sub_const 1).const_cpow (Or.inl ht') using 1
      rw [ofReal_log (le_of_lt ht)]
      ring
    exact u1.smul_const (f t)
  have main := hasDerivAt_integral_of_dominated_loc_of_deriv_le hv0 h1 h2 h3 h4 h5 h6
  simpa only [F', mul_smul] using main

/-- Suppose `f` is locally integrable on `(0, ∞)`, is `O(x ^ (-a))` as `x → ∞`, and is
`O(x ^ (-b))` as `x → 0`. Then its Mellin transform is differentiable on the domain `b < re s < a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac40eca236d0582f2c5da6432498f6bc604fd20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
