/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.NumberField.TotallyRealSignApproximation
import GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity

/-!
# Totally real rescaling interface for CM polarization

The archimedean sign problem reduces to the maximal totally real fixed field.
This file isolates the exact remaining identification: representatives of CM
conjugate Galois pairs must match the real embeddings of a totally real field
embedded in E.

Once that interface is supplied, finite totally-real weak approximation
constructs a conjugation-fixed rescaling factor with the required sign row,
and hence constructs a SignControlledXi.

No Riemann criterion or abelian-variety realization occurs here.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling

open CMNumberFieldIndex
open CMTracePolarization
open CMArchimedeanPositivity
open GRWTSK.NumberTheory.TotallyRealSignApproximation

noncomputable section

variable (E F : Type*)
  [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
  [Field F] [NumberField F] [NumberField.IsTotallyReal F]

/-- Exact interface between a totally real fixed-field model and the
conjugate-pair indexing of a Galois CM field.

The interface deliberately records only what the sign-selection proof uses.
Instantiating it canonically with E^+ is a separate theorem. -/
structure RealRescalingInterface where
  include : F →ₐ[ℚ] E
  fixed : ∀ x : F, galoisComplexConj E (include x) = include x
  order : EmbeddingOrder F (Module.finrank ℚ F)
  representative : Fin (Module.finrank ℚ F) → (E ≃ₐ[ℚ] E)
  covers : ∀ σ : E ≃ₐ[ℚ] E,
    ∃ i, σ = representative i ∨
      σ = (centralInvolution E).conj (representative i)
  real_eval : ∀ (i : Fin (Module.finrank ℚ F)) (x : F),
    (complexEmbeddingAt E (representative i) (include x)).re =
      orderedRealEmbedding order i x

/-- Pull the even CM rescaling row back to the selected representatives of
the totally real embedding coordinates. -/
def requiredSignPattern
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    SignPattern (Module.finrank ℚ F) where
  value i := (requiredRescalingSign E v P).value (R.representative i)
  isSign i := (requiredRescalingSign E v P).isSign _

/-- The included totally real element is fixed by CM conjugation. -/
theorem included_fixed
    (R : RealRescalingInterface E F) (x : F) :
    galoisComplexConj E (R.include x) = R.include x :=
  R.fixed x

/-- Finite weak approximation on the totally real side constructs a fixed
CM-field element realizing the required even rescaling sign row on every
Galois label. -/
theorem exists_fixedElement_realizesRequiredSign
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    ∃ f : E,
      galoisComplexConj E f = f ∧ f ≠ 0 ∧
        FixedElementRealizesRequiredSign E v P f := by
  let s := requiredSignPattern E F R v P
  obtain ⟨a, ha⟩ :=
    exists_realEmbeddingVector_realizesSigns
      (Module.finBasis ℚ F) R.order s
  have hn : 0 < Module.finrank ℚ F := Module.finrank_pos
  letI : Nonempty (Fin (Module.finrank ℚ F)) := ⟨⟨0, hn⟩⟩
  have ha0 : a ≠ 0 :=
    ne_zero_of_realizesSigns R.order s ha
  have hf0 : R.include a ≠ 0 :=
    (map_ne_zero R.include.toRingHom).mpr ha0
  refine ⟨R.include a, R.fixed a, hf0, ?_⟩
  intro σ
  obtain ⟨i, hσ | hσ⟩ := R.covers σ
  · subst σ
    constructor
    · intro hs
      have hp := (ha i).1 hs
      rw [R.real_eval]
      exact hp
    · intro hs
      have hn' := (ha i).2 hs
      rw [R.real_eval]
      exact hn'
  · subst σ
    have hrep :
        ((requiredRescalingSign E v P).value (R.representative i) = 1 →
          0 < (complexEmbeddingAt E (R.representative i) (R.include a)).re) ∧
        ((requiredRescalingSign E v P).value (R.representative i) = -1 →
          (complexEmbeddingAt E (R.representative i) (R.include a)).re < 0) := by
      constructor
      · intro hs
        have hp := (ha i).1 hs
        rw [R.real_eval]
        exact hp
      · intro hs
        have hn' := (ha i).2 hs
        rw [R.real_eval]
        exact hn'
    have hval := requiredRescalingSign_conj E v P (R.representative i)
    have hemb := complexEmbeddingAt_conj_eq_of_fixed E (R.fixed a)
      (R.representative i)
    constructor
    · intro hs
      rw [hval] at hs
      have hp := hrep.1 hs
      simpa [hemb] using hp
    · intro hs
      rw [hval] at hs
      have hn' := hrep.2 hs
      simpa [hemb] using hn'

/-- The real-rescaling interface plus finite weak approximation produces an
actual sign-controlled CM polarization parameter. -/
theorem exists_signControlledXi
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    ∃ X : SignControlledXi E v, True := by
  obtain ⟨f, hf, hf0, hreal⟩ :=
    exists_fixedElement_realizesRequiredSign E F R v P
  have hsign : FixedRescalingSignCondition E v P f :=
    fixedRescalingSignCondition_of_realizesRequiredSign E v P f hreal
  exact ⟨signControlledXiOfFixedRescaling E v P f hf hf0 hsign, trivial⟩

/-- Cleaner existence formulation. -/
theorem nonempty_signControlledXi
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    Nonempty (SignControlledXi E v) := by
  obtain ⟨X, _⟩ := exists_signControlledXi E F R v P
  exact ⟨X⟩


/-!
## Canonical maximal-real-subfield instantiation

For a Galois CM number field, Mathlib's maximal real subfield \`E⁺\` is
quadratic-fixed by the canonical complex conjugation.  We order its rational
complex embeddings, lift each one to \`E\), and use Galois normality to express
the lift relative to the fixed base complex embedding.  Two rational
automorphisms of \`E\` agreeing on \`E⁺\` differ by an \`E⁺\`-automorphism;
the latter group has exactly two elements, identity and complex conjugation.

This supplies the previously abstract \`RealRescalingInterface\` canonically
from \`E⁺\`.  No integral lattice, Riemann criterion, or four-factor
algebraicity theorem is used here.
-/

section CanonicalMaximalRealSubfield

local notation "E⁺" => NumberField.maximalRealSubfield E

/-- The canonical inclusion of the maximal totally real subfield. -/
noncomputable def maximalRealSubfieldInclude : E⁺ →ₐ[ℚ] E :=
  RingHom.toRatAlgHom (algebraMap E⁺ E)

@[simp]
theorem maximalRealSubfieldInclude_apply (x : E⁺) :
    maximalRealSubfieldInclude E x = algebraMap E⁺ E x := rfl

/-- The maximal-real-subfield inclusion is fixed by canonical CM conjugation. -/
theorem maximalRealSubfieldInclude_fixed (x : E⁺) :
    galoisComplexConj E (maximalRealSubfieldInclude E x) =
      maximalRealSubfieldInclude E x := by
  change
    NumberField.IsCMField.complexConj E (algebraMap E⁺ E x) =
      algebraMap E⁺ E x
  exact NumberField.IsCMField.complexConj_apply_eq_self E x

/-- Lift one rational embedding of \`E⁺\` to a complex embedding of \`E\`. -/
noncomputable def liftedRealEmbedding
    (τ : E⁺ →ₐ[ℚ] ℂ) : E →+* ℂ :=
  NumberField.ComplexEmbedding.lift E τ.toRingHom

@[simp]
theorem liftedRealEmbedding_algebraMap
    (τ : E⁺ →ₐ[ℚ] ℂ) (x : E⁺) :
    liftedRealEmbedding E τ (algebraMap E⁺ E x) = τ x := by
  exact NumberField.ComplexEmbedding.lift_algebraMap_apply E τ.toRingHom x

/-- Galois normality expresses every chosen lift through the fixed base
complex embedding. -/
theorem exists_galoisLiftOfRealEmbedding
    (τ : E⁺ →ₐ[ℚ] ℂ) :
    ∃ σ : E ≃ₐ[ℚ] E,
      (baseComplexEmbedding E).comp σ.symm.toRingHom =
        liftedRealEmbedding E τ := by
  apply NumberField.ComplexEmbedding.exists_comp_symm_eq_of_comp_eq
      (k := ℚ) (baseComplexEmbedding E) (liftedRealEmbedding E τ)
  ext q
  simp [liftedRealEmbedding]

/-- A selected rational Galois automorphism whose base complex embedding
extends the specified embedding of \`E⁺\`. -/
noncomputable def galoisLiftOfRealEmbedding
    (τ : E⁺ →ₐ[ℚ] ℂ) : E ≃ₐ[ℚ] E :=
  Classical.choose (exists_galoisLiftOfRealEmbedding E τ)

/-- Representative of the CM-conjugate pair lying above one real embedding.
The symmetry is chosen so that \`baseComplexEmbedding ∘ representative\` is
the selected lifted complex embedding. -/
noncomputable def representativeOfRealEmbedding
    (τ : E⁺ →ₐ[ℚ] ℂ) : E ≃ₐ[ℚ] E :=
  (galoisLiftOfRealEmbedding E τ).symm

theorem complexEmbeddingAt_representativeOfRealEmbedding
    (τ : E⁺ →ₐ[ℚ] ℂ) :
    complexEmbeddingAt E (representativeOfRealEmbedding E τ) =
      liftedRealEmbedding E τ := by
  simpa [representativeOfRealEmbedding, galoisLiftOfRealEmbedding,
    complexEmbeddingAt] using
    (Classical.choose_spec (exists_galoisLiftOfRealEmbedding E τ))

/-- The automorphism group over the maximal real subfield has exactly the two
expected elements. -/
theorem maximalRealSubfieldAlgEquiv_eq_one_or_complexConj
    (τ : E ≃ₐ[E⁺] E) :
    τ = 1 ∨ τ = NumberField.IsCMField.complexConj E := by
  by_cases hτ : τ = 1
  · exact Or.inl hτ
  · right
    have hcard : Nat.card (E ≃ₐ[E⁺] E) = 2 :=
      (IsQuadraticExtension.finrank_eq_two E⁺ E) ▸
        IsGalois.card_aut_eq_finrank E⁺ E
    rw [Nat.card_eq_two_iff' 1] at hcard
    exact ExistsUnique.unique hcard hτ
      (NumberField.IsCMField.complexConj_ne_one E)

/-- If two rational Galois automorphisms agree pointwise on \`E⁺\`, then they
are equal or differ by canonical CM conjugation. -/
theorem eq_or_eq_conj_of_eq_on_maximalRealSubfield
    (σ ρ : E ≃ₐ[ℚ] E)
    (h :
      ∀ x : E⁺,
        σ (algebraMap E⁺ E x) = ρ (algebraMap E⁺ E x)) :
    σ = ρ ∨ σ = (centralInvolution E).conj ρ := by
  let δQ : E ≃ₐ[ℚ] E := ρ.symm * σ
  let δR : E ≃ₐ[E⁺] E :=
    { δQ.toRingEquiv with
      commutes' := by
        intro x
        change ρ.symm (σ (algebraMap E⁺ E x)) = algebraMap E⁺ E x
        rw [h x]
        simp }
  rcases maximalRealSubfieldAlgEquiv_eq_one_or_complexConj E δR with hδ | hδ
  · left
    ext x
    have hx := DFunLike.congr_fun hδ x
    have hx' : ρ.symm (σ x) = x := by
      simpa [δR, δQ] using hx
    calc
      σ x = ρ (ρ.symm (σ x)) := by simp
      _ = ρ x := by rw [hx']
  · right
    ext x
    have hx := DFunLike.congr_fun hδ x
    have hx' :
        ρ.symm (σ x) = galoisComplexConj E x := by
      simpa [δR, δQ, galoisComplexConj] using hx
    calc
      σ x = ρ (ρ.symm (σ x)) := by simp
      _ = ρ (galoisComplexConj E x) := by rw [hx']
      _ = galoisComplexConj E (ρ x) :=
        (galoisComplexConj_commute_apply E ρ x).symm
      _ = ((centralInvolution E).conj ρ) x := rfl

/-- Restrict one Galois-labelled complex embedding to the maximal real
subfield, retaining its rational-algebra structure. -/
noncomputable def maximalRealRestriction
    (σ : E ≃ₐ[ℚ] E) : E⁺ →ₐ[ℚ] ℂ :=
  RingHom.toRatAlgHom
    ((complexEmbeddingAt E σ).comp (algebraMap E⁺ E))

@[simp]
theorem maximalRealRestriction_apply
    (σ : E ≃ₐ[ℚ] E) (x : E⁺) :
    maximalRealRestriction E σ x =
      complexEmbeddingAt E σ (algebraMap E⁺ E x) := rfl

/-- Representatives obtained by lifting the ordered embeddings of \`E⁺\`
cover every rational Galois label up to CM conjugation. -/
theorem canonicalRepresentatives_cover
    (σ : E ≃ₐ[ℚ] E) :
    ∃ i : Fin (Module.finrank ℚ E⁺),
      σ =
          representativeOfRealEmbedding E
            (canonicalEmbeddingOrder (K := E⁺) i) ∨
        σ =
          (centralInvolution E).conj
            (representativeOfRealEmbedding E
              (canonicalEmbeddingOrder (K := E⁺) i)) := by
  let order : EmbeddingOrder E⁺ (Module.finrank ℚ E⁺) :=
    canonicalEmbeddingOrder (K := E⁺)
  let τ : E⁺ →ₐ[ℚ] ℂ := maximalRealRestriction E σ
  let i : Fin (Module.finrank ℚ E⁺) := order.symm τ
  refine ⟨i, ?_⟩
  apply eq_or_eq_conj_of_eq_on_maximalRealSubfield E
  intro x
  apply (baseComplexEmbedding E).injective
  change
    complexEmbeddingAt E σ (algebraMap E⁺ E x) =
      complexEmbeddingAt E
        (representativeOfRealEmbedding E
          (canonicalEmbeddingOrder (K := E⁺) i))
        (algebraMap E⁺ E x)
  have hi : order i = τ := Equiv.apply_symm_apply order τ
  calc
    complexEmbeddingAt E σ (algebraMap E⁺ E x) = τ x := by
      rfl
    _ = order i x := by
      exact DFunLike.congr_fun hi.symm x
    _ = liftedRealEmbedding E (order i) (algebraMap E⁺ E x) := by
      symm
      exact liftedRealEmbedding_algebraMap E (order i) x
    _ =
        complexEmbeddingAt E
          (representativeOfRealEmbedding E
            (canonicalEmbeddingOrder (K := E⁺) i))
          (algebraMap E⁺ E x) := by
      simpa [order] using
        (DFunLike.congr_fun
          (complexEmbeddingAt_representativeOfRealEmbedding
            E (order i))
          (algebraMap E⁺ E x)).symm

/-- Canonical realization of the abstract real-rescaling interface by the
maximal totally real subfield \`E⁺\`. -/
noncomputable def canonicalMaximalRealRescalingInterface :
    RealRescalingInterface E E⁺ where
  include := maximalRealSubfieldInclude E
  fixed := maximalRealSubfieldInclude_fixed E
  order := canonicalEmbeddingOrder (K := E⁺)
  representative i :=
    representativeOfRealEmbedding E
      (canonicalEmbeddingOrder (K := E⁺) i)
  covers := canonicalRepresentatives_cover E
  real_eval := by
    intro i x
    let order : EmbeddingOrder E⁺ (Module.finrank ℚ E⁺) :=
      canonicalEmbeddingOrder (K := E⁺)
    have hcomplex :
        complexEmbeddingAt E
            (representativeOfRealEmbedding E (order i))
            (maximalRealSubfieldInclude E x) =
          order i x := by
      calc
        complexEmbeddingAt E
            (representativeOfRealEmbedding E (order i))
            (maximalRealSubfieldInclude E x) =
            liftedRealEmbedding E (order i)
              (maximalRealSubfieldInclude E x) := by
                exact DFunLike.congr_fun
                  (complexEmbeddingAt_representativeOfRealEmbedding
                    E (order i))
                  (maximalRealSubfieldInclude E x)
        _ = order i x := by
          simpa using liftedRealEmbedding_algebraMap E (order i) x
    calc
      (complexEmbeddingAt E
          (representativeOfRealEmbedding E
            (canonicalEmbeddingOrder (K := E⁺) i))
          (maximalRealSubfieldInclude E x)).re =
          (order i x).re := by
            simpa [order] using congrArg Complex.re hcomplex
      _ =
          orderedRealEmbedding
            (canonicalEmbeddingOrder (K := E⁺)) i x := by
        have h :=
          congrArg Complex.re
            (orderedRealEmbedding_complex
              (canonicalEmbeddingOrder (K := E⁺)) i x)
        simpa using h.symm

/-- Canonical \`E⁺\` instantiation discharges the last sign-selection premise
for an arbitrary anti-invariant seed. -/
theorem nonempty_signControlledXi_canonical_of_seed
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    Nonempty (SignControlledXi E v) :=
  nonempty_signControlledXi E E⁺
    (canonicalMaximalRealRescalingInterface E) v P

/-- In particular, every odd CM sign row on a Galois CM number field admits a
locally constructed sign-controlled anti-invariant \`xi\`.  The seed is the
local nonzero anti-invariant datum from \`someTracePolarizationData\`. -/
theorem nonempty_signControlledXi_canonical
    (v : OddSignRow E) :
    Nonempty (SignControlledXi E v) :=
  nonempty_signControlledXi_canonical_of_seed E v
    (someTracePolarizationData E)

end CanonicalMaximalRealSubfield

end

end GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling
