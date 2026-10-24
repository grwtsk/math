/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Even values, normalized odd secants, and source-faithful symmetric pairs

The odd channel is a divided difference at a NONZERO displacement. Its Lean
value at displacement zero is zero, not a claim about the derivative there.
Even and odd channels together retain both endpoint values. A repeated zero at
the center is permitted. A derivative-error theorem controls the normalized
odd error without division by a small separation in the FINAL bound; it does
not infer derivative accuracy from value accuracy.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
open _root_.Complex Set Finset
noncomputable section

/-- The even endpoint value, not a claim that the source itself is even. -/
def even (F : ℂ → ℂ) (c d : ℂ) : ℂ := (F (c+d)+F (c-d))/2

/-- Normalized odd endpoint difference. The zero-displacement convention is NOT a jet. -/
def odd (F : ℂ → ℂ) (c d : ℂ) : ℂ := (F (c+d)-F (c-d))/(2*d)

@[simp] theorem odd_zero (F : ℂ → ℂ) (c : ℂ) : odd F c 0 = 0 := by simp [odd]

lemma denominator_ne_zero {d : ℂ} (hd : d ≠ 0) : 2*d ≠ 0 :=
  mul_ne_zero (by norm_num) hd

theorem reconstruct_plus (F : ℂ → ℂ) (c d : ℂ) :
    even F c d+d*odd F c d = F (c+d) := by
  by_cases hd : d = 0
  · simp [hd, even, odd] <;> ring
  · unfold even odd
    field_simp [hd] <;> ring

theorem reconstruct_minus (F : ℂ → ℂ) (c d : ℂ) :
    even F c d-d*odd F c d = F (c-d) := by
  by_cases hd : d = 0
  · simp [hd, even, odd] <;> ring
  · unfold even odd
    field_simp [hd] <;> ring

/-- This is an exact endpoint identity. It is not a zero-multiplicity theorem. -/
theorem endpoints_zero_iff (F : ℂ → ℂ) (c d : ℂ) :
    (F (c+d)=0 ∧ F (c-d)=0) ↔ (even F c d=0 ∧ odd F c d=0) := by
  constructor
  · rintro ⟨hp,hm⟩
    simp [even,odd,hp,hm]
  · rintro ⟨he,ho⟩
    constructor
    · rw [← reconstruct_plus F c d,he,ho]; simp
    · rw [← reconstruct_minus F c d,he,ho]; simp

lemma even_sub (F P : ℂ → ℂ) (c d : ℂ) :
    even (fun z => F z-P z) c d = even F c d-even P c d := by
  unfold even; ring

lemma odd_sub (F P : ℂ → ℂ) (c d : ℂ) :
    odd (fun z => F z-P z) c d = odd F c d-odd P c d := by
  unfold odd; ring

/-- Multiplication couples the two channels. It is not componentwise multiplication. -/
theorem even_product (F G : ℂ → ℂ) (c d : ℂ) :
    even (fun z => F z*G z) c d =
      even F c d*even G c d+d^2*odd F c d*odd G c d := by
  change (F (c+d)*G (c+d)+F (c-d)*G (c-d))/2 = _
  rw [← reconstruct_plus F c d,← reconstruct_plus G c d,
    ← reconstruct_minus F c d,← reconstruct_minus G c d]
  ring

