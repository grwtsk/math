/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's finite vectors, integer Bézout coefficients and linear maps
(Apache-2.0). OpenAI Codex formalization assistance.

This module proves the finite integral three-port recovery core only. It does
not construct an elliptic curve, prove a conductor formula, or prove abc. -/
import Mathlib
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Coefficients of a section in the ordered basis `(1,x)`. -/
abbrev FreySectionCoordinates := Fin 2 → ℤ

/-- Values at the three ordered source ports `(T₀,Tₐ,T₋ᵦ)`. -/
abbrev FreyThreePortValues := Fin 3 → ℤ

/-- Values at the two square-frame ports `(Tₐ,T₋ᵦ)`. -/
abbrev FreyTwoPortValues := Fin 2 → ℤ

/-- Evaluate `u+v*x` at the formal affine coordinates `0`, `a`, and `-b`.
The later elliptic application must prove that these are the three marked
rational two-torsion points and that `(1,x)` is the claimed section basis. -/
def freyThreePortEval (a b : ℤ) (v : FreySectionCoordinates) :
    FreyThreePortValues :=
  ![v 0, v 0 + a * v 1, v 0 - b * v 1]

@[simp] theorem freyThreePortEval_add (a b : ℤ)
    (x y : FreySectionCoordinates) :
    freyThreePortEval a b (x + y) =
      freyThreePortEval a b x + freyThreePortEval a b y := by
  ext i
  fin_cases i <;> simp [freyThreePortEval] <;> ring

@[simp] theorem freyThreePortEval_smul (a b q : ℤ)
    (x : FreySectionCoordinates) :
    freyThreePortEval a b (q • x) = q • freyThreePortEval a b x := by
  ext i
  fin_cases i <;> simp [freyThreePortEval] <;> ring

/-- The three-port value map as an exact integral linear map. -/
def freyThreePortEvalLinear (a b : ℤ) :
    FreySectionCoordinates →ₗ[ℤ] FreyThreePortValues where
  toFun := freyThreePortEval a b
  map_add' := freyThreePortEval_add a b
  map_smul' := freyThreePortEval_smul a b

/-- An explicit recovery map from three values, parameterized by a Bézout
identity `r*a+s*b=1`. -/
def freyThreePortRecover (r s : ℤ) (y : FreyThreePortValues) :
    FreySectionCoordinates :=
  ![y 0, r * (y 1 - y 0) + s * (y 0 - y 2)]

@[simp] theorem freyThreePortRecover_add (r s : ℤ)
    (x y : FreyThreePortValues) :
    freyThreePortRecover r s (x + y) =
      freyThreePortRecover r s x + freyThreePortRecover r s y := by
  ext i
  fin_cases i <;> simp [freyThreePortRecover] <;> ring

@[simp] theorem freyThreePortRecover_smul (r s q : ℤ)
    (y : FreyThreePortValues) :
    freyThreePortRecover r s (q • y) = q • freyThreePortRecover r s y := by
  ext i
  fin_cases i <;> simp [freyThreePortRecover] <;> ring

/-- The explicit recovery map is integral linear. -/
def freyThreePortRecoverLinear (r s : ℤ) :
    FreyThreePortValues →ₗ[ℤ] FreySectionCoordinates where
  toFun := freyThreePortRecover r s
  map_add' := freyThreePortRecover_add r s
  map_smul' := freyThreePortRecover_smul r s

/-- A Bézout identity gives a left inverse for the exact three-port map. -/
theorem freyThreePortRecover_leftInverse_of_bezout
    {a b r s : ℤ} (hbezout : r * a + s * b = 1) :
    Function.LeftInverse (freyThreePortRecover r s) (freyThreePortEval a b) := by
  intro v
  ext i
  fin_cases i
  · rfl
  · change
      r * ((v 0 + a * v 1) - v 0) +
          s * (v 0 - (v 0 - b * v 1)) = v 1
    calc
      r * ((v 0 + a * v 1) - v 0) +
          s * (v 0 - (v 0 - b * v 1)) =
          (r * a + s * b) * v 1 := by ring
      _ = v 1 := by rw [hbezout]; simp

/-- Consequently the three-port evaluation is injective. -/
theorem freyThreePortEval_injective_of_bezout
    {a b r s : ℤ} (hbezout : r * a + s * b = 1) :
    Function.Injective (freyThreePortEval a b) :=
  (freyThreePortRecover_leftInverse_of_bezout hbezout).injective

/-- The exact linear-map composition is the identity when the Bézout
certificate is present. -/
theorem freyThreePortRecover_comp_eval_of_bezout
    {a b r s : ℤ} (hbezout : r * a + s * b = 1) :
    (freyThreePortRecoverLinear r s).comp (freyThreePortEvalLinear a b) =
      LinearMap.id := by
  ext v i
  exact congrFun (freyThreePortRecover_leftInverse_of_bezout hbezout v) i

/-- The compatibility equation obeyed by every three-port value vector in the
image. It records that both port differences encode the same `x` coefficient. -/
def FreyThreePortCompatible (a b : ℤ) (y : FreyThreePortValues) : Prop :=
  b * (y 1 - y 0) = a * (y 0 - y 2)

/-- Every evaluated vector satisfies the compatibility equation. -/
theorem freyThreePortEval_compatible (a b : ℤ)
    (v : FreySectionCoordinates) :
    FreyThreePortCompatible a b (freyThreePortEval a b v) := by
  unfold FreyThreePortCompatible freyThreePortEval
  ring

