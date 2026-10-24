# square_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 790,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d6b54d0-a5cf-ed4e-2d7f-a8665df6f859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de46960-c051-5691-c53f-e910a060f4dc",
  "kind": "theorem",
  "lexical_name": "square_identity",
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
  "slug": "square-identity--e3923b5c0b96bf5a3b6ef78a",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 948,
    "line": 790,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3923b5c0b96bf5a3b6ef78aa1e3cddb2b297da48063a90c05a731d480db1486",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de46960-c051-5691-c53f-e910a060f4dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–948.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_identity {s : ℂ} (hxi : xi s ≠ 0) (hs : s.re ≠ 1 / 2) {R : ℝ} (hR : ‖s‖ + 2 ≤ R)
    (hζ : ∀ p : ℂ, (p.im = R ∨ p.im = -R) → 1 / 2 ≤ p.re → p.re ≤ 2 → riemannZeta p ≠ 0) :
    ∃ Z : Finset ℂ, ((Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R}) ∧
      RectangleIntegral' (fun p => wt s p * logDeriv xi p) (zc R) (wc R)
        = (∑ ρ ∈ Z, (zeroMult ρ : ℂ) * wt s ρ) - logDeriv xi s + logDeriv xi (reflect s) := by
  classical
  have hσ := abs_le.mp (Complex.abs_re_le_norm s)
  have ht := abs_le.mp (Complex.abs_im_le_norm s)
  have hR1 : 2 ≤ R := by linarith [norm_nonneg s]
  have hre : (zc R).re ≤ (wc R).re := by simp; linarith
  have him : (zc R).im ≤ (wc R).im := by simp; linarith
  have hmem : ∀ p : ℂ, p ∈ Rectangle (zc R) (wc R) ↔
      (1 - R ≤ p.re ∧ p.re ≤ R) ∧ (-R ≤ p.im ∧ p.im ≤ R) := by
    intro p
    simp only [Rectangle, Complex.mem_reProdIm, zc_re, zc_im, wc_re, wc_im,
      Set.uIcc_of_le (show (1 - R : ℝ) ≤ R by linarith),
      Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc]
  have hint : ∀ p : ℂ, Rectangle (zc R) (wc R) ∈ 𝓝 p ↔
      (1 - R < p.re ∧ p.re < R) ∧ (-R < p.im ∧ p.im < R) := by
    intro p
    rw [rectangle_mem_nhds_iff, Complex.mem_reProdIm, Set.uIoo_of_le hre, Set.uIoo_of_le him,
      zc_re, zc_im, wc_re, wc_im, Set.mem_Ioo, Set.mem_Ioo]
  -- no zero of ξ on the lines Im = ±R
  have hΛ := Zeta23.WeilEF.completedZeta_ne_zero_on_horizontals (c := 3 / 2) (R := R)
    (by norm_num) le_rfl hζ
  have hnoZ : ∀ p : ℂ, (p.im = R ∨ p.im = -R) → xi p ≠ 0 := by
    intro p hp h0
    have hnz := (xi_eq_zero_iff p).mp h0
    exact hΛ p hp (by linarith [hnz.2.1]) (by linarith [hnz.2.2])
      (Zeta23.RvM.completedRiemannZeta_eq_zero_iff.mpr hnz)
  -- the zero finset
  have hfin : {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R}.Finite :=
    (zetaSeam.finite_window (-R) R).subset (fun ρ ⟨h1, h2, h3⟩ => ⟨h1, h2, h3.le⟩)
  set Z : Finset ℂ := hfin.toFinset with hZdef
  have hZmem : ∀ ρ, ρ ∈ Z ↔ IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R := by
    intro ρ; rw [hZdef, Set.Finite.mem_toFinset]; rfl
  refine ⟨Z, hfin.coe_toFinset, ?_⟩
  -- the two poles of the weight
  have hsr : s ≠ reflect s := by
    intro h; apply hs
    have := congrArg Complex.re h
    simp [reflect] at this; linarith
  have hxi' : xi (reflect s) ≠ 0 := by rw [xi_reflect]; exact (map_ne_zero _).mpr hxi
  set Q : Finset ℂ := {s, reflect s} with hQdef
  have hZQ : Disjoint Z Q := by
    rw [Finset.disjoint_right]
    intro q hq hqZ
    have hz := (xi_eq_zero_iff q).mpr ((hZmem q).mp hqZ).1
    simp only [hQdef, Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl
    exacts [hxi hz, hxi' hz]
  have hsint : Rectangle (zc R) (wc R) ∈ 𝓝 s := by
    rw [hint]
    exact ⟨⟨by linarith, by linarith⟩, by linarith, by linarith⟩
  have hs'int : Rectangle (zc R) (wc R) ∈ 𝓝 (reflect s) := by
    rw [hint]
    have e1 : (reflect s).re = 1 - s.re := by simp [reflect]
    have e2 : (reflect s).im = s.im := by simp [reflect]
    rw [e1, e2]
    exact ⟨⟨by linarith, by linarith⟩, by linarith, by linarith⟩
  have hQint : ∀ q ∈ Q, Rectangle (zc R) (wc R) ∈ 𝓝 q := by
    intro q hq
    simp only [hQdef, Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl
    exacts [hsint, hs'int]
  have hf : AnalyticOnNhd ℂ xi (Rectangle (zc R) (wc R)) := fun p _ => xi_differentiable.analyticAt p
  have hg : ∀ p ∈ Rectangle (zc R) (wc R) \ (Q : Set ℂ), AnalyticAt ℂ (wt s) p := by
    rintro p ⟨_, hpQ⟩
    simp only [hQdef, Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
      Set.mem_singleton_iff, not_or] at hpQ
    have hopen : IsOpen (({s, reflect s} : Set ℂ)ᶜ) := (Set.toFinite _).isClosed.isOpen_compl
    apply DifferentiableOn.analyticAt (s := (({s, reflect s} : Set ℂ)ᶜ))
    · intro w hw
      simp only [Set.mem_compl_iff, Set.mem_insert_iff, Set.mem_singleton_iff, not_or] at hw
      have h1 : s - w ≠ 0 := sub_ne_zero.mpr (Ne.symm hw.1)
      have h2 : reflect s - w ≠ 0 := sub_ne_zero.mpr (Ne.symm hw.2)
      apply DifferentiableAt.differentiableWithinAt
      show DifferentiableAt ℂ (fun w => 1 / (s - w) - 1 / (reflect s - w)) w
      fun_prop (disch := assumption)
    · exact hopen.mem_nhds (by simp [hpQ.1, hpQ.2])
  have hborder : ∀ p ∈ RectangleBorder (zc R) (wc R), xi p ≠ 0 := by
    intro p hp h0
    have hnz := (xi_eq_zero_iff p).mp h0
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      zc_re, zc_im, wc_re, wc_im] at hp
    rcases hp with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hnoZ p (Or.inr h') h0
    · linarith [hnz.2.1]
    · exact hnoZ p (Or.inl h') h0
    · linarith [hnz.2.2]
  have hZchar : ∀ p ∈ Rectangle (zc R) (wc R), xi p = 0 ↔ p ∈ Z := by
    intro p hp
    rw [hZmem, xi_eq_zero_iff]
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem p).mp hp
    constructor
    · intro hnz
      refine ⟨hnz, lt_of_le_of_ne hi1 (fun h => ?_), lt_of_le_of_ne hi2 (fun h => ?_)⟩
      · exact hnoZ p (Or.inr h.symm) ((xi_eq_zero_iff p).mpr hnz)
      · exact hnoZ p (Or.inl h) ((xi_eq_zero_iff p).mpr hnz)
    · exact fun h => h.1
  have hZsub : (Z : Set ℂ) ⊆ Rectangle (zc R) (wc R) := by
    intro ρ hρ
    rw [Finset.mem_coe, hZmem] at hρ
    obtain ⟨h1, h2, h3⟩ := hρ
    exact (hmem ρ).mpr ⟨⟨by linarith [h1.2.1], by linarith [h1.2.2]⟩, h2.le, h3.le⟩
  -- principal parts of the weight: −1/(w − s) at s, +1/(w − s′) at s′
  set r : ℂ → ℂ := fun q => if q = s then -1 else 1 with hrdef
  have hr1 : r s = -1 := by simp [hrdef]
  have hr2 : r (reflect s) = 1 := by simp [hrdef, hsr.symm]
  have hnear : ∀ q ∈ Q, (wt s - fun w => r q / (w - q)) =O[𝓝[≠] q] (1 : ℂ → ℂ) := by
    intro q hq
    simp only [hQdef, Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with h | h
    · subst h
      have hne : reflect q - q ≠ 0 := sub_ne_zero.mpr (Ne.symm hsr)
      have hc : ContinuousAt (fun w => -(1 / (reflect q - w))) q := by
        have h1 : ContinuousAt (fun w : ℂ => reflect q - w) q := by fun_prop
        exact (continuousAt_const.div h1 hne).neg
      have hO : (fun w => -(1 / (reflect q - w))) =O[𝓝[≠] q] (1 : ℂ → ℂ) :=
        (hc.tendsto.mono_left nhdsWithin_le_nhds).isBigO_one ℂ
      refine hO.congr' ?_ EventuallyEq.rfl
      have hev : ∀ᶠ w in 𝓝 q, reflect q - w ≠ 0 :=
        (continuous_const.sub continuous_id).continuousAt.eventually_ne hne
      filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds hev] with w hw hw2
      have hwq : w - q ≠ 0 := sub_ne_zero.mpr hw
      have hqw : q - w ≠ 0 := sub_ne_zero.mpr (Ne.symm hw)
      simp only [Pi.sub_apply, wt, hr1]
      field_simp
      ring
    · subst h
      have hne : s - reflect s ≠ 0 := sub_ne_zero.mpr hsr
      have hc : ContinuousAt (fun w => 1 / (s - w)) (reflect s) := by
        have h1 : ContinuousAt (fun w : ℂ => s - w) (reflect s) := by fun_prop
        exact continuousAt_const.div h1 hne
      have hO : (fun w => 1 / (s - w)) =O[𝓝[≠] (reflect s)] (1 : ℂ → ℂ) :=
        (hc.tendsto.mono_left nhdsWithin_le_nhds).isBigO_one ℂ
      refine hO.congr' ?_ EventuallyEq.rfl
      have hev : ∀ᶠ w in 𝓝 (reflect s), s - w ≠ 0 :=
        (continuous_const.sub continuous_id).continuousAt.eventually_ne hne
      filter_upwards [self_mem_nhdsWithin, mem_nhdsWithin_of_mem_nhds hev] with w hw hw2
      have hwq : w - reflect s ≠ 0 := sub_ne_zero.mpr hw
      have hqw : reflect s - w ≠ 0 := sub_ne_zero.mpr (Ne.symm hw)
      simp only [Pi.sub_apply, wt, hr2]
      field_simp
      ring
  have key := rectangleIntegral'_mul_logDeriv_weightPoles hre him Z Q hZQ hQint hf hg hborder
    hZchar hZsub r hnear
  rw [key]
  have hZsum : ∑ ρ ∈ Z, (analyticOrderNatAt xi ρ : ℂ) * wt s ρ = ∑ ρ ∈ Z, (zeroMult ρ : ℂ) * wt s ρ :=
    Finset.sum_congr rfl (fun ρ hρ => by rw [analyticOrderNatAt_xi ((hZmem ρ).mp hρ).1])
  have hQsum : ∑ q ∈ Q, r q * logDeriv xi q = -logDeriv xi s + logDeriv xi (reflect s) := by
    rw [hQdef, Finset.sum_insert (by simpa using hsr), Finset.sum_singleton, hr1, hr2]
    ring
  rw [hZsum, hQsum]
  ring

/-! ## §E. Limits along the good heights -/

/-- the border integral tends to 0 along the good heights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
