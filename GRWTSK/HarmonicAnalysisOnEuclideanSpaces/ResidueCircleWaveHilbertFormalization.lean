/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

This is an additive source leaf. No admitted proof holes, new trust
assumptions, execution, or public-root import; generic cycle maps do not implement
an actual Betti/CM-Hodge realization or a Euclidean half-wave propagator.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbert
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Tactic

/-!
# Source-identified Hodge classes and all-order residue-wave regularization

This is a second, theorem-bearing layer above `ResidueCircleWaveHilbert`.

1. A Q-linear cycle-class port and Q-linear Hilbert realization define the
   CLOSED COMPLEX SPAN of *actual images of cycle classes*.
2. If the selected Hodge classes are in the image of the selected cycle-class
   map (a separately supplied theorem), their Hilbert residual is exactly
   zero. The orthogonal complement records everything not so realized.
3. A diagonal wave multiplier with an explicit bound at EVERY dyadic order
   sends genuine l2 coefficient packets into the all-orders summability
   domain. A finite-scale cutoff is a constructive, source-independent
   example. Its omitted tail is retained exactly, never called zero.

The external OpenAI Euclidean local-smoothing and CM rational-Hodge results
must be connected only by proved, source-identified realization/rescaling
adapters at their actual types. They are not invoked as hidden hypotheses.
The weighted summability predicate is NOT geometric C-infinity without a
separate Fourier/elliptic realization theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

open scoped BigOperators

universe u v w

/-- A source-typed rational cycle-class map and a rational-to-Hilbert map.
Actual geometric identity, coefficient convention, degree and source revision
remain obligations on the eventual concrete instantiation. -/
structure RationalHodgeHilbertPort
    (Cycle V H : Type*)
    [AddCommGroup Cycle] [Module ℚ Cycle]
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup H] [Module ℚ H] where
  cycleClass : Cycle →ₗ[ℚ] V
  hodgeClasses : Submodule ℚ V
  realize : V →ₗ[ℚ] H

section CycleRealization

variable {H : Type u}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [Module ℚ H]
variable {Cycle : Type v} {V : Type w}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup V] [Module ℚ V]

namespace RationalHodgeHilbertPort

variable (P : RationalHodgeHilbertPort Cycle V H)

/-- The precise source-defined vectors, rather than an arbitrary declaration
that all Hilbert vectors should count as algebraic. -/
def cycleImages : Set H :=
  Set.range (fun c : Cycle => P.realize (P.cycleClass c))

/-- Closure is essential: a Q-linear image need not be closed, and complex
Hilbert projection uses its closed COMPLEX span. -/
def cycleCarrier : ClosedSubmodule ℂ H :=
  algebraicClosedSpan P.cycleImages

/-- The separate external/local *mathematical* supplier required to identify
all selected rational Hodge classes with algebraic cycle classes. -/
def CyclesSpanHodge : Prop :=
  ∀ v ∈ P.hodgeClasses, ∃ c : Cycle, P.cycleClass c = v

/-- Every actual cycle image is inside the closed complex algebraic span. -/
theorem cycle_mem_carrier (c : Cycle) :
    P.realize (P.cycleClass c) ∈ (P.cycleCarrier : Submodule ℂ H) := by
  have hsource : P.realize (P.cycleClass c) ∈ P.cycleImages := ⟨c, rfl⟩
  have hspan : P.realize (P.cycleClass c) ∈
      Submodule.span ℂ P.cycleImages := Submodule.subset_span hsource
  change P.realize (P.cycleClass c) ∈
    (Submodule.span ℂ P.cycleImages).topologicalClosure
  exact Submodule.le_topologicalClosure _ hspan

/-- A REAL supplier of cycle-class coverage transfers to the Hilbert carrier;
the port alone is not allowed to assert this fact. -/
theorem hodge_mem_carrier (h : P.CyclesSpanHodge)
    (v : V) (hv : v ∈ P.hodgeClasses) :
    P.realize v ∈ (P.cycleCarrier : Submodule ℂ H) := by
  obtain ⟨c, hc⟩ := h v hv
  rw [← hc]
  exact P.cycle_mem_carrier c

/-- An algebraically realized rational Hodge class has ZERO Hilbert residual,
relative to the precise selected realization map. This is not a claim that
other Hilbert vectors are nonalgebraic Hodge classes. -/
theorem hodge_residual_zero (h : P.CyclesSpanHodge)
    (v : V) (hv : v ∈ P.hodgeClasses) :
    residualProjection P.cycleImages (P.realize v) = 0 := by
  have hp : algebraicProjection P.cycleImages (P.realize v) =
      P.realize v :=
    (P.cycleCarrier : Submodule ℂ H).starProjection_eq_self_iff.mpr
      (P.hodge_mem_carrier h v hv)
  have hs := complete_reconstruction P.cycleImages (P.realize v)
  rw [hp] at hs
  have hz : P.realize v + residualProjection P.cycleImages (P.realize v) =
      P.realize v + 0 := by simpa using hs
  exact add_left_cancel hz

