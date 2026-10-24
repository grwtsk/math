/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript source:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the finite coordinate positivity consequence of the
prescribed archimedean sign profile. -/
import GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMTracePolarization
import GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMCoordinateHodge

/-!
# Archimedean CM sign-profile positivity

The manuscript chooses xi so that, for every Galois embedding label sigma,

  sign(Im sigma(xi)) = -v(sigma).

Equivalently, the real coefficient

  -(v(sigma)) * Im sigma(xi)

is strictly positive. This file packages that exact input and proves that the
resulting diagonal coordinate energy is positive definite.

This is the finite positivity calculation only. It does not prove existence
of such xi and does not identify the energy with i*psi_xi(u,conj u).
-/

set_option autoImplicit false

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity

open CMNumberFieldIndex
open CMTracePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMFourBalance

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

/-- One chosen complex embedding used to enumerate the Galois conjugates. -/
noncomputable def baseComplexEmbedding : E →+* ℂ :=
  Classical.choice (inferInstance : Nonempty (E →+* ℂ))

/-- Complex embedding obtained from the chosen base embedding and one rational
Galois automorphism. -/
noncomputable def complexEmbeddingAt (σ : E ≃ₐ[ℚ] E) : E →+* ℂ :=
  (baseComplexEmbedding E).comp σ.toRingHom

/-- Imaginary coordinate of xi at one Galois embedding. -/
def imagAt (xi : E) (σ : E ≃ₐ[ℚ] E) : ℝ :=
  (complexEmbeddingAt E σ xi).im

/-- Exact archimedean sign condition needed by the manuscript polarization
argument. The inequality form avoids introducing a separate sign function on
real numbers. -/
structure SignControlledXi (v : CMNumberFieldIndex.OddSignRow E) where
  xi : E
  antiInvariant : galoisComplexConj E xi = -xi
  coefficient_pos : ∀ σ : E ≃ₐ[ℚ] E,
    0 < -(v.value σ : ℝ) * imagAt E xi σ

/-- Positive diagonal coefficient attached to one embedding coordinate. -/
def SignControlledXi.coeff
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) : ℝ :=
  -(v.value σ : ℝ) * imagAt E X.xi σ

theorem SignControlledXi.coeff_pos
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    0 < X.coeff σ :=
  X.coefficient_pos σ

/-- The sign-profile condition in particular forces xi to be nonzero. -/
theorem SignControlledXi.xi_ne_zero
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    X.xi ≠ 0 := by
  intro h
  have hp := X.coefficient_pos (1 : E ≃ₐ[ℚ] E)
  simp [h, imagAt, complexEmbeddingAt] at hp

/-- A sign-controlled xi supplies the algebraic trace-polarization data. -/
def SignControlledXi.toTracePolarizationData
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    CMTracePolarization.TracePolarizationData E where
  xi := X.xi
  xi_ne_zero := X.xi_ne_zero
  antiInvariant := X.antiInvariant

/-- A sign-controlled xi automatically gives an alternating, nondegenerate
rational trace pairing. -/
theorem SignControlledXi.tracePairing_alternating_nondegenerate
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    (∀ x : E, CMTracePolarization.tracePairing E X.xi x x = 0) ∧
      (∀ x : E,
        (∀ y : E, CMTracePolarization.tracePairing E X.xi x y = 0) → x = 0) ∧
      (∀ y : E,
        (∀ x : E, CMTracePolarization.tracePairing E X.xi x y = 0) → y = 0) :=
  CMTracePolarization.tracePairing_alternating_nondegenerate
    E X.toTracePolarizationData
/-- CM conjugation becomes ordinary complex conjugation under every selected
complex embedding. -/
theorem complexEmbeddingAt_galoisComplexConj
    (σ : E ≃ₐ[ℚ] E) (x : E) :
    complexEmbeddingAt E σ (galoisComplexConj E x) =
      conj (complexEmbeddingAt E σ x) := by
  change (baseComplexEmbedding E).comp σ.toRingHom
      (IsCMField.complexConj E x) = _
  exact IsCMField.complexEmbedding_complexConj
    E ((baseComplexEmbedding E).comp σ.toRingHom) x

