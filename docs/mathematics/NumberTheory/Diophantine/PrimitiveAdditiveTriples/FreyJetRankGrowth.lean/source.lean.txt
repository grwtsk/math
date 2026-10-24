/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's finite integral linear maps (Apache-2.0).
Formalization assistance: OpenAI.

One genuine coefficient-rank increment, from selected functions (1,x) to
(1,x,y). The fourth observation is a first jet at an EXISTING port, not a
fourth point. No identification with the complete intrinsic H0(E,O(3O)),
arbitrary-stage interpolation, or uniform arithmetic height bound is claimed.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Coefficients of the selected affine expression u+v*x+w*y. -/
abbrev FreyPlaneCoordinates := Fin 3 → ℤ

/-- Three source-ordered values and one first-y-jet observation. -/
abbrev FreyValueJetObservations := Fin 4 → ℤ

/-- The rank-grown source map. The derivative observation detects the new
coefficient; the original three values alone cannot do so. -/
def freyValueJetEval (a b : ℤ) (v : FreyPlaneCoordinates) : FreyValueJetObservations :=
  ![v 0, v 0 + a * v 1, v 0 - b * v 1, v 2]

/-- The same selected integral Bezout inverse, with the new coefficient
recovered from the fourth observation. -/
def freyValueJetRecover (r s : ℤ) (y : FreyValueJetObservations) : FreyPlaneCoordinates :=
  ![y 0, r * (y 1 - y 0) + s * (y 0 - y 2), y 3]

/-- The enlarged observation map is Z-linear. -/
def freyValueJetEvalLinear (a b : ℤ) :
    FreyPlaneCoordinates →ₗ[ℤ] FreyValueJetObservations where
  toFun := freyValueJetEval a b
  map_add' := by
    intro v w
    ext i
    fin_cases i <;> simp [freyValueJetEval] <;> ring
  map_smul' := by
    intro k v
    ext i
    fin_cases i <;> simp [freyValueJetEval] <;> ring

/-- The selected integral recovery map is also Z-linear. -/
def freyValueJetRecoverLinear (r s : ℤ) :
    FreyValueJetObservations →ₗ[ℤ] FreyPlaneCoordinates where
  toFun := freyValueJetRecover r s
  map_add' := by
    intro v w
    ext i
    fin_cases i <;> simp [freyValueJetRecover] <;> ring
  map_smul' := by
    intro k v
    ext i
    fin_cases i <;> simp [freyValueJetRecover] <;> ring

/-- The rank-grown map still has an integral selected left inverse. -/
theorem freyValueJetRecover_leftInverse
    {a b r s : ℤ} (h : r * a + s * b = 1) :
    Function.LeftInverse (freyValueJetRecover r s) (freyValueJetEval a b) := by
  intro v
  ext i
  fin_cases i
  · rfl
  · change r * ((v 0 + a * v 1) - v 0) + s * (v 0 - (v 0 - b * v 1)) = v 1
    calc
      _ = (r * a + s * b) * v 1 := by ring
      _ = v 1 := by rw [h]; ring
  · rfl

/-- Primitive source data provide the required Bezout hypothesis. -/
theorem PrimitiveAdditiveTriple.freyValueJetEval_injective
    (t : PrimitiveAdditiveTriple) :
    Function.Injective (freyValueJetEval (t.a : ℤ) (t.b : ℤ)) :=
  (freyValueJetRecover_leftInverse t.bezout_identity).injective

/-- Recovery is tied to the exact same integral linear map. -/
theorem PrimitiveAdditiveTriple.freyValueJetRecover_comp_eval
    (t : PrimitiveAdditiveTriple) :
    (freyValueJetRecoverLinear t.bezoutA t.bezoutB).comp
      (freyValueJetEvalLinear (t.a : ℤ) (t.b : ℤ)) = LinearMap.id := by
  ext v i
  exact congrFun (freyValueJetRecover_leftInverse t.bezout_identity v) i

/-- The selected next-stage coefficient inclusion, with no source relabeling. -/
def freyRaiseToPlane (v : FreySectionCoordinates) : FreyPlaneCoordinates := ![v 0, v 1, 0]

/-- The old map occurs unchanged in the first three observations. -/
theorem freyValueJetEval_raise (a b : ℤ) (v : FreySectionCoordinates) :
    freyValueJetEval a b (freyRaiseToPlane v) =
      ![freyThreePortEval a b v 0, freyThreePortEval a b v 1,
        freyThreePortEval a b v 2, 0] := by
  ext i
  fin_cases i <;> rfl

/-- The new y coefficient is not in the image of the old coefficient space. -/
theorem frey_y_not_in_old_stage :
    ¬ ∃ v : FreySectionCoordinates, freyRaiseToPlane v = ![0, 0, 1] := by
  rintro ⟨v, hv⟩
  have h := congrFun hv (2 : Fin 3)
  norm_num [freyRaiseToPlane] at h

/-- The new first-jet slot detects y by exactly one unit observation. -/
theorem freyValueJetEval_y (a b : ℤ) :
    freyValueJetEval a b ![0, 0, 1] = ![0, 0, 0, 1] := by
  simp [freyValueJetEval]

