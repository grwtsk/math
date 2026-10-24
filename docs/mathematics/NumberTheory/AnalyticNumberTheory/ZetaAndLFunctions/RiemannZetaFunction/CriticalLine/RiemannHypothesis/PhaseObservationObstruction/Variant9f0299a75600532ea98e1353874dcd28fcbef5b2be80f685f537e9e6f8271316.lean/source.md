# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhaseObservationObstruction.Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23645418c55467229a76070978f13c6becb2268f` · SHA-256 `9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.JacobsonObservation
import FormalResearch.RiemannHypothesis.PhaseInvolution
import FormalResearch.RiemannHypothesis.MultiplicativePhase
import Mathlib.RingTheory.Jacobson.Semiprimary
import Mathlib.RingTheory.SimpleModule.WedderburnArtin
import Mathlib.Topology.Instances.Matrix

/-!
# Native phase observations and their actual Jacobson radical

The existing phase operators inhabit the full complex two-by-two matrix algebra.
Its native ring Jacobson radical is zero. Observation on the existing plus line
has a nonzero kernel, so that solution fiber cannot be identified with this
radical. A nonreal phase commutator also remains nonzero modulo the radical.

The actual arithmetic trace packet does annihilate this zero radical and hence
descends, vacuously. The unit determinant and nonvanishing phase line do not give
its signed lower bound. Arbitrarily small phase motion preserves the underlying
objects; none of these results asserts their disappearance or a positive minimum
angle. No alternative observation kernel is renamed Jacobson.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PhaseObservationObstruction

open scoped ComplexConjugate Matrix
open FormalResearch.MathematicalTooling.JacobsonObservation
open FormalResearch.RiemannHypothesis.MultiplicativePhase

/-- The algebra already containing the native phase reflections and rotations. -/
abbrev PhaseMatrix := Matrix (Fin 2) (Fin 2) ℂ

/-- The native phase matrix algebra is semisimple, with zero Jacobson radical. -/
theorem phase_matrix_jacobson_eq_bot : Ring.jacobson PhaseMatrix = ⊥ :=
  IsSemisimpleRing.jacobson_eq_bot PhaseMatrix

/-- Observe a matrix through its action on the existing plus line.
Right multiplication is linear over the regular left matrix module. -/
noncomputable def phaseObservation (χ : ℂ) : PhaseMatrix →ₗ[PhaseMatrix] PhaseMatrix where
  toFun M := M * phaseProjector χ
  map_add' M N := Matrix.add_mul M N _
  map_smul' a M := by
    change (a * M) * phaseProjector χ = a * (M * phaseProjector χ)
    exact mul_assoc _ _ _

/-- A nonzero matrix direction invisible on the unit-phase plus line. -/
noncomputable def invisiblePhaseDirection (χ : ℂ) : PhaseMatrix := 1 - phaseProjector χ

theorem invisible_phase_direction_ne_zero (χ : ℂ) : invisiblePhaseDirection χ ≠ 0 := by
  intro h
  have h00 := congrArg (fun M : PhaseMatrix ↦ M 0 0) h
  norm_num [invisiblePhaseDirection, phaseProjector, phaseReflection] at h00

theorem invisible_phase_direction_in_kernel (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    invisiblePhaseDirection χ ∈ LinearMap.ker (phaseObservation χ) := by
  rw [LinearMap.mem_ker]
  change (1 - phaseProjector χ) * phaseProjector χ = 0
  rw [sub_mul, one_mul, phase_projector_idempotent χ hχ, sub_self]

/-- The actual plus-line observation kernel is not the native ring radical. -/
theorem phase_observation_ker_ne_jacobson (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    LinearMap.ker (phaseObservation χ) ≠ Ring.jacobson PhaseMatrix := by
  intro h
  have hi := invisible_phase_direction_in_kernel χ hχ
  rw [h, phase_matrix_jacobson_eq_bot] at hi
  exact invisible_phase_direction_ne_zero χ hi

/-- The genuine observation fiber is an affine kernel coset, with no radical claim. -/
theorem phase_observation_fiber (χ : ℂ) (a x : PhaseMatrix) :
    phaseObservation χ x = phaseObservation χ a ↔
      ∃ j ∈ LinearMap.ker (phaseObservation χ), x = a + j :=
  observation_eq_iff_exists_add _ _ rfl a x

/-- The commutator of the existing phase and reference reflections. -/
def phaseCommutator (χ : ℂ) : PhaseMatrix :=
  phaseReflection χ * phaseReflection 1 - phaseReflection 1 * phaseReflection χ

/-- Passing to the Jacobson quotient does not improve the commutation condition. -/
theorem phase_commutator_mem_jacobson_iff (χ : ℂ) :
    phaseCommutator χ ∈ Ring.jacobson PhaseMatrix ↔ χ.im = 0 := by
  rw [phase_matrix_jacobson_eq_bot]
  change phaseReflection χ * phaseReflection 1 - phaseReflection 1 * phaseReflection χ = 0 ↔ _
  rw [sub_eq_zero]
  exact phase_reflections_commute_iff χ

theorem imaginary_phase_commutator_not_in_jacobson :
    phaseCommutator Complex.I ∉ Ring.jacobson PhaseMatrix := by
  simp [phase_commutator_mem_jacobson_iff]

/-- The signed arithmetic trace packet, before integration against the source density. -/
def signedTracePacket (w : ℝ) (M : PhaseMatrix) : ℝ := -w * (Matrix.trace M).re

/-- The packet retains the exact negative baseline and phase defect. -/
theorem signed_trace_packet_phase_rotation (w : ℝ) (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    signedTracePacket w (phaseRotation χ) = -2 * w + w * Complex.normSq (1 - χ) := by
  have ht : Complex.normSq (1 - χ) = 2 - (Matrix.trace (phaseRotation χ)).re := by
    simpa using congrArg Complex.re (phase_defect_eq_trace_deficit χ hχ)
  rw [ht]
  unfold signedTracePacket
  ring

/-- This packet vanishes on the actual radical because that radical is zero. -/
theorem signed_trace_packet_jacobson_zero (w : ℝ) (j : PhaseMatrix)
    (hj : j ∈ Ring.jacobson PhaseMatrix) : signedTracePacket w j = 0 := by
  rw [phase_matrix_jacobson_eq_bot] at hj
  have hj0 : j = 0 := hj
  simp [hj0, signedTracePacket]

/-- Actual packet descent holds on the zero radical, not on an enlarged observation kernel. -/
theorem signed_trace_packet_coset_invariant (w : ℝ) :
    CosetInvariant ((Ring.jacobson PhaseMatrix).restrictScalars ℝ) (signedTracePacket w) := by
  intro x j hj
  have hj' : j ∈ Ring.jacobson PhaseMatrix := hj
  rw [phase_matrix_jacobson_eq_bot] at hj'
  have hj0 : j = 0 := hj'
  simp [hj0]

/-- The generic quotient theorem is instantiated on the native RH arithmetic packet. -/
theorem signed_trace_packet_quotient_factor (w : ℝ) :
    ∃ Qbar : PhaseMatrix ⧸ (Ring.jacobson PhaseMatrix).restrictScalars ℝ → ℝ,
      signedTracePacket w = Qbar ∘ ((Ring.jacobson PhaseMatrix).restrictScalars ℝ).mkQ :=
  (coset_invariant_iff_quotient_factor _ _).mp (signed_trace_packet_coset_invariant w)

theorem signed_trace_packet_invisible_direction (χ : ℂ) :
    signedTracePacket 1 (invisiblePhaseDirection χ) = -1 := by
  norm_num [signedTracePacket, invisiblePhaseDirection, phaseProjector,
    phaseReflection, Matrix.trace_fin_two]

/-- The signed trace does not descend through the plus-line observation kernel. -/
theorem signed_trace_packet_not_observation_invariant (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    ¬ CosetInvariant ((LinearMap.ker (phaseObservation χ)).restrictScalars ℝ)
      (signedTracePacket 1) := by
  intro h
  have heq := h 0 (invisiblePhaseDirection χ) (invisible_phase_direction_in_kernel χ hχ)
  rw [zero_add, signed_trace_packet_invisible_direction] at heq
  norm_num [signedTracePacket] at heq

theorem phase_rotation_one : phaseRotation 1 = (1 : PhaseMatrix) := by
  exact phase_reflection_involution 1 (by simp)

/-- The determinant of the unitary rotation is one, even at zero angle. -/
theorem phase_rotation_det_one (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    Matrix.det (phaseRotation χ) = 1 := by
  rw [phase_rotation_eq_diagonal, Matrix.det_fin_two]
  simp [Complex.mul_conj, hχ]

theorem signed_trace_packet_identity (w : ℝ) :
    signedTracePacket w (phaseRotation 1) = -2 * w := by
  rw [signed_trace_packet_phase_rotation w 1 (by simp)]
  simp

/-- A conserved nonzero determinant does not bound the signed packet over all radii. -/
theorem conserved_determinant_no_uniform_packet_lower_bound :
    Matrix.det (phaseRotation (1 : ℂ)) = 1 ∧
      ¬ ∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → lower ≤ signedTracePacket A (phaseRotation 1) := by
  refine ⟨phase_rotation_det_one 1 (by simp), ?_⟩
  rintro ⟨lower, h⟩
  have hA : 1 ≤ |lower| + 1 := by linarith [abs_nonneg lower]
  have hp := h (|lower| + 1) hA
  rw [signed_trace_packet_identity] at hp
  linarith [neg_abs_le lower]

/-- Zero frequency retains a nonzero phase line, a rank-one projector and unit determinant. -/
theorem zero_frequency_preserves_phase_objects (x : ℝ) :
    phaseLineVector (chi 0 x) ≠ 0 ∧
      (phaseProjector (chi 0 x)).rank = 1 ∧ Matrix.det (phaseRotation (chi 0 x)) = 1 :=
  ⟨phase_line_vector_ne_zero _, phase_projector_rank_one _ (chi_normSq _ _),
    phase_rotation_det_one _ (chi_normSq _ _)⟩

/-- Exact source phases can approach the identity without disappearance of their operators. -/
theorem phase_rotation_zero_frequency_limit (x : ℝ) :
    Filter.Tendsto (fun ξ : ℝ ↦ phaseRotation (chi ξ x)) (nhds 0) (nhds (1 : PhaseMatrix)) := by
  have hc : Continuous (fun ξ : ℝ ↦ phaseRotation (chi ξ x)) := by
    simp only [phase_rotation_eq_diagonal]
    apply continuous_pi
    intro i
    apply continuous_pi
    intro j
    fin_cases i <;> fin_cases j
    · change Continuous (fun ξ : ℝ ↦ chi ξ x)
      unfold chi
      fun_prop
    · change Continuous (fun _ : ℝ ↦ (0 : ℂ))
      exact continuous_const
    · change Continuous (fun _ : ℝ ↦ (0 : ℂ))
      exact continuous_const
    · change Continuous (fun ξ : ℝ ↦ conj (chi ξ x))
      unfold chi
      fun_prop
  have h := hc.tendsto 0
  simpa [chi, phase_rotation_one] using h

/-- Retaining just the first native coordinate is one precise control deletion. -/
def singleCoordinateObservation : (Fin 2 → ℂ) →ₗ[ℂ] ℂ := LinearMap.proj 0

/-- One control leaves an entire complex affine fiber in the unchanged carrier. -/
theorem single_coordinate_fiber (a : ℂ) :
    {x : Fin 2 → ℂ | singleCoordinateObservation x = a} =
      Set.range (fun b : ℂ ↦ ![a, b]) := by
  ext x
  constructor
  · intro hx
    refine ⟨x 1, ?_⟩
    ext i
    fin_cases i
    · exact hx.symm
    · rfl
  · rintro ⟨b, rfl⟩
    rfl

/-- The coordinate algebra itself is semisimple; a deleted control does not change its radical. -/
theorem phase_coordinate_jacobson_eq_bot : Ring.jacobson (Fin 2 → ℂ) = ⊥ :=
  IsSemisimpleRing.jacobson_eq_bot _

/-- The nonzero deleted coordinate is invisible, but is not a Jacobson direction. -/
theorem single_coordinate_invisible_not_jacobson :
    singleCoordinateObservation (![0, 1] : Fin 2 → ℂ) = 0 ∧
      (![0, 1] : Fin 2 → ℂ) ∉ Ring.jacobson (Fin 2 → ℂ) := by
  refine ⟨rfl, ?_⟩
  rw [phase_coordinate_jacobson_eq_bot]
  intro h
  have hz : (![0, 1] : Fin 2 → ℂ) = 0 := h
  have h1 := congrArg (fun x : Fin 2 → ℂ ↦ x 1) hz
  norm_num at h1

end FormalResearch.RiemannHypothesis.PhaseObservationObstruction
```
