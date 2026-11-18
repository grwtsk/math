/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalSourceOperator
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddConcreteResidual

/-!
# Literal finite-sine action of the physical Weil operator

The existing finite trial output is bordered: its pole port is independent.
For the unbordered source operator the port MUST be -2 times the original
sinh moment. With that value the physical output represents the complete
signed source against every maximal-domain test, not merely a finite basis.

This proves actual operator-domain membership and returns every coefficient
to the original augmented row. It does not assume that finite sines form a
core, identify the spectrum with zeta zeros, or prove arithmetic positivity.
The consumer is the complete residual estimate in WeilFiniteSineSolveResidual.

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineOperator

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear PhysicalSourceOperator MirroredHermitian
open OddRootProjection OddSineForm OddGammaOutput OddSineParseval
open OddPrimePoleOutput OddConcreteResidual OddResidualSourceComparison
open OddSineHeadRemoval OddWrapEnergy LowSchur

/-- Translated null sets are retained in BOTH prime orientations. -/
theorem primeOutput_congr_ae (T : ℝ) {f g : ℝ → ℝ}
    (hfg : f =ᵐ[volume] g) : primeOutput T f =ᵐ[volume] primeOutput T g := by
  have hp : ∀ᵐ t ∂volume, ∀ q : ℕ, f (t + Real.log q) = g (t + Real.log q) :=
    ae_all_iff.mpr fun q =>
      (measurePreserving_add_right volume (Real.log q)).quasiMeasurePreserving.ae hfg
  have hm : ∀ᵐ t ∂volume, ∀ q : ℕ, f (t - Real.log q) = g (t - Real.log q) := by
    apply ae_all_iff.mpr
    intro q
    simpa only [sub_eq_add_neg] using
      (measurePreserving_add_right volume (-Real.log q)).quasiMeasurePreserving.ae hfg
  filter_upwards [hp, hm] with t ht ht'
  unfold primeOutput
  apply Finset.sum_congr rfl
  intro q _
  rw [ht q, ht' q]

/-- This is representative invariance, not an assertion of integrability. -/
theorem gammaPairing_congr_ae {f f' g g' : ℝ → ℝ}
    (hf : f =ᵐ[volume] f') (hg : g =ᵐ[volume] g') :
    gammaPairing f g = gammaPairing f' g' := by
  unfold gammaPairing
  apply integral_congr_ae
  filter_upwards [] with r
  congr 1
  apply integral_congr_ae
  filter_upwards [hf, hg,
    (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hf,
    (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hg]
    with t hft hgt hfr hgr
  rw [hft, hgt, hfr, hgr]

/-- Return equivalence-class calculations to the unchanged literal source. -/
theorem sourcePairing_congr_ae (T β : ℝ) {f f' g g' : ℝ → ℝ}
    (hf : f =ᵐ[volume] f') (hg : g =ᵐ[volume] g') :
    sourcePairing T β f g = sourcePairing T β f' g' := by
  have hmass : (∫ t : ℝ, f t * g t) = ∫ t : ℝ, f' t * g' t := by
    apply integral_congr_ae
    filter_upwards [hf, hg] with t ht ht'
    rw [ht, ht']
  have hprime : (∫ t : ℝ, g t * primeOutput T f t) =
      ∫ t : ℝ, g' t * primeOutput T f' t := by
    apply integral_congr_ae
    filter_upwards [hg, primeOutput_congr_ae T hf] with t ht ht'
    rw [ht, ht']
  have hpf : (∫ t : ℝ, f t * Real.sinh (t / 2)) =
      ∫ t : ℝ, f' t * Real.sinh (t / 2) := by
    apply integral_congr_ae
    filter_upwards [hf] with t ht
    rw [ht]
  have hpg : (∫ t : ℝ, g t * Real.sinh (t / 2)) =
      ∫ t : ℝ, g' t * Real.sinh (t / 2) := by
    apply integral_congr_ae
    filter_upwards [hg] with t ht
    rw [ht]
  simp only [sourcePairing, hmass, hprime, hpf, hpg, gammaPairing_congr_ae hf hg]

/-- Realize a supported odd source representative in the existing physical
subspace. This introduces no second physical space or completion. -/
private def sourceClass (T : ℝ) (f : ℝ → ℝ) (hf : MemLp f 2 volume)
    (hs : ∀ t, t ∉ Icc (-T) T → f t = 0) (ho : Function.Odd f) :
    WindowPhysical T := by
  let g : Physical := hf.toLp f
  have hg : g =ᵐ[volume] f := hf.coeFn_toLp
  refine ⟨g, (mem_supportedOdd_iff T g).2 ⟨?_, ?_⟩⟩
  · filter_upwards [hg] with t ht ht'
    rw [ht]
    exact hs t ht'
  · filter_upwards [hg, (Measure.measurePreserving_neg volume).quasiMeasurePreserving.ae hg]
      with t ht hnt
    rw [hnt, ht, ho t]

variable {M : ℕ}

def finiteInput (T : ℝ) (x : Fin M → ℝ) : WindowPhysical T :=
  sourceClass T (finiteSine T x) (finiteSine_memLp T x)
    (fun _ ht => finiteSine_eq_zero_off_window T x ht) (finiteSine_odd T x)

theorem finiteInput_ae (T : ℝ) (x : Fin M → ℝ) :
    (finiteInput T x : Physical) =ᵐ[volume] finiteSine T x :=
  (finiteSine_memLp T x).coeFn_toLp

/-- The scalar is the minimizing port of the ORIGINAL odd bordered form. -/
def polePort (T : ℝ) (x : Fin M → ℝ) : ℝ :=
  -2 * (∫ t : ℝ, finiteSine T x t * Real.sinh (t / 2))

/-- Literal gamma output + both signed prime shifts + physical shift +
the negative rank-one pole. No regularization is included here. -/
def literalOutput (T β : ℝ) (x : Fin M → ℝ) : ℝ → ℝ :=
  borderedTrialOutput T β x (polePort T x)

def finiteOutput (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ) :
    WindowPhysical T :=
  sourceClass T (literalOutput T β x)
    (borderedTrialOutput_memLp T hT β x (polePort T x))
    (fun _ ht => borderedTrialOutput_support T β x (polePort T x) ht)
    (borderedTrialOutput_odd T β x (polePort T x))

theorem finiteOutput_ae (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ) :
    (finiteOutput T hT β x : Physical) =ᵐ[volume] literalOutput T β x :=
  (borderedTrialOutput_memLp T hT β x (polePort T x)).coeFn_toLp

/-- Finite energy is supplied by the existing gamma theorem. -/
theorem exists_finiteLift (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    ∃ z : FormDomain T, windowInput T z = finiteInput T x := by
  have hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → finiteSine T x t = 0 :=
    Eventually.of_forall (fun _ ht => finiteSine_eq_zero_off_window T x ht)
  have ho : ∀ᵐ t ∂volume, finiteSine T x (-t) = -finiteSine T x t :=
    Eventually.of_forall (finiteSine_odd T x)
  have he : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r (finiteSine T x)) (Ioi (0 : ℝ)) := by
    simpa only [zeroShiftEnergy, zeroShiftSquare] using
      integrableOn_gammaEnergy_finiteSine T hT x
  obtain ⟨z, hz⟩ := (existsUnique_form_lift_of_source T (finiteSine T x)
    (finiteSine_memLp T x) hs ho he).exists
  exact ⟨z, Subtype.ext hz⟩

def finiteLift (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) : FormDomain T :=
  Classical.choose (exists_finiteLift T hT x)

@[simp] theorem finiteLift_windowInput (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    windowInput T (finiteLift T hT x) = finiteInput T x :=
  Classical.choose_spec (exists_finiteLift T hT x)

theorem finiteLift_input_ae (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    input T (finiteLift T hT x) =ᵐ[volume] finiteSine T x := by
  have he : input T (finiteLift T hT x) = (finiteInput T x : Physical) :=
    congrArg (fun f : WindowPhysical T => (f : Physical)) (finiteLift_windowInput T hT x)
  rw [he]
  exact finiteInput_ae T x

/-- Crucial full-test identity. The pole port is not chosen to make the
source positive; it exactly reproduces the original negative pole term. -/
theorem literalOutput_pair (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → g t = 0) :
    (∫ t : ℝ, g t * literalOutput T β x t) = sourcePairing T β (finiteSine T x) g := by
  have hmass : (∫ t : ℝ, g t * finiteSine T x t) =
      ∫ t : ℝ, finiteSine T x t * g t := by
    apply integral_congr_ae
    filter_upwards [] with t
    ring
  unfold literalOutput
  rw [integral_mul_borderedTrialOutput T hT β x (polePort T x) hg hgm hgs]
  change gammaPairing g (finiteSine T x) +
    ((gammaConstant 1 0 - β) * (∫ t : ℝ, g t * finiteSine T x t) -
      (∫ t : ℝ, g t * primeOutput T (finiteSine T x) t) +
      polePort T x * (∫ t : ℝ, g t * Real.sinh (t / 2))) = _
  rw [gammaPairing_symmetric g (finiteSine T x), hmass]
  unfold sourcePairing polePort
  ring

theorem finiteOutput_pair (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ)
    (w : FormDomain T) :
    inner ℝ (finiteOutput T hT β x) (windowInput T w) =
      sourcePairing T β (finiteSine T x) (input T w) := by
  change inner ℝ (finiteOutput T hT β x : Physical) (input T w) = _
  rw [L2.inner_def]
  calc
    (∫ t, inner ℝ ((finiteOutput T hT β x : Physical) t) (input T w t)) =
        ∫ t, input T w t * literalOutput T β x t := by
      apply integral_congr_ae
      filter_upwards [finiteOutput_ae T hT β x] with t ht
      simp [ht, RCLike.inner_apply, mul_comm]
    _ = _ := literalOutput_pair T hT β x (Lp.memLp (input T w))
      (Lp.stronglyMeasurable (input T w)).measurable (form_input_supported T w)

theorem finiteLift_sourceForm (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ)
    (w : FormDomain T) :
    sourceForm T β (finiteLift T hT x) w =
      inner ℝ (finiteOutput T hT β x) (windowInput T w) := by
  rw [sourceForm_apply, finiteOutput_pair]
  exact sourcePairing_congr_ae T β (finiteLift_input_ae T hT x) (EventuallyEq.rfl)

/-- Actual graph membership, derived from all maximal-domain tests. -/
theorem finiteSine_graph (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ) :
    (finiteInput T x, finiteOutput T hT β x) ∈ (sourceOperator T β hT).graph := by
  have h := (sourceOperator_form_iff T β hT (finiteLift T hT x)
    (finiteOutput T hT β x)).2 (finiteLift_sourceForm T hT β x)
  simpa only [finiteLift_windowInput] using h

theorem finiteSine_mem_domain (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ) :
    finiteInput T x ∈ (sourceOperator T β hT).domain :=
  LinearPMap.mem_domain_of_mem_graph (finiteSine_graph T hT β x)

def finiteDomain (T : ℝ) (hT : 0 < T) (β : ℝ) (x : Fin M → ℝ) :
    (sourceOperator T β hT).domain :=
  ⟨finiteInput T x, finiteSine_mem_domain T hT β x⟩

@[simp] theorem sourceOperator_finiteDomain (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : Fin M → ℝ) :
    sourceOperator T β hT (finiteDomain T hT β x) = finiteOutput T hT β x :=
  (sourceOperator T β hT).mem_graph_snd_inj
    ((sourceOperator T β hT).mem_graph (finiteDomain T hT β x))
    (finiteSine_graph T hT β x) rfl

/-- Adding physical mass changes beta to beta-delta; the pole is unchanged. -/
theorem literalOutput_shift (T β δ : ℝ) (x : Fin M → ℝ) (t : ℝ) :
    literalOutput T (β - δ) x t = literalOutput T β x t + δ * finiteSine T x t := by
  by_cases ht : t ∈ Icc (-T) T
  · simp only [literalOutput, borderedTrialOutput, primePoleOutput, indicator_of_mem ht]
    ring
  · simp [literalOutput, borderedTrialOutput, primePoleOutput, ht,
      finiteSine_eq_zero_off_window T x ht]

theorem finiteOutput_shift (T : ℝ) (hT : 0 < T) (β δ : ℝ) (x : Fin M → ℝ) :
    finiteOutput T hT (β - δ) x = finiteOutput T hT β x + δ • finiteInput T x := by
  apply Subtype.ext
  apply Lp.ext
  filter_upwards [finiteOutput_ae T hT (β - δ) x, finiteOutput_ae T hT β x,
    finiteInput_ae T x,
    Lp.coeFn_add (finiteOutput T hT β x : Physical) (δ • (finiteInput T x : Physical)),
    Lp.coeFn_smul δ (finiteInput T x : Physical)] with t hl hr hx ha hs
  simpa only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, hl, ha, hs, hr, hx] using
    literalOutput_shift T β δ x t

/-- Exact coefficient invariance under changing L2 representatives. -/
theorem sineCoefficient_congr_ae (T : ℝ) (n : ℕ) {f g : ℝ → ℝ}
    (hfg : f =ᵐ[volume] g) : sineCoefficient T f n = sineCoefficient T g n := by
  unfold sineCoefficient
  apply integral_congr_ae
  filter_upwards [hfg] with t ht
  rw [ht]

theorem finiteInput_coefficient (T : ℝ) (x : Fin M → ℝ) (n : ℕ) :
    sineCoefficient T (finiteInput T x : Physical) n = sineCoefficient T (finiteSine T x) n :=
  sineCoefficient_congr_ae T n (finiteInput_ae T x)

/-- Every positive coefficient, not only the retained head, is the
original row at the minimizing pole port. -/
theorem finiteOutput_coefficient (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (n : ℕ) :
    sineCoefficient T (finiteOutput T hT β (fun i : Fin M => x (i.val + 1)) : Physical)
        (n + 1) =
      literalAugmentedRow M T x (polePort T (fun i : Fin M => x (i.val + 1))) β (n + 1) := by
  rw [sineCoefficient_congr_ae T (n + 1) (finiteOutput_ae T hT β _)]
  exact sineCoefficient_borderedTrialOutput T hT β x _ n

/-- Matrix coefficients of the genuine physical operator, with no finite
model substituted for its output or operator domain. -/
theorem sourceOperator_coefficient (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (n : ℕ) :
    sineCoefficient T
        (sourceOperator T β hT (finiteDomain T hT β (fun i : Fin M => x (i.val + 1))) : Physical)
        (n + 1) =
      literalAugmentedRow M T x (polePort T (fun i : Fin M => x (i.val + 1))) β (n + 1) := by
  rw [sourceOperator_finiteDomain]
  exact finiteOutput_coefficient T hT β x n

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineOperator
