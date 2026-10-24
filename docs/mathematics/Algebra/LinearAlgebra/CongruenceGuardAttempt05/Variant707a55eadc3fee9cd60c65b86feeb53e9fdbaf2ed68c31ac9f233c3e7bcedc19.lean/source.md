# Complete source: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt05.Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29e23eb7d5c71e720b5f7a6cd7793858057a15e1` · SHA-256 `707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.Tactic

/-! Exact finite congruence/source identity guard for #242.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
The existing Mathlib PSD equivalence is reused, not claimed as new mathematics.
No actual xi/Weil/braid intertwiner, full inertia classification or RH positivity is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CongruenceGuard
open Matrix RCLike
open scoped ComplexOrder Matrix
variable {𝕜 n : Type*} [RCLike 𝕜] [Fintype n] [DecidableEq n]

def quadratic (A : Matrix n n 𝕜) (x : n → 𝕜) : ℝ :=
  RCLike.re (star x ⬝ᵥ (A *ᵥ x))

def HasNegativeDirection (A : Matrix n n 𝕜) : Prop :=
  ∃ x : n → 𝕜, quadratic A x < 0

def pullback (A B : Matrix n n 𝕜) : Matrix n n 𝕜 := Bᴴ * A * B

omit [DecidableEq n] in
theorem quadratic_pullback (A B : Matrix n n 𝕜) (x : n → 𝕜) :
    quadratic (pullback A B) x = quadratic A (B *ᵥ x) := by
  simp only [quadratic,pullback,Matrix.star_mulVec,Matrix.dotProduct_mulVec,
    Matrix.vecMul_vecMul,Matrix.mulVec_mulVec,Matrix.mul_assoc]

omit [DecidableEq n] in
theorem pullback_isHermitian (A B : Matrix n n 𝕜) (hA : A.IsHermitian) :
    (pullback A B).IsHermitian := isHermitian_conjTranspose_mul_mul B hA

/-- Existing Mathlib invertible PSD transport, specialized without a new sign premise. -/
theorem invertible_psd_iff (A : Matrix n n 𝕜) (B : (Matrix n n 𝕜)ˣ) :
    (pullback A B).PosSemidef ↔ A.PosSemidef := by
  exact B.isUnit.posSemidef_star_left_conjugate_iff

theorem unitary_psd_iff (A : Matrix n n 𝕜) (U : Matrix.unitaryGroup n 𝕜) :
    (pullback A U).PosSemidef ↔ A.PosSemidef :=
  invertible_psd_iff A (Unitary.toUnits U)

/-- The inverse image of the original negative vector is the literal new witness. -/
theorem inverse_negative_witness (A : Matrix n n 𝕜) (B : (Matrix n n 𝕜)ˣ)
    (x : n → 𝕜) (hx : quadratic A x < 0) :
    quadratic (pullback A B) ((↑(B⁻¹) : Matrix n n 𝕜) *ᵥ x) < 0 := by
  rw [quadratic_pullback,Matrix.mulVec_mulVec]
  simpa using hx

theorem invertible_negative_iff (A : Matrix n n 𝕜) (B : (Matrix n n 𝕜)ˣ) :
    HasNegativeDirection (pullback A B) ↔ HasNegativeDirection A := by
  constructor
  · rintro ⟨x,hx⟩
    exact ⟨(B : Matrix n n 𝕜)*ᵥ x,(quadratic_pullback A B x) ▸ hx⟩
  · rintro ⟨x,hx⟩
    exact ⟨(↑(B⁻¹) : Matrix n n 𝕜)*ᵥ x,inverse_negative_witness A B x hx⟩

omit [DecidableEq n] in
theorem negative_not_psd (A : Matrix n n 𝕜) (hA : HasNegativeDirection A) :
    ¬ A.PosSemidef := by
  rintro hpsd
  rcases hA with ⟨x,hx⟩
  exact (not_lt_of_ge (hpsd.re_dotProduct_nonneg x)) hx