/-- Three values without the derivative observation lose the y direction. -/
theorem frey_three_values_lose_y (a b : ℤ) :
    (fun i : Fin 3 => freyValueJetEval a b ![0, 0, 1] (Fin.castSucc i)) =
      (fun i : Fin 3 => freyValueJetEval a b ![0, 0, 0] (Fin.castSucc i)) := by
  funext i
  fin_cases i <;> simp [freyValueJetEval]

/-- Three values and a first jet at a selected EXISTING source port.
The anchor may vary with the finite place; it is not a fourth point. -/
def PrimitiveAdditiveTriple.freyPlaneObservationAt
    (t : PrimitiveAdditiveTriple) (k : Fin 3) (v : Fin 3 → ℚ) : Fin 4 → ℚ :=
  ![t.freyPlaneJetCoefficients 0 v 0,
    t.freyPlaneJetCoefficients 1 v 0,
    t.freyPlaneJetCoefficients 2 v 0,
    t.freyPlaneJetCoefficients k v 1]

/-- The default rational observation uses source port zero. -/
def PrimitiveAdditiveTriple.freyPlaneObservation
    (t : PrimitiveAdditiveTriple) (v : Fin 3 → ℚ) : Fin 4 → ℚ :=
  t.freyPlaneObservationAt 0 v

/-- The selected first-jet coefficient of u+v*x+w*y is w at every port.
One may choose a unit-Jacobian port locally without changing this map.
This is not invariance of the full quadratic jet or its metric. -/
theorem PrimitiveAdditiveTriple.freyPlaneObservationAt_eq
    (t : PrimitiveAdditiveTriple) (k : Fin 3) (v : Fin 3 → ℚ) :
    t.freyPlaneObservationAt k v = t.freyPlaneObservation v := by
  rfl

/-- Same-map bridge: the integral rank-grown frame is exactly the selected
observations of the source-bound nilpotent curve jet. -/
theorem PrimitiveAdditiveTriple.freyPlaneObservation_intCast
    (t : PrimitiveAdditiveTriple) (v : FreyPlaneCoordinates) :
    t.freyPlaneObservation (fun i => (v i : ℚ)) =
      fun j => (freyValueJetEval (t.a : ℤ) (t.b : ℤ) v j : ℚ) := by
  ext i
  fin_cases i <;>
    simp [PrimitiveAdditiveTriple.freyPlaneObservation,
      PrimitiveAdditiveTriple.freyPlaneObservationAt,
      PrimitiveAdditiveTriple.freyPlaneJetCoefficients,
      PrimitiveAdditiveTriple.freyPortRoot, freyValueJetEval] <;> ring

/-- Coefficient recovery preserves common divisors of every depth in the
rank-grown frame; no squarefree-support substitution is made. -/
theorem freyValueJet_commonDivisor_iff
    {a b r s : ℤ} (h : r * a + s * b = 1)
    (d : ℤ) (v : FreyPlaneCoordinates) :
    (∀ i, d ∣ freyValueJetEval a b v i) ↔ (∀ j, d ∣ v j) := by
  constructor
  · intro hv j
    fin_cases j
    · exact hv 0
    · have hrec : d ∣ freyValueJetRecover r s (freyValueJetEval a b v) 1 := by
        change d ∣ r * (freyValueJetEval a b v 1 - freyValueJetEval a b v 0) +
          s * (freyValueJetEval a b v 0 - freyValueJetEval a b v 2)
        exact dvd_add
          (dvd_mul_of_dvd_right (dvd_sub (hv 1) (hv 0)) r)
          (dvd_mul_of_dvd_right (dvd_sub (hv 0) (hv 2)) s)
      simpa only [freyValueJetRecover_leftInverse h v] using hrec
    · exact hv 3
  · intro hv i
    fin_cases i
    · exact hv 0
    · change d ∣ v 0 + a * v 1
      exact dvd_add (hv 0) (dvd_mul_of_dvd_right (hv 1) a)
    · change d ∣ v 0 - b * v 1
      exact dvd_sub (hv 0) (dvd_mul_of_dvd_right (hv 1) b)
    · exact hv 2

/-- The original compatibility equation remains the only obstruction.
The extra first jet does not make arbitrary four-value data interpolable. -/
theorem PrimitiveAdditiveTriple.freyValueJetEval_not_surjective
    (t : PrimitiveAdditiveTriple) :
    ¬ Function.Surjective (freyValueJetEval (t.a : ℤ) (t.b : ℤ)) := by
  intro hs
  obtain ⟨v, hv⟩ := hs ![0, 1, 0, 0]
  have h0 := congrFun hv (0 : Fin 4)
  have h1 := congrFun hv (1 : Fin 4)
  have h2 := congrFun hv (2 : Fin 4)
  change v 0 = 0 at h0
  change v 0 + (t.a : ℤ) * v 1 = 1 at h1
  change v 0 - (t.b : ℤ) * v 1 = 0 at h2
  have hb : (t.b : ℤ) = 0 := by
    linear_combination -(t.b : ℤ) * h1 - (t.a : ℤ) * h2 +
      ((t.a : ℤ) + (t.b : ℤ)) * h0
  have hbne : (t.b : ℤ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  exact hbne hb

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
