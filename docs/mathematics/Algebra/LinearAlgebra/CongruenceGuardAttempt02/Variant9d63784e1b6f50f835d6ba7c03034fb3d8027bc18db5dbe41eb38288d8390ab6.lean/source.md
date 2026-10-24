# Complete source: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt02.Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06471027f12d85790c20ee7bce9f5dbd338ea737` · SHA-256 `9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  simp only [quadratic,Matrix.add_mulVec,dotProduct_add,RCLike.add_re]
  exact congrArg₂ (·+·) (quadratic_pullback A p.coordinates x) rfl

section Fixtures

def indefinite : Matrix (Fin 2) (Fin 2) ℂ := !![1,0;0,-1]
def swap : Matrix.unitaryGroup (Fin 2) ℂ :=
  ⟨!![0,1;1,0],by
    constructor <;> ext i j; fin_cases i <;> fin_cases j <;>
      norm_num [Matrix.mul_apply,Matrix.star_eq_conjTranspose]⟩

def imaginaryShear : (Matrix (Fin 2) (Fin 2) ℂ)ˣ where
  val := !![1,Complex.I;0,1]
  inv := !![1,-Complex.I;0,1]
  val_inv := by ext i j; fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply]
  inv_val := by ext i j; fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply]

def projection : Matrix (Fin 2) (Fin 2) ℂ := !![1,0;0,0]

theorem indefinite_hermitian : indefinite.IsHermitian := by
  ext i j; fin_cases i <;> fin_cases j <;> norm_num [indefinite,Matrix.conjTranspose]

theorem indefinite_negative : HasNegativeDirection indefinite := by
  refine ⟨![0,1],?_⟩
  norm_num [quadratic,indefinite,dotProduct,Matrix.mulVec]

theorem swap_still_indefinite :
    (pullback indefinite swap).IsHermitian ∧ HasNegativeDirection (pullback indefinite swap) :=
  ⟨pullback_isHermitian _ _ indefinite_hermitian,
    (invertible_negative_iff indefinite (Unitary.toUnits swap)).mpr indefinite_negative⟩

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

end Fixtures
end ContinuousResearch.CongruenceGuard
```