omit [DecidableEq n] in
theorem hermitian_negative_iff_not_psd (A : Matrix n n 𝕜) (hA : A.IsHermitian) :
    HasNegativeDirection A ↔ ¬ A.PosSemidef := by
  refine ⟨negative_not_psd A,?_⟩
  intro hn
  by_contra hneg
  apply hn
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg hA
  intro x
  apply RCLike.nonneg_iff.mpr
  refine ⟨?_,hA.im_star_dotProduct_mulVec_self x⟩
  exact le_of_not_gt (fun hx => hneg ⟨x,hx⟩)

theorem pullback_one (A : Matrix n n 𝕜) : pullback A 1 = A := by
  simp [pullback]

omit [DecidableEq n] in
theorem pullback_mul (A B C : Matrix n n 𝕜) :
    pullback A (B*C) = pullback (pullback A B) C := by
  simp only [pullback,conjTranspose_mul,Matrix.mul_assoc]

/-- Inverse convention makes this a left group action, with full product order retained. -/
def groupTransport {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (g : G) (A : Matrix n n 𝕜) : Matrix n n 𝕜 := pullback A (rho (g⁻¹))

theorem groupTransport_one {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (A : Matrix n n 𝕜) : groupTransport rho 1 A = A := by
  simp [groupTransport,pullback]

theorem groupTransport_mul {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (g h : G) (A : Matrix n n 𝕜) :
    groupTransport rho (g*h) A = groupTransport rho g (groupTransport rho h A) := by
  simp only [groupTransport,_root_.mul_inv_rev,map_mul,Units.val_mul,pullback_mul]

/-- Constructed genuine finite matrix action, not an assumed orbit map. -/
@[instance_reducible]
def congruenceAction {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ) :
    MulAction G (Matrix n n 𝕜) where
  smul := groupTransport rho
  one_smul := groupTransport_one rho
  mul_smul := groupTransport_mul rho

theorem group_negative_iff {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (g : G) (A : Matrix n n 𝕜) :
    HasNegativeDirection (groupTransport rho g A) ↔ HasNegativeDirection A :=
  invertible_negative_iff A (rho (g⁻¹))

theorem group_orbit_not_psd {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (A : Matrix n n 𝕜) (hA : HasNegativeDirection A) (g : G) :
    ¬ (groupTransport rho g A).PosSemidef :=
  negative_not_psd _ ((group_negative_iff rho g A).mpr hA)

/-- Identifying the actual output form is an explicit source-recognition obligation. -/
structure SourcePreserving (A N : Matrix n n 𝕜) where
  coordinates : (Matrix n n 𝕜)ˣ
  identify : N = pullback A coordinates

/-- A changed source retains its independently declared full correction matrix. -/
structure CorrectedSource (A N : Matrix n n 𝕜) where
  coordinates : (Matrix n n 𝕜)ˣ
  correction : Matrix n n 𝕜
  identify : N = pullback A coordinates + correction

/-- Singular coordinate loss is typed separately from an invertible symmetry. -/
structure LossySource (A N : Matrix n n 𝕜) where
  coordinates : Matrix n n 𝕜
  lost : ∃ x : n → 𝕜, x ≠ 0 ∧ coordinates *ᵥ x = 0
  identify : N = pullback A coordinates

theorem LossySource.coordinates_not_isUnit {A N : Matrix n n 𝕜}
    (p : LossySource A N) : ¬ IsUnit p.coordinates := by
  intro hu
  rcases p.lost with ⟨x,hx,hzero⟩
  exact hx ((Matrix.mulVec_injective_of_isUnit hu) (hzero.trans (Matrix.mulVec_zero _).symm))

theorem SourcePreserving.psd_iff {A N : Matrix n n 𝕜} (p : SourcePreserving A N) :
    N.PosSemidef ↔ A.PosSemidef := by
  rw [p.identify]
  exact invertible_psd_iff A p.coordinates

theorem SourcePreserving.negative_iff {A N : Matrix n n 𝕜} (p : SourcePreserving A N) :
    HasNegativeDirection N ↔ HasNegativeDirection A := by
  rw [p.identify]
  exact invertible_negative_iff A p.coordinates

theorem CorrectedSource.quadratic_defect {A N : Matrix n n 𝕜}
    (p : CorrectedSource A N) (x : n → 𝕜) :
    quadratic N x = quadratic A ((p.coordinates : Matrix n n 𝕜)*ᵥ x) +
      quadratic p.correction x := by
  conv_lhs => rw [p.identify]
  simp only [quadratic,Matrix.add_mulVec,dotProduct_add,map_add]
  exact congrArg₂ (·+·) (quadratic_pullback A p.coordinates x) rfl

section Fixtures

def indefinite : Matrix (Fin 2) (Fin 2) ℂ := !![1,0;0,-1]
def swap : Matrix.unitaryGroup (Fin 2) ℂ :=
  ⟨!![0,1;1,0],by
    constructor <;> (ext i j; fin_cases i <;> fin_cases j <;>
      norm_num [Matrix.mul_apply,Matrix.star_eq_conjTranspose])⟩

def imaginaryShear : (Matrix (Fin 2) (Fin 2) ℂ)ˣ where
  val := !![1,Complex.I;0,1]
  inv := !![1,-Complex.I;0,1]
  val_inv := by ext i j; fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply]
  inv_val := by ext i j; fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply]

def projection : Matrix (Fin 2) (Fin 2) ℂ := !![1,0;0,0]

theorem indefinite_hermitian : indefinite.IsHermitian := by
  ext i j; fin_cases i <;> fin_cases j <;> norm_num [indefinite,Matrix.conjTranspose]

theorem indefinite_actual_values :
    quadratic indefinite ![1,0] = 1 ∧ quadratic indefinite ![0,1] = -1 := by
  constructor <;> norm_num [quadratic,indefinite,dotProduct,Matrix.mulVec]

theorem indefinite_negative : HasNegativeDirection indefinite := by
  refine ⟨![0,1],?_⟩
  norm_num [quadratic,indefinite,dotProduct,Matrix.mulVec]

theorem swap_still_indefinite :
    (pullback indefinite swap).IsHermitian ∧ HasNegativeDirection (pullback indefinite swap) :=
  ⟨pullback_isHermitian _ _ indefinite_hermitian,
    (invertible_negative_iff indefinite (Unitary.toUnits swap)).mpr indefinite_negative⟩

theorem swap_actual_values :
    quadratic (pullback indefinite swap) ![1,0] = -1 ∧
      quadratic (pullback indefinite swap) ![0,1] = 1 := by
  constructor <;> rw [quadratic_pullback] <;>
    norm_num [swap,quadratic,indefinite,dotProduct,Matrix.mulVec]

theorem shear_actual_negative_value :
    quadratic (pullback indefinite imaginaryShear) ![-Complex.I,1] = -1 := by
  rw [quadratic_pullback]
  norm_num [imaginaryShear,quadratic,indefinite,dotProduct,Matrix.mulVec]

theorem shear_still_indefinite :
    (pullback indefinite imaginaryShear).IsHermitian ∧
      HasNegativeDirection (pullback indefinite imaginaryShear) :=
  ⟨pullback_isHermitian _ _ indefinite_hermitian,
    (invertible_negative_iff indefinite imaginaryShear).mpr indefinite_negative⟩

theorem projected_indefinite : pullback indefinite projection = projection := by
  ext i j; fin_cases i <;> fin_cases j <;>
    norm_num [pullback,indefinite,projection,Matrix.mul_apply,Matrix.conjTranspose]

theorem projection_psd : projection.PosSemidef := by
  have he : projection = Matrix.diagonal ![(1:ℂ),0] := by
    ext i j; fin_cases i <;> fin_cases j <;> norm_num [projection,Matrix.diagonal]
  rw [he,Matrix.posSemidef_diagonal_iff]
  intro i
  fin_cases i <;> norm_num

def lossy_projection : LossySource indefinite projection where
  coordinates := projection
  lost := ⟨![0,1],by simp,by ext i; fin_cases i <;> norm_num [projection,Matrix.mulVec,dotProduct]⟩
  identify := projected_indefinite.symm

theorem singular_psd_does_not_reflect :
    (pullback indefinite projection).PosSemidef ∧ ¬ indefinite.PosSemidef :=
  ⟨by rw [projected_indefinite]; exact projection_psd,negative_not_psd indefinite indefinite_negative⟩

theorem correction_changes_sign :
    (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ)).PosSemidef ∧
      ¬ indefinite.PosSemidef := by
  constructor
  · have he : indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ) =
        Matrix.diagonal ![(3:ℂ),1] := by
      ext i j; fin_cases i <;> fin_cases j <;>
        norm_num [indefinite,Matrix.diagonal]
    rw [he,Matrix.posSemidef_diagonal_iff]
    intro i
    fin_cases i <;> norm_num
  · exact negative_not_psd indefinite indefinite_negative

def signCorrected : CorrectedSource indefinite
    (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ)) where
  coordinates := 1
  correction := (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ)
  identify := by rw [Units.val_one,pullback_one]

