# B_minus_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c927644b-4aeb-35ed-ca5b-8395896efb9f",
  "kind": "theorem",
  "lexical_name": "B_minus_mono",
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
  "slug": "b-minus-mono--e14f1904eeec4e3b24a7ae7a",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2710,
    "line": 2625,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e14f1904eeec4e3b24a7ae7a05e863b5f1962e690328d07709e9bc60874a3fb3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c927644b-4aeb-35ed-ca5b-8395896efb9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2625–2710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_minus_mono : Antitone (fun t:ℝ ↦ (B (-1) t).re) := by
  have hasDerivAt_div_exp (c : ℝ) (hne : rexp c - 1 ≠ 0) :
      HasDerivAt (fun s => s / (rexp s - 1))
        ((1 * (rexp c - 1) - c * rexp c) / (rexp c - 1) ^ 2) c :=
    (hasDerivAt_id c).div (show HasDerivAt (fun s => rexp s - 1) (rexp c) c by
      have := (Real.hasDerivAt_exp c).sub (hasDerivAt_const c (1 : ℝ))
      simp only [sub_zero] at this; exact this) hne
  have deriv_nonpos (c : ℝ) (hne : rexp c - 1 ≠ 0) :
      (1 * (rexp c - 1) - c * rexp c) / (rexp c - 1) ^ 2 ≤ 0 :=
    div_nonpos_of_nonpos_of_nonneg
      (by nlinarith [Real.exp_pos c, Real.exp_neg c,
        mul_inv_cancel₀ (ne_of_gt (Real.exp_pos c)),
        Real.add_one_le_exp c, Real.add_one_le_exp (-c)])
      (sq_nonneg _)
  have mvt_anti (t1 t2 : ℝ) (hall : ∀ x, t1 ≤ x → x ≤ t2 → rexp x - 1 ≠ 0) (hlt : t1 < t2) :
      t2 / (rexp t2 - 1) ≤ t1 / (rexp t1 - 1) := by
    obtain ⟨c, hc, hc_eq⟩ : ∃ c ∈ Set.Ioo t1 t2,
        deriv (fun s => s / (rexp s - 1)) c =
          ((fun s => s / (rexp s - 1)) t2 - (fun s => s / (rexp s - 1)) t1) / (t2 - t1) := by
      rw [show (fun s => s / (rexp s - 1)) = (_root_.id / fun x => rexp x - 1) from by
        ext x; simp [_root_.id]]
      exact exists_deriv_eq_slope _ hlt
        (ContinuousOn.div continuousOn_id
          (ContinuousOn.sub Real.continuous_exp.continuousOn continuousOn_const)
          (fun x hx => hall x hx.1 hx.2))
        (DifferentiableOn.div differentiableOn_id
          (DifferentiableOn.sub Real.differentiable_exp.differentiableOn (differentiableOn_const _))
          (fun x hx => hall x (le_of_lt hx.1) (le_of_lt hx.2)))
    have hne := hall c (le_of_lt hc.1) (le_of_lt hc.2)
    rw [(hasDerivAt_div_exp c hne).deriv] at hc_eq
    have := deriv_nonpos c hne; rw [hc_eq] at this
    cases div_nonpos_iff.mp this with
    | inl h => linarith [h.1] | inr h => linarith [h.2]
  have exp_sub_pos (x : ℝ) (hx : 0 < x) : rexp x - 1 > 0 := by linarith [Real.add_one_le_exp x]
  have exp_sub_neg (x : ℝ) (hx : x < 0) : rexp x - 1 < 0 := by
    nlinarith [Real.exp_pos x, Real.exp_neg x,
      mul_inv_cancel₀ (ne_of_gt (Real.exp_pos x)), Real.add_one_le_exp (-x)]
  have div_exp_le_one (t : ℝ) (ht : 0 < t) : t / (rexp t - 1) ≤ 1 := by
    rw [div_le_iff₀ (exp_sub_pos t ht)]; linarith [Real.add_one_le_exp t]
  have div_exp_ge_one (t : ℝ) (ht : t < 0) : 1 ≤ t / (rexp t - 1) := by
    rw [le_div_iff_of_neg (exp_sub_neg t ht)]
    nlinarith [Real.exp_pos t, Real.exp_neg t,
      mul_inv_cancel₀ (ne_of_gt (Real.exp_pos t)),
      Real.add_one_le_exp t, Real.add_one_le_exp (-t)]
  suffices heq : (fun t:ℝ ↦ (B (-1) t).re) =
      fun t : ℝ => if t = 0 then (1 : ℝ) else t / (rexp t - 1) by
    rw [heq]; intro a b hab
    rcases eq_or_lt_of_le hab with rfl | hlt; · rfl
    simp only
    by_cases ha0 : a = 0
    · subst ha0; simp only [ite_true, show ¬b = 0 from by linarith, ite_false]
      exact div_exp_le_one b (by linarith)
    · by_cases hb0 : b = 0
      · subst hb0; simp only [ite_true, ha0, ite_false]
        exact div_exp_ge_one a (lt_of_le_of_ne (not_lt.mp (fun h => ha0 (by linarith))) ha0)
      · simp only [ha0, hb0, ite_false]
        by_cases! hpos : 0 < a
        · exact mvt_anti a b (fun x hxa hxb => ne_of_gt (exp_sub_pos x (by linarith))) hlt
        · have ha_neg : a < 0 := lt_of_le_of_ne hpos ha0
          by_cases! hneg : b < 0
          · exact mvt_anti a b (fun x hxa hxb => ne_of_lt (exp_sub_neg x (by linarith))) hlt
          · have hb_pos : 0 < b := lt_of_le_of_ne hneg (Ne.symm hb0)
            linarith [div_exp_le_one b hb_pos, div_exp_ge_one a ha_neg]
  funext t; split
  · next h => subst h; unfold B; simp
  · next ht =>
    unfold B coth
    have ht' : (t : ℂ) ≠ 0 := by exact_mod_cast ht
    simp only [ht', ↓reduceIte, one_div]
    rw [show ((-1 : ℝ) : ℂ) = -1 from by push_cast; ring]
    conv_lhs => rw [show (t : ℂ) / 2 = ((t / 2 : ℝ) : ℂ) from by push_cast; ring]
    rw [show Complex.tanh ((t / 2 : ℝ) : ℂ) = ((Real.tanh (t / 2) : ℝ) : ℂ) from by
        apply Complex.ext <;> simp,
      show ((Real.tanh (t / 2) : ℝ) : ℂ)⁻¹ = ((Real.tanh (t / 2))⁻¹ : ℝ) from by push_cast; ring,
      show (↑t * (↑(Real.tanh (t / 2))⁻¹ + (-1 : ℂ)) / 2 : ℂ) =
        ((t * ((Real.tanh (t / 2))⁻¹ + (-1 : ℝ)) / 2 : ℝ) : ℂ) from by push_cast; ring]
    simp only [Complex.ofReal_re]; rw [Real.tanh_eq]
    have h2 : rexp (t / 2) - rexp (-(t / 2)) ≠ 0 := by
      intro h; exact ht (by linarith [Real.exp_injective (show rexp (t/2) = rexp (-(t/2)) by linarith)])
    have h3 : rexp t - 1 ≠ 0 := by
      intro h; exact ht ((Real.exp_eq_one_iff t).mp (by linarith))
    rw [inv_div]; field_simp
    nlinarith [show rexp t = rexp (t / 2) * rexp (t / 2) by rw [← Real.exp_add]; ring_nf,
      show rexp (t / 2) * rexp (-(t / 2)) = 1 by rw [← Real.exp_add]; simp,
      Real.exp_pos (t/2), Real.exp_pos (-(t/2))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L2625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
