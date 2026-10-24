# setIntegral_compl_sqI_majK2_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40163ffa-544b-1cd8-8fb8-1f4d07f8dee9",
  "kind": "theorem",
  "lexical_name": "setIntegral_compl_sqI_majK2_le",
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
  "slug": "setintegral-compl-sqi-majk2-le--571e0f12f347b408f71e98ff",
  "source": {
    "blob": "b5f23d8eb71ee49598a67dfbfdc8d83be3542a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571e0f12f347b408f71e98ff89f97568e7c3e09ed939e2996cde417b152ca76f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40163ffa-544b-1cd8-8fb8-1f4d07f8dee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_compl_sqI_majK2_le (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F)
    (hν : NuBound p B ν) (hB1 : 1 ≤ B) (hT1 : 1 ≤ p.T) {M1 M2 : ℝ} (hM1nn : 0 ≤ M1)
    (hN1 : ∀ a ∈ Icc p.T (2 * p.T), ∫ τ : ℝ, psiA cϱ p (τ - a) * |ν τ| ≤ M1)
    (hN2 : ∫ τ in (p.I)ᶜ, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ| ≤ M2) :
    ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q ≤ 2 * (p.L ^ 2 * M1 * M2) := by
  have hT0 : (0 : ℝ) < p.T := by linarith
  have hL0 : (0 : ℝ) < p.L := hF.L_pos
  have hw1 : (1 : ℝ) ≤ p.w := hF.one_le_w
  have hc4 : (4 : ℝ) ≤ cϱ := hF.four_le_cϱ
  -- grid points lie in [T, 2T]
  have htau : ∀ k ∈ Finset.range p.d, (p.tau k : ℝ) ∈ Icc p.T (2 * p.T) := by
    intro k hk
    have := Setting.tau_mem p hL0 hT0.le hk
    exact ⟨this.1, this.2⟩
  -- per-k integrability of the 1-D weights
  have hwk : ∀ k ∈ Finset.range p.d,
      Integrable (fun τ : ℝ => psiA cϱ p (τ - p.tau k) * |ν τ|) :=
    fun k hk => integrable_psiA_shift_mul_nu hνc hF hν hB1 hT1 (htau k hk)
  have hsum_int : Integrable (fun τ : ℝ =>
      (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) := by
    have := integrable_finsetSum (Finset.range p.d) hwk
    refine this.congr (Filter.Eventually.of_forall fun τ => ?_)
    simp only [Finset.sum_mul]
  have hψnn : ∀ (τ : ℝ) (k : ℕ), 0 ≤ psiA cϱ p (τ - p.tau k) :=
    fun τ k => psiA_nonneg hL0.le (by linarith) (by linarith) _
  -- global integrability of the majorant (finite sum of products of 1-D integrable weights)
  have hMnn : ∀ q : ℝ × ℝ, 0 ≤ majK2 cϱ p ν q := fun q =>
    mul_nonneg (mul_nonneg (by positivity) (Finset.sum_nonneg fun k _ =>
      mul_nonneg (hψnn q.1 k) (hψnn q.2 k))) (mul_nonneg (abs_nonneg _) (abs_nonneg _))
  have habs : Integrable (fun q : ℝ × ℝ => majK2 cϱ p ν q) := by
    have h : Integrable (fun q : ℝ × ℝ => ∑ k ∈ Finset.range p.d,
        (p.L ^ 2 * (psiA cϱ p (q.1 - p.tau k) * |ν q.1|)) * (psiA cϱ p (q.2 - p.tau k) * |ν q.2|)) := by
      refine integrable_finsetSum _ fun k hk => ?_
      exact ((hwk k hk).const_mul (p.L ^ 2)).mul_prod (hwk k hk)
    refine h.congr (Filter.Eventually.of_forall fun q => ?_)
    simp only [majK2]
    rw [Finset.mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun k _ => ?_
    ring
  -- Step B: complement of the square inside the union of two strips
  set S₁ : Set (ℝ × ℝ) := ((p.I)ᶜ) ×ˢ (univ : Set ℝ) with hS₁
  set S₂ : Set (ℝ × ℝ) := (univ : Set ℝ) ×ˢ ((p.I)ᶜ) with hS₂
  have hmI : MeasurableSet ((p.I)ᶜ) := measurableSet_Icc.compl
  have hmS₁ : MeasurableSet S₁ := hmI.prod MeasurableSet.univ
  have hmS₂ : MeasurableSet S₂ := MeasurableSet.univ.prod hmI
  have hsub : (sqI p)ᶜ ⊆ S₁ ∪ S₂ := by
    rintro ⟨τ, τ'⟩ hq
    rw [Set.mem_compl_iff] at hq
    unfold sqI at hq
    rw [Set.mem_prod] at hq
    push Not at hq
    by_cases h1 : τ ∈ p.I
    · exact Or.inr ⟨trivial, hq h1⟩
    · exact Or.inl ⟨h1, trivial⟩
  have hB : ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q
      ≤ (∫ q in S₁, majK2 cϱ p ν q) + ∫ q in S₂, majK2 cϱ p ν q := by
    have h1 : ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q ≤ ∫ q in S₁ ∪ S₂, majK2 cϱ p ν q :=
      setIntegral_mono_set habs.integrableOn
        (Filter.Eventually.of_forall fun q => hMnn q)
        hsub.eventuallyLE
    refine h1.trans ?_
    rw [← Set.union_sdiff_self]
    rw [setIntegral_union disjoint_sdiff_self_right (hmS₂.diff hmS₁)
      habs.integrableOn habs.integrableOn]
    have hmono : ∫ q in S₂ \ S₁, majK2 cϱ p ν q ≤ ∫ q in S₂, majK2 cϱ p ν q :=
      setIntegral_mono_set habs.integrableOn
        (Filter.Eventually.of_forall fun q => hMnn q)
        ((Set.sdiff_subset : S₂ \ S₁ ⊆ S₂).eventuallyLE)
    linarith
  -- Step C: iterated-integral bound over S₁ (constrained first coordinate)
  have hrestrict1 : (volume : Measure (ℝ × ℝ)).restrict S₁
      = (volume.restrict ((p.I)ᶜ)).prod volume := by
    rw [hS₁, Measure.volume_eq_prod, ← Measure.prod_restrict, Measure.restrict_univ]
  have hint1 : Integrable (fun q : ℝ × ℝ => majK2 cϱ p ν q)
      ((volume.restrict ((p.I)ᶜ)).prod volume) := by
    rw [← hrestrict1]; exact habs.integrableOn
  have hiter1 : ∫ q in S₁, majK2 cϱ p ν q
      = ∫ τ in (p.I)ᶜ, ∫ τ', majK2 cϱ p ν (τ, τ') := by
    rw [show (∫ q in S₁, majK2 cϱ p ν q)
        = ∫ q, majK2 cϱ p ν q ∂((volume : Measure (ℝ × ℝ)).restrict S₁) from rfl,
      hrestrict1, integral_prod _ hint1]
  have hprod_bound : ∀ τ τ' : ℝ, majK2 cϱ p ν (τ, τ')
      ≤ ∑ k ∈ Finset.range p.d, (p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ|)
          * (psiA cϱ p (τ' - p.tau k) * |ν τ'|) := by
    intro τ τ'
    refine le_of_eq ?_
    simp only [majK2]
    rw [Finset.mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun k _ => ?_
    ring
  have hterm_nn : ∀ (τ : ℝ) (k : ℕ), 0 ≤ p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ| :=
    fun τ k => mul_nonneg (mul_nonneg (by positivity) (hψnn τ k)) (abs_nonneg _)
  have hmaj_int : ∀ τ : ℝ, Integrable (fun τ' : ℝ =>
      ∑ k ∈ Finset.range p.d, (p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ|)
        * (psiA cϱ p (τ' - p.tau k) * |ν τ'|)) :=
    fun τ => integrable_finsetSum _ (fun k hk => (hwk k hk).const_mul _)
  have hinner1 : ∀ τ : ℝ, (∫ τ', majK2 cϱ p ν (τ, τ'))
      ≤ p.L ^ 2 * M1 * ((∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) := by
    intro τ
    have h1 : (∫ τ', majK2 cϱ p ν (τ, τ')) ≤ ∫ τ', ∑ k ∈ Finset.range p.d,
        (p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ|)
          * (psiA cϱ p (τ' - p.tau k) * |ν τ'|) :=
      integral_mono_of_nonneg (Filter.Eventually.of_forall fun τ' => hMnn (τ, τ'))
        (hmaj_int τ) (Filter.Eventually.of_forall fun τ' => hprod_bound τ τ')
    refine h1.trans ?_
    rw [integral_finsetSum _ (fun k hk => (hwk k hk).const_mul _)]
    have h2 : ∀ k ∈ Finset.range p.d,
        (∫ τ', (p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ|)
          * (psiA cϱ p (τ' - p.tau k) * |ν τ'|))
        ≤ (p.L ^ 2 * psiA cϱ p (τ - p.tau k) * |ν τ|) * M1 := by
      intro k hk
      rw [integral_const_mul]
      exact mul_le_mul_of_nonneg_left (hN1 _ (htau k hk)) (hterm_nn τ k)
    refine (Finset.sum_le_sum h2).trans (le_of_eq ?_)
    rw [← Finset.sum_mul, ← Finset.sum_mul, ← Finset.mul_sum]
    ring
  have houter1 : ∫ q in S₁, majK2 cϱ p ν q
      ≤ p.L ^ 2 * M1 * M2 := by
    rw [hiter1]
    have h1 : ∫ τ in (p.I)ᶜ, (∫ τ', majK2 cϱ p ν (τ, τ'))
        ≤ ∫ τ in (p.I)ᶜ, p.L ^ 2 * M1
            * ((∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) :=
      integral_mono_of_nonneg
        (Filter.Eventually.of_forall fun τ => integral_nonneg fun τ' => hMnn (τ, τ'))
        (hsum_int.integrableOn.const_mul _)
        (Filter.Eventually.of_forall fun τ => hinner1 τ)
    refine h1.trans ?_
    rw [integral_const_mul]
    exact mul_le_mul_of_nonneg_left hN2 (mul_nonneg (by positivity : (0:ℝ) ≤ p.L ^ 2) hM1nn)
  -- Step D: S₂ is the swap image of S₁ and the majorant is swap-symmetric
  have houter2 : ∫ q in S₂, majK2 cϱ p ν q ≤ p.L ^ 2 * M1 * M2 := by
    have hsymm : ∀ q : ℝ × ℝ, majK2 cϱ p ν (Prod.swap q) = majK2 cϱ p ν q := by
      intro q
      simp only [majK2, Prod.fst_swap, Prod.snd_swap]
      rw [mul_comm |ν q.2|]
      congr 2
      exact Finset.sum_congr rfl fun k _ => mul_comm _ _
    have hpre : Prod.swap ⁻¹' S₁ = S₂ := by
      ext ⟨a, b⟩; simp [hS₁, hS₂]
    have hmp : MeasurePreserving (Prod.swap : ℝ × ℝ → ℝ × ℝ) volume volume := by
      have h := (Measure.measurePreserving_swap (μ := (volume : Measure ℝ)) (ν := (volume : Measure ℝ)))
      rwa [← Measure.volume_eq_prod] at h
    have hme : MeasurableEmbedding (Prod.swap : ℝ × ℝ → ℝ × ℝ) :=
      (MeasurableEquiv.prodComm (α := ℝ) (β := ℝ)).measurableEmbedding
    have key := hmp.setIntegral_preimage_emb hme (majK2 cϱ p ν) S₁
    rw [hpre] at key
    simp only [hsymm] at key
    rw [key]
    exact houter1
  -- combine and fold constants
  have htotal : ∫ q in (sqI p)ᶜ, majK2 cϱ p ν q ≤ 2 * (p.L ^ 2 * M1
      * M2) := by
    have := hB.trans (add_le_add houter1 houter2)
    linarith
  exact htotal

end Assembly

section Bounds
variable (cϱ lam : ℝ)


/-- **Majorant bound behind 𝓔₂** (§5.3): ∬_{(I×I)ᶜ} L²(Σ_k ψψ')·|ν||ν'| ≤ C·L³B²·l·log l
for T ≥ T₀ — the ν-dependence sits in a nonnegative bilinear kernel (Cauchy–Schwarz
in χ is pushed inside this). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f23d8eb71ee49598a67dfbfdc8d83be3542a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