theorem lossy_not_source_preserving : ¬ Nonempty (SourcePreserving indefinite projection) := by
  rintro ⟨p⟩
  exact (negative_not_psd indefinite indefinite_negative) (p.psd_iff.mp projection_psd)

theorem correction_not_source_preserving :
    ¬ Nonempty (SourcePreserving indefinite
      (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ))) := by
  rintro ⟨p⟩
  exact correction_changes_sign.2 (p.psd_iff.mp correction_changes_sign.1)

end Fixtures
end ContinuousResearch.CongruenceGuard


#check ContinuousResearch.CongruenceGuard.quadratic
#print axioms ContinuousResearch.CongruenceGuard.quadratic
#print ContinuousResearch.CongruenceGuard.quadratic

#check ContinuousResearch.CongruenceGuard.HasNegativeDirection
#print axioms ContinuousResearch.CongruenceGuard.HasNegativeDirection
#print ContinuousResearch.CongruenceGuard.HasNegativeDirection

#check ContinuousResearch.CongruenceGuard.pullback
#print axioms ContinuousResearch.CongruenceGuard.pullback
#print ContinuousResearch.CongruenceGuard.pullback

#check ContinuousResearch.CongruenceGuard.quadratic_pullback
#print axioms ContinuousResearch.CongruenceGuard.quadratic_pullback
#print ContinuousResearch.CongruenceGuard.quadratic_pullback

