module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeWangZahlTTStar
public import Surface.Core.PrimeLattice.BVMaximalDuality
public import Surface.Core.ConductorThreeMellinLogDerivative
import Mathlib.Tactic

/-!
# The fixed-frame conductor-three prime moment program

This module completes every logical edge after the fixed Vaughan Type I and
specific Type II maximal estimates.  The Type II premise is deliberately
coefficient-sensitive: no sign-conjugated full-Gram estimate occurs in the
dependency cone.
-/

public section

namespace Surface.Core.ConductorThreePrimeMoment

noncomputable section

open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeMellinLogDerivative
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.ConductorThreePacketUnsmoothing
open Surface.Core.ConductorThreeWangZahlTTStar
open Surface.Core.PrimeLattice.BVMaximalDuality
open Surface.Core.PrimeLattice.MomentPath

/-- Uniform control of every moment of one fixed packet frame family. -/
@[expose]
def UniformMaximalMomentEstimate
    (route : ConductorThreePrimeMomentRoute) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ∀ x : Fin (2 * N + 1),
          ‖(route.frame N).readout (momentState (route.frame N) x)‖ ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- Diagnostic abstraction retained for consumers that already have a
uniform maximal estimate for an arbitrary fixed packet route. -/
@[expose]
def ConductorThreeAbstractMomentProgram : Prop :=
  ∃ route : ConductorThreePrimeMomentRoute,
    UniformMaximalMomentEstimate route

/-- Uniform elementary control of the first three fixed Vaughan components.
This proposition is separated from the genuinely coefficient-sensitive Type
II theorem so the two obligations cannot be conflated. -/
@[expose]
def UniformConductorThreeTypeIMaximal : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ∀ x : ℕ, x ≤ 2 * N →
          |conductorThreeVaughanTypeIPrefix N x| ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- Corrected prime-moment program.  One Vaughan scaffold is fixed before
epsilon, and only its specific Type II pairing is required.  The Type I
estimate is kept as a separate named conjunct until its elementary finite
proof is available in the canonical core. -/
@[expose]
def ConductorThreePrimeMomentProgram : Prop :=
  ∃ route : ConductorThreeVaughanPacketRoute,
    UniformConductorThreeTypeIMaximal ∧
      UniformConductorThreeTypeIIMaximal route

/-- Exact moment readout converts a route-level maximal estimate into the
arithmetic maximal-prefix estimate. -/
@[surface_novel, surface_published]
theorem uniformMaximalMomentEstimate_implies_arithmetic
    (route : ConductorThreePrimeMomentRoute)
    (hmax : UniformMaximalMomentEstimate route) :
    ConductorThreeMaximalMomentEstimate := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hmax epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxlt : x < 2 * N + 1 := by
    simpa only [Finset.mem_range] using hx
  let moment : Fin (2 * N + 1) := ⟨x, hxlt⟩
  have h := hbound N hN moment
  rw [readout_momentState] at h
  simpa [moment, Complex.norm_real, Real.norm_eq_abs] using h

/-- The fixed-frame maximal program supplies the BV large-sieve endpoint. -/
@[surface_novel, surface_published]
theorem abstractMomentProgram_implies_bvPacketEstimate :
    ConductorThreeAbstractMomentProgram →
      ConductorThreeBVPacketEstimate := by
  rintro ⟨route, hmax⟩
  exact maximalMomentEstimate_implies_bvPacketEstimate
    (uniformMaximalMomentEstimate_implies_arithmetic route hmax)

/-- Exact Vaughan decomposition plus the two separately quantified maximal
bounds gives the arithmetic maximal-moment estimate. -/
@[surface_novel, surface_published]
theorem typeI_and_specificTypeII_imply_maximalMoment
    (hI : UniformConductorThreeTypeIMaximal)
    (route : ConductorThreeVaughanPacketRoute)
    (hII : UniformConductorThreeTypeIIMaximal route) :
    ConductorThreeMaximalMomentEstimate := by
  intro epsilon hepsilon
  obtain ⟨CI, hCI, hIbound⟩ := hI epsilon hepsilon
  obtain ⟨CII, hCII, hIIbound⟩ :=
    uniformTypeIIMaximal_implies_arithmetic route hII epsilon hepsilon
  refine ⟨CI + CII, add_nonneg hCI hCII, ?_⟩
  intro N hN
  unfold maxPrefixNorm
  apply Finset.sup'_le
  intro x hx
  have hxle : x ≤ 2 * N := by
    simp only [Finset.mem_range] at hx
    omega
  have hleft := hIbound N hN x hxle
  have hright := hIIbound N hN x hxle
  rw [conductorThreePsi_eq_typeIPrefix_add_typeIIPrefix N x]
  calc
    |conductorThreeVaughanTypeIPrefix N x +
        conductorThreeVaughanTypeIIPrefix N x| ≤
        |conductorThreeVaughanTypeIPrefix N x| +
          |conductorThreeVaughanTypeIIPrefix N x| := abs_add_le _ _
    _ ≤ CI * (N : ℝ) ^ (1 / 2 + epsilon) +
          CII * (N : ℝ) ^ (1 / 2 + epsilon) :=
      add_le_add hleft hright
    _ = (CI + CII) * (N : ℝ) ^ (1 / 2 + epsilon) := by ring

/-- The corrected program reaches the BV endpoint through the exact Vaughan
prefix identity, never through a generic full-Gram norm. -/
@[surface_novel, surface_published]
theorem primeMomentProgram_implies_bvPacketEstimate :
    ConductorThreePrimeMomentProgram →
      ConductorThreeBVPacketEstimate := by
  rintro ⟨route, hI, hII⟩
  exact maximalMomentEstimate_implies_bvPacketEstimate
    (typeI_and_specificTypeII_imply_maximalMoment hI route hII)

/-- Final checked composition.  Inhabiting the corrected specific-Type-II
program is still an unresolved mathematical task; the generator and the
unsigned geometry have no theorem authority here. -/
@[surface_novel, surface_published]
theorem primeMomentProgram_implies_grh :
    ConductorThreePrimeMomentProgram →
      GRHForConductorThreeCharacter := by
  intro hProgram
  exact halfPlusEpsilon_implies_grh
    (bvPacketEstimate_implies_halfPlusEpsilon
      (primeMomentProgram_implies_bvPacketEstimate hProgram))

end

end Surface.Core.ConductorThreePrimeMoment