/-- Anti-invariant trace-polarization data is purely imaginary at every
selected complex embedding. -/
theorem CMTracePolarization.TracePolarizationData.embedding_re_zero
    (P : CMTracePolarization.TracePolarizationData E)
    (σ : E ≃ₐ[ℚ] E) :
    (complexEmbeddingAt E σ P.xi).re = 0 := by
  have h := congrArg Complex.re
    (show conj (complexEmbeddingAt E σ P.xi) =
        - complexEmbeddingAt E σ P.xi by
      rw [← complexEmbeddingAt_galoisComplexConj E σ P.xi,
        P.antiInvariant, map_neg])
  simp only [Complex.conj_re, Complex.neg_re] at h
  linarith

/-- A nonzero anti-invariant seed has nonzero imaginary part at every
complex embedding. -/
theorem CMTracePolarization.TracePolarizationData.embedding_im_ne_zero
    (P : CMTracePolarization.TracePolarizationData E)
    (σ : E ≃ₐ[ℚ] E) :
    (complexEmbeddingAt E σ P.xi).im ≠ 0 := by
  intro him
  have hz : complexEmbeddingAt E σ P.xi = 0 := by
    apply Complex.ext
    · simpa [P.embedding_re_zero E σ]
    · simpa [him]
  exact P.xi_ne_zero ((complexEmbeddingAt E σ).injective (by simpa using hz))

/-- Sign of a nonzero real coordinate, encoded in the same integer convention
as the CM sign rows. -/
def realSign (x : ℝ) : ℤ :=
  if 0 < x then 1 else -1

theorem realSign_isSign (x : ℝ) : IsSign (realSign x) := by
  by_cases hx : 0 < x <;> simp [realSign, hx, IsSign]

theorem realSign_neg_of_ne_zero
    {x : ℝ} (hx : x ≠ 0) :
    realSign (-x) = - realSign x := by
  by_cases hp : 0 < x
  · have hn : ¬ 0 < -x := by linarith
    simp [realSign, hp, hn]
  · have hxle : x ≤ 0 := le_of_not_gt hp
    have hxlt : x < 0 := lt_of_le_of_ne hxle hx
    have hn : 0 < -x := neg_pos.mpr hxlt
    simp [realSign, hp, hn]

/-- Imaginary signs of a nonzero anti-invariant seed form an odd CM sign row. -/
noncomputable def CMTracePolarization.TracePolarizationData.imagSign
    (P : CMTracePolarization.TracePolarizationData E) :
    CMNumberFieldIndex.OddSignRow E where
  value σ := realSign (imagAt E P.xi σ)
  isSign σ := realSign_isSign _
  odd σ := by
    have him :
        imagAt E P.xi ((CMNumberFieldIndex.centralInvolution E).conj σ) =
          - imagAt E P.xi σ := by
      simp [imagAt, complexEmbeddingAt,
        CMNumberFieldIndex.centralInvolution_conj_apply,
        AlgEquiv.mul_apply, CMNumberFieldIndex.galoisComplexConj_commute_apply,
        P.antiInvariant]
    rw [him]
    exact realSign_neg_of_ne_zero (P.embedding_im_ne_zero E σ)

/-- The sign required of the real rescaling factor. It is even under CM
conjugation because both the target CM row and the seed-imaginary row are odd. -/
noncomputable def requiredRescalingSign
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E) :
    CMGaloisIndex.CMEvenSignRow
      (E ≃ₐ[ℚ] E) (CMNumberFieldIndex.centralInvolution E) :=
  CMGaloisIndex.rescalingSign v (P.imagSign E)

theorem requiredRescalingSign_conj
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (σ : E ≃ₐ[ℚ] E) :
    (requiredRescalingSign E v P).value
        ((CMNumberFieldIndex.centralInvolution E).conj σ) =
      (requiredRescalingSign E v P).value σ :=
  (requiredRescalingSign E v P).invariant σ

/-- A conjugation-fixed field element realizes the required even sign row
through its real embedded coordinates. -/
def FixedElementRealizesRequiredSign
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E) : Prop :=
  ∀ σ : E ≃ₐ[ℚ] E,
    ((requiredRescalingSign E v P).value σ = 1 →
      0 < (complexEmbeddingAt E σ f).re) ∧
    ((requiredRescalingSign E v P).value σ = -1 →
      (complexEmbeddingAt E σ f).re < 0)