#check ContinuousResearch.CongruenceGuard.pullback_isHermitian
#print axioms ContinuousResearch.CongruenceGuard.pullback_isHermitian
#print ContinuousResearch.CongruenceGuard.pullback_isHermitian

#check ContinuousResearch.CongruenceGuard.invertible_psd_iff
#print axioms ContinuousResearch.CongruenceGuard.invertible_psd_iff
#print ContinuousResearch.CongruenceGuard.invertible_psd_iff

#check ContinuousResearch.CongruenceGuard.unitary_psd_iff
#print axioms ContinuousResearch.CongruenceGuard.unitary_psd_iff
#print ContinuousResearch.CongruenceGuard.unitary_psd_iff

#check ContinuousResearch.CongruenceGuard.inverse_negative_witness
#print axioms ContinuousResearch.CongruenceGuard.inverse_negative_witness
#print ContinuousResearch.CongruenceGuard.inverse_negative_witness

#check ContinuousResearch.CongruenceGuard.invertible_negative_iff
#print axioms ContinuousResearch.CongruenceGuard.invertible_negative_iff
#print ContinuousResearch.CongruenceGuard.invertible_negative_iff

#check ContinuousResearch.CongruenceGuard.negative_not_psd
#print axioms ContinuousResearch.CongruenceGuard.negative_not_psd
#print ContinuousResearch.CongruenceGuard.negative_not_psd

#check ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd
#print axioms ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd
#print ContinuousResearch.CongruenceGuard.hermitian_negative_iff_not_psd

#check ContinuousResearch.CongruenceGuard.pullback_one
#print axioms ContinuousResearch.CongruenceGuard.pullback_one
#print ContinuousResearch.CongruenceGuard.pullback_one

#check ContinuousResearch.CongruenceGuard.pullback_mul
#print axioms ContinuousResearch.CongruenceGuard.pullback_mul
#print ContinuousResearch.CongruenceGuard.pullback_mul

#check ContinuousResearch.CongruenceGuard.groupTransport
#print axioms ContinuousResearch.CongruenceGuard.groupTransport
#print ContinuousResearch.CongruenceGuard.groupTransport

#check ContinuousResearch.CongruenceGuard.groupTransport_one
#print axioms ContinuousResearch.CongruenceGuard.groupTransport_one
#print ContinuousResearch.CongruenceGuard.groupTransport_one

#check ContinuousResearch.CongruenceGuard.groupTransport_mul
#print axioms ContinuousResearch.CongruenceGuard.groupTransport_mul
#print ContinuousResearch.CongruenceGuard.groupTransport_mul

#check ContinuousResearch.CongruenceGuard.congruenceAction
#print axioms ContinuousResearch.CongruenceGuard.congruenceAction
#print ContinuousResearch.CongruenceGuard.congruenceAction

#check ContinuousResearch.CongruenceGuard.group_negative_iff
#print axioms ContinuousResearch.CongruenceGuard.group_negative_iff
#print ContinuousResearch.CongruenceGuard.group_negative_iff

#check ContinuousResearch.CongruenceGuard.group_orbit_not_psd
#print axioms ContinuousResearch.CongruenceGuard.group_orbit_not_psd
#print ContinuousResearch.CongruenceGuard.group_orbit_not_psd

#check ContinuousResearch.CongruenceGuard.SourcePreserving
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving
#print ContinuousResearch.CongruenceGuard.SourcePreserving

#check ContinuousResearch.CongruenceGuard.CorrectedSource
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource
#print ContinuousResearch.CongruenceGuard.CorrectedSource

#check ContinuousResearch.CongruenceGuard.LossySource
#print axioms ContinuousResearch.CongruenceGuard.LossySource
#print ContinuousResearch.CongruenceGuard.LossySource

#check ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit
#print axioms ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit
#print ContinuousResearch.CongruenceGuard.LossySource.coordinates_not_isUnit

#check ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff
#print ContinuousResearch.CongruenceGuard.SourcePreserving.psd_iff

#check ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff
#print ContinuousResearch.CongruenceGuard.SourcePreserving.negative_iff

#check ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect
#print ContinuousResearch.CongruenceGuard.CorrectedSource.quadratic_defect

#check ContinuousResearch.CongruenceGuard.indefinite
#print axioms ContinuousResearch.CongruenceGuard.indefinite
#print ContinuousResearch.CongruenceGuard.indefinite

#check ContinuousResearch.CongruenceGuard.swap
#print axioms ContinuousResearch.CongruenceGuard.swap
#print ContinuousResearch.CongruenceGuard.swap

#check ContinuousResearch.CongruenceGuard.imaginaryShear
#print axioms ContinuousResearch.CongruenceGuard.imaginaryShear
#print ContinuousResearch.CongruenceGuard.imaginaryShear

#check ContinuousResearch.CongruenceGuard.projection
#print axioms ContinuousResearch.CongruenceGuard.projection
#print ContinuousResearch.CongruenceGuard.projection

#check ContinuousResearch.CongruenceGuard.indefinite_hermitian
#print axioms ContinuousResearch.CongruenceGuard.indefinite_hermitian
#print ContinuousResearch.CongruenceGuard.indefinite_hermitian

#check ContinuousResearch.CongruenceGuard.indefinite_actual_values
#print axioms ContinuousResearch.CongruenceGuard.indefinite_actual_values
#print ContinuousResearch.CongruenceGuard.indefinite_actual_values

#check ContinuousResearch.CongruenceGuard.indefinite_negative
#print axioms ContinuousResearch.CongruenceGuard.indefinite_negative
#print ContinuousResearch.CongruenceGuard.indefinite_negative

#check ContinuousResearch.CongruenceGuard.swap_still_indefinite
#print axioms ContinuousResearch.CongruenceGuard.swap_still_indefinite
#print ContinuousResearch.CongruenceGuard.swap_still_indefinite

#check ContinuousResearch.CongruenceGuard.swap_actual_values
#print axioms ContinuousResearch.CongruenceGuard.swap_actual_values
#print ContinuousResearch.CongruenceGuard.swap_actual_values

