# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformFiniteC1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b29233df2adc8c915dabbce81ca8ccf6f08d96` · SHA-256 `7996aafcc40d0eff778a3b988625bb55b6e6e4760f2e0f966a7e4fc08cfc12a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPowerC1
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation

set_option autoImplicit false

/-!
# A single rational-coefficient finite-model polynomial with a uniform C1 radius

The complete sextic finiteModel is unchanged. Both product-rule terms from the
Dirichlet prefactor and both terms from the endpoint weight are retained. A
Boolean parameter guard checks every base. Region bounds hold at ALL complex
points with nonnegative real part and norm at most the declared rational size.
This is not a source positivity or global coverage theorem.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.UniformFiniteC1
open Complex Finset
open CenteredMellin CenteredMellin.SexticPrimitive
open CenteredMellin.SexticPrimitive.DerivativeSixteen
open RationalFiniteEvaluation
open GRWTSK.Analysis.Complex.SymmetricPair.Rational
noncomputable section

structure Config where
  cutoff : ℕ
  logDegree : ℕ
  derivativeTerms : ℕ
  size : ℚ
  deriving DecidableEq, Repr

namespace Config

def Guard (C : Config) : Prop := 1 ≤ C.cutoff ∧ 0 ≤ C.size ∧
  ∀ k ∈ Finset.Icc 1 C.cutoff, UniformPowerC1.Guard k C.logDegree C.derivativeTerms C.size

def check (C : Config) : Bool := decide C.Guard
lemma check_iff (C : Config) : C.check=true ↔ C.Guard := by simp [check]

def e0 (C : Config) (k : ℕ) : ℚ :=
  UniformPowerC1.valueRadius k C.logDegree C.derivativeTerms C.size
def e1 (C : Config) (k : ℕ) : ℚ :=
  UniformPowerC1.derivativeRadius k C.logDegree C.derivativeTerms C.size

def weightBound (C : Config) : ℚ := C.cutoff+(C.size+1)/2+
  C.size*(C.size+1)/(12*C.cutoff)+(C.size+5)^4/(720*(C.cutoff : ℚ)^3)+
  (C.size+5)^6/(30240*(C.cutoff : ℚ)^5)
def weightSlopeBound (C : Config) : ℚ := 1/2+(2*C.size+1)/(12*C.cutoff)+
  4*(C.size+5)^3/(720*(C.cutoff : ℚ)^3)+6*(C.size+5)^5/(30240*(C.cutoff : ℚ)^5)

def valueRadius (C : Config) : ℚ :=
  (C.size+1)*(∑ k ∈ Finset.Icc 1 C.cutoff,C.e0 k)+C.weightBound*C.e0 C.cutoff

def derivativeRadius (C : Config) : ℚ :=
  (∑ k ∈ Finset.Icc 1 C.cutoff,C.e0 k)+
  (C.size+1)*(∑ k ∈ Finset.Icc 1 C.cutoff,C.e1 k)+
  C.weightSlopeBound*C.e0 C.cutoff+C.weightBound*C.e1 C.cutoff

lemma radii_nonneg {C : Config} (hc : C.Guard) :
    0 ≤ C.valueRadius ∧ 0 ≤ C.derivativeRadius := by
  have hS := hc.2.1
  have hN : (0 : ℚ) < C.cutoff := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hc.1)
  have he (k : ℕ) (hk : k ∈ Finset.Icc 1 C.cutoff) : 0 ≤ C.e0 k ∧ 0 ≤ C.e1 k :=
    UniformPowerC1.radii_nonneg (hc.2.2 k hk)
  have hlast := he C.cutoff (Finset.mem_Icc.mpr ⟨hc.1,le_rfl⟩)
  have hlast0 := hlast.1
  have hlast1 := hlast.2
  have hsum0 : (0 : ℚ) ≤ ∑ k ∈ Finset.Icc 1 C.cutoff,C.e0 k :=
    Finset.sum_nonneg (fun k hk => (he k hk).1)
  have hsum1 : (0 : ℚ) ≤ ∑ k ∈ Finset.Icc 1 C.cutoff,C.e1 k :=
    Finset.sum_nonneg (fun k hk => (he k hk).2)
  have hw0 : 0 ≤ C.weightBound := by unfold weightBound; positivity
  have hw1 : 0 ≤ C.weightSlopeBound := by unfold weightSlopeBound; positivity
  constructor <;> simp only [valueRadius,derivativeRadius] <;> positivity

/-- The same polynomial exists independently of any acceptance of its errors. -/
def polynomial (C : Config) (s : ℂ) : ℂ :=
  (s-1)*(∑ k ∈ Finset.Icc 1 C.cutoff,UniformPowerC1.poly k C.logDegree C.derivativeTerms s)+
  weightC C.cutoff s*UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s

def weightSlope (N : ℕ) (s : ℂ) : ℂ := -1/2+(2*s-1)/(12*(N : ℂ))-
  productSlope 4 s/(720*(N : ℂ)^3)+productSlope 6 s/(30240*(N : ℂ)^5)

lemma weight_hasDerivAt (N : ℕ) (s : ℂ) :
    HasDerivAt (weightC N) (weightSlope N s) s := by
  have h1 := ((hasDerivAt_id s).sub_const 1).div_const (2 : ℂ)
  have h2 := ((hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1)).div_const (12*(N : ℂ))
  have h4 := (product_hasDerivAt 4 s).div_const (720*(N : ℂ)^3)
  have h6 := (product_hasDerivAt 6 s).div_const (30240*(N : ℂ)^5)
  convert ((((hasDerivAt_const s (N : ℂ)).sub h1).add h2).sub h4).add h6 using 1 <;>
    simp only [weightC,weightSlope,product_four,product_six] <;> ring

def polynomialSlope (C : Config) (s : ℂ) : ℂ :=
  (∑ k ∈ Finset.Icc 1 C.cutoff,UniformPowerC1.poly k C.logDegree C.derivativeTerms s)+
  (s-1)*(∑ k ∈ Finset.Icc 1 C.cutoff,UniformPowerC1.slope k C.logDegree C.derivativeTerms s)+
  weightSlope C.cutoff s*UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s+
  weightC C.cutoff s*UniformPowerC1.slope C.cutoff C.logDegree C.derivativeTerms s

lemma polynomial_hasDerivAt (C : Config) (s : ℂ) :
    HasDerivAt C.polynomial (C.polynomialSlope s) s := by
  have hsum := HasDerivAt.fun_sum (u := Finset.Icc 1 C.cutoff)
    (fun k _ => UniformPowerC1.poly_hasDerivAt k C.logDegree C.derivativeTerms s)
  have h := (((hasDerivAt_id s).sub_const 1).mul hsum).add
    ((weight_hasDerivAt C.cutoff s).mul
      (UniformPowerC1.poly_hasDerivAt C.cutoff C.logDegree C.derivativeTerms s))
  convert h using 1 <;> simp only [polynomial,polynomialSlope,one_mul] <;> ring

def powerSlope (k : ℕ) (s : ℂ) : ℂ :=
  -(Real.log (k : ℝ) : ℂ)*UniformPowerC1.power k s

def finiteSlope (N : ℕ) (s : ℂ) : ℂ :=
  (∑ k ∈ Finset.Icc 1 N,UniformPowerC1.power k s)+
  (s-1)*(∑ k ∈ Finset.Icc 1 N,powerSlope k s)+
  weightSlope N s*UniformPowerC1.power N s+weightC N s*powerSlope N s