/-- A conjugation-fixed factor has real value at every complex embedding. -/
theorem embedding_im_zero_of_conj_fixed
    {f : E} (hf : galoisComplexConj E f = f)
    (σ : E ≃ₐ[ℚ] E) :
    (complexEmbeddingAt E σ f).im = 0 := by
  have h := congrArg Complex.im
    (show conj (complexEmbeddingAt E σ f) =
        complexEmbeddingAt E σ f by
      rw [← complexEmbeddingAt_galoisComplexConj E σ f, hf])
  simp only [Complex.conj_im] at h
  linarith

/-- A conjugation-fixed factor has the same embedded value on the two labels
in one CM conjugate pair. -/
theorem complexEmbeddingAt_conj_eq_of_fixed
    {f : E} (hf : galoisComplexConj E f = f)
    (σ : E ≃ₐ[ℚ] E) :
    complexEmbeddingAt E
        ((CMNumberFieldIndex.centralInvolution E).conj σ) f =
      complexEmbeddingAt E σ f := by
  change (baseComplexEmbedding E)
      ((galoisComplexConj E * σ) f) =
    (baseComplexEmbedding E) (σ f)
  rw [AlgEquiv.mul_apply,
    CMNumberFieldIndex.galoisComplexConj_commute_apply E σ f, hf]
/-- Imaginary coordinates of a fixed-factor rescaling multiply by the real
embedding of the fixed factor. -/
theorem imagAt_mul_of_conj_fixed
    {f x : E} (hf : galoisComplexConj E f = f)
    (σ : E ≃ₐ[ℚ] E) :
    imagAt E (f * x) σ =
      (complexEmbeddingAt E σ f).re * imagAt E x σ := by
  simp only [imagAt, map_mul, Complex.mul_im,
    embedding_im_zero_of_conj_fixed E hf σ, zero_mul, add_zero]

/-- Real sign condition required of a conjugation-fixed rescaling factor
relative to one anti-invariant seed. -/
def FixedRescalingSignCondition
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E) : Prop :=
  ∀ σ : E ≃ₐ[ℚ] E,
    0 < -(v.value σ : ℝ) *
      (complexEmbeddingAt E σ f).re * imagAt E P.xi σ

/-- Realizing the even rescaling-sign row is exactly sufficient for the
fixed-factor positivity condition. -/
theorem fixedRescalingSignCondition_of_realizesRequiredSign
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E)
    (hreal : FixedElementRealizesRequiredSign E v P f) :
    FixedRescalingSignCondition E v P f := by
  intro σ
  have him0 := P.embedding_im_ne_zero E σ
  rcases v.isSign σ with hv | hv
  · by_cases hp : 0 < imagAt E P.xi σ
    · have hs : realSign (imagAt E P.xi σ) = 1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = -1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfneg := (hreal σ).2 hreq
      rw [hv]
      norm_num
      exact neg_pos.mpr (mul_neg_of_neg_of_pos hfneg hp)
    · have himneg : imagAt E P.xi σ < 0 :=
        lt_of_le_of_ne (le_of_not_gt hp) him0
      have hs : realSign (imagAt E P.xi σ) = -1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = 1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfpos := (hreal σ).1 hreq
      rw [hv]
      norm_num
      exact neg_pos.mpr (mul_neg_of_pos_of_neg hfpos himneg)
  · by_cases hp : 0 < imagAt E P.xi σ
    · have hs : realSign (imagAt E P.xi σ) = 1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = 1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfpos := (hreal σ).1 hreq
      rw [hv]
      norm_num
      exact mul_pos hfpos hp
    · have himneg : imagAt E P.xi σ < 0 :=
        lt_of_le_of_ne (le_of_not_gt hp) him0
      have hs : realSign (imagAt E P.xi σ) = -1 := by
        simp [realSign, hp]
      have hreq : (requiredRescalingSign E v P).value σ = -1 := by
        simp [requiredRescalingSign, CMGaloisIndex.rescalingSign,
          CMTracePolarization.TracePolarizationData.imagSign, hv, hs]
      have hfneg := (hreal σ).2 hreq
      rw [hv]
      norm_num
      exact mul_pos_of_neg_of_neg hfneg himneg

/-- A nonzero conjugation-fixed rescaling satisfying the real sign condition
produces the manuscript's exact sign-controlled anti-invariant xi. -/
def signControlledXiOfFixedRescaling
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E)
    (hf : galoisComplexConj E f = f)
    (hf0 : f ≠ 0)
    (hsign : FixedRescalingSignCondition E v P f) :
    SignControlledXi E v where
  xi := f * P.xi
  antiInvariant := by
    rw [map_mul, hf, P.antiInvariant]
    ring
  coefficient_pos := by
    intro σ
    rw [imagAt_mul_of_conj_fixed E hf σ]
    simpa [FixedRescalingSignCondition, mul_assoc] using hsign σ

