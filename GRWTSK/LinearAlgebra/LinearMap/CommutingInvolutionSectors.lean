/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.LinearAlgebra.Determinant
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false

open scoped BigOperators

/-!
# Four sectors from two commuting involutions

Two commuting involutions act on a finite-dimensional rational vector space. Their four
joint signs are represented explicitly. A `SectorDecomposition` is a certificate by
idempotent, pairwise-orthogonal projectors whose sum is the identity and whose ranges have
the declared signs.

A symmetry-resolved pencil stores finite matrices for all four blocks and an exact
factorization of the full determinant by the block determinants. This separates the
intrinsic zero set from any numerical method used to find it. Similarity by an invertible
linear change of coordinates preserves the determinant and therefore the zero set.

The generalized-eigenvalue wrapper records the finite pencil `A - z B`. No analytic
continuation, infinite-dimensional Fredholm determinant, quantum complexity result, or
identification with a complete zeta-zero divisor is asserted here.
-/

namespace GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors

noncomputable section

/-- The two possible eigenvalue signs of an involution. -/
inductive Sign
  | negative
  | positive
  deriving DecidableEq

instance : Fintype Sign where
  elems := {Sign.negative, Sign.positive}
  complete sign := by cases sign <;> simp

/-- The rational scalar represented by a sign. -/
def Sign.scalar : Sign → ℚ
  | .negative => -1
  | .positive => 1

@[simp]
theorem Sign.scalar_negative : Sign.negative.scalar = (-1 : ℚ) := rfl

@[simp]
theorem Sign.scalar_positive : Sign.positive.scalar = (1 : ℚ) := rfl

/-- A joint sign for two commuting involutions. -/
abbrev Sector := Sign × Sign

/-- Two commuting involutive endomorphisms. -/
structure CommutingInvolutions (V : Type*) [AddCommGroup V] [Module ℚ V] where
  sigma : Module.End ℚ V
  tau : Module.End ℚ V
  sigma_involutive : sigma * sigma = 1
  tau_involutive : tau * tau = 1
  commute : sigma * tau = tau * sigma

/-- Membership in a joint eigensector. -/
def CommutingInvolutions.InSector {V : Type*} [AddCommGroup V] [Module ℚ V]
    (actions : CommutingInvolutions V) (sector : Sector) (x : V) : Prop :=
  actions.sigma x = sector.1.scalar • x ∧
    actions.tau x = sector.2.scalar • x

/-- A linear map intertwining both involutions. -/
structure Intertwiner {V W : Type*}
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup W] [Module ℚ W]
    (source : CommutingInvolutions V) (target : CommutingInvolutions W) where
  map : V →ₗ[ℚ] W
  sigma_intertwines : map.comp source.sigma = target.sigma.comp map
  tau_intertwines : map.comp source.tau = target.tau.comp map

/-- An intertwiner preserves every joint sign sector. -/
theorem Intertwiner.maps_sector
    {V W : Type*}
    [AddCommGroup V] [Module ℚ V]
    [AddCommGroup W] [Module ℚ W]
    {source : CommutingInvolutions V} {target : CommutingInvolutions W}
    (intertwiner : Intertwiner source target) (sector : Sector) {x : V}
    (hx : source.InSector sector x) :
    target.InSector sector (intertwiner.map x) := by
  rcases hx with ⟨hsigma, htau⟩
  constructor
  · have h := congrArg (fun f : V →ₗ[ℚ] W => f x) intertwiner.sigma_intertwines
    calc
      target.sigma (intertwiner.map x) = intertwiner.map (source.sigma x) := by
        simpa using h.symm
      _ = intertwiner.map (sector.1.scalar • x) := by rw [hsigma]
      _ = sector.1.scalar • intertwiner.map x := by simp
  · have h := congrArg (fun f : V →ₗ[ℚ] W => f x) intertwiner.tau_intertwines
    calc
      target.tau (intertwiner.map x) = intertwiner.map (source.tau x) := by
        simpa using h.symm
      _ = intertwiner.map (sector.2.scalar • x) := by rw [htau]
      _ = sector.2.scalar • intertwiner.map x := by simp

/-- An explicit four-sector direct-sum certificate. -/
structure SectorDecomposition {V : Type*} [AddCommGroup V] [Module ℚ V]
    (actions : CommutingInvolutions V) where
  projector : Sector → Module.End ℚ V
  idempotent : ∀ sector, projector sector * projector sector = projector sector
  orthogonal : ∀ {left right}, left ≠ right → projector left * projector right = 0
  complete : ∑ sector, projector sector = 1
  range_sector : ∀ sector x, actions.InSector sector (projector sector x)

/-- The four projected components reconstruct every vector. -/
theorem SectorDecomposition.reconstruct
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    {actions : CommutingInvolutions V}
    (decomposition : SectorDecomposition actions) (x : V) :
    (∑ sector, decomposition.projector sector x) = x := by
  classical
  have h := congrArg (fun endomorphism : Module.End ℚ V => endomorphism x)
    decomposition.complete
  simpa using h

/-- A finite symmetry-resolved operator pencil.