lemma finite_hasDerivAt {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    HasDerivAt (finiteModel N) (finiteSlope N s) s := by
  have he : finiteModel N = fun z =>
      (z-1)*(∑ k ∈ Finset.Icc 1 N,UniformPowerC1.power k z)+weightC N z*UniformPowerC1.power N z := by
    funext z
    simpa only [finiteDirichletPowerSum,UniformPowerC1.power] using finiteModel_regroup hN z
  rw [he]
  have hsum := HasDerivAt.fun_sum (u := Finset.Icc 1 N)
    (fun k hk => UniformPowerC1.power_hasDerivAt (Finset.mem_Icc.mp hk).1 s)
  have h := (((hasDerivAt_id s).sub_const 1).mul hsum).add
    ((weight_hasDerivAt N s).mul (UniformPowerC1.power_hasDerivAt hN s))
  convert h using 1 <;> simp only [finiteSlope,powerSlope,one_mul] <;> ring

lemma region_weight_bounds {C : Config} {s : ℂ} (hc : C.Guard) (hn : ‖s‖ ≤ (C.size : ℝ)) :
    ‖weightC C.cutoff s‖ ≤ (C.weightBound : ℝ) ∧
    ‖weightSlope C.cutoff s‖ ≤ (C.weightSlopeBound : ℝ) := by
  have hS : (0 : ℝ) ≤ (C.size : ℝ) := by exact_mod_cast hc.2.1
  have hN : (0 : ℝ) < C.cutoff := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hc.1)
  have hs1 : ‖s-1‖ ≤ (C.size : ℝ)+1 := by
    exact (norm_sub_le s 1).trans (by simpa using add_le_add_right hn 1)
  have hf (j : ℕ) (hj : j < 7) : ‖factor j s‖ ≤ (C.size : ℝ)+5 := by
    have hjn : ‖(j : ℂ)-1‖ ≤ (5 : ℝ) := by interval_cases j <;> norm_num
    simpa only [factor,add_sub_assoc] using (norm_add_le s ((j : ℂ)-1)).trans (add_le_add hn hjn)
  have hp4 := product_norm_le 4 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hp6 := product_norm_le 6 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hd4 := productSlope_norm_le 4 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hd6 := productSlope_norm_le 6 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  norm_num only [Nat.reduceSub,Nat.cast_ofNat] at hd4 hd6
  have ht : ‖2*s-1‖ ≤ 2*(C.size : ℝ)+1 := by
    have h := norm_sub_le (2*s) 1
    rw [norm_mul] at h
    norm_num at h
    linarith
  constructor
  · calc
      _ ≤ (C.cutoff : ℝ)+‖s-1‖/2+‖s‖*‖s-1‖/(12*C.cutoff)+
          ‖product 4 s‖/(720*(C.cutoff : ℝ)^3)+‖product 6 s‖/(30240*(C.cutoff : ℝ)^5) := by
        rw [weightC,← product_four,← product_six]
        bound
      _ ≤ (C.weightBound : ℝ) := by
        simp only [weightBound,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_pow,
          Rat.cast_natCast,Rat.cast_ofNat,Rat.cast_one]
        gcongr <;> first | assumption | positivity
  · calc
      _ ≤ 1/2+‖2*s-1‖/(12*C.cutoff)+
          ‖productSlope 4 s‖/(720*(C.cutoff : ℝ)^3)+‖productSlope 6 s‖/(30240*(C.cutoff : ℝ)^5) := by
        unfold weightSlope
        bound
      _ ≤ (C.weightSlopeBound : ℝ) := by
        simp only [weightSlopeBound,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_pow,
          Rat.cast_natCast,Rat.cast_ofNat,Rat.cast_one]
        gcongr <;> first | assumption | positivity

