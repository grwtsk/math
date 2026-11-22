import GRWTSK.AlgebraicGeometry.Alterations.SemistableCompletedCharts

/-!
# Recognition of ordinary nodes through geometric fibres and local models

Source candidate split from `weil_conjecture_main.lean`, lines 15347–16674.
See the adjacent `SemistableNodeCriterion.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_gcl_local_type : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (C : Scheme.{u}) [AlgebraicGeometry.IsIntegral C] (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A → IsProper π₅ →
      ∀ c : C, wcpaDjGcPtType (π₅ ≫ Limits.pullback.snd g ρ) c :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ c

  have hIne : ∃ i₀, i₀ ∈ I := by
    obtain ⟨-, -, -, -, -, hW, -, hWgc, -, -, -, hO, -, hC1, -⟩ := H.1
    obtain ⟨w, hw⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty W).mp hW
    haveI := hWgc
    have hcs : ConnectedSpace ↥(Limits.pullback (g ∣_ W)
        ((W : Scheme.{u}).fromSpecResidueField ⟨w, hw⟩) : Scheme.{u}) :=
      GeometricallyConnected.geometrically_connectedSpace
        ((W : Scheme.{u}).fromSpecResidueField ⟨w, hw⟩) (Limits.pullback.fst _ _)
        (Limits.pullback.snd _ _) (IsPullback.of_hasPullback _ _)
    obtain ⟨p⟩ := hcs.toNonempty
    have hq := (Limits.pullback.fst (g ∣_ W) ((W : Scheme.{u}).fromSpecResidueField ⟨w, hw⟩) p).2
    let o : O.toScheme := ⟨_, hO hq⟩
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
      MvPolynomial.gradedAlgebra
    have htop : (⨆ i, Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k)) = ⊤ := by
      apply Proj.iSup_basicOpen_eq_top
      intro f hf
      have hf' : f ∈ HomogeneousIdeal.irrelevant
          (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) := hf
      rw [HomogeneousIdeal.mem_irrelevant_iff, GradedRing.proj_apply] at hf'
      clear hf
      have hf := hf'
      have h2 : ((DirectSum.decompose (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) f) 0 :
          MvPolynomial (Fin (N + 1)) k) = MvPolynomial.homogeneousComponent 0 f :=
        MvPolynomial.decomposition.decompose'_apply f 0
      rw [h2, MvPolynomial.homogeneousComponent_zero, MvPolynomial.C_eq_zero] at hf
      rw [← Set.image_univ, MvPolynomial.mem_ideal_span_X_image]
      intro mm hmm
      by_contra hcon
      push_neg at hcon
      have hm0 : mm = 0 := by
        ext i
        exact hcon i (Set.mem_univ i)
      rw [MvPolynomial.mem_support_iff, hm0] at hmm
      exact hmm hf
    have hmem : a o ∈ (⨆ i, Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k)) := by
      rw [htop]
      trivial
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.mp hmem
    by_cases hiI : i ∈ I
    · exact ⟨i, hiI⟩
    · exact absurd hi (hC1 o i hiI)
  obtain ⟨i₀, hi₀⟩ := hIne

  obtain ⟨n, t, J, α, β, c₀, hMono, hO1, hO2⟩ := H.2.2.2.2.2.2.2.2 i₀ hi₀ (π₅ c)

  rcases hMono.2.2.2.2.2 with ⟨hc0, v, e, he, hrat⟩ | ⟨hc0, -, j, z, -, -, e, he, hez, hrat⟩ |
      ⟨hc0, -, hyτ, hα, -⟩
  ·
    have hLM : wcpaDjGltLocModel (Limits.pullback.snd g ρ) I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t α β c₀
        (e.symm (Ideal.Quotient.mk _ (MvPowerSeries.X 0))) :=
      ⟨hrat, Or.inl ⟨hc0, v, e, he, RingEquiv.apply_symm_apply e _⟩⟩
    obtain ⟨a₀, b₀, k₀, hk₀, hb, Q, hQ, eC, hid⟩ :=
      wcpa_dj_glt_completion_compare k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM hπ
        c i₀ hi₀ n t J α β c₀ hMono hO1 hO2 _ hLM
    exact wcpa_dj_glt_chart_classify k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM hπ
      c i₀ hi₀ n t J α β c₀ hMono hO1 hO2 _ hLM a₀ b₀ k₀ hk₀ hb Q eC hid
  ·
    have hLM : wcpaDjGltLocModel (Limits.pullback.snd g ρ) I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t α β c₀
        (algebraMap _ (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) z) :=
      ⟨hrat, Or.inr ⟨hc0, e, he, hez⟩⟩
    obtain ⟨a₀, b₀, k₀, hk₀, hb, Q, hQ, eC, hid⟩ :=
      wcpa_dj_glt_completion_compare k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM hπ
        c i₀ hi₀ n t J α β c₀ hMono hO1 hO2 _ hLM
    exact wcpa_dj_glt_chart_classify k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM hπ
      c i₀ hi₀ n t J α β c₀ hMono hO1 hO2 _ hLM a₀ b₀ k₀ hk₀ hb Q eC hid
  ·
    exact Or.inl (wcpa_dj_glt_offsection_smooth k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C
      π₅ A hM hπ c i₀ hi₀ n t J α β c₀ hMono hO1 hO2 hc0 hα hyτ)

theorem wcpa_dj_gnc_stalk_flat_node : ∀ (A R : Type u) [CommRing A] [CommRing R] [IsLocalRing A] [IsLocalRing R] [IsNoetherianRing A] [IsNoetherianRing R] (φ : A →+* R), IsLocalHom φ → ∀ (h : AdicCompletion (IsLocalRing.maximalIdeal A) A) (e : AdicCompletion (IsLocalRing.maximalIdeal R) R ≃+* (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})), h ∈ (IsLocalRing.maximalIdeal A).map (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) → e.toRingHom.comp ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ) = (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))) → φ.Flat :=
by
  intro A R _ _ _ _ _ _ φ _ h e hh he
  classical

  have s1 : ∀ (M : Type u) [AddCommGroup M] [Module A M] [Module.Flat A M] (ι : Type),
      Module.Flat A (ι → M) := by
    intro M _ _ _ ι
    apply Module.Flat.of_forall_isTrivialRelation
    intro l f x hfx
    let ψ : (Fin l → A) →ₗ[A] A :=
      { toFun := fun v => ∑ i, f i * v i
        map_add' := fun v w => by simp [mul_add, Finset.sum_add_distrib]
        map_smul' := fun r v => by
          simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
          exact Finset.sum_congr rfl (fun i _ => by ring) }
    obtain ⟨r, κ, hκ⟩ := Submodule.fg_iff_exists_fin_generating_family.mp
      (IsNoetherian.noetherian (LinearMap.ker ψ))
    have hκker : ∀ t, ∑ i, f i * κ t i = 0 := by
      intro t
      have : κ t ∈ LinearMap.ker ψ := hκ ▸ Submodule.subset_span ⟨t, rfl⟩
      exact this
    have H : ∀ j : ι, Module.IsTrivialRelation f (fun i => x i j) := by
      intro j
      apply Module.Flat.isTrivialRelation_of_sum_smul_eq_zero
      have := congrFun hfx j
      simpa [Finset.sum_apply] using this
    choose k a y hxa hfa using H
    have hcol : ∀ j (s : Fin (k j)), ∃ cc : Fin r → A, ∑ t, cc t • κ t = fun i => a j i s := by
      intro j s
      rw [← Submodule.mem_span_range_iff_exists_fun, hκ]
      show ∑ i, f i * a j i s = 0
      exact hfa j s
    choose cc hcc using hcol
    refine ⟨r, fun i t => κ t i, fun t j => ∑ s, cc j s t • y j s, ?_, hκker⟩
    intro i
    funext j
    have hx := hxa j i
    simp only at hx
    rw [hx, Finset.sum_apply]
    simp only [Pi.smul_apply, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun s _ => ?_)
    have e' : a j i s = ∑ t, cc j s t * κ t i := by
      have := congrFun (hcc j s) i
      rw [← this, Finset.sum_apply]
      simp [smul_eq_mul]
    rw [e', Finset.sum_smul]
    refine Finset.sum_congr rfl (fun t _ => ?_)
    rw [mul_comm]

  have s2 : ∀ {A' R' S' : Type u} [CommRing A'] [CommRing R'] [CommRing S'] (f : A' →+* R')
      (g : R' →+* S'), g.FaithfullyFlat → (g.comp f).Flat → f.Flat := by
    intro A' R' S' _ _ _ f g hg hgf
    letI := f.toAlgebra
    letI := g.toAlgebra
    letI := (g.comp f).toAlgebra
    haveI : IsScalarTower A' R' S' := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
    haveI : Module.FaithfullyFlat R' S' := hg
    haveI : Module.Flat A' S' := hgf
    show Module.Flat A' R'
    rw [Module.Flat.iff_lTensor_injective']
    intro I
    have hbc : (⇑(LinearMap.lTensor R' I.subtype) : TensorProduct A' R' I → TensorProduct A' R' A') =
        ⇑(LinearMap.baseChange R' I.subtype) := (LinearMap.baseChange_eq_ltensor _).symm
    rw [hbc, ← Module.FaithfullyFlat.lTensor_injective_iff_injective R' S']
    let cI := TensorProduct.AlgebraTensorModule.cancelBaseChange A' R' S' S' I
    let cA := TensorProduct.AlgebraTensorModule.cancelBaseChange A' R' S' S' A'
    have hsq : ∀ x, cA (LinearMap.lTensor S' (LinearMap.baseChange R' I.subtype) x) =
        LinearMap.lTensor S' I.subtype (cI x) := by
      intro x
      induction x using TensorProduct.induction_on with
      | zero => simp
      | tmul s y =>
        induction y using TensorProduct.induction_on with
        | zero => simp
        | tmul r n =>
          simp only [cA, cI, LinearMap.lTensor_tmul, LinearMap.baseChange_tmul,
            TensorProduct.AlgebraTensorModule.cancelBaseChange_tmul]
        | add y z hy hz =>
          rw [TensorProduct.tmul_add, map_add, map_add, hy, hz, map_add, map_add]
      | add x y hx hy => rw [map_add, map_add, hx, hy, map_add, map_add]
    have hinj : Function.Injective
        (LinearMap.lTensor S' I.subtype : TensorProduct A' S' I → TensorProduct A' S' A') :=
      Module.Flat.lTensor_preserves_injective_linearMap _ Subtype.val_injective
    intro x y hxy
    apply cI.injective
    apply hinj
    rw [← hsq, ← hsq, hxy]

  have s3 : (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).FaithfullyFlat := by
    rw [RingHom.faithfullyFlat_algebraMap_iff, Module.faithfullyFlat_iff]
    refine ⟨AdicCompletion.flat_of_isNoetherian _, ?_⟩
    intro m hm htop
    have hmeq : m = IsLocalRing.maximalIdeal R := IsLocalRing.eq_maximalIdeal hm
    subst hmeq
    let ε := (AdicCompletion.evalOneₐ (IsLocalRing.maximalIdeal R)).toLinearMap
    have h1 : (1 : AdicCompletion (IsLocalRing.maximalIdeal R) R) ∈
        (IsLocalRing.maximalIdeal R) •
          (⊤ : Submodule R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) := by
      rw [htop]; trivial
    have h0 : ε 1 = 0 := by
      refine Submodule.smul_induction_on h1 ?_ ?_
      · intro r hr x _
        rw [map_smul, Algebra.smul_def, Ideal.Quotient.algebraMap_eq,
          Ideal.Quotient.eq_zero_iff_mem.mpr hr, zero_mul]
      · intro x y hx hy
        rw [map_add, hx, hy, add_zero]
    have h1' : ε 1 = 1 := (AdicCompletion.evalOneₐ (IsLocalRing.maximalIdeal R)).map_one
    exact absurd (h1'.symm.trans h0) one_ne_zero

  have s5 : ∀ (S : Type u) [CommRing S] (J : Ideal S) [IsAdicComplete J S] (t : S), t ∈ J →
      ∀ c : ℕ → S, ∃! G : ℕ → S, ∀ k, G k = c k + t * G (k + 1) := by
    intro S _ J _ t ht c
    have hsm : ∀ n : ℕ, (J ^ n • (⊤ : Submodule S S) : Submodule S S) = J ^ n := fun n => by
      rw [Ideal.smul_eq_mul, Ideal.mul_top]
    have hz : ∀ x : S, (∀ n : ℕ, x ∈ J ^ n) → x = 0 := by
      intro x hx
      apply IsHausdorff.haus (IsAdicComplete.toIsHausdorff (I := J) (M := S)) x
      intro n
      rw [SModEq.sub_mem, sub_zero, hsm]
      exact hx n
    have hsmod : ∀ (n : ℕ) (x y : S), x ≡ y [SMOD (J ^ n • (⊤ : Submodule S S))] →
        x - y ∈ J ^ n := by
      intro n x y hxy
      rw [SModEq.sub_mem, hsm] at hxy
      exact hxy
    let σ : ℕ → ℕ → S := fun k N => ∑ m ∈ Finset.range N, t ^ m * c (k + m)
    have hσ : ∀ k N, σ k (N + 1) = c k + t * σ (k + 1) N := by
      intro k N
      simp only [σ]
      rw [Finset.sum_range_succ', Finset.mul_sum, add_comm]
      congr 1
      · simp
      · refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [show k + (i + 1) = k + 1 + i by omega, pow_succ]
        ring
    have hprec : ∀ k, ∃ L : S, ∀ N, σ k N ≡ L [SMOD (J ^ N • (⊤ : Submodule S S))] := by
      intro k
      apply IsPrecomplete.prec (IsAdicComplete.toIsPrecomplete (I := J) (M := S))
      intro m n hmn
      rw [SModEq.sub_mem, hsm]
      have e' : σ k m - σ k n = -(∑ i ∈ Finset.Ico m n, t ^ i * c (k + i)) := by
        simp only [σ]
        rw [← Finset.sum_range_add_sum_Ico _ hmn]
        ring
      rw [e']
      refine (J ^ m).neg_mem (Ideal.sum_mem _ (fun i hi => ?_))
      exact Ideal.mul_mem_right _ _
        (Ideal.pow_le_pow_right (Finset.mem_Ico.mp hi).1 (Ideal.pow_mem_pow ht i))
    choose L hL using hprec
    have hLrec : ∀ k, L k = c k + t * L (k + 1) := by
      intro k
      have : L k - (c k + t * L (k + 1)) = 0 := by
        apply hz
        intro N
        have e' : L k - (c k + t * L (k + 1)) =
            -(σ k (N + 1) - L k) + t * (σ (k + 1) N - L (k + 1)) := by
          rw [hσ]; ring
        rw [e']
        refine Ideal.add_mem _ ((J ^ N).neg_mem ?_)
          (Ideal.mul_mem_left _ _ (hsmod _ _ _ (hL _ _)))
        exact Ideal.pow_le_pow_right (Nat.le_succ N) (hsmod _ _ _ (hL _ _))
      exact sub_eq_zero.mp this
    refine ⟨L, hLrec, ?_⟩
    intro G hG
    funext k
    have hD : ∀ n k, G k - L k = t ^ n * (G (k + n) - L (k + n)) := by
      intro n
      induction n with
      | zero => intro k; simp
      | succ n ih =>
        intro k
        rw [ih k, hG (k + n), hLrec (k + n), pow_succ, show k + (n + 1) = k + n + 1 by omega]
        ring
    have : G k - L k = 0 := by
      apply hz
      intro n
      rw [hD n k]
      exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_pow ht n)
    exact sub_eq_zero.mp this

  have s6 : ∀ (S : Type u) [CommRing S] (t : S),
      (∀ c : ℕ → S, ∃! G : ℕ → S, ∀ k, G k = c k + t * G (k + 1)) →
      Nonempty ((ℕ ⊕ ℕ → S) ≃ₗ[S] (MvPowerSeries (Fin 2) S ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C t})) := by
    intro S _ t hrec
    set u : MvPowerSeries (Fin 2) S := MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C t
      with hu
    set e11 : Fin 2 →₀ ℕ := Finsupp.single 0 1 + Finsupp.single 1 1 with he11
    have hX : (MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin 2) S) =
        MvPowerSeries.monomial e11 1 := by
      rw [MvPowerSeries.X_def, MvPowerSeries.X_def, MvPowerSeries.monomial_mul_monomial, mul_one]
    have hle : ∀ n : Fin 2 →₀ ℕ, e11 ≤ n ↔ (n 0 ≠ 0 ∧ n 1 ≠ 0) := by
      intro n
      rw [Finsupp.le_def]
      constructor
      · intro H
        have h0 := H 0
        have h1 := H 1
        simp [he11] at h0 h1
        omega
      · rintro ⟨h0, h1⟩ a
        fin_cases a <;> simp [he11] <;> omega
    have hcoef : ∀ (g : MvPowerSeries (Fin 2) S) (n : Fin 2 →₀ ℕ),
        MvPowerSeries.coeff n (g * u) =
          (if e11 ≤ n then MvPowerSeries.coeff (n - e11) g else 0) -
            t * MvPowerSeries.coeff n g := by
      intro g n
      rw [hu, mul_sub, hX, map_sub, MvPowerSeries.coeff_mul_monomial, MvPowerSeries.coeff_mul_C]
      split_ifs <;> ring
    have hZ : ∀ D : ℕ → S, (∀ k, D k = t * D (k + 1)) → D = 0 := by
      intro D hD
      obtain ⟨G, _, hGu⟩ := hrec (fun _ => 0)
      have h1 := hGu D (fun k => by rw [hD k]; ring)
      have h2 := hGu 0 (fun k => by simp)
      rw [h1, h2]
    let Pf : (ℕ ⊕ ℕ → S) → MvPowerSeries (Fin 2) S := fun a n =>
      if n 1 = 0 then a (Sum.inl (n 0)) else if n 0 = 0 then a (Sum.inr (n 1 - 1)) else 0
    have hPf : ∀ a n, MvPowerSeries.coeff n (Pf a) =
        if n 1 = 0 then a (Sum.inl (n 0)) else if n 0 = 0 then a (Sum.inr (n 1 - 1)) else 0 :=
      fun a n => rfl
    let P : (ℕ ⊕ ℕ → S) →ₗ[S] MvPowerSeries (Fin 2) S :=
      { toFun := Pf
        map_add' := fun a b => by
          ext n
          rw [map_add, hPf, hPf, hPf]
          split_ifs <;> simp
        map_smul' := fun c a => by
          ext n
          rw [MvPowerSeries.coeff_smul, hPf, hPf]
          split_ifs <;> simp }
    let Φ := (Ideal.Quotient.mkₐ S (Ideal.span {u})).toLinearMap ∘ₗ P
    have hΦ : ∀ a, Φ a = Ideal.Quotient.mk _ (Pf a) := fun a => rfl
    have hshift : ∀ (m : Fin 2 →₀ ℕ) (k : ℕ), m + (k + 1) • e11 - e11 = m + k • e11 := by
      intro m k
      rw [succ_nsmul, ← add_assoc, add_tsub_cancel_right]
    have hle' : ∀ (m : Fin 2 →₀ ℕ) (k : ℕ), e11 ≤ m + (k + 1) • e11 := by
      intro m k
      rw [succ_nsmul, ← add_assoc]
      exact le_add_self
    have inj : Function.Injective Φ := by
      rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      intro a ha
      rw [hΦ, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at ha
      obtain ⟨g, hg⟩ := ha
      have hvan : ∀ n, e11 ≤ n → MvPowerSeries.coeff n (Pf a) = 0 := by
        intro n hn
        rw [hPf]
        rw [hle] at hn
        simp [hn.1, hn.2]
      have hg0 : g = 0 := by
        ext m
        have hD := hZ (fun k => MvPowerSeries.coeff (m + k • e11) g) (by
          intro k
          have := hvan _ (hle' m k)
          rw [← hg, hcoef, if_pos (hle' m k), hshift] at this
          exact sub_eq_zero.mp this)
        have := congrFun hD 0
        simpa using this
      rw [hg0, zero_mul] at hg
      funext x
      rcases x with i | j
      · have := congrArg (MvPowerSeries.coeff (Finsupp.single 0 i)) hg
        rw [hPf] at this
        simpa using this.symm
      · have := congrArg (MvPowerSeries.coeff (Finsupp.single 1 (j + 1))) hg
        rw [hPf] at this
        simpa using this.symm
    have surj : Function.Surjective Φ := by
      intro z
      obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective z
      choose Γ hΓ hΓu using fun m : Fin 2 →₀ ℕ =>
        hrec (fun k => MvPowerSeries.coeff (m + (k + 1) • e11) f)
      have hΓs : ∀ m k, Γ m (k + 1) = Γ (m + e11) k := by
        intro m
        have := hΓu (m + e11) (fun k => Γ m (k + 1)) (by
          intro k
          show Γ m (k + 1) =
            MvPowerSeries.coeff (m + e11 + (k + 1) • e11) f + t * Γ m (k + 1 + 1)
          have h1 := hΓ m (k + 1)
          have e' : m + e11 + (k + 1) • e11 = m + (k + 1 + 1) • e11 := by
            simp only [add_smul, one_smul]; abel
          rw [e']
          exact h1)
        intro k
        exact congrFun this k
      let g : MvPowerSeries (Fin 2) S := fun m => Γ m 0
      have hg : ∀ m, MvPowerSeries.coeff m g =
          MvPowerSeries.coeff (m + e11) f + t * MvPowerSeries.coeff (m + e11) g := by
        intro m
        show Γ m 0 = _ + t * Γ (m + e11) 0
        have h1 := hΓ m 0
        rw [← hΓs m 0]
        simpa using h1
      set d := f - g * u with hd
      have hdv : ∀ n, e11 ≤ n → MvPowerSeries.coeff n d = 0 := by
        intro n hn
        rw [hd, map_sub, hcoef, if_pos hn, hg (n - e11), tsub_add_cancel_of_le hn]
        ring
      refine ⟨fun x => Sum.elim (fun i => MvPowerSeries.coeff (Finsupp.single 0 i) d)
        (fun j => MvPowerSeries.coeff (Finsupp.single 1 (j + 1)) d) x, ?_⟩
      have hPd : Pf (fun x => Sum.elim (fun i => MvPowerSeries.coeff (Finsupp.single 0 i) d)
          (fun j => MvPowerSeries.coeff (Finsupp.single 1 (j + 1)) d) x) = d := by
        ext n
        rw [hPf]
        split_ifs with h1 h0
        · simp only [Sum.elim_inl]
          have e' : Finsupp.single 0 (n 0) = n := by
            ext a; fin_cases a <;> (simp; try omega)
          rw [e']
        · simp only [Sum.elim_inr]
          have e' : Finsupp.single 1 (n 1 - 1 + 1) = n := by
            ext a; fin_cases a <;> (simp; try omega)
          rw [e']
        · exact (hdv n ((hle n).mpr ⟨h0, h1⟩)).symm
      rw [hΦ, hPd, Ideal.Quotient.eq]
      have e' : d - f = -(g * u) := by rw [hd]; ring
      rw [e']
      exact neg_mem (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self u))
    exact ⟨LinearEquiv.ofBijective Φ ⟨inj, surj⟩⟩

  have hfg : (IsLocalRing.maximalIdeal A).FG := IsNoetherian.noetherian _
  haveI : IsAdicComplete ((IsLocalRing.maximalIdeal A).map
      (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)))
      (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
    AdicCompletion.isAdicComplete_self _ hfg
  have hrec := s5 _ _ h hh
  obtain ⟨E⟩ := s6 _ h hrec
  haveI : Module.Flat A (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI := s1 (AdicCompletion (IsLocalRing.maximalIdeal A) A) (ℕ ⊕ ℕ)
  have hB : Module.Flat A (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸
      Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) :=
    Module.Flat.of_linearEquiv (E.restrictScalars A).symm
  have hq : (e.toRingHom.comp ((algebraMap R
      (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ)).Flat := by
    rw [he]
    have h1 : (algebraMap A (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸
        Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})).Flat :=
      RingHom.flat_algebraMap_iff.mpr hB
    convert h1 using 1
    refine RingHom.ext (fun r => ?_)
    show _ = algebraMap A _ r
    rw [← Ideal.Quotient.mk_algebraMap, MvPowerSeries.algebraMap_apply]
    rfl
  have hflat : ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ).Flat := by
    have h2 := RingHom.Flat.comp hq (RingHom.Flat.of_bijective (f := e.symm.toRingHom)
      e.symm.bijective)
    convert h2 using 1
    refine RingHom.ext (fun x => ?_)
    simp
  exact s2 φ _ s3 hflat

theorem wcpa_dj_gnc_node_mod_base : ∀ (A R : Type u) [CommRing A] [CommRing R] [IsLocalRing A] [IsLocalRing R] [IsNoetherianRing A] [IsNoetherianRing R] (φ : A →+* R), IsLocalHom φ → ∀ (h : AdicCompletion (IsLocalRing.maximalIdeal A) A) (e : AdicCompletion (IsLocalRing.maximalIdeal R) R ≃+* (MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})), h ∈ (IsLocalRing.maximalIdeal A).map (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) → e.toRingHom.comp ((algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)).comp φ) = (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))) → ∃ ε : AdicCompletion ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal A).map φ))) (R ⧸ (IsLocalRing.maximalIdeal A).map φ) ≃+* (MvPowerSeries (Fin 2) (IsLocalRing.ResidueField A) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1}), ε.toRingHom.comp ((algebraMap (R ⧸ (IsLocalRing.maximalIdeal A).map φ) (AdicCompletion ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal A).map φ))) (R ⧸ (IsLocalRing.maximalIdeal A).map φ))).comp ((Ideal.Quotient.mk ((IsLocalRing.maximalIdeal A).map φ)).comp φ)) = (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (IsLocalRing.residue A)) :=
by

  have hN1 : ∀ (B : Type u) [CommRing B] (I : Ideal B), I.FG →
      ∀ G : MvPowerSeries (Fin 2) B, (∀ d, MvPowerSeries.coeff d G ∈ I) →
      G ∈ I.map (MvPowerSeries.C : B →+* MvPowerSeries (Fin 2) B) := by
    intro B _ I hI G hG
    obtain ⟨m, g, hg⟩ := Submodule.fg_iff_exists_fin_generating_family.mp hI
    have hc : ∀ d : Fin 2 →₀ ℕ, ∃ c : Fin m → B, ∑ j, c j • g j = MvPowerSeries.coeff d G := by
      intro d
      have := hG d
      rw [← hg] at this
      exact (Submodule.mem_span_range_iff_exists_fun B).mp this
    choose c hc using hc
    let H : Fin m → MvPowerSeries (Fin 2) B := fun j d => c d j
    have hH : ∀ j d, MvPowerSeries.coeff d (H j) = c d j := fun j d => rfl
    have hGeq : G = ∑ j, MvPowerSeries.C (g j) * H j := by
      ext d
      rw [map_sum]
      simp only [MvPowerSeries.coeff_C_mul, hH]
      rw [← hc d]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [smul_eq_mul, mul_comm]
    rw [hGeq]
    refine Ideal.sum_mem _ (fun j _ => Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ ?_))
    rw [← hg]
    exact Submodule.subset_span ⟨j, rfl⟩

  have hL2 : ∀ (B κ : Type u) [CommRing B] [CommRing κ] (r : B →+* κ) (𝔞 : Ideal B) (h : B), Function.Surjective r → 𝔞.FG → (∀ b : B, r b = 0 ↔ b ∈ 𝔞) → h ∈ 𝔞 → ∃ Ψ : (MvPowerSeries (Fin 2) B ⧸ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) B)}) →+* (MvPowerSeries (Fin 2) κ ⧸ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin 2) κ)}), Function.Surjective Ψ ∧ RingHom.ker Ψ = 𝔞.map ((Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) B)})).comp (MvPowerSeries.C : B →+* MvPowerSeries (Fin 2) B)) ∧ Ψ.comp ((Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) B)})).comp (MvPowerSeries.C : B →+* MvPowerSeries (Fin 2) B)) = (Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin 2) κ)})).comp ((MvPowerSeries.C : κ →+* MvPowerSeries (Fin 2) κ).comp r) := by
    intro B κ _ _ r 𝔞 h hr h𝔞 hk hh
    have hrh : r h = 0 := (hk h).mpr hh
    have hMF : MvPowerSeries.map r (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) B) = MvPowerSeries.X 0 * MvPowerSeries.X 1 := by
      rw [map_sub, map_mul, MvPowerSeries.map_X, MvPowerSeries.map_X, MvPowerSeries.map_C, hrh,
        map_zero, sub_zero]
    have hΘ : ∀ a ∈ Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) B)},
        ((Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 :
          MvPowerSeries (Fin 2) κ)})).comp (MvPowerSeries.map r)) a = 0 := by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [RingHom.comp_apply, map_mul, hMF, map_mul, Ideal.Quotient.eq_zero_iff_mem.mpr
        (Ideal.mem_span_singleton_self _), mul_zero]
    have hM : Function.Surjective (MvPowerSeries.map (σ := Fin 2) r) := by
      intro Q
      let P : MvPowerSeries (Fin 2) B := fun d => Function.surjInv hr (MvPowerSeries.coeff d Q)
      refine ⟨P, ?_⟩
      ext d
      rw [MvPowerSeries.coeff_map]
      exact Function.surjInv_eq hr _
    refine ⟨Ideal.Quotient.lift _ _ hΘ, ?_, ?_, ?_⟩
    · intro y
      obtain ⟨Q, rfl⟩ := Ideal.Quotient.mk_surjective y
      obtain ⟨P, rfl⟩ := hM Q
      exact ⟨Ideal.Quotient.mk _ P, by rw [Ideal.Quotient.lift_mk, RingHom.comp_apply]⟩
    · apply le_antisymm
      · intro x hx
        rw [RingHom.mem_ker] at hx
        obtain ⟨G, rfl⟩ := Ideal.Quotient.mk_surjective x
        rw [Ideal.Quotient.lift_mk, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem] at hx
        obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hx
        obtain ⟨Q, rfl⟩ := hM c
        have hD : MvPowerSeries.map r (G - Q * (MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            MvPowerSeries.C h)) = 0 := by
          rw [map_sub, map_mul, hMF, hc, sub_self]
        have hD' : G - Q * (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) ∈
            𝔞.map (MvPowerSeries.C : B →+* MvPowerSeries (Fin 2) B) := by
          apply hN1 B 𝔞 h𝔞
          intro d
          rw [← hk, ← MvPowerSeries.coeff_map, hD, map_zero]
        have h1 := Ideal.mem_map_of_mem (Ideal.Quotient.mk (Ideal.span
          {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
            MvPowerSeries (Fin 2) B)})) hD'
        rw [Ideal.map_map, map_sub, map_mul, Ideal.Quotient.eq_zero_iff_mem.mpr
          (Ideal.mem_span_singleton_self _), mul_zero, sub_zero] at h1
        exact h1
      · rw [Ideal.map_le_iff_le_comap]
        intro a ha
        rw [Ideal.mem_comap, RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.lift_mk,
          RingHom.comp_apply, MvPowerSeries.map_C, (hk a).mpr ha, map_zero, map_zero]
    · ext b
      rw [RingHom.comp_apply, RingHom.comp_apply, Ideal.Quotient.lift_mk, RingHom.comp_apply,
        MvPowerSeries.map_C, RingHom.comp_apply, RingHom.comp_apply]

  have hL3 : ∀ (A : Type u) [CommRing A] [IsLocalRing A] [IsNoetherianRing A], ∃ r : AdicCompletion (IsLocalRing.maximalIdeal A) A →+* IsLocalRing.ResidueField A, Function.Surjective r ∧ r.comp (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) = IsLocalRing.residue A ∧ ∀ c : AdicCompletion (IsLocalRing.maximalIdeal A) A, r c = 0 ↔ c ∈ (IsLocalRing.maximalIdeal A).map (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) := by
    intro A _ _ _
    have hfg : (IsLocalRing.maximalIdeal A).FG := IsNoetherian.noetherian _
    have hmem : ∀ (b : AdicCompletion (IsLocalRing.maximalIdeal A) A),
        b ∈ Ideal.map (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))
          (IsLocalRing.maximalIdeal A ^ 1) ↔
        AdicCompletion.eval (IsLocalRing.maximalIdeal A) A 1 b = 0 := by
      intro b
      have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := A) (n := 1) hfg
      have h2 := Ideal.smul_top_eq_map (S := AdicCompletion (IsLocalRing.maximalIdeal A) A)
        (IsLocalRing.maximalIdeal A ^ 1)
      have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
      rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
      exact h3
    have hconv : ∀ (x : AdicCompletion (IsLocalRing.maximalIdeal A) A),
        AdicCompletion.eval (IsLocalRing.maximalIdeal A) A 1 x = 0 ↔
          AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 x = 0 := by
      intro x
      obtain ⟨f, rfl⟩ := AdicCompletion.mk_surjective (IsLocalRing.maximalIdeal A) A x
      rw [AdicCompletion.evalₐ_mk]
      change Submodule.Quotient.mk (f 1) = 0 ↔ Ideal.Quotient.mk _ (f 1) = 0
      rw [Submodule.Quotient.mk_eq_zero, Ideal.Quotient.eq_zero_iff_mem]
      simp [Ideal.mul_top]
    let r : AdicCompletion (IsLocalRing.maximalIdeal A) A →+* IsLocalRing.ResidueField A :=
      (Ideal.Quotient.factor (pow_one (IsLocalRing.maximalIdeal A)).le).comp
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1).toRingHom
    have hrc : r.comp (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) =
        IsLocalRing.residue A := by
      ext a
      show Ideal.Quotient.factor (pow_one (IsLocalRing.maximalIdeal A)).le
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1
          (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) a)) =
        Ideal.Quotient.mk (IsLocalRing.maximalIdeal A) a
      rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.factor_mk]
    refine ⟨r, ?_, hrc, ?_⟩
    · intro y
      obtain ⟨a, rfl⟩ := IsLocalRing.residue_surjective y
      exact ⟨algebraMap A _ a, by rw [← RingHom.comp_apply, hrc]⟩
    · intro c
      have hm1 := hmem c
      have hp : c ∈ (IsLocalRing.maximalIdeal A).map
          (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) ↔
          c ∈ (IsLocalRing.maximalIdeal A ^ 1).map
          (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) := by rw [pow_one]
      rw [hp, hm1, hconv]
      show Ideal.Quotient.factor (pow_one (IsLocalRing.maximalIdeal A)).le
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 c) = 0 ↔ _
      generalize AdicCompletion.evalₐ (IsLocalRing.maximalIdeal A) 1 c = y
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
      rw [Ideal.Quotient.factor_mk, Ideal.Quotient.eq_zero_iff_mem, Ideal.Quotient.eq_zero_iff_mem,
        pow_one]

  have hL1 : ∀ (R : Type u) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (I : Ideal R), ∃ ε : AdicCompletion ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk I)) (R ⧸ I) ≃+* AdicCompletion (IsLocalRing.maximalIdeal R) R ⧸ I.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)), ε.toRingHom.comp ((algebraMap (R ⧸ I) (AdicCompletion ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk I)) (R ⧸ I))).comp (Ideal.Quotient.mk I)) = (Ideal.Quotient.mk (I.map (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)))).comp (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) := by
    intro R _ _ _ I
    have : Module.Finite R (R ⧸ I) :=
      Module.Finite.of_surjective (Algebra.linearMap R (R ⧸ I)) Ideal.Quotient.mk_surjective
    have hconv : ∀ (X : Type u) [CommRing X] (J : Ideal X) (x : AdicCompletion J X) (n : ℕ)
        (r : X), x.val n = Submodule.Quotient.mk r ↔
          AdicCompletion.evalₐ J n x = Ideal.Quotient.mk (J ^ n) r := by
      intro X _ J x n r
      obtain ⟨f, rfl⟩ := AdicCompletion.mk_surjective J X x
      rw [AdicCompletion.evalₐ_mk]
      change Submodule.Quotient.mk (f n) = Submodule.Quotient.mk r ↔
        Ideal.Quotient.mk (J ^ n) (f n) = Ideal.Quotient.mk (J ^ n) r
      rw [Submodule.Quotient.eq, Ideal.Quotient.eq]
      simp [Ideal.mul_top]
    have trunc : ∀ {X : Type u} [CommRing X] (J : Ideal X) {m k : ℕ} (hle : m ≤ k)
        (x : AdicCompletion J X),
        Ideal.Quotient.factorPow J hle (AdicCompletion.evalₐ J k x) =
          AdicCompletion.evalₐ J m x := by
      intro X _ J m k hle x
      obtain ⟨f, rfl⟩ := AdicCompletion.mk_surjective J X x
      rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
      have h1 := AdicCompletion.AdicCauchySequence.mk_eq_mk (I := J) (M := X) hle f
      have h2 := (Submodule.Quotient.eq _).mp h1
      change Ideal.Quotient.mk (J ^ m) (f k) = Ideal.Quotient.mk (J ^ m) (f m)
      rw [Ideal.Quotient.eq]
      simpa [smul_eq_mul, Ideal.mul_top] using h2
    set 𝔪 := IsLocalRing.maximalIdeal R with h𝔪
    set 𝔫 := 𝔪.map (Ideal.Quotient.mk I) with h𝔫
    have hmap : Ideal.map (algebraMap R (R ⧸ I)) 𝔪 = 𝔫 := rfl
    have hsub : ∀ n : ℕ, (𝔪 ^ n • ⊤ : Submodule R (R ⧸ I)) =
        Submodule.restrictScalars R (𝔫 ^ n • ⊤ : Submodule (R ⧸ I) (R ⧸ I)) := by
      intro n
      rw [Ideal.smul_top_eq_map, Ideal.map_pow, hmap]
      congr 1
      exact (Ideal.mul_top _).symm.trans (Ideal.smul_eq_mul _ _).symm
    let q : ∀ n : ℕ, ((R ⧸ I) ⧸ (𝔪 ^ n • ⊤ : Submodule R (R ⧸ I))) ≃ₗ[R]
        ((R ⧸ I) ⧸ (𝔫 ^ n • ⊤ : Submodule (R ⧸ I) (R ⧸ I))) :=
      fun n => (Submodule.quotEquivOfEq _ _ (hsub n)).trans
        (Submodule.Quotient.restrictScalarsEquiv R _)
    have hq : ∀ n (s : R ⧸ I), q n (Submodule.Quotient.mk s) = Submodule.Quotient.mk s :=
      fun n s => rfl
    have hq' : ∀ n (s : R ⧸ I), (q n).symm (Submodule.Quotient.mk s) =
        Submodule.Quotient.mk s :=
      fun n s => (LinearEquiv.symm_apply_eq _).mpr (hq n s).symm
    have htr : ∀ {m n : ℕ} (hmn : m ≤ n) (y : (R ⧸ I) ⧸ (𝔪 ^ n • ⊤ : Submodule R (R ⧸ I))),
        AdicCompletion.transitionMap 𝔫 (R ⧸ I) hmn (q n y) =
          q m (AdicCompletion.transitionMap 𝔪 (R ⧸ I) hmn y) := by
      intro m n hmn y
      obtain ⟨s, rfl⟩ := Submodule.Quotient.mk_surjective _ y
      rfl
    have htr' : ∀ {m n : ℕ} (hmn : m ≤ n)
        (y : (R ⧸ I) ⧸ (𝔫 ^ n • ⊤ : Submodule (R ⧸ I) (R ⧸ I))),
        AdicCompletion.transitionMap 𝔪 (R ⧸ I) hmn ((q n).symm y) =
          (q m).symm (AdicCompletion.transitionMap 𝔫 (R ⧸ I) hmn y) := by
      intro m n hmn y
      obtain ⟨s, rfl⟩ := Submodule.Quotient.mk_surjective _ y
      rw [hq', show AdicCompletion.transitionMap 𝔫 (R ⧸ I) hmn (Submodule.Quotient.mk s) =
        Submodule.Quotient.mk s from rfl, hq']
      rfl
    let E : AdicCompletion 𝔪 (R ⧸ I) ≃+ AdicCompletion 𝔫 (R ⧸ I) :=
      { toFun := fun x => ⟨fun n => q n (x.val n), fun {m n} hmn => by rw [htr, x.property hmn]⟩
        invFun := fun y => ⟨fun n => (q n).symm (y.val n),
          fun {m n} hmn => by rw [htr', y.property hmn]⟩
        left_inv := fun x => AdicCompletion.ext fun n => (q n).symm_apply_apply _
        right_inv := fun y => AdicCompletion.ext fun n => (q n).apply_symm_apply _
        map_add' := fun x y => AdicCompletion.ext fun n => by
          show q n ((x + y).val n) = q n (x.val n) + q n (y.val n)
          rw [AdicCompletion.val_add, Pi.add_apply]
          exact map_add _ _ _ }
    have hE : ∀ x n, (E x).val n = q n (x.val n) := fun _ _ => rfl
    have hle : ∀ n : ℕ, 𝔪 ^ n ≤ Ideal.comap (algebraMap R (R ⧸ I)) (𝔫 ^ n) := fun n => by
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow, hmap]
    let ι : ∀ n : ℕ, R ⧸ 𝔪 ^ n →+* (R ⧸ I) ⧸ 𝔫 ^ n := fun n =>
      Ideal.quotientMap (𝔫 ^ n) (algebraMap R (R ⧸ I)) (hle n)
    let φ₀ : AdicCompletion 𝔪 R →+* AdicCompletion 𝔫 (R ⧸ I) :=
      AdicCompletion.liftRingHom 𝔫 (fun n => (ι n).comp (AdicCompletion.evalₐ 𝔪 n).toRingHom)
        (by
          intro m k hmk
          refine RingHom.ext fun x => ?_
          change Ideal.Quotient.factorPow 𝔫 hmk (ι k (AdicCompletion.evalₐ 𝔪 k x)) =
            ι m (AdicCompletion.evalₐ 𝔪 m x)
          obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ 𝔪 k x)
          rw [← trunc 𝔪 hmk x, ← ha]
          rfl)
    have hφ₀ev : ∀ n x, AdicCompletion.evalₐ 𝔫 n (φ₀ x) = ι n (AdicCompletion.evalₐ 𝔪 n x) :=
      fun n x => AdicCompletion.evalₐ_liftRingHom _ _ _ n x
    have hcomm : ∀ b : R, φ₀ (algebraMap R (AdicCompletion 𝔪 R) b) =
        algebraMap R (AdicCompletion 𝔫 (R ⧸ I)) b := by
      intro b
      apply AdicCompletion.ext_evalₐ
      intro n
      rw [hφ₀ev, AdicCompletion.algebraMap_apply, AdicCompletion.algebraMap_apply,
        AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of]
      simp only [Algebra.algebraMap_self_apply]
      exact Ideal.quotientMap_mk
    let φc : AdicCompletion 𝔪 R →ₐ[R] AdicCompletion 𝔫 (R ⧸ I) :=
      { φ₀ with commutes' := hcomm }
    have hφ : ∀ (x : AdicCompletion 𝔪 R) (n : ℕ) (β : R), x.val n = Submodule.Quotient.mk β →
        (φc x).val n = Submodule.Quotient.mk (algebraMap R (R ⧸ I) β) := by
      intro x n β hx
      rw [hconv R 𝔪 x n β] at hx
      rw [hconv (R ⧸ I) 𝔫 (φc x) n (algebraMap R (R ⧸ I) β)]
      change AdicCompletion.evalₐ 𝔫 n (φ₀ x) = _
      rw [hφ₀ev, hx]
      exact Ideal.quotientMap_mk
    set Θ : TensorProduct R (R ⧸ I) (AdicCompletion 𝔪 R) →ₐ[R ⧸ I]
        AdicCompletion 𝔫 (R ⧸ I) :=
      Algebra.TensorProduct.lift (Algebra.ofId (R ⧸ I) (AdicCompletion 𝔫 (R ⧸ I))) φc
        (fun _ _ => Commute.all _ _) with hΘ
    let Ψ : TensorProduct R (R ⧸ I) (AdicCompletion 𝔪 R) → AdicCompletion 𝔪 (R ⧸ I) :=
      fun z => AdicCompletion.ofTensorProduct 𝔪 (R ⧸ I)
        (TensorProduct.comm R (R ⧸ I) (AdicCompletion 𝔪 R) z)
    have hΨ : Function.Bijective Ψ :=
      (AdicCompletion.ofTensorProduct_bijective_of_finite_of_isNoetherian 𝔪 (R ⧸ I)).comp
        (TensorProduct.comm R (R ⧸ I) (AdicCompletion 𝔪 R)).bijective
    have hkey : ∀ z, Θ z = E (Ψ z) := by
      intro z
      induction z using TensorProduct.induction_on with
      | zero => simp [Ψ]
      | add x y hx hy =>
        show Θ (x + y) = E (AdicCompletion.ofTensorProduct 𝔪 (R ⧸ I)
          (TensorProduct.comm R (R ⧸ I) (AdicCompletion 𝔪 R) (x + y)))
        rw [map_add, map_add, map_add, map_add, hx, hy]
      | tmul s b =>
        apply AdicCompletion.ext
        intro n
        obtain ⟨β, hβ⟩ := Submodule.Quotient.mk_surjective _ (b.val n)
        have h1 : (Θ (s ⊗ₜ[R] b)).val n =
            Submodule.Quotient.mk (s * algebraMap R (R ⧸ I) β) := by
          rw [hΘ, Algebra.TensorProduct.lift_tmul, AdicCompletion.val_mul, hφ b n β hβ.symm,
            Algebra.ofId_apply, AdicCompletion.algebraMap_apply, AdicCompletion.of_apply]
          rfl
        have hΨt : Ψ (s ⊗ₜ[R] b) = AdicCompletion.ofTensorProduct 𝔪 (R ⧸ I) (b ⊗ₜ[R] s) := by
          simp only [Ψ, TensorProduct.comm_tmul]
        have h2 : (E (Ψ (s ⊗ₜ[R] b))).val n =
            Submodule.Quotient.mk (algebraMap R (R ⧸ I) β * s) := by
          rw [hΨt, hE, AdicCompletion.ofTensorProduct_tmul, AdicCompletion.smul_eval,
            AdicCompletion.of_apply, ← hβ, ← Algebra.smul_def]
          rfl
        rw [h1, h2, mul_comm]
    have hbij : Function.Bijective Θ := by
      have h : (Θ : TensorProduct R (R ⧸ I) (AdicCompletion 𝔪 R) → AdicCompletion 𝔫 (R ⧸ I)) =
          E ∘ Ψ := funext hkey
      rw [h]
      exact E.bijective.comp hΨ
    have hS : ∀ r : R, algebraMap R (AdicCompletion 𝔫 (R ⧸ I)) r =
        algebraMap (R ⧸ I) (AdicCompletion 𝔫 (R ⧸ I)) (Ideal.Quotient.mk I r) := by
      intro r
      rw [AdicCompletion.algebraMap_apply, AdicCompletion.algebraMap_apply]
      rfl
    have hker : I.map (algebraMap R (AdicCompletion 𝔪 R)) ≤ RingHom.ker φ₀ := by
      rw [Ideal.map_le_iff_le_comap]
      intro i hi
      rw [Ideal.mem_comap, RingHom.mem_ker, hcomm, hS, Ideal.Quotient.eq_zero_iff_mem.mpr hi,
        map_zero]
    let ψ : AdicCompletion 𝔪 R ⧸ I.map (algebraMap R (AdicCompletion 𝔪 R)) →+*
        AdicCompletion 𝔫 (R ⧸ I) :=
      Ideal.Quotient.lift _ φ₀ (fun a ha => hker ha)
    have hψ : ∀ x, ψ x = Θ (TensorProduct.comm R (AdicCompletion 𝔪 R) (R ⧸ I)
        (Algebra.TensorProduct.quotIdealMapEquivTensorQuot (AdicCompletion 𝔪 R) I x)) := by
      intro x
      obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
      rw [Algebra.TensorProduct.quotIdealMapEquivTensorQuot_mk, TensorProduct.comm_tmul, hΘ,
        Algebra.TensorProduct.lift_tmul, map_one, one_mul]
      rfl
    have hψb : Function.Bijective ψ := by
      have h : (ψ : _ → _) = Θ ∘ (TensorProduct.comm R (AdicCompletion 𝔪 R) (R ⧸ I)) ∘
          (Algebra.TensorProduct.quotIdealMapEquivTensorQuot (AdicCompletion 𝔪 R) I) :=
        funext hψ
      rw [h]
      exact hbij.comp ((TensorProduct.comm R _ _).bijective.comp
        (Algebra.TensorProduct.quotIdealMapEquivTensorQuot (AdicCompletion 𝔪 R) I).bijective)
    refine ⟨(RingEquiv.ofBijective ψ hψb).symm, ?_⟩
    ext r
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe]
    rw [RingEquiv.symm_apply_eq, RingEquiv.ofBijective_apply]
    change _ = φ₀ (algebraMap R (AdicCompletion 𝔪 R) r)
    rw [hcomm, hS]

  intro A R _ _ _ _ _ _ φ _ h e hh he
  obtain ⟨ε₁, hε₁⟩ := hL1 R ((IsLocalRing.maximalIdeal A).map φ)
  obtain ⟨r, hrs, hrc, hrk⟩ := hL3 A
  have hfg : (IsLocalRing.maximalIdeal A).FG := IsNoetherian.noetherian _
  have h𝔞 : ((IsLocalRing.maximalIdeal A).map
      (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))).FG := hfg.map _
  obtain ⟨Ψ, hΨs, hΨk, hΨc⟩ := hL2 (AdicCompletion (IsLocalRing.maximalIdeal A) A)
    (IsLocalRing.ResidueField A) r _ h hrs h𝔞 hrk hh
  have hcomp : ((e : AdicCompletion (IsLocalRing.maximalIdeal R) R →+* _).comp
      (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))).comp φ =
      ((Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))})).comp
        (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal A) A →+*
          MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))).comp
      (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A)) :=
    RingHom.ext fun a => RingHom.congr_fun he a
  have hJ : ((IsLocalRing.maximalIdeal A).map
      (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A))).map
      ((Ideal.Quotient.mk (Ideal.span {(MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h :
        MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))})).comp
        (MvPowerSeries.C : AdicCompletion (IsLocalRing.maximalIdeal A) A →+*
          MvPowerSeries (Fin 2) (AdicCompletion (IsLocalRing.maximalIdeal A) A))) =
      Ideal.map (e : AdicCompletion (IsLocalRing.maximalIdeal R) R →+* _)
        (((IsLocalRing.maximalIdeal A).map φ).map
          (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))) := by
    rw [Ideal.map_map, Ideal.map_map, Ideal.map_map, hcomp]
  let ε₂ := Ideal.quotientEquiv _ _ e hJ
  let ε₃ := (Ideal.quotEquivOfEq hΨk.symm).trans (RingHom.quotientKerEquivOfSurjective hΨs)
  refine ⟨ε₁.trans (ε₂.trans ε₃), ?_⟩
  ext a
  have h1 := RingHom.congr_fun hε₁ (φ a)
  have h2 := RingHom.congr_fun hΨc (algebraMap A (AdicCompletion (IsLocalRing.maximalIdeal A) A) a)
  have h3 := RingHom.congr_fun hrc a
  have h4 := RingHom.congr_fun hcomp a
  simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe] at h1 h2 h3 h4 ⊢
  rw [RingEquiv.trans_apply, RingEquiv.trans_apply, h1]
  show ε₃ (Ideal.Quotient.mk _ (e _)) = _
  rw [h4]
  show RingHom.quotientKerEquivOfSurjective hΨs (Ideal.quotEquivOfEq hΨk.symm
    (Ideal.Quotient.mk _ _)) = _
  rw [Ideal.quotEquivOfEq_mk, RingHom.quotientKerEquivOfSurjective_apply_mk, h2, h3]

theorem wcpa_dj_gnc_fibre_bridge_rev : ∀ (S Y : Scheme.{u}) (g : Y ⟶ S) (y : Y) (w : ↥(Limits.pullback g (S.fromSpecResidueField (g y)))), Limits.pullback.fst g (S.fromSpecResidueField (g y)) w = y → (∃ ε : AdicCompletion ((IsLocalRing.maximalIdeal (Y.presheaf.stalk y)).map (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom))) (Y.presheaf.stalk y ⧸ (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom) ≃+* (MvPowerSeries (Fin 2) (IsLocalRing.ResidueField (S.presheaf.stalk (g y))) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1}), ε.toRingHom.comp ((algebraMap (Y.presheaf.stalk y ⧸ (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom) (AdicCompletion ((IsLocalRing.maximalIdeal (Y.presheaf.stalk y)).map (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom))) (Y.presheaf.stalk y ⧸ (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom))).comp ((Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom)).comp (g.stalkMap y).hom)) = (Ideal.Quotient.mk _).comp (MvPowerSeries.C.comp (IsLocalRing.residue (S.presheaf.stalk (g y))))) → ∃ e : AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w)) ((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w) ≃+* (MvPowerSeries (Fin 2) (S.residueField (g y)) ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1}), e.toRingHom.comp ((algebraMap ((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w) (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w)) ((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w))).comp ((Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫ (Limits.pullback.snd g (S.fromSpecResidueField (g y))).appTop ≫ (Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.germ ⊤ w trivial).hom) = (Ideal.Quotient.mk _).comp MvPowerSeries.C :=
by
  intro S Y g y w hw ⟨ε, hε⟩
  classical

  have t_quot : ∀ {R O : Type u} [CommRing R] [CommRing O] [IsLocalRing R] [IsLocalRing O]
      (I : Ideal R) (χ : R →+* O), Function.Surjective χ → I ≤ RingHom.ker χ →
      (∃ ψ : O →+* R ⧸ I, ψ.comp χ = Ideal.Quotient.mk I) →
      ∃ τ : (R ⧸ I) ≃+* O, (∀ r, τ (Ideal.Quotient.mk I r) = χ r) ∧
        ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk I)).map τ =
          IsLocalRing.maximalIdeal O := by
    intro R O _ _ _ _ I χ hχ hI ⟨ψ, hψ⟩
    have hI' : ∀ a ∈ I, χ a = 0 := fun a ha => RingHom.mem_ker.mp (hI ha)
    have hlm : (Ideal.Quotient.lift I χ hI').comp (Ideal.Quotient.mk I) = χ :=
      RingHom.ext fun r => Ideal.Quotient.lift_mk I χ hI'
    have h1 : (Ideal.Quotient.lift I χ hI').comp ψ = RingHom.id O := by
      apply RingHom.ext
      intro o
      obtain ⟨r, rfl⟩ := hχ o
      have := RingHom.congr_fun hψ r
      simp only [RingHom.comp_apply, RingHom.id_apply] at this ⊢
      rw [this, Ideal.Quotient.lift_mk]
    have h2 : ψ.comp (Ideal.Quotient.lift I χ hI') = RingHom.id (R ⧸ I) := by
      apply Ideal.Quotient.ringHom_ext
      rw [RingHom.comp_assoc, hlm, hψ]
      rfl
    refine ⟨RingEquiv.ofRingHom _ _ h1 h2, fun r => Ideal.Quotient.lift_mk I χ hI', ?_⟩
    change Ideal.map (Ideal.Quotient.lift I χ hI')
      ((IsLocalRing.maximalIdeal R).map (Ideal.Quotient.mk I)) = _
    rw [Ideal.map_map, hlm]
    have hker : RingHom.ker χ ≤ IsLocalRing.maximalIdeal R :=
      IsLocalRing.le_maximalIdeal (RingHom.ker_ne_top χ)
    exact IsLocalRing.eq_maximalIdeal (Ideal.IsMaximal.map_of_surjective_of_ker_le hχ hker)

  have hev : ∀ {C : Type u} [CommRing C] (K : Ideal C) (n : ℕ) (c : C),
      AdicCompletion.evalₐ K n (algebraMap C (AdicCompletion K C) c) =
        Ideal.Quotient.mk (K ^ n) c := by
    intro C _ K n c
    rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq]
  have hmap : ∀ {B B' : Type u} [CommRing B] [CommRing B'] (f : B →+* B') (J : Ideal B)
      (J' : Ideal B'), (∀ b ∈ J, f b ∈ J') → ∃ F : AdicCompletion J B →+* AdicCompletion J' B',
      ∀ (n : ℕ) (b : B) (x : AdicCompletion J B),
        AdicCompletion.evalₐ J n x = Ideal.Quotient.mk (J ^ n) b →
        AdicCompletion.evalₐ J' n (F x) = Ideal.Quotient.mk (J' ^ n) (f b) := by
    intro B B' _ _ f J J' h
    have hn : ∀ n : ℕ, J ^ n ≤ (J' ^ n).comap f := fun n => by
      rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
      exact Ideal.pow_right_mono (Ideal.map_le_iff_le_comap.mpr (fun b hb => h b hb)) n
    refine ⟨AdicCompletion.liftRingHom J' (fun n => (Ideal.quotientMap (J' ^ n) f (hn n)).comp
      (AdicCompletion.evalₐ J n).toRingHom) ?_, ?_⟩
    · intro m n hle
      ext x
      obtain ⟨a, rfl⟩ := AdicCompletion.mk_surjective J B x
      have hmm := congrArg (Ideal.quotientMap (J' ^ m) f (hn m))
        (AdicCompletion.Ideal.mk_eq_mk J hle a)
      simp only [Ideal.quotientMap_mk] at hmm
      simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        AdicCompletion.evalₐ_mk, Ideal.quotientMap_mk]
      rw [← hmm]
      rfl
    · intro n b x hx
      rw [AdicCompletion.evalₐ_liftRingHom]
      simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, hx,
        Ideal.quotientMap_mk]
  have t_adic : ∀ {B B' : Type u} [CommRing B] [CommRing B'] (τ : B ≃+* B') (J : Ideal B)
      (J' : Ideal B'), J.map τ = J' → ∃ T : AdicCompletion J B ≃+* AdicCompletion J' B',
      ∀ b : B, T (algebraMap B _ b) = algebraMap B' _ (τ b) := by
    intro B B' _ _ τ J J' hJ
    have h1 : ∀ b ∈ J, (τ : B →+* B') b ∈ J' := by
      intro b hb
      rw [← hJ]
      simpa using Ideal.mem_map_of_mem τ hb
    have h2 : ∀ z ∈ J', (τ.symm : B' →+* B) z ∈ J := by
      intro z hz
      rw [← hJ] at hz
      obtain ⟨x, hx, rfl⟩ := (Ideal.mem_map_of_equiv τ z).mp hz
      simpa using hx
    obtain ⟨F, hF⟩ := hmap (τ : B →+* B') J J' h1
    obtain ⟨G, hG⟩ := hmap (τ.symm : B' →+* B) J' J h2
    have hGF : ∀ x, G (F x) = x := fun x => AdicCompletion.ext_evalₐ (fun n => by
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ J n x)
      rw [hG n ((τ : B →+* B') b) (F x) (hF n b x hb.symm), ← hb]
      simp)
    have hFG : ∀ x, F (G x) = x := fun x => AdicCompletion.ext_evalₐ (fun n => by
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (AdicCompletion.evalₐ J' n x)
      rw [hF n ((τ.symm : B' →+* B) b) (G x) (hG n b x hb.symm), ← hb]
      simp)
    refine ⟨RingEquiv.ofRingHom F G (RingHom.ext hFG) (RingHom.ext hGF), fun b => ?_⟩
    rw [RingEquiv.ofRingHom_apply]
    apply AdicCompletion.ext_evalₐ
    intro n
    rw [hF n b _ (hev J n b), hev]
    rfl

  have hχ : Function.Surjective (Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
      (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w).hom := by
    have hspec : ∀ {X : Scheme.{u}} {a b : X} (h : a = b),
        Function.Surjective (X.presheaf.stalkSpecializes (specializes_of_eq h)).hom := by
      intro X a b h
      subst h
      rw [TopCat.Presheaf.stalkSpecializes_refl]
      intro z
      exact ⟨z, rfl⟩
    rw [CommRingCat.hom_comp, RingHom.coe_comp]
    exact (Scheme.Hom.stalkMap_surjective _ w).comp (hspec hw)

  have hc : g.stalkMap y ≫ Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
      (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w =
      S.residue (g y) ≫ (Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫
        (Limits.pullback.snd g (S.fromSpecResidueField (g y))).appTop ≫
        (Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.germ ⊤ w trivial := by
    have K : ∀ (q : Spec (S.residueField (g y))) (c : S.fromSpecResidueField (g y) q ⤳ g y),
        S.presheaf.stalkSpecializes c ≫ (S.fromSpecResidueField (g y)).stalkMap q =
        S.residue (g y) ≫ (Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫
          (Spec (.of (S.residueField (g y)))).presheaf.germ ⊤ q trivial := by
      intro q c
      obtain rfl : q = IsLocalRing.closedPoint (S.residueField (g y)) := Subsingleton.elim _ _
      have e1 : (Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫
          (Spec (.of (S.residueField (g y)))).presheaf.germ ⊤
            (IsLocalRing.closedPoint (S.residueField (g y))) trivial =
          (stalkClosedPointIso (S.residueField (g y))).inv := by
        rw [← ΓSpecIso_hom_stalkClosedPointIso_inv, Iso.inv_hom_id_assoc]
        rfl
      rw [e1, Iso.eq_comp_inv, Category.assoc]
      change S.presheaf.stalkSpecializes c ≫
        Scheme.stalkClosedPointTo (S.fromSpecResidueField (g y)) = S.residue (g y)
      haveI : IsLocalHom (S.residue (g y)).hom := by
        first
          | exact IsLocalRing.isLocalHom_residue _
          | infer_instance
          | exact inferInstanceAs (IsLocalHom (IsLocalRing.residue (S.presheaf.stalk (g y))))
      apply TopCat.Presheaf.stalk_hom_ext
      intro U hU
      rw [TopCat.Presheaf.germ_stalkSpecializes_assoc]
      exact Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk (S.residue (g y)) U _
    have e2 : ∀ q : Spec (S.residueField (g y)), S.fromSpecResidueField (g y) q = g y := by
      intro q
      obtain rfl : q = IsLocalRing.closedPoint (S.residueField (g y)) := Subsingleton.elim _ _
      exact Scheme.fromSpecResidueField_apply _ _
    have L0 : ∀ {X Z : Scheme.{u}} (f₁ f₂ : X ⟶ Z), f₁ = f₂ → ∀ (x : X) (z : Z)
        (c₁ : f₁ x ⤳ z) (c₂ : f₂ x ⤳ z),
        Z.presheaf.stalkSpecializes c₁ ≫ f₁.stalkMap x =
          Z.presheaf.stalkSpecializes c₂ ≫ f₂.stalkMap x := by
      rintro X Z f₁ f₂ rfl x z c₁ c₂
      rfl
    have L : ∀ {X Y₁ Y₂ Z : Scheme.{u}} (a₁ : X ⟶ Y₁) (b₁ : Y₁ ⟶ Z) (a₂ : X ⟶ Y₂)
        (b₂ : Y₂ ⟶ Z), a₁ ≫ b₁ = a₂ ≫ b₂ → ∀ (x : X) (z : Z)
        (c₁ : b₁ (a₁ x) ⤳ z) (c₂ : b₂ (a₂ x) ⤳ z),
        Z.presheaf.stalkSpecializes c₁ ≫ b₁.stalkMap (a₁ x) ≫ a₁.stalkMap x =
          Z.presheaf.stalkSpecializes c₂ ≫ b₂.stalkMap (a₂ x) ≫ a₂.stalkMap x := by
      intro X Y₁ Y₂ Z a₁ b₁ a₂ b₂ h x z c₁ c₂
      have h' := L0 (a₁ ≫ b₁) (a₂ ≫ b₂) h x z c₁ c₂
      rw [Scheme.Hom.stalkMap_comp, Scheme.Hom.stalkMap_comp] at h'
      exact h'
    have hcond := Limits.pullback.condition (f := g) (g := S.fromSpecResidueField (g y))
    rw [← Scheme.Hom.stalkSpecializes_stalkMap_assoc g _ _ (specializes_of_eq hw)]
    refine (L _ _ _ _ hcond w (g y) _ (specializes_of_eq (e2 _))).trans ?_
    rw [← Category.assoc, K]
    simp only [Category.assoc]
    have hg := Scheme.Hom.germ_stalkMap (Limits.pullback.snd g (S.fromSpecResidueField (g y))) ⊤ w
      trivial
    exact congrArg (fun k => S.residue (g y) ≫
      (Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫ k) hg

  have hret : ∃ ψ : (Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalk w →+*
      (Y.presheaf.stalk y ⧸ (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map
        (g.stalkMap y).hom),
      ψ.comp (Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
        (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w).hom =
      Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map
        (g.stalkMap y).hom) := by
    obtain ⟨I, hI⟩ : ∃ I : Ideal (Y.presheaf.stalk y),
        I = (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom :=
      ⟨_, rfl⟩
    rw [← hI]
    have hIm : I ≤ IsLocalRing.maximalIdeal (Y.presheaf.stalk y) := by
      rw [hI]
      exact Ideal.map_le_iff_le_comap.mpr (fun a ha => map_nonunit _ a ha)
    have hIc : IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)) ≤
        I.comap (g.stalkMap y).hom := by
      rw [hI]
      exact Ideal.le_comap_map
    have hne : I ≠ ⊤ := ne_top_of_le_ne_top (IsLocalRing.maximalIdeal.isMaximal _).ne_top hIm
    haveI : Nontrivial (Y.presheaf.stalk y ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr hne
    haveI : IsLocalRing (Y.presheaf.stalk y ⧸ I) :=
      IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
    obtain ⟨q, hq⟩ : ∃ q : Y.presheaf.stalk y ⟶ CommRingCat.of (Y.presheaf.stalk y ⧸ I),
        ∀ r, q.hom r = Ideal.Quotient.mk I r := ⟨CommRingCat.ofHom (Ideal.Quotient.mk I), fun r => rfl⟩
    haveI hlocC : IsLocalHom q.hom := ⟨fun x hx => by
      by_contra hxu
      rw [hq] at hx
      obtain ⟨u, hu⟩ := hx
      obtain ⟨z, hz⟩ := Ideal.Quotient.mk_surjective (↑u⁻¹ : Y.presheaf.stalk y ⧸ I)
      have h1 : Ideal.Quotient.mk I (1 - x * z) = 0 := by
        rw [map_sub, map_one, map_mul, hz, ← hu, Units.mul_inv, sub_self]
      have h2 : 1 - x * z ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y) :=
        hIm (Ideal.Quotient.eq_zero_iff_mem.mp h1)
      have h3 : x * z ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y) :=
        Ideal.mul_mem_right z _ ((IsLocalRing.mem_maximalIdeal x).mpr hxu)
      have h4 : (1 : Y.presheaf.stalk y) ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y) := by
        simpa using Ideal.add_mem _ h2 h3
      exact (IsLocalRing.maximalIdeal.isMaximal _).ne_top ((Ideal.eq_top_iff_one _).mpr h4)⟩
    obtain ⟨θ, hθ⟩ : ∃ θ : S.residueField (g y) ⟶ CommRingCat.of (Y.presheaf.stalk y ⧸ I),
        S.residue (g y) ≫ θ = g.stalkMap y ≫ q :=
      ⟨CommRingCat.ofHom (Ideal.quotientMap I (g.stalkMap y).hom hIc), by
        apply CommRingCat.hom_ext
        apply RingHom.ext
        intro x
        change (Ideal.quotientMap I (g.stalkMap y).hom hIc) ((S.residue (g y)).hom x) =
          q.hom ((g.stalkMap y).hom x)
        rw [hq]
        rfl⟩
    have hcond : (Spec.map q ≫ Y.fromSpecStalk y) ≫ g =
        Spec.map θ ≫ S.fromSpecResidueField (g y) := by
      rw [Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Category.assoc,
        ← Spec.map_comp, ← hθ, Spec.map_comp, Category.assoc]
      rfl
    have hapt : (Spec.map q ≫ Y.fromSpecStalk y)
          (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I)) = y := by
      change Y.fromSpecStalk y ((Spec.map q) (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I))) = y
      have h1 : (Spec.map q) (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I)) =
          IsLocalRing.closedPoint (Y.presheaf.stalk y) := Spec_closedPoint (f := q)
      exact (congrArg (Y.fromSpecStalk y) h1).trans Scheme.fromSpecStalk_closedPoint
    have hL : Limits.pullback.lift _ _ hcond
        (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I)) = w := by
      apply (IsPreimmersion.isEmbedding
        (Limits.pullback.fst g (S.fromSpecResidueField (g y)))).injective
      change (Limits.pullback.lift _ _ hcond ≫ Limits.pullback.fst g (S.fromSpecResidueField (g y)))
        (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I)) = _
      rw [Limits.pullback.lift_fst]
      exact hapt.trans hw.symm
    refine ⟨((Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalkSpecializes
      (specializes_of_eq hL) ≫ Scheme.stalkClosedPointTo (Limits.pullback.lift _ _ hcond)).hom,
      ?_⟩
    have gen : ∀ (a' : Spec (CommRingCat.of (Y.presheaf.stalk y ⧸ I)) ⟶ Y),
        a' = Spec.map q ≫ Y.fromSpecStalk y →
        ∀ (d : a' (IsLocalRing.closedPoint (Y.presheaf.stalk y ⧸ I)) ⤳ y),
        Y.presheaf.stalkSpecializes d ≫ Scheme.stalkClosedPointTo a' = q := by
      rintro a' rfl d
      apply TopCat.Presheaf.stalk_hom_ext
      intro U hU
      rw [TopCat.Presheaf.germ_stalkSpecializes_assoc]
      exact Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk q U _
    have key : Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
        (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w ≫
        (Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.stalkSpecializes
          (specializes_of_eq hL) ≫ Scheme.stalkClosedPointTo (Limits.pullback.lift _ _ hcond) =
        q := by
      rw [← Scheme.Hom.stalkSpecializes_stalkMap_assoc _ _ _ (specializes_of_eq hL),
        TopCat.Presheaf.stalkSpecializes_comp_assoc, ← Scheme.stalkClosedPointTo_comp]
      exact gen _ (Limits.pullback.lift_fst _ _ _) _
    apply RingHom.ext
    intro r
    exact (congrArg (fun f => f.hom r) key).trans (hq r)

  obtain ⟨ψ, hψ⟩ := hret
  have hIker : (IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map (g.stalkMap y).hom ≤
      RingHom.ker (Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
        (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w).hom := by
    rw [Ideal.map_le_iff_le_comap]
    intro a ha
    rw [Ideal.mem_comap, RingHom.mem_ker]
    have h1 := congrArg (fun f => f.hom a) hc
    simp only [CommRingCat.comp_apply] at h1
    rw [CommRingCat.comp_apply, h1]
    have h0 : (S.residue (g y)).hom a = 0 := (IsLocalRing.residue_eq_zero_iff a).mpr ha
    rw [h0, map_zero, map_zero, map_zero]

  obtain ⟨τ, hτ1, hτ2⟩ := t_quot _ _ hχ hIker ⟨ψ, hψ⟩
  obtain ⟨T, hT⟩ := t_adic τ _ _ hτ2
  refine ⟨T.symm.trans ε, ?_⟩
  apply RingHom.ext
  intro x
  obtain ⟨a, ha⟩ := (IsLocalRing.residue_surjective (R := S.presheaf.stalk (g y))) x
  subst ha
  have h1 : (Y.presheaf.stalkSpecializes (specializes_of_eq hw) ≫
        (Limits.pullback.fst g (S.fromSpecResidueField (g y))).stalkMap w).hom
        ((g.stalkMap y).hom a) =
      ((Scheme.ΓSpecIso (.of (S.residueField (g y)))).inv ≫
        (Limits.pullback.snd g (S.fromSpecResidueField (g y))).appTop ≫
        (Limits.pullback g (S.fromSpecResidueField (g y))).presheaf.germ ⊤ w trivial).hom
        ((S.residue (g y)).hom a) :=
    congrArg (fun f => f.hom a) hc
  have h2 := RingHom.congr_fun hε a
  have h3 := hT (Ideal.Quotient.mk ((IsLocalRing.maximalIdeal (S.presheaf.stalk (g y))).map
    (g.stalkMap y).hom) ((g.stalkMap y).hom a))
  rw [hτ1, h1] at h3
  have h4 := congrArg (fun z => ε (T.symm z)) h3
  simp only [RingEquiv.symm_apply_apply] at h4
  exact h4.symm.trans h2

theorem wcpa_dj_gnc_geom_point : ∀ {C T : Scheme.{u}} (f : C ⟶ T) (c : C), IsIso (f.residueFieldMap c) → ∀ (K : Type u) [Field K] (s : Spec (.of K) ⟶ T) (w : ↥(Limits.pullback f s)), Limits.pullback.fst f s w = c → ∃ (_ : Algebra (T.residueField (f c)) K) (τ : Spec (.of (T.residueField (f c))) ⟶ Limits.pullback f (T.fromSpecResidueField (f c))) (Φ : Limits.pullback f s ≅ Limits.pullback (Limits.pullback.snd f (T.fromSpecResidueField (f c))) (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)))) (τ' : Spec (.of K) ⟶ Limits.pullback (Limits.pullback.snd f (T.fromSpecResidueField (f c))) (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)))), τ ≫ Limits.pullback.snd f (T.fromSpecResidueField (f c)) = 𝟙 _ ∧ Limits.pullback.fst f (T.fromSpecResidueField (f c)) (τ (IsLocalRing.closedPoint (T.residueField (f c)))) = c ∧ Φ.hom ≫ Limits.pullback.snd (Limits.pullback.snd f (T.fromSpecResidueField (f c))) (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) = Limits.pullback.snd f s ∧ τ' ≫ Limits.pullback.snd (Limits.pullback.snd f (T.fromSpecResidueField (f c))) (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) = 𝟙 _ ∧ τ' ≫ Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c))) (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) = Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)) ≫ τ ∧ Φ.hom w = τ' (IsLocalRing.closedPoint K) :=
by
  intro C T f c hρ K _ s w hw

  have uniq : ∀ {X S T : Scheme.{u}} (f : X ⟶ S) (g : T ⟶ S) (x : X) (t : T), f x = g t →
      Function.Bijective (f.residueFieldMap x).hom → ∀ z₁ z₂ : ↥(Limits.pullback f g),
      Limits.pullback.fst f g z₁ = x → Limits.pullback.fst f g z₂ = x →
      Limits.pullback.snd f g z₁ = t → Limits.pullback.snd f g z₂ = t → z₁ = z₂ := by
    intro X S T f g x t _ hbij z₁ z₂ h₁ h₂ h₃ h₄
    have key : ∀ P : Scheme.Pullback.Triplet f g, Function.Bijective (f.residueFieldMap P.x).hom →
        Subsingleton ↥(Spec P.tensor) := by
      intro P hb
      have : IsIso (f.residueFieldMap P.x) := (ConcreteCategory.isIso_iff_bijective _).mpr hb
      have : IsIso P.tensorInr := by
        rw [Scheme.Pullback.Triplet.tensorInr]
        exact Limits.pushout_inr_iso_of_left_iso _ _
      have hinj : Function.Injective (Spec.map P.tensorInr).base :=
        (Spec.map P.tensorInr).homeomorph.injective
      exact hinj.subsingleton
    have e : Scheme.Pullback.Triplet.ofPoint z₁ = Scheme.Pullback.Triplet.ofPoint z₂ :=
      Scheme.Pullback.Triplet.ext
        (by rw [Scheme.Pullback.Triplet.ofPoint_x, Scheme.Pullback.Triplet.ofPoint_x, h₁, h₂])
        (by rw [Scheme.Pullback.Triplet.ofPoint_y, Scheme.Pullback.Triplet.ofPoint_y, h₃, h₄])
    have hx2 : (Scheme.Pullback.Triplet.ofPoint z₂).x = x :=
      (Scheme.Pullback.Triplet.ofPoint_x z₂).trans h₂
    have hb2 : Function.Bijective
        (f.residueFieldMap (Scheme.Pullback.Triplet.ofPoint z₂).x).hom := by
      rw [hx2]; exact hbij
    have hss := key _ hb2
    apply Scheme.Pullback.carrierEquiv.injective
    rw [Scheme.Pullback.carrierEquiv_eq_iff]
    exact ⟨e, @Subsingleton.elim _ hss _ _⟩

  have hs_pt : s (IsLocalRing.closedPoint K) = f c := by
    rw [← hw, ← Scheme.Hom.comp_apply, Limits.pullback.condition, Scheme.Hom.comp_apply,
      Subsingleton.elim (Limits.pullback.snd f s w) (IsLocalRing.closedPoint K)]

  have hfac : ∃ ι : T.residueField (f c) ⟶ CommRingCat.of K,
      Spec.map ι ≫ T.fromSpecResidueField (f c) = s := by
    have h1 := (Scheme.SpecToEquivOfField K T).symm_apply_apply s
    rw [Scheme.SpecToEquivOfField_symm_apply] at h1
    have h2 : (Scheme.SpecToEquivOfField K T s).1 = f c := hs_pt
    generalize Scheme.SpecToEquivOfField K T s = p at h1 h2
    obtain ⟨t₀, ι₀⟩ := p
    simp only at h1 h2
    subst h2
    exact ⟨ι₀, h1⟩
  obtain ⟨ι, hι⟩ := hfac
  letI alg : Algebra (T.residueField (f c)) K := ι.hom.toAlgebra
  have hs : Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)) ≫
      T.fromSpecResidueField (f c) = s := hι
  subst hs

  haveI := hρ
  have hsq : (Spec.map (inv (f.residueFieldMap c)) ≫ C.fromSpecResidueField c) ≫ f =
      𝟙 _ ≫ T.fromSpecResidueField (f c) := by
    (rw [Category.assoc, ← Scheme.Hom.SpecMap_residueFieldMap_fromSpecResidueField,
      ← Category.assoc, ← Spec.map_comp, IsIso.hom_inv_id, Spec.map_id, Category.id_comp]) <;>
      rfl
  obtain ⟨τ, hτ, hτf⟩ : ∃ τ : Spec (.of (T.residueField (f c))) ⟶
      Limits.pullback f (T.fromSpecResidueField (f c)),
      τ ≫ Limits.pullback.snd f (T.fromSpecResidueField (f c)) = 𝟙 _ ∧
      τ ≫ Limits.pullback.fst f (T.fromSpecResidueField (f c)) =
        Spec.map (inv (f.residueFieldMap c)) ≫ C.fromSpecResidueField c :=
    ⟨Limits.pullback.lift _ _ hsq, Limits.pullback.lift_snd _ _ _, Limits.pullback.lift_fst _ _ _⟩
  have hτc' : ∀ x : ↥(Spec (.of (T.residueField (f c)))),
      Limits.pullback.fst f (T.fromSpecResidueField (f c)) (τ x) = c := by
    intro x
    rw [← Scheme.Hom.comp_apply, hτf, Scheme.Hom.comp_apply, Scheme.fromSpecResidueField_apply]
  have hτc : Limits.pullback.fst f (T.fromSpecResidueField (f c))
      (τ (IsLocalRing.closedPoint (T.residueField (f c)))) = c := hτc' _

  obtain ⟨Φ, hΦs, hΦf⟩ : ∃ Φ : Limits.pullback f (Spec.map (CommRingCat.ofHom
        (algebraMap (T.residueField (f c)) K)) ≫ T.fromSpecResidueField (f c)) ≅
      Limits.pullback (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))),
      Φ.hom ≫ Limits.pullback.snd (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) =
        Limits.pullback.snd f (Spec.map (CommRingCat.ofHom
          (algebraMap (T.residueField (f c)) K)) ≫ T.fromSpecResidueField (f c)) ∧
      Φ.hom ≫ Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) ≫
        Limits.pullback.fst f (T.fromSpecResidueField (f c)) =
        Limits.pullback.fst f (Spec.map (CommRingCat.ofHom
          (algebraMap (T.residueField (f c)) K)) ≫ T.fromSpecResidueField (f c)) :=
    ⟨(Limits.pullbackLeftPullbackSndIso f _ _).symm,
      Limits.pullbackLeftPullbackSndIso_inv_snd_snd _ _ _,
      Limits.pullbackLeftPullbackSndIso_inv_fst _ _ _⟩

  obtain ⟨τ', h1, h2⟩ : ∃ τ' : Spec (.of K) ⟶
      Limits.pullback (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))),
      τ' ≫ Limits.pullback.snd (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) = 𝟙 _ ∧
      τ' ≫ Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) =
        Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)) ≫ τ :=
    ⟨Limits.pullback.lift _ (𝟙 _) (by
        rw [Category.assoc, hτ, Category.comp_id]; exact (Category.id_comp _).symm),
      Limits.pullback.lift_snd _ _ _, Limits.pullback.lift_fst _ _ _⟩

  have hbρ : Function.Bijective (f.residueFieldMap c).hom :=
    (ConcreteCategory.isIso_iff_bijective _).mp hρ
  have sec : ∀ {X Y : Scheme.{u}} (a : X ⟶ Y) (σ : Y ⟶ X), σ ≫ a = 𝟙 _ → ∀ y : Y,
      Function.Bijective (a.residueFieldMap (σ y)).hom := by
    intro X Y a σ h y
    have H : Function.Bijective ((σ ≫ a).residueFieldMap y).hom := by
      have hid : ∀ φ : Y ⟶ Y, φ = 𝟙 _ → Function.Bijective (φ.residueFieldMap y).hom := by
        rintro φ rfl
        rw [Scheme.residueFieldMap_id]
        exact ⟨fun a b hab => hab, fun b => ⟨b, rfl⟩⟩
      exact hid _ h
    rw [Scheme.residueFieldMap_comp] at H
    refine ⟨RingHom.injective _, fun z => ?_⟩
    obtain ⟨x, hx⟩ := H.2 ((σ.residueFieldMap y).hom z)
    exact ⟨x, RingHom.injective (σ.residueFieldMap y).hom hx⟩
  have hb₀ := sec _ τ hτ (IsLocalRing.closedPoint (T.residueField (f c)))

  have hw1 : Limits.pullback.fst f (T.fromSpecResidueField (f c))
      (Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) (Φ.hom w)) = c := by
    have e : (Φ.hom ≫ Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) ≫
        Limits.pullback.fst f (T.fromSpecResidueField (f c))) w =
        Limits.pullback.fst f (Spec.map (CommRingCat.ofHom
          (algebraMap (T.residueField (f c)) K)) ≫ T.fromSpecResidueField (f c)) w := by
      rw [hΦf]
    rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e
    rw [e, hw]
  have U1 : Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) (Φ.hom w) =
      τ (IsLocalRing.closedPoint (T.residueField (f c))) :=
    uniq f (T.fromSpecResidueField (f c)) c (IsLocalRing.closedPoint (T.residueField (f c)))
      (Scheme.fromSpecResidueField_apply _ _).symm hbρ _ _ hw1 hτc
      (Subsingleton.elim _ _) (Subsingleton.elim _ _)
  have hτ'q' : ∀ (x : ↥(Spec (.of K))) (y : ↥(Spec (.of (T.residueField (f c))))),
      Limits.pullback.fst (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
        (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K))) (τ' x) = τ y := by
    intro x y
    rw [← Scheme.Hom.comp_apply, h2, Scheme.Hom.comp_apply]
    exact congrArg τ (Subsingleton.elim _ _)
  have hτ'q := hτ'q' (IsLocalRing.closedPoint K) (IsLocalRing.closedPoint (T.residueField (f c)))
  have U2 : Φ.hom w = τ' (IsLocalRing.closedPoint K) :=
    uniq (Limits.pullback.snd f (T.fromSpecResidueField (f c)))
      (Spec.map (CommRingCat.ofHom (algebraMap (T.residueField (f c)) K)))
      (τ (IsLocalRing.closedPoint (T.residueField (f c)))) (IsLocalRing.closedPoint K)
      (Subsingleton.elim _ _) hb₀ _ _ U1 hτ'q (Subsingleton.elim _ _) (Subsingleton.elim _ _)
  exact ⟨alg, τ, Φ, τ', hτ, hτc, hΦs, h1, h2, U2⟩

theorem wcpa_dj_gcl_node_criterion : ∀ (k : Type u) [Field k] {C T : Scheme.{u}} (f : C ⟶ T)
    (sT : T ⟶ Spec (.of k)), wcpaDjIsProjOver k sT → wcpaDjIsProjOver k (f ≫ sT) →
    (∀ c : C, wcpaDjGcPtType f c) → wcpaDjSemistable f :=
by
  intro k _ C T f sT hT hfT hpt
  haveI : IsProper (f ≫ sT) := wcpa_dj_proj_proper k (f ≫ sT) hfT
  haveI : IsProper sT := wcpa_dj_proj_proper k sT hT
  haveI hfp : IsProper f := IsProper.of_comp f sT
  haveI : IsLocallyNoetherian T := LocallyOfFiniteType.isLocallyNoetherian sT
  haveI : IsLocallyNoetherian C := LocallyOfFiniteType.isLocallyNoetherian f
  refine ⟨?_, hfp, ?_⟩
  · apply Flat.of_stalkMap
    intro c
    rcases hpt c with ⟨V, hcV, hV⟩ | ⟨_, h, e, hh, he⟩
    ·
      haveI : SmoothOfRelativeDimension 1 (V.ι ≫ f) := hV
      haveI : Smooth (V.ι ≫ f) := SmoothOfRelativeDimension.smooth 1 (V.ι ≫ f)
      have key : ∀ x : V, (f.stalkMap (V.ι x)).hom.Flat := by
        intro x
        have h1 := Flat.stalkMap (V.ι ≫ f) x
        have h0 := Scheme.Hom.stalkMap_comp V.ι f x
        rw [h0] at h1
        haveI hiso : IsIso (V.ι.stalkMap x) :=
          IsOpenImmersion.instIsIsoCommRingCatStalkMap V.ι x
        have e1 : f.stalkMap (V.ι x) =
            (f.stalkMap (V.ι x) ≫ V.ι.stalkMap x) ≫ inv (V.ι.stalkMap x) := by
          rw [Category.assoc, IsIso.hom_inv_id, Category.comp_id]
        rw [e1, CommRingCat.hom_comp]
        exact RingHom.Flat.comp h1 (RingHom.Flat.of_bijective
          (ConcreteCategory.bijective_of_isIso _))
      have := key ⟨c, hcV⟩
      first
        | exact this
        | (rwa [Scheme.Opens.ι_apply] at this)
        | simpa using this
    · exact wcpa_dj_gnc_stalk_flat_node _ _ (f.stalkMap c).hom inferInstance h e hh he
  · intro K _ _ s w
    rcases hpt (Limits.pullback.fst f s w) with ⟨V, hcV, hV⟩ | ⟨hiso, h, e, hh, he⟩
    · left
      refine ⟨Limits.pullback.fst f s ⁻¹ᵁ V, hcV, ?_⟩
      have h1 := isPullback_morphismRestrict (Limits.pullback.fst f s) V
      have h2 := IsPullback.of_hasPullback f s
      have h3 := h1.paste_vert h2
      exact MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension 1) h3 hV
    · obtain ⟨ε, hε⟩ := wcpa_dj_gnc_node_mod_base _ _ (f.stalkMap (Limits.pullback.fst f s w)).hom
        inferInstance h e hh he
      obtain ⟨_, τ, Φ, τ', hτ, hτc, hΦ, hτ'1, hτ'2, hΦw⟩ :=
        wcpa_dj_gnc_geom_point f (Limits.pullback.fst f s w) hiso K s w rfl
      obtain ⟨e₀, he₀⟩ := wcpa_dj_gnc_fibre_bridge_rev T C f (Limits.pullback.fst f s w)
        (τ (IsLocalRing.closedPoint _)) hτc ⟨ε, hε⟩
      haveI : LocallyOfFiniteType (Limits.pullback.snd f
          (T.fromSpecResidueField (f (Limits.pullback.fst f s w)))) := by
        first
          | exact MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
              (IsPullback.of_hasPullback _ _) inferInstance
          | infer_instance
      obtain ⟨e', he'⟩ := wcpa_dj_gnc_rational_node_bc _ K _ _ τ hτ ⟨e₀, he₀⟩ τ' hτ'1 hτ'2
      have key : ∀ x', x' = τ' (IsLocalRing.closedPoint K) →
          ((∃ W : (Limits.pullback (Limits.pullback.snd f (T.fromSpecResidueField
              (f (Limits.pullback.fst f s w)))) (Spec.map (CommRingCat.ofHom (algebraMap
              (T.residueField (f (Limits.pullback.fst f s w))) K)))).Opens, x' ∈ W ∧
              SmoothOfRelativeDimension 1 (W.ι ≫ Limits.pullback.snd _ _)) ∨
            (∃ e : AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback
                (Limits.pullback.snd f (T.fromSpecResidueField (f (Limits.pullback.fst f s w))))
                (Spec.map (CommRingCat.ofHom (algebraMap
                  (T.residueField (f (Limits.pullback.fst f s w))) K)))).presheaf.stalk x'))
                ((Limits.pullback
                (Limits.pullback.snd f (T.fromSpecResidueField (f (Limits.pullback.fst f s w))))
                (Spec.map (CommRingCat.ofHom (algebraMap
                  (T.residueField (f (Limits.pullback.fst f s w))) K)))).presheaf.stalk x') ≃+*
                (MvPowerSeries (Fin 2) K ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1}),
              e.toRingHom.comp ((algebraMap _ _).comp
                ((Scheme.ΓSpecIso (.of K)).inv ≫ (Limits.pullback.snd
                  (Limits.pullback.snd f (T.fromSpecResidueField (f (Limits.pullback.fst f s w))))
                  (Spec.map (CommRingCat.ofHom (algebraMap
                    (T.residueField (f (Limits.pullback.fst f s w))) K)))).appTop ≫
                  (Limits.pullback
                    (Limits.pullback.snd f (T.fromSpecResidueField (f (Limits.pullback.fst f s w))))
                    (Spec.map (CommRingCat.ofHom (algebraMap
                      (T.residueField (f (Limits.pullback.fst f s w))) K)))).presheaf.germ ⊤ x'
                    trivial).hom) = (Ideal.Quotient.mk _).comp MvPowerSeries.C)) := by
        rintro x' rfl
        exact Or.inr ⟨e', he'⟩
      exact wcpa_dj_ssp_bw_ns_transport K Φ (Limits.pullback.snd f s) _ hΦ w (key _ hΦw)

end GRWTSK.FiniteFieldWeil
