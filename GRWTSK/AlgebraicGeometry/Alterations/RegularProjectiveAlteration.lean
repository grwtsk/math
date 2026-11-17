import GRWTSK.AlgebraicGeometry.Alterations.StrictNormalCrossings

/-!
# Regular projective alterations and transfer to a finite extension field

Source candidate split from `weil_conjecture_main.lean`, lines 50944–51399.
See the adjacent `RegularProjectiveAlteration.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dejong_regular_projective_alteration : ∀ (F : Type u) [Finite F] [Field F]
    (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom] [IsProper X.hom] (d : ℕ)
    [SmoothOfRelativeDimension d X.hom],
    ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (sZ : Z ⟶ Spec (.of F)) (_ : IsProper sZ)
      (_ : ∀ z : Z, IsRegularLocalRing (Z.presheaf.stalk z)) (φ : Z ⟶ X.left),
      φ ≫ X.hom = sZ ∧ Surjective φ ∧ (∃ V : X.left.Opens, V ≠ ⊥ ∧ IsFinite (φ ∣_ V)) ∧
      ∃ (N : ℕ) (jZ : Z ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F)
          MvPolynomial.gradedAlgebra),
        IsClosedImmersion jZ ∧
        jZ ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F)
          MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
            (algebraMap F ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F 0))) = sZ :=
by
  intro F _ _ X _ _ d _
  classical

  haveI hirr : IrreducibleSpace X.left :=
    GeometricallyIrreducible.geometrically_irreducibleSpace (𝟙 (Spec (.of F))) (𝟙 X.left) X.hom
      IsPullback.of_id_fst
  haveI hstred : ∀ x : X.left, _root_.IsReduced (X.left.presheaf.stalk x) := fun x => by
    haveI := wcpa_smooth_stalk_isDomain F X.left X.hom d x
    infer_instance
  haveI hred : IsReduced X.left := isReduced_of_isReduced_stalk X.left
  haveI hint : AlgebraicGeometry.IsIntegral X.left :=
    isIntegral_of_irreducibleSpace_of_isReduced X.left

  obtain ⟨n, hn⟩ := wcpa_dj_dim_finite F X.left X.hom

  have hQ : ∀ n : ℕ, ∀ (k : Type u) [Field k] [Finite k] (Y : Scheme.{u})
      [AlgebraicGeometry.IsIntegral Y] (sY : Y ⟶ Spec (.of k)) [IsProper sY],
      topologicalKrullDim Y = ((n : ℕ) : WithBot ℕ∞) →
      ∀ E : Set Y, IsClosed E → E ≠ Set.univ → wcpaDjSNCAlteration k Y sY E := by
    intro n
    induction n with
    | zero =>
      intro k _ _ Y _ sY _ hY E hE hEne
      exact wcpa_dj_base_case k Y sY hY E hE hEne
    | succ n ih =>
      intro k _ _ Y _ sY _ hY E hE hEne

      obtain ⟨X₀, P₀, iX₀, iP₀, α₀, sP₀, f₀, hf₀, hX₀, hP₀, hα₀p, hα₀s, hα₀f, hP₀d,
        U₀, hU₀, hU₀sm, hU₀gc⟩ := wcpa_dj_curve_fibration k Y sY n hY
      haveI := iX₀
      haveI := iP₀
      obtain ⟨X₁, P, iX₁, iP, α, sP, f, hfα, hX₁proj, hPproj, hαprop, hαsurj, hαfin, hPdim,
        U, hU, hUsm, hUgc, hGS⟩ := wcpa_dj_cf_gs_upgrade k Y sY n hY X₀ P₀ α₀ sP₀ f₀ hf₀ hX₀ hP₀
          hα₀p hα₀s hα₀f hP₀d U₀ hU₀ hU₀sm hU₀gc
      haveI := iX₁
      haveI := iP

      have hTcl : IsClosed (⇑α ⁻¹' E) := hE.preimage α.continuous
      have hTne : ⇑α ⁻¹' E ≠ Set.univ := by
        intro hT
        apply hEne
        apply Set.eq_univ_of_forall
        intro x
        haveI := hαsurj
        obtain ⟨y, hy⟩ := α.surjective x
        have hy' : y ∈ ⇑α ⁻¹' E := by rw [hT]; exact Set.mem_univ y
        rw [← hy]
        exact hy'

      have hfproj : wcpaDjIsProjOver k (f ≫ sP) := by rw [hfα]; exact hX₁proj
      obtain ⟨P', iP', sP', β₀, hβ₀, hP'proj, hβ₀prop, hβ₀surj, hβ₀fin, C, iC, g, h, hgh, hCproj,
        hss, hhprop, hhsurj, hhfin, U', m, τ, hU'ne, hU'sm, hU'gc, hsec, hT⟩ :=
        wcpa_dj_semistable_reduction k X₁ P sP f hfproj hPproj U hU hUsm hUgc hGS n hPdim ih
          (⇑α ⁻¹' E) hTcl hTne
      haveI := iP'
      haveI := iC

      haveI hsPprop : IsProper sP := wcpa_dj_proj_proper k sP hPproj
      haveI hsP'prop : IsProper sP' := wcpa_dj_proj_proper k sP' hP'proj
      have hP'dim : topologicalKrullDim P' = ((n : ℕ) : WithBot ℕ∞) :=
        (wcpa_dj_alteration_dim_eq k P' P sP' sP β₀ hβ₀ hβ₀surj hβ₀fin).trans hPdim

      have hE'cl : IsClosed ((U' : Set P')ᶜ) := U'.isOpen.isClosed_compl
      have hE'ne : (U' : Set P')ᶜ ≠ Set.univ := by
        intro h0
        obtain ⟨p, hp⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty U').mp hU'ne
        have hp' : p ∈ (U' : Set P')ᶜ := by rw [h0]; exact Set.mem_univ p
        exact hp' hp
      obtain ⟨P'', iP'', sP'', β, hβ, hsP''prop, hreg'', hβprop, hβsurj, hβfin, hP''proj,
        D, hD, hDE⟩ := ih k P' sP' hP'dim _ hE'cl hE'ne
      haveI := iP''

      obtain ⟨Z, iZ, sZ, ψ, hψ, hsZprop, hregZ, hψprop, hψsurj, hψfin, hZproj, DZ, hDZ, hψD⟩ :=
        wcpa_dj_toroidal_resolution k P' P'' C sP' sP'' β g m τ U' D hβ hP'proj hP''proj hCproj
          hss hsec hU'ne hU'sm hU'gc hreg'' hβprop hβsurj hβfin hD hDE

      obtain ⟨hhαsurj, hhαfin⟩ := wcpa_dj_alteration_comp α h hαprop hαsurj hhsurj hαfin hhfin
      have hhαprop : IsProper (h ≫ α) := by
        haveI := hhprop
        haveI := hαprop
        infer_instance
      obtain ⟨hφsurj, hφfin⟩ :=
        wcpa_dj_alteration_comp (h ≫ α) ψ hhαprop hhαsurj hψsurj hhαfin hψfin
      have hφprop : IsProper (ψ ≫ h ≫ α) := by
        haveI := hψprop
        haveI := hhαprop
        infer_instance
      refine ⟨Z, iZ, sZ, ψ ≫ h ≫ α, ?_, hsZprop, hregZ, hφprop, hφsurj, hφfin, hZproj, DZ, hDZ, ?_⟩
      · rw [Category.assoc, Category.assoc, ← hfα, ← Category.assoc h f sP, hgh, Category.assoc,
          hβ₀, hψ]
      · intro z hz
        have hz' : ψ z ∈ ⇑h ⁻¹' (⇑α ⁻¹' E) := by
          rw [Set.mem_preimage, Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at hz
          exact hz
        exact hψD (hT hz')

  have hne : (∅ : Set X.left) ≠ Set.univ := by
    intro h0
    obtain ⟨x⟩ := (inferInstance : Nonempty X.left)
    have hx : x ∈ (∅ : Set X.left) := by rw [h0]; exact Set.mem_univ x
    exact hx
  obtain ⟨Z, iZ, sZ, φ, hφ, hsZ, hreg, _, hsurj, hfin, ⟨N, jZ, hjZ, hjZeq⟩, _⟩ :=
    hQ n F X.left X.hom hn ∅ isClosed_empty hne
  exact ⟨Z, iZ, sZ, hsZ, hreg, φ, hφ, hsurj, hfin, N, jZ, hjZ, hjZeq⟩

theorem wcpa_smooth_descend_finite_separable : ∀ (F F' : Type u) [Field F] [Finite F] [Field F']
    [Algebra F F'] [FiniteDimensional F F'] (Z : Scheme.{u}) (t : Z ⟶ Spec (.of F')) (d : ℕ),
    SmoothOfRelativeDimension d (t ≫ Spec.map (CommRingCat.ofHom (algebraMap F F'))) →
    SmoothOfRelativeDimension d t :=
by
  intro F F' _ _ _ _ _ Z t d hf
  set g := Spec.map (CommRingCat.ofHom (algebraMap F F')) with hg
  haveI : FormallyUnramified g := HasRingHomProperty.Spec_iff.mpr (by
    rw [CommRingCat.hom_ofHom]
    exact RingHom.formallyUnramified_algebraMap.mpr (Algebra.FormallyUnramified.of_isSeparable F F'))
  haveI : LocallyOfFiniteType g := HasRingHomProperty.Spec_iff.mpr (by
    rw [CommRingCat.hom_ofHom]
    exact RingHom.finiteType_algebraMap.mpr inferInstance)
  haveI hγ : IsOpenImmersion (Limits.pullback.lift (𝟙 Z) t (by simp) :
      Z ⟶ Limits.pullback (t ≫ g) g) :=
    MorphismProperty.of_isPullback (P := @IsOpenImmersion)
      (Limits.pullback_lift_diagonal_isPullback t g)
      (FormallyUnramified.isOpenImmersion_diagonal g)
  haveI : SmoothOfRelativeDimension d (Limits.pullback.snd (t ≫ g) g) :=
    MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension d)
      (IsPullback.of_hasPullback _ _) hf
  have key := smoothOfRelativeDimension_comp 0 d
    (Limits.pullback.lift (𝟙 Z) t (by simp) : Z ⟶ Limits.pullback (t ≫ g) g)
    (Limits.pullback.snd (t ≫ g) g)
  rw [Limits.pullback.lift_snd, Nat.zero_add] at key
  exact key

theorem wcpa_lift_surjective : ∀ (F F' : Type u) [Field F] [Field F'] [Algebra F F']
    [FiniteDimensional F F'] (X : Over (Spec (.of F))) [GeometricallyIrreducible X.hom]
    [IsProper X.hom] (Z : Scheme.{u}) [IrreducibleSpace Z] (t : Z ⟶ Spec (.of F')) [IsProper t]
    (φ : Z ⟶ X.left) [Surjective φ]
    (hφ : φ ≫ X.hom = t ≫ Spec.map (CommRingCat.ofHom (algebraMap F F'))),
    Surjective (Limits.pullback.lift φ t hφ) :=
by
  intro F F' _ _ _ _ X _ _ Z _ t _ φ _ hφ
  set g := Spec.map (CommRingCat.ofHom (algebraMap F F')) with hg
  set ψ := Limits.pullback.lift φ t hφ with hψ
  haveI hgfin : IsFinite g :=
    (IsFinite.SpecMap_iff (CommRingCat.ofHom (algebraMap F F'))).mpr
      (RingHom.finite_algebraMap.mpr inferInstance)
  haveI hfst : IsFinite (Limits.pullback.fst X.hom g) :=
    MorphismProperty.of_isPullback (P := @IsFinite) (IsPullback.of_hasPullback X.hom g).flip hgfin
  haveI hirr : IrreducibleSpace (Limits.pullback X.hom g : Scheme.{u}) :=
    GeometricallyIrreducible.geometrically_irreducibleSpace (f := X.hom) g
      (Limits.pullback.fst X.hom g) (Limits.pullback.snd X.hom g)
      (IsPullback.of_hasPullback X.hom g)
  haveI : IsProper (ψ ≫ Limits.pullback.snd X.hom g) := by
    rw [hψ, Limits.pullback.lift_snd]; infer_instance
  haveI : IsProper ψ := IsProper.of_comp ψ (Limits.pullback.snd X.hom g)
  have hclosed : IsClosed (Set.range ψ) := ψ.isClosedMap.isClosed_range
  have hfib : ∀ a b : (Limits.pullback X.hom g : Scheme.{u}), a ⤳ b →
      Limits.pullback.fst X.hom g a = Limits.pullback.fst X.hom g b → a = b := by
    intro a b hab he
    haveI : DiscreteTopology ↑(Limits.pullback.fst X.hom g ⁻¹'
        {Limits.pullback.fst X.hom g b}) :=
      ((Limits.pullback.fst X.hom g).fiberHomeo (Limits.pullback.fst X.hom g b)).discreteTopology
    let a' : ↑(Limits.pullback.fst X.hom g ⁻¹' {Limits.pullback.fst X.hom g b}) := ⟨a, he⟩
    let b' : ↑(Limits.pullback.fst X.hom g ⁻¹' {Limits.pullback.fst X.hom g b}) := ⟨b, rfl⟩
    have h1 : a' ⤳ b' := Topology.IsInducing.subtypeVal.specializes_iff.mp hab
    exact congrArg Subtype.val h1.eq
  refine ⟨fun y => ?_⟩
  obtain ⟨z, hz⟩ := φ.surjective
    (Limits.pullback.fst X.hom g (genericPoint (Limits.pullback X.hom g : Scheme.{u})))
  have hz' : Limits.pullback.fst X.hom g (ψ z) =
      Limits.pullback.fst X.hom g (genericPoint (Limits.pullback X.hom g : Scheme.{u})) := by
    rw [← Scheme.Hom.comp_apply, hψ, Limits.pullback.lift_fst]; exact hz
  have hη : genericPoint (Limits.pullback X.hom g : Scheme.{u}) = ψ z :=
    hfib _ (ψ z) (genericPoint_specializes _) hz'.symm
  exact (genericPoint_specializes y).mem_closed hclosed ⟨z, hη.symm⟩

theorem wcpa_smooth_dim_eq : ∀ (F : Type u) [Field F] [PerfectField F] (X : Over (Spec (.of F)))
    [GeometricallyIrreducible X.hom] (d : ℕ) [SmoothOfRelativeDimension d X.hom]
    (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] (sZ : Z ⟶ Spec (.of F)) (e : ℕ)
    [SmoothOfRelativeDimension e sZ] (φ : Z ⟶ X.left), φ ≫ X.hom = sZ → Surjective φ →
    ∀ V : X.left.Opens, V ≠ ⊥ → IsFinite (φ ∣_ V) → e = d :=
by
  intro F _ _ X _ d _ Z _ sZ e _ φ hφ hsurj V hV hfin
  subst hφ
  haveI := hsurj
  classical

  have chart : ∀ (W : Scheme.{u}) (s : W ⟶ Spec (.of F)) (n : ℕ) [SmoothOfRelativeDimension n s]
      (w : W) (O : W.Opens), w ∈ O → ∃ U : W.Opens, IsAffineOpen U ∧ w ∈ U ∧ U ≤ O ∧
      RingHom.IsStandardSmoothOfRelativeDimension n ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        s.appTop ≫ W.presheaf.map (homOfLE (le_top : U ≤ ⊤)).op).hom := by
    intro W s n _ w O hwO
    obtain ⟨U₀, hU₀, V₀, hV₀, hwV₀, e₀, hst⟩ :=
      SmoothOfRelativeDimension.exists_isStandardSmoothOfRelativeDimension (n := n) (f := s) w
    have hU₀top : U₀ = ⊤ := by
      have hsw : s w ∈ U₀ := e₀ hwV₀
      exact eq_top_iff.mpr (fun y _ => by rwa [Subsingleton.elim y (s w)])
    subst hU₀top
    obtain ⟨f, hfle, hwf⟩ := hV₀.exists_basicOpen_le (V := V₀ ⊓ O) ⟨w, ⟨hwV₀, hwO⟩⟩ hwV₀
    have hloc : RingHom.IsStandardSmoothOfRelativeDimension 0
        (W.presheaf.map (homOfLE (W.basicOpen_le f)).op).hom := by
      haveI := hV₀.isLocalization_basicOpen f
      exact Algebra.IsStandardSmoothOfRelativeDimension.localization_away f
    have hiso : RingHom.IsStandardSmoothOfRelativeDimension 0
        (Scheme.ΓSpecIso (CommRingCat.of F)).inv.hom :=
      RingHom.IsStandardSmoothOfRelativeDimension.equiv
        (Scheme.ΓSpecIso (CommRingCat.of F)).symm.commRingCatIsoToRingEquiv
    have hcomp := hloc.comp (hst.comp hiso)
    have hn : 0 + (n + 0) = n := by omega
    rw [hn] at hcomp
    refine ⟨W.basicOpen f, hV₀.basicOpen f, hwf, hfle.trans inf_le_right, ?_⟩
    have heq : (W.presheaf.map (homOfLE (W.basicOpen_le f)).op).hom.comp
        ((s.appLE ⊤ V₀ e₀).hom.comp (Scheme.ΓSpecIso (CommRingCat.of F)).inv.hom) =
        ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫ s.appTop ≫
          W.presheaf.map (homOfLE (le_top : W.basicOpen f ≤ ⊤)).op).hom := by
      rw [← CommRingCat.hom_comp, ← CommRingCat.hom_comp]
      congr 1
      simp only [Scheme.Hom.appLE, Category.assoc, ← Functor.map_comp]
      rfl
    rw [← heq]
    exact hcomp

  have trdeg_eq : ∀ (A B : Type u) [CommRing A] [IsDomain A] [CommRing B] [IsDomain B]
      [Algebra F A] [Algebra F B] [Algebra A B] [IsScalarTower F A B] [FaithfulSMul A B]
      [Algebra.IsAlgebraic A B], Algebra.trdeg F A = Algebra.trdeg F B := by
    intro A B _ _ _ _ _ _ _ _ _ _
    haveI : FaithfulSMul F A :=
      (faithfulSMul_iff_algebraMap_injective F A).mpr (algebraMap F A).injective
    rw [← trdeg_add_eq F A (A := B), (trdeg_eq_zero_iff (R := A) (A := B)).mpr inferInstance,
      add_zero]

  haveI : ∀ x : X.left, _root_.IsReduced (X.left.presheaf.stalk x) := fun x => by
    haveI := wcpa_smooth_stalk_isDomain F X.left X.hom d x
    exact isReduced_of_noZeroDivisors
  haveI : IsReduced X.left := isReduced_of_isReduced_stalk X.left
  haveI : IrreducibleSpace X.left := by
    haveI := irreducibleSpace_of_isIntegral Z
    exact Function.Surjective.irreducibleSpace φ.continuous φ.surjective
  haveI : IsIntegral X.left := isIntegral_of_irreducibleSpace_of_isReduced X.left

  obtain ⟨x, hxV⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty V).mp hV
  obtain ⟨U, hUaff, hxU, hUV, hUsm⟩ := chart X.left X.hom d x V hxV
  haveI : Nonempty U := ⟨⟨x, hxU⟩⟩
  haveI : IsDomain Γ(X.left, U) := IsIntegral.component_integral U
  letI algA : Algebra F Γ(X.left, U) := ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        X.hom.appTop ≫ X.left.presheaf.map (homOfLE (le_top : U ≤ ⊤)).op).hom.toAlgebra
  haveI : Algebra.IsStandardSmoothOfRelativeDimension d F Γ(X.left, U) := hUsm
  have hA : Algebra.trdeg F Γ(X.left, U) = d := wcpa_sde_trdeg_standard_smooth F Γ(X.left, U) d

  have hfinU : IsAffineOpen (φ ⁻¹ᵁ U) ∧ (φ.app U).hom.Finite := by
    have hU' : IsAffineOpen (V.ι ⁻¹ᵁ U) :=
      hUaff.preimage_of_isOpenImmersion V.ι (by rw [Scheme.Opens.opensRange_ι]; exact hUV)
    have himg : V.ι ''ᵁ (V.ι ⁻¹ᵁ U) = U := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
      exact inf_eq_right.mpr hUV
    constructor
    · have h1 : IsAffineOpen ((φ ⁻¹ᵁ V).ι ''ᵁ ((φ ∣_ V) ⁻¹ᵁ (V.ι ⁻¹ᵁ U))) :=
        (IsAffineHom.isAffine_preimage _ hU').image_of_isOpenImmersion (φ ⁻¹ᵁ V).ι
      rw [image_morphismRestrict_preimage, himg] at h1
      exact h1
    · have h1 := IsFinite.finite_app (φ ∣_ V) (V.ι ⁻¹ᵁ U) hU'
      rw [morphismRestrict_app] at h1
      have key : ∀ (W' : X.left.Opens), W' = U → (φ.app W').hom.Finite → (φ.app U).hom.Finite := by
        rintro _ rfl h
        exact h
      refine key _ himg ?_
      have hiso2 : ∀ {R S T : CommRingCat.{u}} (f : R ⟶ S) (g : S ⟶ T) [IsIso g],
          (f ≫ g).hom.Finite → f.hom.Finite := by
        intro R S T f g _ h
        have e1 : f = (f ≫ g) ≫ inv g := by simp
        rw [e1, CommRingCat.hom_comp]
        exact RingHom.Finite.comp
          (RingHom.Finite.of_surjective _ (ConcreteCategory.bijective_of_isIso (inv g)).2) h
      refine @hiso2 _ _ _ _ _ ?_ h1
      exact Functor.map_isIso _ _

  obtain ⟨z, hz⟩ := φ.surjective x
  have hzU : z ∈ φ ⁻¹ᵁ U := by rw [Scheme.Hom.mem_preimage, hz]; exact hxU
  haveI : Nonempty (φ ⁻¹ᵁ U) := ⟨⟨z, hzU⟩⟩
  haveI : IsDomain Γ(Z, φ ⁻¹ᵁ U) := IsIntegral.component_integral _

  have hinj : Function.Injective (φ.app U).hom := by
    rw [injective_iff_map_eq_zero]
    intro a ha
    rw [← basicOpen_eq_bot_iff]
    have ha' : (ConcreteCategory.hom (φ.app U)) a = 0 := ha
    have h1 : φ ⁻¹ᵁ X.left.basicOpen a = ⊥ := by
      rw [Scheme.preimage_basicOpen, ha']
      exact Scheme.basicOpen_zero _ _
    rw [eq_bot_iff]
    intro y hy
    obtain ⟨z', rfl⟩ := φ.surjective y
    have hz' : z' ∈ φ ⁻¹ᵁ X.left.basicOpen a := hy
    rw [h1] at hz'
    exact absurd hz' (by simp)

  letI algB : Algebra F Γ(Z, φ ⁻¹ᵁ U) := ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : φ ⁻¹ᵁ U ≤ ⊤)).op).hom.toAlgebra
  letI algAB : Algebra Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) := (φ.app U).hom.toAlgebra
  haveI : IsScalarTower F Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) := IsScalarTower.of_algebraMap_eq' (by
    show ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : φ ⁻¹ᵁ U ≤ ⊤)).op).hom =
      (φ.app U).hom.comp ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        X.hom.appTop ≫ X.left.presheaf.map (homOfLE (le_top : U ≤ ⊤)).op).hom
    rw [← CommRingCat.hom_comp]
    congr 1
    rw [Scheme.Hom.comp_appTop]
    simp only [Category.assoc]
    rw [Scheme.Hom.naturality]
    rfl)

  haveI : FaithfulSMul Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) :=
    (faithfulSMul_iff_algebraMap_injective _ _).mpr hinj
  haveI : Module.Finite Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) := hfinU.2
  haveI : Algebra.IsIntegral Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) := Algebra.IsIntegral.of_finite _ _
  haveI : Algebra.IsAlgebraic Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U) := Algebra.IsIntegral.isAlgebraic
  have hB : Algebra.trdeg F Γ(Z, φ ⁻¹ᵁ U) = d :=
    (trdeg_eq Γ(X.left, U) Γ(Z, φ ⁻¹ᵁ U)).symm.trans hA

  letI algK : Algebra F Z.functionField := ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫
        Z.presheaf.germ ⊤ (genericPoint Z) (by trivial)).hom.toAlgebra
  have s4 : ∀ (U₁ : Z.Opens) [Nonempty U₁], IsAffineOpen U₁ →
      @Algebra.trdeg F Γ(Z, U₁) _ _ ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : U₁ ≤ ⊤)).op).hom.toAlgebra =
      Algebra.trdeg F Z.functionField := by
    intro U₁ _ hU₁
    letI : Algebra F Γ(Z, U₁) := ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : U₁ ≤ ⊤)).op).hom.toAlgebra
    haveI := functionField_isFractionRing_of_isAffineOpen Z U₁ hU₁
    haveI : IsDomain Γ(Z, U₁) := IsIntegral.component_integral _
    haveI : IsScalarTower F Γ(Z, U₁) Z.functionField := IsScalarTower.of_algebraMap_eq' (by
      show ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫ (φ ≫ X.hom).appTop ≫
          Z.presheaf.germ ⊤ (genericPoint Z) (by trivial)).hom =
        (Z.germToFunctionField U₁).hom.comp ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
          (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : U₁ ≤ ⊤)).op).hom
      rw [← CommRingCat.hom_comp]
      congr 1
      simp only [Category.assoc, Scheme.germToFunctionField, TopCat.Presheaf.germ_res])
    haveI : FaithfulSMul Γ(Z, U₁) Z.functionField :=
      (faithfulSMul_iff_algebraMap_injective _ _).mpr (IsFractionRing.injective _ _)
    haveI : Algebra.IsAlgebraic Γ(Z, U₁) Z.functionField :=
      IsLocalization.isAlgebraic Z.functionField (nonZeroDivisors Γ(Z, U₁))
    exact trdeg_eq Γ(Z, U₁) Z.functionField

  obtain ⟨U₂, hU₂aff, hzU₂, -, hU₂sm⟩ := chart Z (φ ≫ X.hom) e z (φ ⁻¹ᵁ U) hzU
  haveI : Nonempty U₂ := ⟨⟨z, hzU₂⟩⟩
  have hE : @Algebra.trdeg F Γ(Z, U₂) _ _ ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : U₂ ≤ ⊤)).op).hom.toAlgebra = e := by
    letI : Algebra F Γ(Z, U₂) := ((Scheme.ΓSpecIso (CommRingCat.of F)).inv ≫
        (φ ≫ X.hom).appTop ≫ Z.presheaf.map (homOfLE (le_top : U₂ ≤ ⊤)).op).hom.toAlgebra
    haveI : IsDomain Γ(Z, U₂) := IsIntegral.component_integral _
    haveI : Algebra.IsStandardSmoothOfRelativeDimension e F Γ(Z, U₂) := hU₂sm
    exact wcpa_sde_trdeg_standard_smooth F Γ(Z, U₂) e
  have hfinal : (e : Cardinal.{u}) = (d : Cardinal.{u}) := by
    rw [← hE, s4 U₂ hU₂aff, ← s4 (φ ⁻¹ᵁ U) hfinU.1]
    exact hB
  exact_mod_cast hfinal

theorem wc_projective_alteration (F : Type u) [Finite F] [Field F] (X : Over (Spec (.of F)))
    [GeometricallyIrreducible X.hom] [IsProper X.hom] (d : ℕ) [SmoothOfRelativeDimension d X.hom] :
    ∃ (F' : Type u) (_ : Field F') (_ : Finite F') (_ : Algebra F F') (_ : FiniteDimensional F F')
      (Y : Over (Spec (.of F'))) (_ : GeometricallyIrreducible Y.hom) (_ : IsProper Y.hom)
      (_ : SmoothOfRelativeDimension d Y.hom)
      (π : Y.left ⟶ Limits.pullback X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F')))),
      π ≫ Limits.pullback.snd X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F'))) = Y.hom ∧
      Surjective π ∧
      (∃ V : (Limits.pullback X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F')))).Opens,
        V ≠ ⊥ ∧ IsFinite (π ∣_ V)) ∧
      ∃ (N : ℕ) (j : Y.left ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F')
          MvPolynomial.gradedAlgebra),
        IsClosedImmersion j ∧
        j ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F')
          MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
            (algebraMap F' ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) F' 0))) = Y.hom :=
by
  classical

  obtain ⟨Z, hZint, sZ, hsZ, hreg, φ, hφX, hφsurj, ⟨V, hV0, hVfin⟩, N, jZ, hjZ, hjZeq⟩ :=
    wcpa_dejong_regular_projective_alteration F X d
  haveI := hZint
  haveI := hsZ
  haveI := hφsurj

  obtain ⟨e, he⟩ := wcpa_regular_smooth F Z sZ hreg
  haveI := he
  have hed : e = d := wcpa_smooth_dim_eq F X d Z sZ e φ hφX hφsurj V hV0 hVfin
  have hsmF : SmoothOfRelativeDimension d sZ := hed ▸ he

  obtain ⟨F', iF', iAlg, iFD, t, ht, htiso⟩ := wcpa_stein_field F Z sZ
  haveI hF'fin : Finite F' := Module.finite_of_finite F

  haveI : IsProper (t ≫ Spec.map (CommRingCat.ofHom (algebraMap F F'))) := by
    rw [ht]; exact hsZ
  haveI htprop : IsProper t := IsProper.of_comp t (Spec.map (CommRingCat.ofHom (algebraMap F F')))
  haveI htsm : SmoothOfRelativeDimension d t :=
    wcpa_smooth_descend_finite_separable F F' Z t d (by rw [ht]; exact hsmF)
  haveI hZne : Nonempty Z := IsIntegral.nonempty
  haveI hgc : GeometricallyConnected t := wcpa_geom_connected_of_global_sections F' Z t htiso
  have hgi : GeometricallyIrreducible t := by
    refine ⟨?_⟩
    intro K _ y W fst snd hpb
    haveI : ConnectedSpace W := GeometricallyConnected.geometrically_connectedSpace y fst snd hpb
    haveI : SmoothOfRelativeDimension d snd :=
      MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension d) hpb htsm
    haveI : LocallyOfFiniteType snd :=
      MorphismProperty.of_isPullback (P := @LocallyOfFiniteType) hpb
        (inferInstance : LocallyOfFiniteType t)
    haveI : IsLocallyNoetherian W := LocallyOfFiniteType.isLocallyNoetherian snd
    exact wcpa_irreducible_of_connected_domain_stalks W (wcpa_smooth_stalk_isDomain K W snd d)
  have hφ : φ ≫ X.hom = t ≫ Spec.map (CommRingCat.ofHom (algebraMap F F')) := hφX.trans ht.symm
  refine ⟨F', iF', hF'fin, iAlg, iFD, Over.mk t, hgi, htprop, htsm,
    Limits.pullback.lift φ t hφ, ?_, ?_, ?_, ?_⟩
  · exact Limits.pullback.lift_snd _ _ _
  · exact wcpa_lift_surjective F F' X Z t φ hφ
  ·
    refine ⟨Limits.pullback.fst X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F'))) ⁻¹ᵁ V,
      ?_, ?_⟩
    · rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at hV0 ⊢
      obtain ⟨x, hx⟩ := hV0
      obtain ⟨w, hw⟩ :=
        (Limits.pullback.fst X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F')))).surjective x
      refine ⟨w, ?_⟩
      show w ∈ Limits.pullback.fst X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F'))) ⁻¹ᵁ V
      rw [Scheme.Hom.mem_preimage, hw]
      exact hx
    · have h1 : IsFinite ((Limits.pullback.lift φ t hφ ≫
          Limits.pullback.fst X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F')))) ∣_ V) := by
        rw [Limits.pullback.lift_fst]; exact hVfin
      rw [morphismRestrict_comp] at h1
      exact @IsFinite.of_comp _ _ _ _
        (Limits.pullback.fst X.hom (Spec.map (CommRingCat.ofHom (algebraMap F F'))) ∣_ V) h1 _
  ·
    obtain ⟨eP, heiso, heP⟩ := wcpa_proj_base_change F F' N
    have hj' := hjZeq.trans ht.symm
    haveI : IsClosedImmersion (Limits.pullback.lift jZ t hj') := by
      haveI : IsClosedImmersion (Limits.pullback.lift jZ t hj' ≫ Limits.pullback.fst _ _) := by
        rw [Limits.pullback.lift_fst]; exact hjZ
      exact IsClosedImmersion.of_comp _ (Limits.pullback.fst _ _)
    haveI := heiso
    refine ⟨N, Limits.pullback.lift jZ t hj' ≫ eP, inferInstance, ?_⟩
    rw [Category.assoc, heP]
    exact Limits.pullback.lift_snd _ _ _

end GRWTSK.FiniteFieldWeil