/-- The square two-port evaluation. Its value difference is multiplied by
`a+b`; this is the exact algebraic source of the square-frame determinant. -/
def freyTwoPortEval (a b : ℤ) (v : FreySectionCoordinates) :
    FreyTwoPortValues :=
  ![v 0 + a * v 1, v 0 - b * v 1]

theorem freyTwoPort_difference (a b : ℤ) (v : FreySectionCoordinates) :
    freyTwoPortEval a b v 0 - freyTwoPortEval a b v 1 =
      (a + b) * v 1 := by
  simp [freyTwoPortEval]
  ring

/-- The fixed coordinate vector representing the section `x` in `(1,x)`. -/
def freyXSection : FreySectionCoordinates := ![0, 1]

/-- Postprocess the three source values into the ordered additive triple. -/
def recoverABCValues (y : FreyThreePortValues) : FreyThreePortValues :=
  ![y 1 - y 0, y 0 - y 2, y 1 - y 2]

/-- Canonical integer Bézout coefficients supplied by Mathlib's extended gcd. -/
def PrimitiveAdditiveTriple.bezoutA (t : PrimitiveAdditiveTriple) : ℤ :=
  Nat.gcdA t.a t.b

/-- Canonical integer Bézout coefficients supplied by Mathlib's extended gcd. -/
def PrimitiveAdditiveTriple.bezoutB (t : PrimitiveAdditiveTriple) : ℤ :=
  Nat.gcdB t.a t.b

/-- Primitivity gives the exact integer Bézout identity used by recovery. -/
theorem PrimitiveAdditiveTriple.bezout_identity (t : PrimitiveAdditiveTriple) :
    t.bezoutA * (t.a : ℤ) + t.bezoutB * (t.b : ℤ) = 1 := by
  have h := Nat.gcd_eq_gcd_ab t.a t.b
  rw [t.coprime_ab.gcd_eq_one] at h
  norm_num at h
  simpa [PrimitiveAdditiveTriple.bezoutA,
    PrimitiveAdditiveTriple.bezoutB, mul_comm] using h.symm

/-- The three-port evaluation attached to a typed primitive additive triple. -/
def PrimitiveAdditiveTriple.threePortEval (t : PrimitiveAdditiveTriple) :
    FreySectionCoordinates →ₗ[ℤ] FreyThreePortValues :=
  freyThreePortEvalLinear (t.a : ℤ) (t.b : ℤ)

/-- The canonical integral selected left inverse attached to the primitive
triple's extended-gcd coefficients. -/
def PrimitiveAdditiveTriple.threePortRecover (t : PrimitiveAdditiveTriple) :
    FreyThreePortValues →ₗ[ℤ] FreySectionCoordinates :=
  freyThreePortRecoverLinear t.bezoutA t.bezoutB

/-- The selected recovery map is a left inverse for the same exact port map. -/
theorem PrimitiveAdditiveTriple.threePortRecover_comp_eval
    (t : PrimitiveAdditiveTriple) :
    t.threePortRecover.comp t.threePortEval = LinearMap.id := by
  exact freyThreePortRecover_comp_eval_of_bezout t.bezout_identity

/-- The typed primitive-triple port is injective over the integral lattice. -/
theorem PrimitiveAdditiveTriple.threePortEval_injective
    (t : PrimitiveAdditiveTriple) : Function.Injective t.threePortEval := by
  exact freyThreePortEval_injective_of_bezout t.bezout_identity

/-- Evaluating `x` at the three formal torsion coordinates gives
`(0,a,-b)`. -/
theorem PrimitiveAdditiveTriple.threePortEval_x
    (t : PrimitiveAdditiveTriple) :
    t.threePortEval freyXSection =
      ![0, (t.a : ℤ), -(t.b : ℤ)] := by
  ext i
  fin_cases i <;>
    simp [PrimitiveAdditiveTriple.threePortEval,
      freyThreePortEvalLinear, freyThreePortEval, freyXSection]

/-- Integral postprocessing recovers the same ordered primitive triple. -/
theorem PrimitiveAdditiveTriple.recoverABC_threePortEval_x
    (t : PrimitiveAdditiveTriple) :
    recoverABCValues (t.threePortEval freyXSection) =
      ![(t.a : ℤ), (t.b : ℤ), (t.c : ℤ)] := by
  ext i
  fin_cases i
  · simp [recoverABCValues, t.threePortEval_x]
  · simp [recoverABCValues, t.threePortEval_x]
  · simp only [recoverABCValues, t.threePortEval_x]
    change (t.a : ℤ) - (-(t.b : ℤ)) = (t.c : ℤ)
    exact_mod_cast t.sum_eq

/-- The two-port square-frame difference for `x` is exactly `c`. -/
theorem PrimitiveAdditiveTriple.twoPort_x_difference
    (t : PrimitiveAdditiveTriple) :
    freyTwoPortEval (t.a : ℤ) (t.b : ℤ) freyXSection 0 -
        freyTwoPortEval (t.a : ℤ) (t.b : ℤ) freyXSection 1 =
      (t.c : ℤ) := by
  rw [freyTwoPort_difference]
  simp [freyXSection]
  exact_mod_cast t.sum_eq

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