/-- The rescaled xi is nonzero already at the algebraic level. -/
theorem signControlledXiOfFixedRescaling_xi_ne_zero
    (v : CMNumberFieldIndex.OddSignRow E)
    (P : CMTracePolarization.TracePolarizationData E)
    (f : E)
    (hf : galoisComplexConj E f = f)
    (hf0 : f ≠ 0)
    (hsign : FixedRescalingSignCondition E v P f) :
    (signControlledXiOfFixedRescaling E v P f hf hf0 hsign).xi ≠ 0 := by
  exact mul_ne_zero hf0 P.xi_ne_zero
/-- Anti-invariance of xi makes every embedded value purely imaginary. -/
theorem SignControlledXi.embedding_re_zero
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    (complexEmbeddingAt E σ X.xi).re = 0 :=
  X.toTracePolarizationData.embedding_re_zero E σ

/-- Formal Weil factor attached to a sign label. -/
def weilFactor
    (v : CMNumberFieldIndex.OddSignRow E)
    (σ : E ≃ₐ[ℚ] E) : ℂ :=
  (v.value σ : ℂ) * Complex.I

/-- Embedded xi times the formal Weil factor is exactly the positive real
coordinate coefficient. -/
theorem SignControlledXi.embedding_mul_weilFactor
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    complexEmbeddingAt E σ X.xi * weilFactor E v σ =
      (X.coeff σ : ℂ) := by
  apply Complex.ext
  · simp [weilFactor, SignControlledXi.coeff, imagAt,
      Complex.mul_re, Complex.mul_im, X.embedding_re_zero σ]
    ring
  · simp [weilFactor, Complex.mul_re, Complex.mul_im,
      X.embedding_re_zero σ]

/-- Coordinates of a rational CM-field vector under the selected Galois
embedding labels.  These are the concrete coordinates used to compare the
rational trace pairing with its scalar extension. -/
def fieldCoordinates (x : E) : (E ≃ₐ[ℚ] E) → ℂ :=
  fun σ => complexEmbeddingAt E σ x

/-- The coordinate in the conjugate label is the embedding of the canonical
CM conjugate. -/
theorem fieldCoordinates_conjLabel
    (x : E) (σ : E ≃ₐ[ℚ] E) :
    fieldCoordinates E x ((centralInvolution E).conj σ) =
      complexEmbeddingAt E σ (galoisComplexConj E x) := by
  simp [fieldCoordinates, complexEmbeddingAt,
    centralInvolution_conj_apply, AlgEquiv.mul_apply,
    galoisComplexConj_commute_apply]

/-- Complex scalar extension of the rational trace pairing in the product
coordinates indexed by the Galois embeddings.