/-- Separate uniform value and derivative estimates for the unchanged finite source. -/
theorem errors {C : Config} {s : ℂ} (hc : C.Guard)
    (hs : 0 ≤ s.re) (hn : ‖s‖ ≤ (C.size : ℝ)) :
    ‖finiteModel C.cutoff s-C.polynomial s‖ ≤ (C.valueRadius : ℝ) ∧
    ‖deriv (finiteModel C.cutoff) s-deriv C.polynomial s‖ ≤ (C.derivativeRadius : ℝ) := by
  have hp (k : ℕ) (hk : k ∈ Finset.Icc 1 C.cutoff) :=
    UniformPowerC1.errors (hc.2.2 k hk) hs hn
  have hN := Finset.mem_Icc.mpr ⟨hc.1,le_rfl⟩
  have hlast := hp C.cutoff hN
  have hlastV := hlast.1
  have hv : ‖∑ k ∈ Finset.Icc 1 C.cutoff,
      UniformPowerC1.power k s-UniformPowerC1.poly k C.logDegree C.derivativeTerms s‖ ≤
      ((∑ k ∈ Finset.Icc 1 C.cutoff,C.e0 k : ℚ) : ℝ) := by
    exact (norm_sum_le _ _).trans (by simpa only [Rat.cast_sum] using
      Finset.sum_le_sum (fun k hk => (hp k hk).1))
  have hd (k : ℕ) (hk : k ∈ Finset.Icc 1 C.cutoff) :
      ‖powerSlope k s-UniformPowerC1.slope k C.logDegree C.derivativeTerms s‖ ≤ (C.e1 k : ℝ) := by
    have h := (hp k hk).2
    rw [(UniformPowerC1.power_hasDerivAt (Finset.mem_Icc.mp hk).1 s).deriv,
      (UniformPowerC1.poly_hasDerivAt k C.logDegree C.derivativeTerms s).deriv] at h
    exact h
  have hdSum : ‖∑ k ∈ Finset.Icc 1 C.cutoff,
      powerSlope k s-UniformPowerC1.slope k C.logDegree C.derivativeTerms s‖ ≤
      ((∑ k ∈ Finset.Icc 1 C.cutoff,C.e1 k : ℚ) : ℝ) := by
    exact (norm_sum_le _ _).trans (by simpa only [Rat.cast_sum] using Finset.sum_le_sum hd)
  have hw := region_weight_bounds hc hn
  have hw0 := hw.1
  have hw1 := hw.2
  have hsub : ‖s-1‖ ≤ (C.size : ℝ)+1 :=
    (norm_sub_le s 1).trans (by simpa using add_le_add_right hn 1)
  have hlastD := hd C.cutoff hN
  have hS : (0 : ℝ) ≤ (C.size : ℝ) := by exact_mod_cast hc.2.1
  constructor
  · have heq : finiteModel C.cutoff s-C.polynomial s =
        (s-1)*(∑ k ∈ Finset.Icc 1 C.cutoff,
          UniformPowerC1.power k s-UniformPowerC1.poly k C.logDegree C.derivativeTerms s)+
        weightC C.cutoff s*(UniformPowerC1.power C.cutoff s-
          UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s) := by
      rw [finiteModel_regroup hc.1]
      simp only [polynomial,finiteDirichletPowerSum,UniformPowerC1.power,Finset.sum_sub_distrib]
      ring
    rw [heq]
    calc
      _ ≤ ‖s-1‖*‖∑ k ∈ Finset.Icc 1 C.cutoff,
          UniformPowerC1.power k s-UniformPowerC1.poly k C.logDegree C.derivativeTerms s‖+
          ‖weightC C.cutoff s‖*‖UniformPowerC1.power C.cutoff s-
          UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s‖ := by
        simpa only [norm_mul] using norm_add_le _ _
      _ ≤ (C.valueRadius : ℝ) := by
        simp only [valueRadius,Rat.cast_add,Rat.cast_mul,Rat.cast_one]
        gcongr <;> first | assumption | positivity
  · rw [(finite_hasDerivAt hc.1 s).deriv,(C.polynomial_hasDerivAt s).deriv]
    have heq : finiteSlope C.cutoff s-C.polynomialSlope s =
        (∑ k ∈ Finset.Icc 1 C.cutoff,
          UniformPowerC1.power k s-UniformPowerC1.poly k C.logDegree C.derivativeTerms s)+
        (s-1)*(∑ k ∈ Finset.Icc 1 C.cutoff,
          powerSlope k s-UniformPowerC1.slope k C.logDegree C.derivativeTerms s)+
        weightSlope C.cutoff s*(UniformPowerC1.power C.cutoff s-
          UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s)+
        weightC C.cutoff s*(powerSlope C.cutoff s-
          UniformPowerC1.slope C.cutoff C.logDegree C.derivativeTerms s) := by
      simp only [finiteSlope,polynomialSlope,Finset.sum_sub_distrib]
      ring
    rw [heq]
    calc
      _ ≤ ‖∑ k ∈ Finset.Icc 1 C.cutoff,
          UniformPowerC1.power k s-UniformPowerC1.poly k C.logDegree C.derivativeTerms s‖+
        ‖s-1‖*‖∑ k ∈ Finset.Icc 1 C.cutoff,
          powerSlope k s-UniformPowerC1.slope k C.logDegree C.derivativeTerms s‖+
        ‖weightSlope C.cutoff s‖*‖UniformPowerC1.power C.cutoff s-
          UniformPowerC1.poly C.cutoff C.logDegree C.derivativeTerms s‖+
        ‖weightC C.cutoff s‖*‖powerSlope C.cutoff s-
          UniformPowerC1.slope C.cutoff C.logDegree C.derivativeTerms s‖ := by bound
      _ ≤ (C.derivativeRadius : ℝ) := by
        simp only [derivativeRadius,Rat.cast_add,Rat.cast_mul,Rat.cast_one]
        gcongr <;> first | assumption | positivity

/-- Exact evaluation of this ONE polynomial at a Gaussian rational input. -/
def evaluate (C : Config) (s : Gaussian) : Gaussian :=
  Gaussian.qadd
    (Gaussian.qmul (Gaussian.qsub s (Gaussian.ofRat 1))
      (Gaussian.qsum (Finset.Icc 1 C.cutoff)
        (fun k => RationalPowerEvaluation.rawCenter k C.logDegree (C.derivativeTerms+1) s)))
    (Gaussian.qmul (weight C.cutoff s)
      (RationalPowerEvaluation.rawCenter C.cutoff C.logDegree (C.derivativeTerms+1) s))

lemma evaluate_value (C : Config) (s : Gaussian) : (C.evaluate s).value=C.polynomial s.value := by
  simp only [evaluate,Gaussian.value_qadd,Gaussian.value_qmul,Gaussian.value_qsub,
    Gaussian.value_ofRat,Gaussian.value_qsum,weight_value,RationalPowerEvaluation.rawCenter_value,
    polynomial,UniformPowerC1.poly,Rat.cast_one] <;> norm_cast

end Config
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.UniformFiniteC1
```
