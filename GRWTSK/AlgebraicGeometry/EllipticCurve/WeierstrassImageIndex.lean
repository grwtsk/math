/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Turn the OLD integral image frame into an actual finite-index lattice statement.
The ambient rational vector space, standard parameter basis, curve-monomial
basis and inclusion all come from the preceding Frey jet construction.
Index cardinality is kept distinct from universal clearing/exponent and from
torsion in the unsaturated integral source quotient.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame
import Mathlib.LinearAlgebra.FreeModule.Finite.CardQuotient
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageIndex

open Module
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open WeierstrassIntegralImage WeierstrassImageFrame WeierstrassOriginJet

abbrev Target (N : ℕ) := FreyJetQuotient.Parameter ℚ N

/-- The OLD monic-power parameter basis 1,T,...,T^N. -/
def standardBasis (N : ℕ) : Basis (Fin (N+1)) ℚ (Target N) :=
  WeierstrassOriginJet.parameterBasis (R := ℚ) N

/-- The rational branch element used by the OLD origin-jet equivalence. -/
def branchElement (A B : ℤ) (N : ℕ) : Target N :=
  WeierstrassMixedLift.lift
    (FreyJetQuotient.parameterScalar ℚ N (A : ℚ))
    (FreyJetQuotient.parameterScalar ℚ N ((B : ℚ)⁻¹))
    (FreyJetQuotient.parameter ℚ N) (N+1)

/-- The OLD actual image lattice, now named independently of a determinant. -/
def imageLattice (A B : ℤ) (N : ℕ) : Submodule ℤ (Target N) :=
  WeierstrassIntegralImage.lattice
    (branchElement A B N) (FreyJetQuotient.parameter ℚ N) N

/-- The standard integral parameter lattice. -/
def standardLattice (N : ℕ) : Submodule ℤ (Target N) :=
  Submodule.span ℤ
    (Set.range (fun k : Fin (N+1) => FreyJetQuotient.parameter ℚ N ^ k.val))