#check ContinuousResearch.CongruenceGuard.shear_actual_negative_value
#print axioms ContinuousResearch.CongruenceGuard.shear_actual_negative_value
#print ContinuousResearch.CongruenceGuard.shear_actual_negative_value

#check ContinuousResearch.CongruenceGuard.shear_still_indefinite
#print axioms ContinuousResearch.CongruenceGuard.shear_still_indefinite
#print ContinuousResearch.CongruenceGuard.shear_still_indefinite

#check ContinuousResearch.CongruenceGuard.projected_indefinite
#print axioms ContinuousResearch.CongruenceGuard.projected_indefinite
#print ContinuousResearch.CongruenceGuard.projected_indefinite

#check ContinuousResearch.CongruenceGuard.projection_psd
#print axioms ContinuousResearch.CongruenceGuard.projection_psd
#print ContinuousResearch.CongruenceGuard.projection_psd

#check ContinuousResearch.CongruenceGuard.lossy_projection
#print axioms ContinuousResearch.CongruenceGuard.lossy_projection
#print ContinuousResearch.CongruenceGuard.lossy_projection

#check ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect
#print axioms ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect
#print ContinuousResearch.CongruenceGuard.singular_psd_does_not_reflect

#check ContinuousResearch.CongruenceGuard.correction_changes_sign
#print axioms ContinuousResearch.CongruenceGuard.correction_changes_sign
#print ContinuousResearch.CongruenceGuard.correction_changes_sign

#check ContinuousResearch.CongruenceGuard.signCorrected
#print axioms ContinuousResearch.CongruenceGuard.signCorrected
#print ContinuousResearch.CongruenceGuard.signCorrected

#check ContinuousResearch.CongruenceGuard.lossy_not_source_preserving
#print axioms ContinuousResearch.CongruenceGuard.lossy_not_source_preserving
#print ContinuousResearch.CongruenceGuard.lossy_not_source_preserving

#check ContinuousResearch.CongruenceGuard.correction_not_source_preserving
#print axioms ContinuousResearch.CongruenceGuard.correction_not_source_preserving
#print ContinuousResearch.CongruenceGuard.correction_not_source_preserving

#check ContinuousResearch.CongruenceGuard.SourcePreserving.mk
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.mk
#print ContinuousResearch.CongruenceGuard.SourcePreserving.mk

#check ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates
#print ContinuousResearch.CongruenceGuard.SourcePreserving.coordinates

#check ContinuousResearch.CongruenceGuard.SourcePreserving.identify
#print axioms ContinuousResearch.CongruenceGuard.SourcePreserving.identify
#print ContinuousResearch.CongruenceGuard.SourcePreserving.identify

#check ContinuousResearch.CongruenceGuard.CorrectedSource.mk
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.mk
#print ContinuousResearch.CongruenceGuard.CorrectedSource.mk

#check ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates
#print ContinuousResearch.CongruenceGuard.CorrectedSource.coordinates

#check ContinuousResearch.CongruenceGuard.CorrectedSource.correction
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.correction
#print ContinuousResearch.CongruenceGuard.CorrectedSource.correction

#check ContinuousResearch.CongruenceGuard.CorrectedSource.identify
#print axioms ContinuousResearch.CongruenceGuard.CorrectedSource.identify
#print ContinuousResearch.CongruenceGuard.CorrectedSource.identify

#check ContinuousResearch.CongruenceGuard.LossySource.mk
#print axioms ContinuousResearch.CongruenceGuard.LossySource.mk
#print ContinuousResearch.CongruenceGuard.LossySource.mk

#check ContinuousResearch.CongruenceGuard.LossySource.coordinates
#print axioms ContinuousResearch.CongruenceGuard.LossySource.coordinates
#print ContinuousResearch.CongruenceGuard.LossySource.coordinates

#check ContinuousResearch.CongruenceGuard.LossySource.lost
#print axioms ContinuousResearch.CongruenceGuard.LossySource.lost
#print ContinuousResearch.CongruenceGuard.LossySource.lost

#check ContinuousResearch.CongruenceGuard.LossySource.identify
#print axioms ContinuousResearch.CongruenceGuard.LossySource.identify
#print ContinuousResearch.CongruenceGuard.LossySource.identify
```
