/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit and kernel replay: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFinitePrimeObservations
import Mathlib.NumberTheory.LSeries.Dirichlet
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AlpogeWindowSourceTransport
import Mathlib.Tactic

/-!
# Exact finite arithmetic observations to Alpoge's intermediate Gm source

These independent definitions preserve the ACTUAL von Mangoldt function,
complex Dirichlet character values, log-derivative correction, and real
weights. They are modeled on source-pinned Alpoge StatementOC, StatementFL
and the nontrivial-character branch of An.gChi / Level.Gm.

No Alpoge Main, FinalTheorems, everyCharacter or RH equivalence is imported.
The source's EAtH, CoreAtH, conductor-family selection and Landau bound
are not established or replaced by a synthetic positive form. A bound
consumer below takes their exact jointly required original analytic
supplier as a DISTINCT EXPLICIT hypothesis, not a theorem of this file.

The Weil finite arithmetic observations store Lambda(n)/sqrt(n), *not*
Lambda(n). This file proves the required sqrt(n) conversion and a
certified real interval for Lambda(n), preserving the original prime-
power predicate and dyadic log-enclosure error.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeGmArithmeticReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.FinitePrimeObservations
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPrimeObservations
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- Exactly the original natural-number arithmetic von Mangoldt weight. -/
def sourceLambda (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n

/-- Undo the 1/sqrt(n) normalization in the existing physical Weil source. -/
def lambdaFromPhysical (n : ℕ) : ℝ :=
  Real.sqrt (n : ℝ) * LowSchur.primeWeight n

/-- The genuine physical Weil prime coefficient is Lambda(n)/sqrt(n).
The positive n hypothesis is essential to cancel the square root. -/
theorem lambdaFromPhysical_eq_vonMangoldt (n : ℕ) (hn : 0 < n) :
    lambdaFromPhysical n = sourceLambda n := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast hn
  have hs : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  unfold lambdaFromPhysical sourceLambda LowSchur.primeWeight
  field_simp [ne_of_gt hs]

/-- Exact rational-interval midpoint, scaled back to Alpoge's Lambda. -/
def observedLambda (n : ℕ) : ℝ :=
  Real.sqrt (n : ℝ) *
    (((primeWeightBounds n).1 : ℝ) + ((primeWeightBounds n).2 : ℝ)) / 2

/-- Exact (not floating-point) radius, scaled by sqrt(n). -/
def observedLambdaError (n : ℕ) : ℝ :=
  Real.sqrt (n : ℝ) *
    (((primeWeightBounds n).2 : ℝ) - ((primeWeightBounds n).1 : ℝ)) / 2

/-- A source-specific, all-positive-natural coefficient interval.
The only analytic input is the already maintained primeWeightBounds_sound. -/
theorem observedLambda_sound (n : ℕ) (hn : 0 < n) :
    |observedLambda n - sourceLambda n| ≤ observedLambdaError n := by
  have h := primeWeightBounds_sound (n := n) hn
  change ((primeWeightBounds n).1 : ℝ) ≤ LowSchur.primeWeight n ∧
    LowSchur.primeWeight n ≤ ((primeWeightBounds n).2 : ℝ) at h
  have hpos : 0 ≤ Real.sqrt (n : ℝ) := Real.sqrt_nonneg _
  have hlo := mul_le_mul_of_nonneg_left h.1 hpos
  have hhi := mul_le_mul_of_nonneg_left h.2 hpos
  rw [← lambdaFromPhysical_eq_vonMangoldt n hn] at ⊢
  unfold lambdaFromPhysical observedLambda observedLambdaError
  apply abs_le.mpr
  constructor <;> nlinarith [hlo, hhi]

/-- The literal finite interval in Alpoge's Sz/SchiC definitions. -/
def sourceWindow (x : ℝ) : Finset ℕ := Finset.Icc 1 ⌊x⌋₊

/-- Prime-power sum with an explicitly supplied real coefficient table. -/
def observedSz (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ sourceWindow x, lambda n * (x / (n : ℝ) - 1)

/-- Preserve complex phases; do not replace chi(n) by its real part. -/
def observedSchiC {N : ℕ} (lambda : ℕ → ℝ)
    (chi : DirichletCharacter ℂ N) (x : ℝ) : ℂ :=
  ∑ n ∈ sourceWindow x,
    (lambda n : ℂ) * chi n * ((x / (n : ℝ) - 1 : ℝ) : ℂ)

/-- On the *actual* finite sum window, Alpoge's positive-part term is
redundant. Its endpoint n=floor x is included, with the correct zero
boundary value. -/
theorem max_x_div_n_sub_one (x : ℝ) (hx : 1 ≤ x) (n : ℕ)
    (hn : n ∈ sourceWindow x) :
    max (x / (n : ℝ) - 1) 0 = x / (n : ℝ) - 1 := by
  have hle := (Finset.mem_Icc.mp hn).2
  have hpositive : 0 < n := by
    have hlow := (Finset.mem_Icc.mp hn).1
    omega
  have hnR : (n : ℝ) ≤ x :=
    (Nat.le_floor_iff (by linarith)).mpr hle
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hpositive
  have hr : (1 : ℝ) ≤ x / (n : ℝ) := by
    apply (le_div_iff₀ hnpos).mpr
    simpa only [one_mul] using hnR
  exact max_eq_left (sub_nonneg.mpr hr)

/-- The arithmetic head written with Alpoge's exact max convention. -/
def positivePartSz (x : ℝ) : ℝ :=
  ∑ n ∈ sourceWindow x,
    sourceLambda n * max (x / (n : ℝ) - 1) 0

def positivePartSchiC {N : ℕ} (chi : DirichletCharacter ℂ N) (x : ℝ) : ℂ :=
  ∑ n ∈ sourceWindow x,
    (sourceLambda n : ℂ) * chi n *
      ((max (x / (n : ℝ) - 1) 0 : ℝ) : ℂ)

/-- Source equality for the scalar arithmetic head, all real x>=1. -/
theorem positivePartSz_eq_source (x : ℝ) (hx : 1 ≤ x) :
    positivePartSz x = observedSz sourceLambda x := by
  unfold positivePartSz observedSz
  apply Finset.sum_congr rfl
  intro n hn
  rw [max_x_div_n_sub_one x hx n hn]

/-- Source equality for complex character phases, all real x>=1. -/
theorem positivePartSchiC_eq_source {N : ℕ}
    (chi : DirichletCharacter ℂ N) (x : ℝ) (hx : 1 ≤ x) :
    positivePartSchiC chi x = observedSchiC sourceLambda chi x := by
  unfold positivePartSchiC observedSchiC
  apply Finset.sum_congr rfl
  intro n hn
  rw [max_x_div_n_sub_one x hx n hn]

/-- The exact source's own Gz normalization. No pole-type L'/L
term is inserted for the trivial character. -/
def sourceGz (x : ℝ) : ℝ :=
  observedSz sourceLambda x - x * Real.log x +
    (1 + Real.eulerMascheroniConstant) * x

def observedGz (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  observedSz lambda x - x * Real.log x +
    (1 + Real.eulerMascheroniConstant) * x

/-- Real arithmetic plus its ORIGINAL analytic logarithmic derivative.
This is only intended for nontrivial characters with nonzero L(1,chi). -/
def sourceGchiC {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (x : ℝ) : ℂ :=
  observedSchiC sourceLambda chi x +
    (deriv (DirichletCharacter.LFunction chi) 1 /
      DirichletCharacter.LFunction chi 1) * x

def observedGchiC {N : ℕ} [NeZero N] (lambda : ℕ → ℝ)
    (chi : DirichletCharacter ℂ N) (x : ℝ) : ℂ :=
  observedSchiC lambda chi x +
    (deriv (DirichletCharacter.LFunction chi) 1 /
      DirichletCharacter.LFunction chi 1) * x

/-- A finite nontrivial-character family source, following Alpoge Level.Gm.
The family's actual conductor, primitivity and level weights must be
provided and checked by the consumer. -/
def sourceGm {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (x : ℝ) : ℝ :=
  sourceGz x + ∑ i, weight i * (sourceGchiC (chi i) x).re

def observedGm {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  observedGz lambda x + ∑ i, weight i * (observedGchiC lambda (chi i) x).re

/-- The L-function correction remains an independent analytic term.
This matches the actual *nontrivial* An.gChi branch definition. -/
def alpogeStyleG (x : ℝ) : ℝ :=
  positivePartSz x -
    x * (Real.log x - 1 - Real.eulerMascheroniConstant)

def alpogeStyleGchiC {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (x : ℝ) : ℂ :=
  if chi = 1 then (alpogeStyleG x : ℂ)
  else positivePartSchiC chi x +
    (deriv (DirichletCharacter.LFunction chi) 1 /
      DirichletCharacter.LFunction chi 1) * x

def alpogeStyleGm {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (x : ℝ) : ℝ :=
  alpogeStyleG x + ∑ i, weight i * (alpogeStyleGchiC (chi i) x).re

/-- Exact normalization return to the intermediate Alpoge definitions,
provided the chosen character family consists of nontrivial characters.
The original Level.Nt, weights, conductors and CoreAtH remain separate. -/
theorem sourceGm_eq_alpoge_style_of_nontrivial {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (x : ℝ)
    (hx : 1 ≤ x) (hnon : ∀ i, chi i ≠ 1) :
    sourceGm N chi weight x = alpogeStyleGm N chi weight x := by
  have hg : sourceGz x = alpogeStyleG x := by
    unfold sourceGz alpogeStyleG
    rw [positivePartSz_eq_source x hx]
    ring
  have hc (i : ι) :
      sourceGchiC (chi i) x = alpogeStyleGchiC (chi i) x := by
    unfold sourceGchiC alpogeStyleGchiC
    rw [if_neg (hnon i)]
    rw [positivePartSchiC_eq_source (chi i) x hx]
  unfold sourceGm alpogeStyleGm
  rw [hg]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [hc i]

/-- Genuine exact arithmetic observations are sound for the zeta base. -/
theorem observedSz_eq_source_of_exact (lambda : ℕ → ℝ) (x : ℝ)
    (h : ∀ n ∈ sourceWindow x, lambda n = sourceLambda n) :
    observedSz lambda x = observedSz sourceLambda x := by
  unfold observedSz
  apply Finset.sum_congr rfl
  intro n hn
  rw [h n hn]

/-- Genuine exact arithmetic observations preserve ALL complex phases. -/
theorem observedSchiC_eq_source_of_exact {N : ℕ} (lambda : ℕ → ℝ)
    (chi : DirichletCharacter ℂ N) (x : ℝ)
    (h : ∀ n ∈ sourceWindow x, lambda n = sourceLambda n) :
    observedSchiC lambda chi x = observedSchiC sourceLambda chi x := by
  unfold observedSchiC
  apply Finset.sum_congr rfl
  intro n hn
  rw [h n hn]

/-- Recover EXACTLY the full zeta-plus-nontrivial-character Gm arithmetic
statistic. All analytic log-derivative terms are unchanged, not erased. -/
theorem observedGm_eq_source_of_exact {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x : ℝ)
    (h : ∀ n ∈ sourceWindow x, lambda n = sourceLambda n) :
    observedGm N chi weight lambda x = sourceGm N chi weight x := by
  have hz : observedGz lambda x = sourceGz x := by
    unfold observedGz sourceGz
    rw [observedSz_eq_source_of_exact lambda x h]
  have hc (i : ι) :
      observedGchiC lambda (chi i) x = sourceGchiC (chi i) x := by
    unfold observedGchiC sourceGchiC
    rw [observedSchiC_eq_source_of_exact lambda (chi i) x h]
  unfold observedGm sourceGm
  rw [hz]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [hc i]

/-- Propagate exact or interval-certified von Mangoldt observations
through the genuine zeta prime-power window, with no hidden cancellation. -/
theorem observedSz_error_le (lambda err : ℕ → ℝ) (x : ℝ)
    (h : ∀ n ∈ sourceWindow x,
      |lambda n - sourceLambda n| ≤ err n) :
    |observedSz lambda x - observedSz sourceLambda x| ≤
      ∑ n ∈ sourceWindow x, err n * |x / (n : ℝ) - 1| := by
  have hdiff : observedSz lambda x - observedSz sourceLambda x =
      ∑ n ∈ sourceWindow x,
        (lambda n - sourceLambda n) * (x / (n : ℝ) - 1) := by
    unfold observedSz
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hdiff]
  calc
    |∑ n ∈ sourceWindow x,
          (lambda n - sourceLambda n) * (x / (n : ℝ) - 1)|
        ≤ ∑ n ∈ sourceWindow x,
          |(lambda n - sourceLambda n) * (x / (n : ℝ) - 1)| :=
            Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ sourceWindow x,
          |lambda n - sourceLambda n| * |x / (n : ℝ) - 1| := by
            simp only [abs_mul]
    _ ≤ ∑ n ∈ sourceWindow x, err n * |x / (n : ℝ) - 1| := by
          apply Finset.sum_le_sum
          intro n hn
          exact mul_le_mul_of_nonneg_right (h n hn) (abs_nonneg _)

/-- The real weighted family error decomposes into the genuine zeta
base and every nontrivial character component, with signed weights
measured in absolute value. The component supplies remain explicit. -/
theorem observedGm_error_le_of_component_bounds {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x EZ : ℝ)
    (Echi : ι → ℝ)
    (hZ : |observedGz lambda x - sourceGz x| ≤ EZ)
    (hChi : ∀ i, |(observedGchiC lambda (chi i) x -
        sourceGchiC (chi i) x).re| ≤ Echi i) :
    |observedGm N chi weight lambda x - sourceGm N chi weight x| ≤
      EZ + ∑ i, |weight i| * Echi i := by
  have hdiffSum :
      (∑ i, weight i * (observedGchiC lambda (chi i) x -
        sourceGchiC (chi i) x).re) =
      (∑ i, weight i * (observedGchiC lambda (chi i) x).re) -
      (∑ i, weight i * (sourceGchiC (chi i) x).re) := by
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    rw [Complex.sub_re]
    ring
  have hdiff : observedGm N chi weight lambda x - sourceGm N chi weight x =
      (observedGz lambda x - sourceGz x) +
        ∑ i, weight i * (observedGchiC lambda (chi i) x -
          sourceGchiC (chi i) x).re := by
    unfold observedGm sourceGm
    rw [hdiffSum]
    ring
  have hSum :
      |∑ i, weight i * (observedGchiC lambda (chi i) x -
          sourceGchiC (chi i) x).re| ≤
        ∑ i, |weight i| * Echi i := by
    calc
      _ ≤ ∑ i, |weight i * (observedGchiC lambda (chi i) x -
          sourceGchiC (chi i) x).re| := Finset.abs_sum_le_sum_abs _ _
      _ = ∑ i, |weight i| * |(observedGchiC lambda (chi i) x -
          sourceGchiC (chi i) x).re| := by simp only [abs_mul]
      _ ≤ ∑ i, |weight i| * Echi i := by
        apply Finset.sum_le_sum
        intro i _
        exact mul_le_mul_of_nonneg_left (hChi i) (abs_nonneg _)
  rw [hdiff]
  exact (abs_add_le _ _).trans (add_le_add hZ hSum)

/-- The source-bound consumer retains BOTH Alpoge intermediate inputs
(EAtH and CoreAtH), their original conditional analytic implication,
and the exact finite arithmetic observation condition. Their precise
upstream types need a separately pinned isolated port. No zero-free or RH
assertion is obtained by substituting arbitrary Props for their proofs. -/
theorem observedGm_upper_of_intermediate_suppliers
    {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ) (x exponent : ℝ)
    (EAtH CoreAtH : Prop)
    (hEAtH : EAtH) (hCoreAtH : CoreAtH)
    (hcore_gm : EAtH → CoreAtH → sourceGm N chi weight x ≤ x ^ exponent)
    (h : ∀ n ∈ sourceWindow x, lambda n = sourceLambda n) :
    observedGm N chi weight lambda x ≤ x ^ exponent := by
  rw [observedGm_eq_source_of_exact N chi weight lambda x h]
  exact hcore_gm hEAtH hCoreAtH


/-- The original CoreGm supplier EAtH + CoreAtH is retained, and
an independently certified arithmetic readout error consumes only
an explicit additional exponent margin. The true upstream instance
is not supplied in this source module. -/
theorem observedGm_upper_with_certified_error
    {ι : Type*} [Fintype ι]
    (N : ι → ℕ) [∀ i, NeZero (N i)]
    (chi : (i : ι) → DirichletCharacter ℂ (N i))
    (weight : ι → ℝ) (lambda : ℕ → ℝ)
    (x theta theta' err : ℝ)
    (EAtH CoreAtH : Prop)
    (hEAtH : EAtH) (hCoreAtH : CoreAtH)
    (hCore : EAtH → CoreAtH →
       sourceGm N chi weight x ≤ x ^ theta)
    (hObs : |observedGm N chi weight lambda x -
        sourceGm N chi weight x| ≤ err)
    (hMargin : err ≤ x ^ theta' - x ^ theta) :
    observedGm N chi weight lambda x ≤ x ^ theta' :=
  GRWTSK.NumberTheory.AlpogeWindowSourceTransport.ceiling_of_error_margin
    (sourceGm N chi weight) (observedGm N chi weight lambda)
    x theta theta' err (hCore hEAtH hCoreAtH) hObs hMargin

end GRWTSK.NumberTheory.AlpogeGmArithmeticReturn
