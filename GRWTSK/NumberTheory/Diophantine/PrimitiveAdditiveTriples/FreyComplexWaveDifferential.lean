/- Copyright (c) 2026 GRWTSK contributors. MIT.
Uses the existing Frey complex sections, normalized Cech heat and raw waves.
Formalization assistance: OpenAI.

Joint angle/heat continuity and all-coordinate real-time differential laws
for the SAME raw waveform at a fixed source and finite grade. Six channels
are observed: three phase-encoded vertices and three normalized edges.
The coherent part is not damped. No intrinsic Hodge operator, varying-source
estimate, infinite-dimensional limit or arithmetic flow is asserted.
Unelaborated source proof scripts; historical objects are unchanged.
-/
import GRWTSK.Analysis.ComplexAnalysis.DampedPhaseDifferential
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexWaveDifferential

open FreyWeightedSections FreyWeightedBasis FreyComplexRealization FreyComplexCechWave
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Analysis.ComplexAnalysis.CubicWavePhase
open GRWTSK.Analysis.ComplexAnalysis.DampedPhaseDifferential
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat (decay)
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- First label: vertex (0) or edge (1). Other labels retain phase and old basis slot. -/
abbrev Slot (k : ℕ) := Fin 2 × Fin 3 × Index k

def dataCoefficients (a b : ℝ) (k : ℕ) (v : Data a b k) (s : Slot k) : ℂ :=
  coefficients a b k (![v.1, v.2] s.1 s.2.1) s.2.2

def rawCoefficients (a b : ℝ) (k : ℕ) (q : Raw a b k) (s : Slot k) : ℂ :=
  coefficients a b k (![q.sections, q.transitions] s.1 s.2.1) s.2.2

/-- The topology observes all six original fields, not only their mismatch. -/
theorem rawCoefficients_injective (a b : ℝ) (k : ℕ) :
    Function.Injective (rawCoefficients a b k) := by
  intro u v h
  have hs : u.sections = v.sections := by
    funext p
    apply coefficients_injective a b k
    funext i
    simpa [rawCoefficients] using congrFun h (0, p, i)
  have he : u.transitions = v.transitions := by
    funext p
    apply coefficients_injective a b k
    funext i
    simpa [rawCoefficients] using congrFun h (1, p, i)
  cases u
  cases v
  cases hs
  cases he
  rfl

/-- Ordinary finite-product complex coefficient topology; no persistent instance. -/
def rawTopology (a b : ℝ) (k : ℕ) : TopologicalSpace (Raw a b k) :=
  TopologicalSpace.induced (rawCoefficients a b k) inferInstance

/-- Tree data and the entire common-frame mean remain stationary under heat. -/
def steady (a b : ℝ) (k : ℕ) (v : Data a b k) : Data a b k :=
  (fun p => tree v.2 p + mean a b k (common v.1 v.2), replaceClosure v.2 0)

/-- Vertex deviations and the ACTUAL closure edge comprise the decaying part. -/
def transient (a b : ℝ) (k : ℕ) (v : Data a b k) : Data a b k :=
  (fun p => common v.1 v.2 p - mean a b k (common v.1 v.2), face (delta1 v.2))

/-- Exact splitting of the OLD normalized function-valued evolution. -/
theorem evolve_split (a b : ℝ) (k : ℕ) (tau : ℝ) (v : Data a b k) :
    evolve a b k tau v = steady a b k v +
      scaleData a b k (decay tau : ℂ) (transient a b k v) := by
  apply Prod.ext
  · funext p
    change tree v.2 p +
        (mean a b k (common v.1 v.2) + (decay tau : ℂ) •
          (common v.1 v.2 p - mean a b k (common v.1 v.2))) =
      (tree v.2 p + mean a b k (common v.1 v.2)) +
        (decay tau : ℂ) • (common v.1 v.2 p - mean a b k (common v.1 v.2))
    abel
  · funext p
    fin_cases p <;> simp [evolve, steady, transient, scaleData, replaceClosure, face] <;> abel

@[simp] theorem dataCoefficients_add (a b : ℝ) (k : ℕ)
    (u v : Data a b k) (s : Slot k) :
    dataCoefficients a b k (u + v) s =
      dataCoefficients a b k u s + dataCoefficients a b k v s := by
  rcases s with ⟨j, p, i⟩
  fin_cases j <;> simp [dataCoefficients]

@[simp] theorem dataCoefficients_scale (a b : ℝ) (k : ℕ)
    (c : ℂ) (v : Data a b k) (s : Slot k) :
    dataCoefficients a b k (scaleData a b k c v) s = c * dataCoefficients a b k v s := by
  rcases s with ⟨j, p, i⟩
  fin_cases j <;> simp [dataCoefficients, scaleData]

/-- Cubic badges act on vertices only; transition labels are not rephased. -/
def badge (k : ℕ) (s : Slot k) : ℂ :=
  if s.1 = 0 then (sourcePhase s.2.1 : ℂ) else 1

@[simp] theorem rawCoefficients_encode (a b : ℝ) (k : ℕ) (v : Data a b k) (s : Slot k) :
    rawCoefficients a b k (encode a b k v) s = badge k s * dataCoefficients a b k v s := by
  rcases s with ⟨j, p, i⟩
  fin_cases j <;> simp [rawCoefficients, dataCoefficients, encode, phaseEncode, badge]

/-- The scalar differential profile is derived for EVERY coefficient of the OLD wave. -/
theorem wave_coefficients (a b : ℝ) (k : ℕ) (theta tau : ℝ) (v : Data a b k) (s : Slot k) :
    rawCoefficients a b k (wave a b k theta tau v) s =
      profile (badge k s) (dataCoefficients a b k (steady a b k v) s)
        (dataCoefficients a b k (transient a b k v) s) theta tau := by
  simp only [wave, rawCoefficients_encode, dataCoefficients_scale, evolve_split,
    dataCoefficients_add, profile]
  ring

/-- Joint in the TWO clocks for each fixed source and initial datum.
No norm, varying-source uniformity or discrete-jet topology is inferred. -/
theorem wave_joint_continuous (a b : ℝ) (k : ℕ) (v : Data a b k) :
    @Continuous (ℝ × ℝ) (Raw a b k) inferInstance (rawTopology a b k)
      (fun p => wave a b k p.1 p.2 v) := by
  apply continuous_induced_rng.mpr
  apply continuous_pi
  intro s
  change Continuous (fun p : ℝ × ℝ => rawCoefficients a b k (wave a b k p.1 p.2 v) s)
  simp_rw [wave_coefficients]
  exact profile_continuous _ _ _

/-- Damped raw coefficient, not the whole waveform and not the edge mismatch. -/
def dampedCoefficient (a b : ℝ) (k : ℕ) (theta tau : ℝ) (v : Data a b k) (s : Slot k) : ℂ :=
  residual (badge k s) (dataCoefficients a b k (transient a b k v) s) theta tau

/-- Every original raw coefficient satisfies the real-time chain rule with
independent differentiable phase and heat clocks. The source data are fixed. -/
theorem wave_coordinate_derivative (a b : ℝ) (k : ℕ) (v : Data a b k) (s : Slot k)
    (theta tau : ℝ → ℝ) (dtheta dtau t : ℝ)
    (htheta : HasDerivAt theta dtheta t) (htau : HasDerivAt tau dtau t) :
    HasDerivAt (fun u => rawCoefficients a b k (wave a b k (theta u) (tau u) v) s)
      (Complex.I * (dtheta : ℂ) * rawCoefficients a b k (wave a b k (theta t) (tau t) v) s -
        3 * (dtau : ℂ) * dampedCoefficient a b k (theta t) (tau t) v s) t := by
  simpa only [wave_coefficients, dampedCoefficient] using
    profile_hasDerivAt (badge k s) (dataCoefficients a b k (steady a b k v) s)
      (dataCoefficients a b k (transient a b k v) s) theta tau dtheta dtau t htheta htau