/-- The two channels remain complete for EVERY Hilbert vector. -/
theorem cycle_residual_complete (x : H) :
    algebraicProjection P.cycleImages x + residualProjection P.cycleImages x = x :=
  complete_reconstruction P.cycleImages x

/-- The exact positive Hilbert energy budget, with no discarded residue. -/
theorem cycle_residual_energy (x : H) :
    ‖x‖ ^ 2 = ‖algebraicProjection P.cycleImages x‖ ^ 2 +
      ‖residualProjection P.cycleImages x‖ ^ 2 :=
  complete_energy_split P.cycleImages x

/-- The residual sector is selected by an actual orthogonal projection. -/
theorem residual_fixed_iff (x : H) :
    residualProjection P.cycleImages x = x ↔
      x ∈ (P.cycleCarrier : Submodule ℂ H)ᗮ := by
  exact ((P.cycleCarrier : Submodule ℂ H)ᗮ).starProjection_eq_self_iff

/-- The wave's algebraic-to-residual block is preserved, and its magnitude is
controlled by the REAL bounded operator, not an arbitrary error certificate. -/
theorem algebraic_wave_leak_bound
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) (x : H) :
    ‖algebraicToResidualLeak P.cycleImages wave j x‖ ≤
      ‖wave j‖ * ‖algebraicProjection P.cycleImages x‖ := by
  change ‖residualProjection P.cycleImages
      (wave j (algebraicProjection P.cycleImages x))‖ ≤ _
  exact (residual_norm_le P.cycleImages _).trans
    ((wave j).le_opNorm (algebraicProjection P.cycleImages x))

/-- On a realized Hodge class, wave output in the residual channel is exactly
its off-diagonal block. Vanishing requires a separate wave commutation proof. -/
theorem realized_hodge_wave_residual_eq_leak
    (h : P.CyclesSpanHodge) (v : V) (hv : v ∈ P.hodgeClasses)
    (wave : ScaleWaveFamily (H := H)) (j : ℕ) :
    residualProjection P.cycleImages (wave j (P.realize v)) =
      algebraicToResidualLeak P.cycleImages wave j (P.realize v) := by
  have hp : algebraicProjection P.cycleImages (P.realize v) = P.realize v :=
    (P.cycleCarrier : Submodule ℂ H).starProjection_eq_self_iff.mpr
      (P.hodge_mem_carrier h v hv)
  simp only [algebraicToResidualLeak, ContinuousLinearMap.comp_apply, hp]

end RationalHodgeHilbertPort
end CycleRealization

section AllOrderWave

variable {scaleModulus : ℕ → ℕ}

/-- Every integer dyadic Sobolev-order multiplier bound is explicit. This
record is NOT filled automatically by OpenAI's Euclidean wave theorem. -/
structure AllOrderMultiplier (scaleModulus : ℕ → ℕ) where
  coefficient : ScaleResidueIndex scaleModulus → ℂ
  weightedBound : ∀ m : ℕ, ∃ C : ℝ, 0 ≤ C ∧
    ∀ i : ScaleResidueIndex scaleModulus,
      (2 : ℝ) ^ (m * i.1) * ‖coefficient i‖ ≤ C

namespace AllOrderMultiplier

variable (M : AllOrderMultiplier scaleModulus)

/-- A diagonal operation on the actual complete Hilbert l2 sum. The zero-order
bound establishes membership BEFORE the output is treated as a Hilbert vector. -/
noncomputable def output (f : AllScaleHilbert scaleModulus) :
    AllScaleHilbert scaleModulus := by
  obtain ⟨C, hC, hbound⟩ := M.weightedBound 0
  have hCmem : Memℓp (fun i : ScaleResidueIndex scaleModulus => (C : ℂ) * f i) 2 :=
    (lp.memℓp f).const_mul (C : ℂ)
  have hout : Memℓp
      (fun i : ScaleResidueIndex scaleModulus => M.coefficient i * f i) 2 := by
    apply Memℓp.mono' hCmem
    intro i
    have hi : ‖M.coefficient i‖ ≤ C := by simpa using hbound i
    calc
      ‖M.coefficient i * f i‖ = ‖M.coefficient i‖ * ‖f i‖ := norm_mul _ _
      _ ≤ C * ‖f i‖ := mul_le_mul_of_nonneg_right hi (norm_nonneg _)
      _ = ‖(C : ℂ) * f i‖ := by
        rw [norm_mul, Complex.norm_real, abs_of_nonneg hC]
  exact ⟨(fun i => M.coefficient i * f i), hout⟩