/-- The frame matrix already derived from the actual curve monomials gives a
rational automorphism because its determinant is nonzero. -/
def frameEquiv (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    Target N ≃ₗ[ℚ] Target N :=
  Matrix.toLinearEquiv (standardBasis N) (frameMatrix A B N)
    (isUnit_iff_ne_zero.mpr (frame_determinant_ne_zero A B hB N))

/-- The curve-monomial basis, rather than a supplied abstract full-rank lattice. -/
def frameBasis (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    Basis (Fin (N+1)) ℚ (Target N) :=
  (standardBasis N).map (frameEquiv A B hB N)

/-- Each basis vector is the corresponding OLD curve monomial in the OLD
parameter quotient. -/
theorem frameBasis_apply (A B : ℤ) (hB : B ≠ 0) (N : ℕ) (k : Fin (N+1)) :
    frameBasis A B hB N k =
      term (branchElement A B N) (FreyJetQuotient.parameter ℚ N) k.val := by
  apply (standardBasis N).repr.injective
  ext i
  simp only [frameBasis,frameEquiv,standardBasis,Matrix.toLinearEquiv_apply,
    Matrix.toLin_apply,frameMatrix,Matrix.of_apply]
  rw [← frame_represents A B hB N k.val]
  simp [FreyJetQuotient.parameter,WeierstrassOriginJet.parameterBasis]

/-- The OLD image span is exactly the additive closure of the curve-monomial
rational basis. -/
theorem image_toAddSubgroup_eq_closure (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    (imageLattice A B N).toAddSubgroup =
      AddSubgroup.closure (Set.range (frameBasis A B hB N)) := by
  ext z
  change z ∈ imageLattice A B N ↔ _
  simp only [imageLattice,WeierstrassIntegralImage.lattice,
    Submodule.mem_span,AddSubgroup.mem_closure]
  constructor
  · intro hz
    simpa only [frameBasis_apply A B hB N] using hz
  · intro hz
    simpa only [frameBasis_apply A B hB N] using hz

/-- Likewise for the old parameter lattice and its monic-power basis. -/
theorem standard_toAddSubgroup_eq_closure (N : ℕ) :
    (standardLattice N).toAddSubgroup =
      AddSubgroup.closure (Set.range (standardBasis N)) := by
  ext z
  change z ∈ standardLattice N ↔ _
  simp [standardLattice,standardBasis,FreyJetQuotient.parameter,
    WeierstrassOriginJet.parameterBasis]

/-- Integral parameter powers are in the OLD image. -/
theorem standard_le_image (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    standardLattice N ≤ imageLattice A B N := by
  apply Submodule.span_le.mpr
  rintro z ⟨k,rfl⟩
  apply WeierstrassIntegralImage.parameter_pow_mem A B
    (branchElement A B N) (FreyJetQuotient.parameter ℚ N)
  · rw [branchElement]
    exact WeierstrassMixedLift.lift_equation
      (FreyJetQuotient.parameterScalar ℚ N (A : ℚ))
      (FreyJetQuotient.parameterScalar ℚ N (B : ℚ))
      (FreyJetQuotient.parameterScalar ℚ N ((B : ℚ)⁻¹))
      (FreyJetQuotient.parameter ℚ N)
      (by
        rw [← map_mul]
        field_simp [show (B : ℚ) ≠ 0 by exact_mod_cast hB])
      (N+1) (FreyJetQuotient.parameter_pow N)
  · exact FreyJetQuotient.parameter_pow N
  · exact WeierstrassMixedLift.lift_square_dvd _ _ _ _

/-- Determinant of the STANDARD basis expressed in the curve-monomial basis.
It is the inverse of the OLD frame determinant. -/
theorem frameBasis_det_standard (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    (frameBasis A B hB N).det (standardBasis N) =
      (B : ℚ) ^ weightSum N := by
  have hdet :
      LinearMap.det ((frameEquiv A B hB N).toLinearMap) =
        (1/(B : ℚ))^(weightSum N) := by
    rw [LinearMap.det_toMatrix (standardBasis N)]
    exact frame_determinant A B hB N
  have hinv :
      LinearMap.det ((frameEquiv A B hB N).symm.toLinearMap) =
        (B : ℚ)^(weightSum N) := by
    rw [← LinearEquiv.coe_inv_det,hdet]
    field_simp [show (B : ℚ) ≠ 0 by exact_mod_cast hB]
  simpa [frameBasis,Basis.det_comp_basis] using hinv

/-- Actual relative index of the standard parameter lattice in the OLD image
lattice. The right side is a natural number; no cyclicity is asserted. -/
theorem relIndex_formula (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    ((standardLattice N).toAddSubgroup.relIndex
      (imageLattice A B N).toAddSubgroup
      (standard_le_image A B hB N)) =
      B.natAbs ^ weightSum N := by
  have h :=
    AddSubgroup.relIndex_eq_abs_det
      (standardLattice N).toAddSubgroup
      (imageLattice A B N).toAddSubgroup
      (standard_le_image A B hB N)
      (standardBasis N) (frameBasis A B hB N)
      (standard_toAddSubgroup_eq_closure N)
      (image_toAddSubgroup_eq_closure A B hB N)
  rw [frameBasis_det_standard A B hB N] at h
  exact_mod_cast (by
    simpa [abs_pow,abs_intCast,Int.cast_natAbs] using h)

/-- Explicit quotient-cardinality form of the same relative index. -/
theorem quotient_cardinality (A B : ℤ) (hB : B ≠ 0) (N : ℕ) :
    Nat.card
      ((imageLattice A B N).toAddSubgroup ⧸
        ((standardLattice N).toAddSubgroup.subgroupOf
          (imageLattice A B N).toAddSubgroup)) =
      B.natAbs ^ weightSum N := by
  change
    (standardLattice N).toAddSubgroup.relIndex
      (imageLattice A B N).toAddSubgroup = _
  exact relIndex_formula A B hB N

/-- Prime depth of the quotient cardinality retains every multiplicity of B. -/
theorem quotient_cardinality_prime_depth (A B : ℤ) (hB : B ≠ 0)
    (N p : ℕ) :
    (B.natAbs ^ weightSum N).factorization p =
      weightSum N * B.natAbs.factorization p := by
  rw [Nat.factorization_pow]
  simp [Finsupp.smul_apply,smul_eq_mul]

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageIndex
