/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Four-sphere phases, three-torus sampling and seven residue colors

Local attribution: grwtsk contributors.
Analytic object: the unit 4-sphere inside R^5, mapped to a product of three
unit circles. The target is a three-torus as a product, not a claim of a
globally invertible three-dimensional embedding.

The sinusoidal ABC field is an explicitly bounded smooth field evaluated at
the three phases. Its identification as a Navier--Stokes solution is supplied
by the separate analytic derivation in the source review; this Lean file
certifies the exact finite sampling and pointwise bounds, not the PDE
derivative identity.

Status at source publication: LEAN_BUILD_NOT_RUN, KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No global Navier--Stokes regularity claim.
-/

namespace GRWTSK.Geometry.SphereFourThreeTorusDrape

/-- The unit 4-sphere represented as a subset of five real coordinates. -/
def SphereFour : Type :=
  {x : Fin 5 → ℝ // (∑ i : Fin 5, (x i) ^ 2) = 1}

/-- A unit-circle point in real Cartesian coordinates. -/
def CirclePoint : Type :=
  {z : ℝ × ℝ // z.1 ^ 2 + z.2 ^ 2 = 1}

/-- The three-torus as the product of three unit circles. -/
def ThreeTorus : Type := Fin 3 → CirclePoint

/-- Retain three real coordinates from the five-dimensional sphere source. -/
def observedCoord (x : SphereFour) (i : Fin 3) : ℝ :=
  x.1 ⟨i.val, by omega⟩

/-- One full circle per coordinate, so wrapping loses winding information. -/
noncomputable def phase (x : SphereFour) (i : Fin 3) : ℝ :=
  2 * Real.pi * observedCoord x i

/-- The explicit S^4 -> (S^1)^3 map used by the graphical projection. -/
noncomputable def project (x : SphereFour) : ThreeTorus :=
  fun i =>
    ⟨(Real.cos (phase x i), Real.sin (phase x i)), by
      dsimp
      nlinarith [Real.sin_sq_add_cos_sq (phase x i)]⟩

/-- Every projected coordinate lies on its actual unit circle. -/
theorem project_circle (x : SphereFour) (i : Fin 3) :
    (project x i).1.1 ^ 2 + (project x i).1.2 ^ 2 = 1 :=
  (project x i).property

/-- Seven exactly specified palette classes (not seven measured frequencies). -/
def residueColor (stripe : ℕ) : Fin 7 :=
  ⟨stripe % 7, Nat.mod_lt _ (by decide)⟩

theorem residue_periodic (n : ℕ) :
    residueColor (n + 7) = residueColor n := by
  apply Fin.ext
  simp [residueColor, Nat.add_mod]

/-- Quotient plus remainder counts each stripe once, without discarding a class. -/
theorem residue_decomposition (n : ℕ) :
    7 * (n / 7) + (residueColor n).val = n := by
  change 7 * (n / 7) + n % 7 = n
  omega

/-- The real ABC/Beltrami wave in three periodic phase coordinates. -/
noncomputable def abc (ν t : ℝ) (θ : Fin 3 → ℝ) (i : Fin 3) : ℝ :=
  if i.val = 0 then
    Real.exp (-ν * t) * (Real.sin (θ 2) + Real.cos (θ 1))
  else if i.val = 1 then
    Real.exp (-ν * t) * (Real.sin (θ 0) + Real.cos (θ 2))
  else
    Real.exp (-ν * t) * (Real.sin (θ 1) + Real.cos (θ 0))

theorem sine_square_le_one (a : ℝ) : Real.sin a ^ 2 ≤ 1 := by
  nlinarith [Real.sin_sq_add_cos_sq a, sq_nonneg (Real.cos a)]

theorem cosine_square_le_one (a : ℝ) : Real.cos a ^ 2 ≤ 1 := by
  nlinarith [Real.sin_sq_add_cos_sq a, sq_nonneg (Real.sin a)]

theorem sine_plus_cosine_square_le_four (a b : ℝ) :
    (Real.sin a + Real.cos b) ^ 2 ≤ 4 := by
  have ha := sine_square_le_one a
  have hb := cosine_square_le_one b
  nlinarith [sq_nonneg (Real.sin a - Real.cos b)]

/-- Viscous amplitude decays for nonnegative viscosity and forward time. -/
theorem viscous_amplitude_unit (ν t : ℝ) (hν : 0 ≤ ν) (ht : 0 ≤ t) :
    0 ≤ Real.exp (-ν * t) ∧ Real.exp (-ν * t) ≤ 1 := by
  have hnonpos : -ν * t ≤ 0 := by
    nlinarith [mul_nonneg hν ht]
  constructor
  · exact (Real.exp_pos _).le
  · calc
      Real.exp (-ν * t) ≤ Real.exp 0 := Real.exp_le_exp.mpr hnonpos
      _ = 1 := by simp

/-- Exact-real bound on each damped ABC component, for every phase. -/
theorem damped_wave_square_le_four (ν t a b : ℝ)
    (hν : 0 ≤ ν) (ht : 0 ≤ t) :
    (Real.exp (-ν * t) * (Real.sin a + Real.cos b)) ^ 2 ≤ 4 := by
  obtain ⟨ha0, ha1⟩ := viscous_amplitude_unit ν t hν ht
  have ha2 : Real.exp (-ν * t) ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg ha0 (sub_nonneg.mpr ha1)]
  have hw := sine_plus_cosine_square_le_four a b
  calc
    (Real.exp (-ν * t) * (Real.sin a + Real.cos b)) ^ 2 =
        Real.exp (-ν * t) ^ 2 * (Real.sin a + Real.cos b) ^ 2 := by ring
    _ ≤ 1 * (Real.sin a + Real.cos b) ^ 2 :=
      mul_le_mul_of_nonneg_right ha2 (sq_nonneg _)
    _ ≤ 1 * 4 := mul_le_mul_of_nonneg_left hw (by norm_num)
    _ = 4 := by norm_num

/-- Uniform pointwise ABC energy bound at arbitrary torus phases. -/
theorem abc_component_square_le_four (ν t : ℝ)
    (θ : Fin 3 → ℝ) (i : Fin 3)
    (hν : 0 ≤ ν) (ht : 0 ≤ t) :
    abc ν t θ i ^ 2 ≤ 4 := by
  unfold abc
  split_ifs
  · exact damped_wave_square_le_four ν t (θ 2) (θ 1) hν ht
  · exact damped_wave_square_le_four ν t (θ 0) (θ 2) hν ht
  · exact damped_wave_square_le_four ν t (θ 1) (θ 0) hν ht

theorem abc_energy_le_twelve (ν t : ℝ) (θ : Fin 3 → ℝ)
    (hν : 0 ≤ ν) (ht : 0 ≤ t) :
    abc ν t θ 0 ^ 2 + abc ν t θ 1 ^ 2 +
      abc ν t θ 2 ^ 2 ≤ 12 := by
  have h0 := abc_component_square_le_four ν t θ 0 hν ht
  have h1 := abc_component_square_le_four ν t θ 1 hν ht
  have h2 := abc_component_square_le_four ν t θ 2 hν ht
  linarith

/-- The composed source map inherits the same uniform velocity bound. -/
theorem projected_abc_energy_le_twelve
    (ν t : ℝ) (x : SphereFour) (hν : 0 ≤ ν) (ht : 0 ≤ t) :
    abc ν t (phase x) 0 ^ 2 +
      abc ν t (phase x) 1 ^ 2 +
      abc ν t (phase x) 2 ^ 2 ≤ 12 :=
  abc_energy_le_twelve ν t (phase x) hν ht

end GRWTSK.Geometry.SphereFourThreeTorusDrape
