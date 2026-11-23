import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.ZMod.Basic

/-! # Finite residue probes for a unit-lattice index

The columns of the integer matrix are coordinates of a finite-index lattice.
Evaluation by independent residue maps factors through those coordinates.
-/

namespace GRWTSK.AlpogeSelmerUnitIndex

open Matrix

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Determinant of the residue evaluations of a system of units. -/
theorem probe_determinant {R : Type*} [CommRing R] (red : ℤ →+* R)
    (A : Matrix ι ι ℤ) (U B : Matrix ι ι R)
    (heval : B = U * red.mapMatrix A) : B.det = U.det * red A.det := by
  rw [heval, Matrix.det_mul, red.map_det]

/-- Clearing a scalar in an index formula transports its vanishing to every
probe. An invertible scalar on the index side can be cancelled. -/
theorem class_vanishing_forces_probe_vanishing {R : Type*} [CommRing R]
    (red : ℤ →+* R) (A : Matrix ι ι ℤ) (U B : Matrix ι ι R)
    (heval : B = U * red.mapMatrix A) (a c h : ℤ) (ha : IsUnit (red a))
    (hindex : a * A.det = c * h) (hh : red h = 0) : B.det = 0 := by
  have eq := congrArg red hindex
  simp only [map_mul, hh, mul_zero] at eq
  have hz := ha.mul_left_cancel (show red a * red A.det = red a * 0 by simpa using eq)
  rw [probe_determinant red A U B heval, hz, mul_zero]

/-- A nonvanishing witness at the requested modulus excludes divisibility of
the class number by that modulus, with arbitrary integral clearing factors. -/
theorem class_not_dvd_of_probe (n : ℕ) (A : Matrix ι ι ℤ)
    (U B : Matrix ι ι (ZMod n)) (heval : B = U * (Int.castRingHom (ZMod n)).mapMatrix A)
    (a c h : ℤ) (ha : IsUnit (a : ZMod n)) (hindex : a * A.det = c * h)
    (hprobe : B.det ≠ 0) : ¬ (n : ℤ) ∣ h := by
  intro hd
  apply hprobe
  exact class_vanishing_forces_probe_vanishing (Int.castRingHom (ZMod n)) A U B heval
    a c h ha hindex ((ZMod.intCast_zmod_eq_zero_iff_dvd h n).2 hd)

/-- A basis of residue functionals that is nonsingular over the probe ring
detects index vanishing in both directions, even for composite modulus. -/
theorem perfect_probe_iff {R : Type*} [CommRing R] (red : ℤ →+* R)
    (A : Matrix ι ι ℤ) (U B : Matrix ι ι R) (heval : B = U * red.mapMatrix A)
    (hu : IsUnit U.det) : B.det = 0 ↔ red A.det = 0 := by
  rw [probe_determinant red A U B heval]
  constructor
  · intro h
    exact hu.mul_left_cancel (by simpa using h)
  · intro h
    rw [h, mul_zero]

end GRWTSK.AlpogeSelmerUnitIndex