/-- A usable affine-clock specialization: theta=theta0+Omega*t, tau=tau0+nu*t.
No assertion of contraction for nu<0, or return when nu is nonzero. -/
theorem wave_affine_clocks_derivative (a b : ℝ) (k : ℕ) (v : Data a b k) (s : Slot k)
    (theta0 tau0 Omega nu t : ℝ) :
    HasDerivAt
      (fun u => rawCoefficients a b k (wave a b k (theta0 + Omega*u) (tau0 + nu*u) v) s)
      (Complex.I * (Omega : ℂ) *
          rawCoefficients a b k (wave a b k (theta0 + Omega*t) (tau0 + nu*t) v) s -
        3 * (nu : ℂ) * dampedCoefficient a b k (theta0 + Omega*t) (tau0 + nu*t) v s) t := by
  apply wave_coordinate_derivative
  · simpa using ((hasDerivAt_id t).const_mul Omega).const_add theta0
  · simpa using ((hasDerivAt_id t).const_mul nu).const_add tau0

/-- Read the ACTUAL edge mismatch only after phase decoding. -/
def decodedMismatchCoefficient (a b : ℝ) (k : ℕ) (q : Raw a b k)
    (p : Fin 3) (i : Index k) : ℂ :=
  coefficients a b k (mismatch (decode a b k q).1 (decode a b k q).2 p) i

theorem decodedMismatch_wave (a b : ℝ) (k : ℕ) (theta tau : ℝ)
    (v : Data a b k) (p : Fin 3) (i : Index k) :
    decodedMismatchCoefficient a b k (wave a b k theta tau v) p i =
      residual 1 (coefficients a b k (mismatch v.1 v.2 p) i) theta tau := by
  unfold decodedMismatchCoefficient
  rw [wave_mismatch]
  simp [Pi.smul_apply, residual, mul_assoc]

/-- Unlike a raw coefficient with a coherent part, the decoded mismatch obeys
this homogeneous damped-oscillator ODE. Both real and imaginary parts are retained. -/
theorem mismatch_coordinate_derivative (a b : ℝ) (k : ℕ) (v : Data a b k)
    (p : Fin 3) (i : Index k) (theta tau : ℝ → ℝ) (dtheta dtau t : ℝ)
    (htheta : HasDerivAt theta dtheta t) (htau : HasDerivAt tau dtau t) :
    HasDerivAt
      (fun u => decodedMismatchCoefficient a b k (wave a b k (theta u) (tau u) v) p i)
      ((Complex.I * (dtheta : ℂ) - 3 * (dtau : ℂ)) *
        decodedMismatchCoefficient a b k (wave a b k (theta t) (tau t) v) p i) t := by
  simpa only [decodedMismatch_wave] using
    residual_hasDerivAt 1 (coefficients a b k (mismatch v.1 v.2 p) i)
      theta tau dtheta dtau t htheta htau

/-- Phase drops out of squared mismatch energy. No regularity premise on its
clock is needed for this scalar-energy law; the heat clock must be differentiable. -/
theorem mismatch_energy_derivative (a b : ℝ) (k : ℕ) (v : Data a b k)
    (theta tau : ℝ → ℝ) (dtau t : ℝ) (htau : HasDerivAt tau dtau t) :
    HasDerivAt
      (fun u => mismatchEnergy a b k (decode a b k (wave a b k (theta u) (tau u) v)))
      (-6 * dtau * mismatchEnergy a b k (decode a b k (wave a b k (theta t) (tau t) v))) t := by
  simp_rw [wave_mismatch_energy]
  exact squared_decay_hasDerivAt (mismatchEnergy a b k v) tau dtau t htau

/-- Positive elapsed heat and positive initial mismatch prevent return, whatever
the two phase angles. In particular one full oscillator cycle cannot undo heat. -/
theorem no_return_of_heat_increase (a b : ℝ) (k : ℕ) (v : Data a b k)
    (hD : 0 < mismatchEnergy a b k v) (theta psi tau dt : ℝ) (hdt : 0 < dt) :
    wave a b k psi (tau + dt) v ≠ wave a b k theta tau v := by
  intro h
  have he := congrArg (fun q => mismatchEnergy a b k (decode a b k q)) h
  rw [wave_mismatch_energy, wave_mismatch_energy] at he
  have ht : Real.exp (-6 * (tau + dt)) < Real.exp (-6 * tau) :=
    Real.exp_lt_exp.mpr (by linarith)
  exact (ne_of_lt (mul_lt_mul_of_pos_right ht hD)) he

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexWaveDifferential
