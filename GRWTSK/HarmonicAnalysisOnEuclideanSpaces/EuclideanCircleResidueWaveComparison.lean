/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Exact Euclidean source: openai/math@4eaee87548250b2682affda7d05d947c05554bae
  OAI.Analysis.Fourier.LocalSmoothing.Comparator (result 079)
The comparison below proves an exact MULTIPLIER/FINITE-SAMPLE interface;
it does not assert a global Euclidean-to-torus Lp local-smoothing transference
or a q-uniform trace/sampling theorem.
-/
import GRWTSK.FunctionalAnalysis.LocalSmoothing
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbertFormalization
import GRWTSK.NumberTheory.RamanujanFourierHodge
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
import Mathlib.Tactic

/-!
# Exact Euclidean half-wave multiplier sampled on unfolded circular frequencies

The period-one circle has integer Fourier frequencies k with angular size
2*pi*abs(k). Every residue r mod q has infinitely many possible integer
frequencies k=r+q*w; a quotient label alone loses winding information and
cannot generally determine periodic half-wave evolution.

The source Euclidean half-wave is exactly the multiplier
    exp(-I * t * ||xi||).
We embed a frequency on the horizontal Euclidean axis and compare the
literal multiplier with the circle phase, including the factor 2*pi.
We then prove the finite residue-alias return with ALL integer labels and
all mixed contributions preserved, plus the complete weighted-l2 invariant
for the periodic Fourier coefficient flow at each Sobolev order.

All-order Fourier regularity is PRESERVED for data that have it: unitary wave
propagation does not smooth arbitrary rough data. OAI's Euclidean local
smoothing Lp spacetime estimate, by itself, is NOT transferred to the torus.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.EuclideanCircleResidueWaveComparison

open scoped BigOperators

/-- The original OAI Fourier convention uses angular frequency xi. -/
abbrev EuclideanTwo :=
  OAI.Analysis.Fourier.LocalSmoothing.Comparator.Space 2

/-- Embed the period-one circle's signed frequency k in Euclidean two-space.
The remaining coordinate is ZERO; dimensions are not silently identified. -/
def circleAxisFrequency (k : ℤ) : EuclideanTwo :=
  WithLp.toLp 2 (fun i : Fin 2 =>
    if i = 0 then 2 * Real.pi * (k : ℝ) else 0)

/-- Its actual Euclidean angular frequency is 2*pi*abs(k). -/
theorem circleAxisFrequency_norm (k : ℤ) :
    ‖circleAxisFrequency k‖ = 2 * Real.pi * |(k : ℝ)| := by
  rw [EuclideanSpace.norm_eq]
  simp only [circleAxisFrequency, Fin.sum_univ_two]
  have hπ : 0 ≤ 2 * Real.pi := by positivity
  simp [Real.sqrt_sq_eq_abs, abs_mul, abs_of_nonneg hπ]

/-- Exactly the phase appearing INSIDE the OAI Euclidean half-wave inverse
Fourier integral, with the same negative-time orientation and 2*pi unit. -/
def circleHalfWavePhase (t : ℝ) (k : ℤ) : ℂ :=
  Complex.exp (-Complex.I * (((t * (2 * Real.pi * |(k : ℝ)|)) : ℝ) : ℂ))

/-- The original Euclidean half-wave symbol restricted to circle-axis modes.
This is a multiplier identity; it does not identify inverse Fourier integrals. -/
theorem original_euclidean_multiplier_on_circle_axis (t : ℝ) (k : ℤ) :
    Complex.exp (-Complex.I * (((t * ‖circleAxisFrequency k‖) : ℝ) : ℂ)) =
      circleHalfWavePhase t k := by
  rw [circleAxisFrequency_norm]
  rfl

/-- The literal Fourier input multiplier from OpenAI result 079 agrees at
these frequencies, before ANY Fourier inversion or periodization. -/
theorem original_oai_fourier_integrand_axis
    (t : ℝ) (f : EuclideanTwo → ℂ) (k : ℤ) :
    Complex.exp (-Complex.I * (((t * ‖circleAxisFrequency k‖) : ℝ) : ℂ)) *
      OAI.Analysis.Fourier.LocalSmoothing.Comparator.angularFourier f (circleAxisFrequency k) =
    circleHalfWavePhase t k *
      OAI.Analysis.Fourier.LocalSmoothing.Comparator.angularFourier f (circleAxisFrequency k) := by
  rw [original_euclidean_multiplier_on_circle_axis]

/-- Unit modulus means the wave preserves coefficient magnitudes; it does
not provide positive-order smoothing from rough input. -/
theorem circleHalfWavePhase_norm (t : ℝ) (k : ℤ) :
    ‖circleHalfWavePhase t k‖ = 1 := by
  have hrewrite :
      -Complex.I * (((t * (2 * Real.pi * |(k : ℝ)|)) : ℝ) : ℂ) =
        (((-(t * (2 * Real.pi * |(k : ℝ)|))) : ℝ) : ℂ) * Complex.I := by
    push_cast
    ring
  rw [circleHalfWavePhase, hrewrite]
  exact Complex.norm_exp_ofReal_mul_I _

/-- A residue r and full integer winding w both contribute to the original
integer frequency. The winding label is NOT discarded. -/
def unfoldedFrequency (q : ℕ) (r : ZMod q) (w : ℤ) : ℤ :=
  (r.val : ℤ) + (q : ℤ) * w