/-- THEOREM: a genuine all-order bounded diagonal wave produces weighted
square-summability at EVERY integer order, on ALL scale-residue indices. -/
theorem output_all_orders (f : AllScaleHilbert scaleModulus) :
    DyadicAllOrders scaleModulus (M.output f) := by
  intro m
  obtain ⟨C, hC, hbound⟩ := M.weightedBound m
  have hCmem : Memℓp (fun i : ScaleResidueIndex scaleModulus => (C : ℂ) * f i) 2 :=
    (lp.memℓp f).const_mul (C : ℂ)
  have hweighted : Memℓp
      (fun i : ScaleResidueIndex scaleModulus =>
        (((2 : ℝ) ^ (m * i.1) : ℝ) : ℂ) * (M.coefficient i * f i)) 2 := by
    apply Memℓp.mono' hCmem
    intro i
    have hi := hbound i
    calc
      ‖(((2 : ℝ) ^ (m * i.1) : ℝ) : ℂ) * (M.coefficient i * f i)‖ =
          ((2 : ℝ) ^ (m * i.1) * ‖M.coefficient i‖) * ‖f i‖ := by
        rw [norm_mul, norm_mul, Complex.norm_real,
          abs_of_nonneg (by positivity : 0 ≤ (2 : ℝ) ^ (m * i.1))]
        ring
      _ ≤ C * ‖f i‖ := mul_le_mul_of_nonneg_right hi (norm_nonneg _)
      _ = ‖(C : ℂ) * f i‖ := by
        rw [norm_mul, Complex.norm_real, abs_of_nonneg hC]
  have hs : Summable (fun i : ScaleResidueIndex scaleModulus =>
      ‖(((2 : ℝ) ^ (m * i.1) : ℝ) : ℂ) * (M.coefficient i * f i)‖ ^ 2) := by
    simpa using (hweighted.summable
      (by norm_num : 0 < (2 : ℝ≥0∞).toReal))
  change Summable (fun i : ScaleResidueIndex scaleModulus =>
    (2 : ℝ) ^ (2 * m * i.1) * ‖M.coefficient i * f i‖ ^ 2)
  apply hs.congr
  intro i
  rw [norm_mul, Complex.norm_real,
    abs_of_nonneg (by positivity : 0 ≤ (2 : ℝ) ^ (m * i.1)), mul_pow]
  rw [← pow_mul]
  congr 1
  omega

/-- A tail is an actual Hilbert vector, NOT a zero-valued certificate. -/
def omittedTail (f : AllScaleHilbert scaleModulus) :
    AllScaleHilbert scaleModulus := f - M.output f

/-- The smoothed and omitted channels reconstruct every original input. -/
theorem output_add_omittedTail (f : AllScaleHilbert scaleModulus) :
    M.output f + M.omittedTail f = f := by
  simp [omittedTail]

end AllOrderMultiplier

/-- A genuinely constructed (nonzero) all-order scale regularizer. It is a
FINITE BAND cutoff at N; no claim of uniform smoothing estimates as N grows.
The unretained tail is explicitly tracked by `omittedTail`. -/
def finiteScaleCutoff (scaleModulus : ℕ → ℕ) (N : ℕ) :
    AllOrderMultiplier scaleModulus where
  coefficient i := if i.1 ≤ N then 1 else 0
  weightedBound m := by
    refine ⟨(2 : ℝ) ^ (m * N), by positivity, ?_⟩
    intro i
    by_cases hi : i.1 ≤ N
    · simpa [hi] using
        (pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2)
          (Nat.mul_le_mul_left m hi))
    · simp [hi]

/-- The concrete finite-band output satisfies EVERY dyadic order. -/
theorem finiteScaleCutoff_all_orders
    (scaleModulus : ℕ → ℕ) (N : ℕ)
    (f : AllScaleHilbert scaleModulus) :
    DyadicAllOrders scaleModulus ((finiteScaleCutoff scaleModulus N).output f) :=
  (finiteScaleCutoff scaleModulus N).output_all_orders f

/-- Exact retention of the complete Hilbert input at every cutoff, including
all excluded scales as a separately represented, generally nonzero tail. -/
theorem finiteScaleCutoff_exact_return
    (scaleModulus : ℕ → ℕ) (N : ℕ)
    (f : AllScaleHilbert scaleModulus) :
    (finiteScaleCutoff scaleModulus N).output f +
      (finiteScaleCutoff scaleModulus N).omittedTail f = f :=
  (finiteScaleCutoff scaleModulus N).output_add_omittedTail f

end AllOrderWave

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert