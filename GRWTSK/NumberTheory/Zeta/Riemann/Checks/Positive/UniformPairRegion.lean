/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairRegion

set_option autoImplicit false

/-!
# A continuum pair-region fixture with an exact arithmetic polynomial binding

The entire rectangle [0,1] x [15/16,17/16] is included. Actual target zeros use
the inherited open critical strip; off-line offsets have no positive lower bound.
All rational inequalities below are unexecuted ordinary decide scripts. The
source analytic dependencies and transitive axioms remain unaudited.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.UniformPairRegion
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open UniformFiniteC1 UniformPairRegion
open GRWTSK.Analysis.Complex.SymmetricPair
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
namespace P
export GRWTSK.Analysis.Complex.GaussianPolynomialPair
  (Poly eval add mul scale shift monomial taylor Disk pair enclose)
end P
namespace D
export CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen
  (factor product product_four product_six)
end D
noncomputable section

def config : Config := ⟨2,12,15,17/8⟩
def linear (a : ℚ) : P.Poly := [Gaussian.ofRat a,Gaussian.ofRat 1]
def products : ℕ → P.Poly
  | 0 => [Gaussian.ofRat 1]
  | n+1 => P.mul (products n) (linear ((n : ℚ)-1))

def series : P.Poly := P.taylor (-RationalPowerEvaluation.logCenter 2 12) 16

def weightCoefficients : P.Poly :=
  P.add (P.add (P.add
    (P.add [Gaussian.ofRat 2] (P.scale (Gaussian.ofRat (-1/2)) (linear (-1))))
    (P.scale (Gaussian.ofRat (1/24)) (P.mul (linear 0) (linear (-1)))))
    (P.scale (Gaussian.ofRat (-1/5760)) (products 4)))
    (P.scale (Gaussian.ofRat (1/967680)) (products 6))

def unshifted : P.Poly :=
  P.add (P.mul (linear (-1)) (P.add [Gaussian.ofRat 1] series))
    (P.mul weightCoefficients series)
def shifted : P.Poly := P.shift unshifted ⟨1/2,1⟩

def certificate : Packet where
  coefficients := shifted
  height := 1
  heightRadius := 1/16
  offsetRadius := 1/2
  valueError := 1/5
  secantError := 2/3

lemma eval_linear (a : ℚ) (s : ℂ) : P.eval (linear a) s=(a : ℂ)+s := by
  simp [linear,P.eval,Gaussian.value_ofRat]

lemma eval_products (n : ℕ) (s : ℂ) : P.eval (products n) s=D.product n s := by
  induction n with
  | zero => simp [products,P.eval,D.product,Gaussian.value_ofRat]
  | succ n ih =>
    rw [products,GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_mul,ih,eval_linear]
    simp only [D.product,D.factor]
    push_cast
    ring

lemma eval_series (s : ℂ) : P.eval series s=UniformPowerC1.poly 2 12 15 s := by
  rw [series,GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_taylor]
  unfold UniformPowerC1.poly complexExpTaylor
  have he : ((-RationalPowerEvaluation.logCenter 2 12 : ℚ) : ℂ)*s =
      -s*(RationalPowerEvaluation.logCenter 2 12 : ℂ) := by push_cast; ring
  simp only [he]

lemma eval_weight (s : ℂ) : P.eval weightCoefficients s=RationalFiniteEvaluation.weightC 2 s := by
  simp only [weightCoefficients,GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_add,
    GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_scale,
    GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_mul,eval_linear,eval_products,
    P.eval,Gaussian.value_ofRat,D.product_four,D.product_six,RationalFiniteEvaluation.weightC]
  norm_num <;> ring

lemma power_one (s : ℂ) : UniformPowerC1.poly 1 12 15 s=1 := by
  have h : RationalPowerEvaluation.logCenter 1 12=0 := by decide
  simp only [UniformPowerC1.poly,h,Rat.cast_zero,mul_zero]
  norm_num [complexExpTaylor,Finset.sum_range_succ]

lemma unshifted_binding (s : ℂ) : P.eval unshifted s=config.polynomial s := by
  have hsum : (∑ k ∈ Finset.Icc (1 : ℕ) 2, UniformPowerC1.poly k 12 15 s)=
      1+UniformPowerC1.poly 2 12 15 s := by
    rw [show Finset.Icc (1 : ℕ) 2={1,2} from by decide]
    simp [power_one]
  simp only [unshifted,GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_add,
    GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_mul,eval_linear,eval_series,eval_weight,
    P.eval,Gaussian.value_ofRat,Config.polynomial,config]
  rw [hsum]
  norm_num <;> ring

/-- A functional identity, not agreement at finitely many rational samples. -/
theorem source_binding : certificate.Binds config := by
  intro s
  change P.eval shifted (s-certificate.anchor)=config.polynomial s
  rw [shifted,GRWTSK.Analysis.Complex.GaussianPolynomialPair.eval_shift]
  have he : certificate.anchor=(⟨1/2,1⟩ : Gaussian).value := rfl
  rw [he,sub_add_cancel,unshifted_binding]

/-- Includes the finite evaluator, source radii, and the two affine endpoint tests. -/
theorem region_accepts : certificate.check config=true := by decide
lemma even_lower : (3/5 : ℚ) ≤ certificate.lowerEven := by decide
lemma odd_lower : (1/4 : ℚ) ≤ certificate.lowerOdd := by decide

lemma mem_carrier {s : ℂ} : s ∈ certificate.carrier ↔
    0 ≤ s.re ∧ s.re ≤ 1 ∧ (15/16 : ℝ) ≤ s.im ∧ s.im ≤ 17/16 := by
  change (|s.re-1/2| ≤ (1/2 : ℝ) ∧ |s.im-1| ≤ (1/16 : ℝ)) ↔ _
  rw [abs_le,abs_le]
  constructor
  · rintro ⟨⟨h1,h2⟩,⟨h3,h4⟩⟩
    exact ⟨by linarith,by linarith,by linarith,by linarith⟩
  · rintro ⟨h1,h2,h3,h4⟩
    exact ⟨⟨by linarith,by linarith⟩,⟨by linarith,by linarith⟩⟩

/-- The same region contains arbitrarily small nonzero offsets; no offset floor is assumed. -/
theorem all_point_margin {s : ℂ} (hs : s ∈ certificate.carrier) (hoff : s.re ≠ 1/2) :
    (3233/14400 : ℝ) ≤ energy config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)-
      ((1/5 : ℝ)^2+‖MirrorChannels.offset s‖^2*(2/3 : ℝ)^2) := by
  have h := certificate.channel_bounds hs hoff
  have hf : certificate.model=config.polynomial := funext source_binding
  rw [hf] at h
  have he : (3/5 : ℝ) ≤ ‖even config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)‖ :=
    (by exact_mod_cast even_lower).trans h.1
  have ho : (1/4 : ℝ) ≤ ‖odd config.polynomial (MirrorChannels.center s) (MirrorChannels.offset s)‖ :=
    (by exact_mod_cast odd_lower).trans h.2
  have he2 := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 3/5) he 2
  have ho2 := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1/4) ho 2
  have hd : ‖MirrorChannels.offset s‖^2 ≤ (1/4 : ℝ) := by
    rw [MirrorChannels.offset_norm]
    have hx : |s.re-1/2| ≤ (1/2 : ℝ) := hs.1
    nlinarith [abs_nonneg (s.re-1/2)]
  have hp := mul_le_mul_of_nonneg_left ho2 (sq_nonneg ‖MirrorChannels.offset s‖)
  unfold energy
  nlinarith

/-- An actual continuum classification, not a new height or zero-count result. -/
theorem rectangle_RH : RHOn certificate.carrier := certificate.rhOn region_accepts source_binding

theorem rectangle_fiber_capacity : HeightFiber.TargetCapacity certificate.carrier :=
  HeightFiber.targetCapacity_of_rhOn rectangle_RH

-- Boundary fixtures: the complete critical-line seam and both height edges remain.
example (t : ℝ) (h0 : 15/16 ≤ t) (h1 : t ≤ 17/16) :
    (⟨1/2,t⟩ : ℂ) ∈ certificate.carrier := mem_carrier.mpr ⟨by norm_num,by norm_num,h0,h1⟩
example : (⟨0,15/16⟩ : ℂ) ∈ certificate.carrier := mem_carrier.mpr (by norm_num)
example : (⟨1,17/16⟩ : ℂ) ∈ certificate.carrier := mem_carrier.mpr (by norm_num)

-- No source equality can be inferred from a passing coefficient packet alone.
example : ¬ (∀ s : ℂ, (0 : ℂ)=config.polynomial s) := by
  intro h
  have h0 := h 0
  norm_num [Config.polynomial,config,UniformPowerC1.poly,complexExpTaylor,
    RationalFiniteEvaluation.weightC,CenteredMellin.CubicPrimitive.multiplier,
    CenteredMellin.QuarticPrimitive.multiplier,Finset.sum_range_succ] at h0

-- Forgetting the q*odd term destroys even-channel multiplication.
example : P.pair [Gaussian.ofRat 0,Gaussian.ofRat 0,Gaussian.ofRat 1] 0 1=(1,0) := by
  norm_num [P.pair,Gaussian.value_ofRat]
-- The polynomial continuation at d=0 is NOT the old totalized quotient.
example : (P.pair [Gaussian.ofRat 0,Gaussian.ofRat 1] 0 0).2=1 ∧
    odd (fun z : ℂ => z) 0 0=0 := by norm_num [P.pair,Gaussian.value_ofRat,odd]
-- A zero constant affine margin can still be strictly positive for every q>0.
example (q : ℝ) (hq : 0 < q) : 0 < (0 : ℝ)+q*1 := by linarith
-- Degenerate domain or negative error data must not pass the whole guard.
example : ({certificate with offsetRadius := 0} : Packet).check config=false := by decide
example : ({certificate with valueError := -1} : Packet).check config=false := by decide
example : ({certificate with heightRadius := -1} : Packet).check config=false := by decide

-- Every missing region of the next shell still requires an actual covering witness.
example {ι : Type*} (P : ι → Packet) (C : ι → Config)
    (hcheck : ∀ i, (P i).check (C i)=true) (hbind : ∀ i, (P i).Binds (C i))
    (hcover : ∀ z ∈ HeightFiber.successorBox 17, MirrorApproximation.Eligible z →
      ∃ i, z ∈ (P i).carrier) : WindowRH 18 :=
  window_successor_of_regions SeventeenBandJet.windowRH_seventeen P C hcheck hbind hcover

end
end GRWTSK.RiemannHypothesis.Checks.UniformPairRegion