/-- Its cyclic residue is exactly the selected residue. -/
theorem unfoldedFrequency_residue (q : ℕ) [NeZero q]
    (r : ZMod q) (w : ℤ) :
    ((unfoldedFrequency q r w : ℤ) : ZMod q) = r := by
  simp [unfoldedFrequency, ZMod.natCast_zmod_val]

/-- The signed, full-frequency coefficient at its actual integer label. -/
def evolvedCoefficient (t : ℝ) (a : ℤ → ℂ) (k : ℤ) : ℂ :=
  circleHalfWavePhase t k * a k

/-- Every residue-class amplitude is an exact sum of all ORIGINAL integer
labels mapping there, keeping the wave phase of each winding. -/
def aliasClassAmplitude (q : ℕ) [NeZero q]
    (S : Finset ℤ) (a : ℤ → ℂ) (t : ℝ) (c : ZMod q) : ℂ :=
  ∑ k ∈ S, if (k : ZMod q) = c then evolvedCoefficient t a k else 0

/-- The norm of each exact alias channel is controlled by its OWN original
integer-labeled inputs; no other residue is silently substituted. -/
theorem aliasClassAmplitude_norm_le
    (q : ℕ) [NeZero q] (S : Finset ℤ) (a : ℤ → ℂ)
    (t : ℝ) (c : ZMod q) :
    ‖aliasClassAmplitude q S a t c‖ ≤
      ∑ k ∈ S, if (k : ZMod q) = c then ‖a k‖ else 0 := by
  classical
  calc
    ‖aliasClassAmplitude q S a t c‖ ≤
      ∑ k ∈ S,
        ‖if (k : ZMod q) = c then evolvedCoefficient t a k else 0‖ := by
          unfold aliasClassAmplitude
          exact norm_sum_le _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro k _
      by_cases h : (k : ZMod q) = c
      · simp [h, evolvedCoefficient, norm_mul, circleHalfWavePhase_norm]
      · simp [h]

/-- Complete finite periodic sample with genuine additive characters. -/
def finitePeriodicSample (q : ℕ) [NeZero q]
    (S : Finset ℤ) (a : ℤ → ℂ) (t : ℝ) (x : ZMod q) : ℂ :=
  ∑ k ∈ S,
    evolvedCoefficient t a k * ZMod.stdAddChar ((k : ZMod q) * x)

/-- Reconstruction from EVERY residue alias class, before taking any
absolute values or quadratic energies. -/
def finiteAliasReconstruction (q : ℕ) [NeZero q]
    (S : Finset ℤ) (a : ℤ → ℂ) (t : ℝ) (x : ZMod q) : ℂ :=
  ∑ c : ZMod q, aliasClassAmplitude q S a t c * ZMod.stdAddChar (c * x)

/-- Exact Fourier class return even in the presence of arbitrary aliasing.
The phase is applied at each integer label BEFORE collapsing to residues. -/
theorem finiteAliasReconstruction_eq_original
    (q : ℕ) [NeZero q]
    (S : Finset ℤ) (a : ℤ → ℂ) (t : ℝ) (x : ZMod q) :
    finiteAliasReconstruction q S a t x = finitePeriodicSample q S a t x := by
  classical
  unfold finiteAliasReconstruction aliasClassAmplitude finitePeriodicSample
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  simp [ite_mul, Finset.sum_ite_eq', Finset.mem_univ]

/-- The complete finite coefficient energy is exactly conserved by the
periodic wave. This is independent of the residue sampling map, which is
not automatically an isometry in the presence of aliasing. -/
theorem finiteCoefficientEnergy_preserved
    (S : Finset ℤ) (a : ℤ → ℂ) (t : ℝ) :
    (∑ k ∈ S, ‖evolvedCoefficient t a k‖ ^ 2) =
      ∑ k ∈ S, ‖a k‖ ^ 2 := by
  apply Finset.sum_congr rfl
  intro k _
  simp [evolvedCoefficient, norm_mul, circleHalfWavePhase_norm]

/-- Every integer Fourier coefficient is retained in the full completed
Hilbert sum, not projected to a finite residue quotient. -/
abbrev IntegerFourierHilbert := lp (fun _ : ℤ => ℂ) 2

/-- Extend the exact unit-modulus multiplier to the full completed l2 space. -/
def periodicHalfWave (t : ℝ) (a : IntegerFourierHilbert) :
    IntegerFourierHilbert :=
  ⟨fun k => circleHalfWavePhase t k * a k,
    (lp.memℓp a).mono' (by
      intro k
      simp [norm_mul, circleHalfWavePhase_norm])⟩

/-- ALL Sobolev coefficient orders, not an assertion of C-infinity regularity
for an arbitrary nondecaying arithmetic or geometric sample sequence. -/
def AllFourierOrders (a : IntegerFourierHilbert) : Prop :=
  ∀ m : ℕ,
    Summable (fun k : ℤ =>
      (1 + (k : ℝ) ^ 2) ^ m * ‖a k‖ ^ 2)

/-- Exact propagation of every existing Fourier-Sobolev order in both
directions (unit modulus). No positive derivative gain is claimed. -/
theorem periodicHalfWave_all_orders_iff
    (t : ℝ) (a : IntegerFourierHilbert) :
    AllFourierOrders (periodicHalfWave t a) ↔ AllFourierOrders a := by
  unfold AllFourierOrders
  constructor
  · intro h m
    simpa only [periodicHalfWave, norm_mul,
      circleHalfWavePhase_norm, one_mul] using h m
  · intro h m
    simpa only [periodicHalfWave, norm_mul,
      circleHalfWavePhase_norm, one_mul] using h m

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.EuclideanCircleResidueWaveComparison