The conjugate label in the second argument is forced by
\`psi_xi(x,y) = Tr(xi*x*c(y))\`. -/
def SignControlledXi.complexifiedTracePairing
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z w : (E ≃ₐ[ℚ] E) → ℂ) : ℂ :=
  ∑ σ,
    complexEmbeddingAt E σ X.xi * z σ *
      w ((centralInvolution E).conj σ)

/-- On coordinates coming from rational CM-field vectors, the coordinate
pairing is exactly the rational trace pairing after base change to the chosen
complex embedding.  This is the local scalar-extension comparison, not merely
a dimension or sign analogy. -/
theorem SignControlledXi.complexifiedTracePairing_fieldCoordinates
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (x y : E) :
    X.complexifiedTracePairing (fieldCoordinates E x) (fieldCoordinates E y) =
      baseComplexEmbedding E
        (algebraMap ℚ E (CMTracePolarization.tracePairing E X.xi x y)) := by
  have h :=
    congrArg (baseComplexEmbedding E)
      (trace_eq_sum_automorphisms
        (K := ℚ) (L := E)
        (X.xi * x * galoisComplexConj E y))
  rw [map_sum] at h
  symm
  simpa [CMTracePolarization.tracePairing,
    SignControlledXi.complexifiedTracePairing, fieldCoordinates,
    complexEmbeddingAt, centralInvolution_conj_apply, AlgEquiv.mul_apply,
    galoisComplexConj_commute_apply, map_mul, mul_assoc] using h

/-- The actual coordinate Hodge real structure fixes vectors coming from the
rational field.  This is the expected real form inside the complexified
coordinate model. -/
theorem fieldCoordinates_realConj
    (x : E) :
    CMCoordinateHodge.realConj (centralInvolution E)
        (fieldCoordinates E x) =
      fieldCoordinates E x := by
  funext σ
  simp [CMCoordinateHodge.realConj, fieldCoordinates_conjLabel,
    complexEmbeddingAt_galoisComplexConj]

/-- Coordinate realization of the Weil-twisted trace coefficient. This coordinate formula is identified below with the base-changed rational
trace pairing through the actual coordinate Hodge real structure and Weil
operator. -/
def SignControlledXi.coordinateWeilForm
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) : ℂ :=
  ∑ σ,
    (complexEmbeddingAt E σ X.xi * weilFactor E v σ) *
      (Complex.normSq (z σ) : ℂ)

/-- Coordinate Hodge energy associated with the sign-controlled xi. -/
def SignControlledXi.energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) : ℝ :=
  ∑ σ, X.coeff σ * Complex.normSq (z σ)

/-- The coordinate Weil form is exactly the real positive energy, embedded
in C. -/
theorem SignControlledXi.coordinateWeilForm_eq_energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.coordinateWeilForm z = (X.energy z : ℂ) := by
  unfold SignControlledXi.coordinateWeilForm SignControlledXi.energy
  rw [Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro σ _
  rw [X.embedding_mul_weilFactor]
  simp [SignControlledXi.coeff]

/-- Applying the actual sign-defined weight-one Weil operator to the first
argument and the actual coordinate real structure to the second converts the
complexified trace pairing into the previously defined coordinate Weil form. -/
theorem SignControlledXi.complexifiedTracePairing_weil_realConj
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.complexifiedTracePairing
        (CMCoordinateHodge.weilOperator v z)
        (CMCoordinateHodge.realConj (centralInvolution E) z) =
      X.coordinateWeilForm z := by
  unfold SignControlledXi.complexifiedTracePairing
    SignControlledXi.coordinateWeilForm
  apply Finset.sum_congr rfl
  intro σ _
  rw [Complex.normSq_eq_conj_mul_self]
  simp [CMCoordinateHodge.weilOperator, CMCoordinateHodge.realConj,
    weilFactor, CentralInvolution.conj_involutive]
  ring

/-- The coordinate energy is therefore exactly the base-changed trace
polarization evaluated with the local Hodge Weil operator and real structure.
Together with \`complexifiedTracePairing_fieldCoordinates\`, this closes the
coordinate-energy/complexified-trace-pairing identification boundary. -/
theorem SignControlledXi.complexifiedTracePairing_weil_realConj_eq_energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.complexifiedTracePairing
        (CMCoordinateHodge.weilOperator v z)
        (CMCoordinateHodge.realConj (centralInvolution E) z) =
      (X.energy z : ℂ) := by
  rw [X.complexifiedTracePairing_weil_realConj]
  exact X.coordinateWeilForm_eq_energy z


theorem SignControlledXi.energy_nonneg
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    0 ≤ X.energy z := by
  unfold SignControlledXi.energy
  exact Finset.sum_nonneg fun σ _ =>
    mul_nonneg (X.coeff_pos σ).le (Complex.normSq_nonneg _)

/-- The diagonal coordinate energy is positive definite. -/
theorem SignControlledXi.energy_pos
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    {z : (E ≃ₐ[ℚ] E) → ℂ}
    (hz : z ≠ 0) :
    0 < X.energy z := by
  obtain ⟨σ, hσ⟩ := Function.ne_iff.mp hz
  unfold SignControlledXi.energy
  apply Finset.sum_pos'
  · intro τ _
    exact mul_nonneg (X.coeff_pos τ).le (Complex.normSq_nonneg _)
  · refine ⟨σ, Finset.mem_univ _, ?_⟩
    exact mul_pos (X.coeff_pos σ) (Complex.normSq_pos.mpr hσ)

/-- Vanishing of the energy detects the zero coordinate vector. -/
theorem SignControlledXi.energy_eq_zero_iff
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.energy z = 0 ↔ z = 0 := by
  constructor
  · intro h
    by_contra hz
    exact (ne_of_gt (X.energy_pos hz)) h
  · rintro rfl
    simp [SignControlledXi.energy]

end

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