theorem odd_product (F G : ℂ → ℂ) (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    odd (fun z => F z*G z) c d =
      even F c d*odd G c d+odd F c d*even G c d := by
  change (F (c+d)*G (c+d)-F (c-d)*G (c-d))/(2*d) = _
  rw [← reconstruct_plus F c d,← reconstruct_plus G c d,
    ← reconstruct_minus F c d,← reconstruct_minus G c d]
  field_simp [hd] <;> ring

/-- A two-point sum of squares. No spectral, Hodge, or Weil identification is made. -/
def energy (F : ℂ → ℂ) (c d : ℂ) : ℝ :=
  ‖even F c d‖^2+‖d‖^2*‖odd F c d‖^2

lemma parallelogram (a b : ℂ) :
    ‖a+b‖^2+‖a-b‖^2 = 2*‖a‖^2+2*‖b‖^2 := by
  simp only [Complex.sq_norm,Complex.normSq_apply,Complex.add_re,Complex.add_im,
    Complex.sub_re,Complex.sub_im]
  ring

theorem energy_identity (F : ℂ → ℂ) (c d : ℂ) :
    energy F c d = (‖F (c+d)‖^2+‖F (c-d)‖^2)/2 := by
  have h := parallelogram (even F c d) (d*odd F c d)
  rw [reconstruct_plus,reconstruct_minus,norm_mul,mul_pow] at h
  unfold energy
  linarith

/-- Two independently certified channel radii; no positivity is included. -/
structure Enclosure (F P : ℂ → ℂ) (c d : ℂ) where
  valueError : ℝ
  secantError : ℝ
  value_nonneg : 0 ≤ valueError
  secant_nonneg : 0 ≤ secantError
  even_error : ‖even F c d-even P c d‖ ≤ valueError
  odd_error : ‖odd F c d-odd P c d‖ ≤ secantError

/-- A strict coupled margin excludes two simultaneous endpoint zeros. It is not
asserted to be a lower bound for the source energy itself. -/
theorem Enclosure.excludes_pair {F P : ℂ → ℂ} {c d : ℂ}
    (C : Enclosure F P c d)
    (hgap : C.valueError^2+‖d‖^2*C.secantError^2 < energy P c d) :
    ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  intro hz
  obtain ⟨he,ho⟩ := (endpoints_zero_iff F c d).mp hz
  have hE := C.even_error
  have hO := C.odd_error
  rw [he,zero_sub,norm_neg] at hE
  rw [ho,zero_sub,norm_neg] at hO
  have hE2 : ‖even P c d‖^2 ≤ C.valueError^2 :=
    pow_le_pow_left₀ (norm_nonneg _) hE 2
  have hO2 : ‖odd P c d‖^2 ≤ C.secantError^2 :=
    pow_le_pow_left₀ (norm_nonneg _) hO 2
  have h := add_le_add hE2 (mul_le_mul_of_nonneg_left hO2 (sq_nonneg ‖d‖))
  exact (not_le_of_gt hgap) h

/-- Values at the two endpoints control the even error without a separation loss. -/
theorem even_error_of_values {F P : ℂ → ℂ} {c d : ℂ} {e : ℝ}
    (hp : ‖F (c+d)-P (c+d)‖ ≤ e) (hm : ‖F (c-d)-P (c-d)‖ ≤ e) :
    ‖even F c d-even P c d‖ ≤ e := by
  have heq : even F c d-even P c d =
      ((F (c+d)-P (c+d))+(F (c-d)-P (c-d)))/2 := by unfold even; ring
  rw [heq,norm_div]
  rw [show ‖(2 : ℂ)‖ = (2 : ℝ) by norm_num]
  have ht := norm_add_le (F (c+d)-P (c+d)) (F (c-d)-P (c-d))
  linarith

/-- Independent derivative residual on a convex region controls the normalized
secant, uniformly in every nonzero separation. No lower bound on |d| is used. -/
theorem odd_error_of_derivatives {F P : ℂ → ℂ} {U : Set ℂ} {c d : ℂ} {e : ℝ}
    (hd : d ≠ 0) (hU : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (herr : ∀ z ∈ U, ‖deriv F z-deriv P z‖ ≤ e)
    (hp : c+d ∈ U) (hm : c-d ∈ U) : ‖odd F c d-odd P c d‖ ≤ e := by
  have hR : ∀ z ∈ U, DifferentiableAt ℂ (fun w => F w-P w) z :=
    fun z hz => (hF z hz).sub (hP z hz)
  have hD : ∀ z ∈ U, ‖deriv (fun w => F w-P w) z‖ ≤ e := by
    intro z hz
    rw [((hF z hz).hasDerivAt.sub (hP z hz).hasDerivAt).deriv]
    exact herr z hz
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hR hD hU hm hp
  have hdelta : (c+d)-(c-d) = 2*d := by ring
  rw [hdelta] at h
  rw [← odd_sub,odd,norm_div]
  exact (div_le_iff₀ (norm_pos_iff.mpr (denominator_ne_zero hd))).mpr h

/-- This constructor keeps value and derivative estimates separate. -/
def Enclosure.ofRegion {F P : ℂ → ℂ} {U : Set ℂ} {c d : ℂ} (e0 e1 : ℝ)
    (he0 : 0 ≤ e0) (he1 : 0 ≤ e1) (hd : d ≠ 0) (hU : Convex ℝ U)
    (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ z ∈ U, DifferentiableAt ℂ P z)
    (hvalue : ∀ z ∈ U, ‖F z-P z‖ ≤ e0)
    (hderiv : ∀ z ∈ U, ‖deriv F z-deriv P z‖ ≤ e1)
    (hp : c+d ∈ U) (hm : c-d ∈ U) : Enclosure F P c d where
  valueError := e0
  secantError := e1
  value_nonneg := he0
  secant_nonneg := he1
  even_error := even_error_of_values (hvalue _ hp) (hvalue _ hm)
  odd_error := odd_error_of_derivatives hd hU hF hP hderiv hp hm

/-- Exact telescoping in channel coordinates, with no source identification dropped. -/
theorem channel_telescope (F P Q : ℂ → ℂ) (c d : ℂ) :
    (even F c d-even Q c d =
      (even F c d-even P c d)+(even P c d-even Q c d)) ∧
    (odd F c d-odd Q c d =
      (odd F c d-odd P c d)+(odd P c d-odd Q c d)) := by constructor <;> ring

/-- Uniform derivative convergence on one FIXED convex region gives uniform
normalized secant convergence over all its distinct symmetric endpoint pairs. -/
theorem odd_errors_vanish {F : ℂ → ℂ} {P : ℕ → ℂ → ℂ} {U : Set ℂ} {e : ℕ → ℝ}
    (hU : Convex ℝ U) (hF : ∀ z ∈ U, DifferentiableAt ℂ F z)
    (hP : ∀ n z, z ∈ U → DifferentiableAt ℂ (P n) z)
    (herr : ∀ n z, z ∈ U → ‖deriv F z-deriv (P n) z‖ ≤ e n)
    (hvanish : ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n, N ≤ n → e n < ε) :
    ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n, N ≤ n →
      ∀ c d : ℂ, d ≠ 0 → c+d ∈ U → c-d ∈ U →
        ‖odd F c d-odd (P n) c d‖ < ε := by
  intro ε hε
  obtain ⟨N,hN⟩ := hvanish ε hε
  refine ⟨N,?_⟩
  intro n hn c d hd hp hm
  exact (odd_error_of_derivatives hd hU hF (hP n) (herr n) hp hm).trans_lt (hN n hn)

/-- Paired coefficients a_j,b_j represent powers 2j and 2j+1 respectively. -/
def pairedJet (a b : ℕ → ℂ) (n : ℕ) (c z : ℂ) : ℂ :=
  ∑ j ∈ Finset.range n, (a j+(z-c)*b j)*((z-c)^2)^j

def evenJet (a : ℕ → ℂ) (n : ℕ) (d : ℂ) : ℂ :=
  ∑ j ∈ Finset.range n, a j*(d^2)^j

def oddJet (b : ℕ → ℂ) (n : ℕ) (d : ℂ) : ℂ :=
  ∑ j ∈ Finset.range n, b j*(d^2)^j

lemma pairedJet_plus (a b : ℕ → ℂ) (n : ℕ) (c d : ℂ) :
    pairedJet a b n c (c+d) = evenJet a n d+d*oddJet b n d := by
  unfold pairedJet
  simp_rw [show c+d-c=d by ring]
  unfold evenJet oddJet
  rw [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  ring

lemma pairedJet_minus (a b : ℕ → ℂ) (n : ℕ) (c d : ℂ) :
    pairedJet a b n c (c-d) = evenJet a n d-d*oddJet b n d := by
  unfold pairedJet
  simp_rw [show c-d-c= -d by ring,neg_sq]
  unfold evenJet oddJet
  rw [Finset.mul_sum,← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  ring

theorem pairedJet_channels (a b : ℕ → ℂ) (n : ℕ) (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    even (pairedJet a b n c) c d = evenJet a n d ∧
      odd (pairedJet a b n c) c d = oddJet b n d := by
  simp only [even,odd,pairedJet_plus,pairedJet_minus]
  constructor <;> field_simp [hd] <;> ring

/-- Actual quadratic-to-quartic norm identity, with every cross term retained. -/
def quadratic (a0 a1 a2 c z : ℂ) : ℂ := a0+a1*(z-c)+a2*(z-c)^2

theorem quadratic_channels (a0 a1 a2 c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    even (quadratic a0 a1 a2 c) c d = a0+a2*d^2 ∧
      odd (quadratic a0 a1 a2 c) c d = a1 := by
  unfold even odd quadratic
  constructor <;> field_simp [hd] <;> ring

theorem quadratic_energy (a0 a1 a2 c : ℂ) {x : ℝ} (hx : x ≠ 0) :
    energy (quadratic a0 a1 a2 c) c (x : ℂ) =
      ‖a2‖^2*x^4+
      (2*(a0*(starRingEnd ℂ) a2).re+‖a1‖^2)*x^2+‖a0‖^2 := by
  obtain ⟨he,ho⟩ := quadratic_channels a0 a1 a2 c (Complex.ofReal_ne_zero.mpr hx)
  unfold energy
  rw [he,ho]
  simp only [Complex.sq_norm,Complex.normSq_apply,Complex.add_re,Complex.add_im,
    Complex.mul_re,Complex.mul_im,Complex.conj_re,Complex.conj_im,
    Complex.ofReal_re,Complex.ofReal_im,pow_two]
  ring

end
end GRWTSK.Analysis.ComplexAnalysis.SymmetricPair