Each sector can have a different finite dimension. The block matrices are coordinate data;
`determinant_factorization` certifies that they are the blocks of the full operator. -/
structure ResolvedPencil (Z V : Type*)
    [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
    (actions : CommutingInvolutions V) where
  operator : Z → Module.End ℚ V
  commutes_sigma : ∀ z, operator z * actions.sigma = actions.sigma * operator z
  commutes_tau : ∀ z, operator z * actions.tau = actions.tau * operator z
  sectorDimension : Sector → ℕ
  sectorMatrix : ∀ sector, Z →
    Matrix (Fin (sectorDimension sector)) (Fin (sectorDimension sector)) ℚ
  determinant_factorization : ∀ z,
    (operator z).det = ∏ sector, (sectorMatrix sector z).det

namespace ResolvedPencil

variable {Z V : Type*}
  [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
  {actions : CommutingInvolutions V}

/-- The intrinsic zero set of the full finite pencil. -/
def zeroSet (pencil : ResolvedPencil Z V actions) : Set Z :=
  {z | (pencil.operator z).det = 0}

/-- The zero set of one symmetry block. -/
def sectorZeroSet (pencil : ResolvedPencil Z V actions) (sector : Sector) : Set Z :=
  {z | (pencil.sectorMatrix sector z).det = 0}

/-- The full determinant vanishes exactly when one of the four block determinants vanishes. -/
theorem determinant_eq_zero_iff_sector
    (pencil : ResolvedPencil Z V actions) (z : Z) :
    (pencil.operator z).det = 0 ↔
      ∃ sector, (pencil.sectorMatrix sector z).det = 0 := by
  classical
  rw [pencil.determinant_factorization]
  constructor
  · intro h
    rw [Finset.prod_eq_zero_iff] at h
    rcases h with ⟨sector, _, hsector⟩
    exact ⟨sector, hsector⟩
  · rintro ⟨sector, hsector⟩
    exact Finset.prod_eq_zero (Finset.mem_univ sector) hsector

/-- Intrinsic local zeros are recovered sectorwise. -/
theorem zeroSet_eq_iUnion_sectorZeroSet
    (pencil : ResolvedPencil Z V actions) :
    pencil.zeroSet = ⋃ sector, pencil.sectorZeroSet sector := by
  ext z
  simp [zeroSet, sectorZeroSet, determinant_eq_zero_iff_sector]

/-- Every pencil operator preserves every joint involution sector. -/
theorem operator_preserves_sector
    (pencil : ResolvedPencil Z V actions) (z : Z) (sector : Sector)
    {x : V} (hx : actions.InSector sector x) :
    actions.InSector sector (pencil.operator z x) := by
  rcases hx with ⟨hsigma, htau⟩
  constructor
  · have h := congrArg (fun endomorphism : Module.End ℚ V => endomorphism x)
      (pencil.commutes_sigma z)
    calc
      actions.sigma (pencil.operator z x) = pencil.operator z (actions.sigma x) := by
        simpa [Module.End.mul_apply] using h.symm
      _ = pencil.operator z (sector.1.scalar • x) := by rw [hsigma]
      _ = sector.1.scalar • pencil.operator z x := by simp
  · have h := congrArg (fun endomorphism : Module.End ℚ V => endomorphism x)
      (pencil.commutes_tau z)
    calc
      actions.tau (pencil.operator z x) = pencil.operator z (actions.tau x) := by
        simpa [Module.End.mul_apply] using h.symm
      _ = pencil.operator z (sector.2.scalar • x) := by rw [htau]
      _ = sector.2.scalar • pencil.operator z x := by simp

end ResolvedPencil

/-- Similarity of a finite endomorphism by an invertible coordinate change. -/
def conjugateOperator {V : Type*} [AddCommGroup V] [Module ℚ V]
    (change : V ≃ₗ[ℚ] V) (operator : Module.End ℚ V) : Module.End ℚ V :=
  change.toLinearMap.comp (operator.comp change.symm.toLinearMap)

/-- Similarity preserves the finite-dimensional determinant. -/
theorem det_conjugateOperator
    {V : Type*} [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
    (change : V ≃ₗ[ℚ] V) (operator : Module.End ℚ V) :
    (conjugateOperator change operator).det = operator.det := by
  unfold conjugateOperator
  rw [LinearMap.det_comp, LinearMap.det_comp]
  calc
    LinearMap.det (change : V →ₗ[ℚ] V) *
        (LinearMap.det operator * LinearMap.det (change.symm : V →ₗ[ℚ] V)) =
      LinearMap.det operator *
        (LinearMap.det (change : V →ₗ[ℚ] V) *
          LinearMap.det (change.symm : V →ₗ[ℚ] V)) := by ring
    _ = LinearMap.det operator := by
      rw [LinearEquiv.det_mul_det_symm, mul_one]

/-- An invertible affine or metric coordinate transport cannot create or destroy zeros
when the pencil is transformed by similarity. -/
theorem det_conjugateOperator_eq_zero_iff
    {V : Type*} [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
    (change : V ≃ₗ[ℚ] V) (operator : Module.End ℚ V) :
    (conjugateOperator change operator).det = 0 ↔ operator.det = 0 := by
  rw [det_conjugateOperator]

/-- A finite generalized-eigenvalue pencil `left - z • right`. -/
structure GeneralizedEigenvaluePencil (V : Type*)
    [AddCommGroup V] [Module ℚ V] where
  left : Module.End ℚ V
  right : Module.End ℚ V

/-- Evaluation of a generalized-eigenvalue pencil. -/
def GeneralizedEigenvaluePencil.operator
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (pencil : GeneralizedEigenvaluePencil V) (z : ℚ) : Module.End ℚ V :=
  pencil.left - z • pencil.right

/-- The finite generalized eigenvalues are the determinant zeros of the evaluated pencil. -/
def GeneralizedEigenvaluePencil.zeroSet
    {V : Type*} [AddCommGroup V] [Module ℚ V] [FiniteDimensional ℚ V]
    (pencil : GeneralizedEigenvaluePencil V) : Set ℚ :=
  {z | (pencil.operator z).det = 0}

end

end GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
