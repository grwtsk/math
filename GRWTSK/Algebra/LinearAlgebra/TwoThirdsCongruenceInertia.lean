/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical comparison source: Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637 (2026), §3, inertia-under-pullback lemma.
Independent formal source: Claude (Anthropic), Apache-2.0,
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
zeta23/Zeta23/LinAlg/Inertia.lean,
RHLinalg.posIndex_conj_le (blob 0d1de40376288d80e4938f69d81479c62835bf16).
GRWTSK proves a distinct real sign-mask specialization, not an import
of the general complex Hermitian or zeta-zero-density theorem.
-/
import GRWTSK.Algebra.LinearAlgebra.TwoThirdsDiagonalRankTrace
import Mathlib.Tactic

/-!
# Non-diagonal signed inertia under real congruence

Let J denote the diagonal fundamental symmetry with entries +1 and -1
as supplied by GRWTSK's existing SignedOrientationBridge. Any real
rectangular matrix B defines the pulled-back quadratic energy

  x ↦ signedEnergy mask (B *ᵥ x).

B need not be diagonal, injective, or simultaneously diagonalizable
with J. We prove that the dimension of any positive-definite subspace
for this pulled-back energy cannot exceed the number of +1 directions
in J. The key proof is injectivity of the positive-coordinate
observation restricted to that subspace.

The strongest source-facing statement keeps a *separate* signed
functional q, a comparison error for EVERY x, and a strict source
margin over that full error on a selected subspace. This is the
mathematical gate for later signed Weil-form identification, not that
identification itself.

The file also supplies the exact positive-index charge for the
previous diagonal rank–trace theorem, without converting the latter
into a full noncommutative Hermitian rank–trace inequality.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Algebra.LinearAlgebra.TwoThirdsDiagonalRankTrace
open Submodule

noncomputable section

variable {ι : Type*} [Fintype ι]

/-- The actual positive coordinates selected by the GRWTSK fundamental
symmetry. This is a subtype, not a newly supplied positivity axiom. -/
abbrev PositiveCoordinates (mask : ι → Bool) : Type* :=
  {i : ι // mask i = true}

/-- Restriction from all coordinates to exactly the +1 sector. -/
def positiveCoordinateRestriction (mask : ι → Bool) :
    (ι → ℝ) →ₗ[ℝ] (PositiveCoordinates mask → ℝ) where
  toFun x i := x i.1
  map_add' := by
    intro x y
    rfl
  map_smul' := by
    intro c x
    rfl

/-- The positive-sector observation after an arbitrary matrix
compression. The matrix can mix positive and negative coordinates. -/
def positiveObservation {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ) :
    (κ → ℝ) →ₗ[ℝ] (PositiveCoordinates mask → ℝ) :=
  (positiveCoordinateRestriction mask).comp B.mulVecLin

@[simp]
theorem positiveObservation_apply {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (x : κ → ℝ) (i : PositiveCoordinates mask) :
    positiveObservation mask B x i = (B *ᵥ x) i.1 := by
  rfl

/-- If the positive-sector observation of a compressed vector is zero,
then the *actual* GRWTSK signed energy of that compressed vector is
nonpositive. The negative sector may be nontrivial. -/
theorem positiveObservation_zero_signedEnergy_nonpos
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ) (x : κ → ℝ)
    (hzero : positiveObservation mask B x = 0) :
    signedEnergy mask (B *ᵥ x) ≤ 0 := by
  apply signedEnergy_nonpos_of_minusSector
  change maskProjector mask (B *ᵥ x) = 0
  funext i
  change maskProjector mask (B *ᵥ x) i = 0
  rw [maskProjector_apply]
  by_cases hi : mask i = true
  · have hcoord : (B *ᵥ x) i = 0 := by
      have h := congrFun hzero (⟨i, hi⟩ : PositiveCoordinates mask)
      simpa only [positiveObservation_apply, Pi.zero_apply] using h
    simp [hi, hcoord]
  · simp [hi]

/-! ### Explicit real symmetric congruence matrix

For real coefficients, the Hermitian adjoint is ordinary transpose.
The following source identity realizes the pulled-back form as the actual
quadratic form of Bᵀ J B. No diagonalization of B is assumed. -/

/-- Matrix realization of the existing +1/-1 fundamental symmetry. -/
def signedFundamentalMatrix [DecidableEq ι] (mask : ι → Bool) :
    Matrix ι ι ℝ :=
  Matrix.diagonal (fun i => if mask i = true then 1 else -1)

/-- The symmetric real matrix of the pulled-back signed form. -/
def compressedSignedMatrix [DecidableEq ι]
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ) : Matrix κ κ ℝ :=
  Bᵀ * signedFundamentalMatrix mask * B

/-- The matrix sign involution is exactly GRWTSK's existing linear map. -/
theorem signedFundamentalMatrix_mulVec [DecidableEq ι]
    (mask : ι → Bool) (y : ι → ℝ) :
    signedFundamentalMatrix mask *ᵥ y = fundamentalSymmetry mask y := by
  funext i
  rw [fundamentalSymmetry_apply]
  exact Matrix.mulVec_diagonal _ y i

/-- Exact quadratic-form congruence, valid for *arbitrary rectangular B*,
including mixed and rank-deficient matrices. This does not identify an
actual completed Weil form or a zeta-zero Gram matrix. -/
theorem compressedSignedMatrix_quadratic [DecidableEq ι]
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ) (x : κ → ℝ) :
    x ⬝ᵥ (compressedSignedMatrix mask B *ᵥ x) =
      signedEnergy mask (B *ᵥ x) := by
  unfold compressedSignedMatrix
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_transpose_mulVec B x
    (signedFundamentalMatrix mask *ᵥ (B *ᵥ x))]
  rw [signedFundamentalMatrix_mulVec]
  rfl

/-- The real Sylvester inertia inequality for the congruence pullback
of GRWTSK's diagonal fundamental symmetry.

Strict positivity on W is an actual hypothesis about its quadratic
form: it does NOT follow merely from a positive Euclidean Gram metric.

Unlike the diagonal rank–trace lemma, B here is an arbitrary,
possibly noncommuting rectangular matrix. -/
theorem positive_subspace_finrank_le_mask
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (W : Submodule ℝ (κ → ℝ))
    (hpositive : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
      0 < signedEnergy mask (B *ᵥ x)) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates mask) := by
  classical
  let L := (positiveObservation mask B).domRestrict W
  have hinj : Function.Injective L := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    rintro ⟨x, hxW⟩ hxL
    simp only [LinearMap.mem_ker, LinearMap.domRestrict_apply] at hxL
    have hzero : positiveObservation mask B x = 0 := hxL
    simp only [mem_bot]
    by_contra hne
    have hxne : x ≠ 0 := fun h => hne (Subtype.ext h)
    have hsigned : signedEnergy mask (B *ᵥ x) ≤ 0 :=
      positiveObservation_zero_signedEnergy_nonpos mask B x hzero
    exact (not_lt.mpr hsigned) (hpositive x hxW hxne)
  calc
    Module.finrank ℝ W =
        Module.finrank ℝ (LinearMap.range L) :=
      (LinearMap.finrank_range_of_inj hinj).symm
    _ ≤ Module.finrank ℝ (PositiveCoordinates mask → ℝ) :=
      Submodule.finrank_le _
    _ = Fintype.card (PositiveCoordinates mask) :=
      Module.finrank_fintype_fun_eq_card ℝ

/-- Explicit Bᵀ J B matrix form of the real positive-inertia
pullback bound, the type-aligned finite supplier for RHLinalg.posIndex_conj_le.

It bounds the dimension of EACH positive-definite subspace of the
compressed form. Constructing the spectral positive index of an
unrelated complex Hermitian Q remains a separate obligation. -/
theorem compressedSignedMatrix_positive_subspace_finrank_le_mask
    [DecidableEq ι]
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (W : Submodule ℝ (κ → ℝ))
    (hpositive : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
      0 < x ⬝ᵥ (compressedSignedMatrix mask B *ᵥ x)) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates mask) := by
  apply positive_subspace_finrank_le_mask mask B W
  intro x hx hxne
  rw [← compressedSignedMatrix_quadratic mask B x]
  exact hpositive x hx hxne

/-- A source-bound signed pairing may only transfer a positive-index
bound when the full error is strictly dominated by the source's
positive margin on every nonzero vector in the candidate subspace.

In particular, a positive *Euclidean* Gram comparison cannot be
substituted for this signed comparison. -/
theorem source_signed_inertia_le_mask_of_strict_margin
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison : ∀ x : κ → ℝ,
      |source x - signedEnergy mask (B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (hmargin : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
      error x < source x) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates mask) := by
  apply positive_subspace_finrank_le_mask mask B W
  intro x hx hxne
  have hbound := (abs_le.mp (hcomparison x)).2
  have hgap := hmargin x hx hxne
  linarith

/-- An exactly identified signed source is the zero-error specialization
of the comparison. The field `hexact` must be proved independently
for the *actual source*, not supplied by choosing a fake source name. -/
theorem exact_source_signed_inertia_le_mask
    {κ : Type*} [Fintype κ]
    (mask : ι → Bool) (B : Matrix ι κ ℝ)
    (source : (κ → ℝ) → ℝ)
    (hexact : ∀ x, source x = signedEnergy mask (B *ᵥ x))
    (W : Submodule ℝ (κ → ℝ))
    (hpositive : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 → 0 < source x) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates mask) := by
  apply positive_subspace_finrank_le_mask mask B W
  intro x hx hxne
  rw [← hexact x]
  exact hpositive x hx hxne

/-- Positive signed-sector coordinates form a subset of the selected
+1 sector. Their cardinality therefore never exceeds the mask count,
independently of the vector amplitudes. -/
theorem positive_signedSector_card_le_mask
    (mask : ι → Bool) (x : ι → ℝ) :
    (Finset.univ.filter (fun i => 0 < signedSectorValue mask x i)).card ≤
      Fintype.card (PositiveCoordinates mask) := by
  classical
  have hsubset :
      (Finset.univ.filter (fun i => 0 < signedSectorValue mask x i)) ⊆
        (Finset.univ.filter (fun i => mask i = true)) := by
    intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_cases hm : mask i = true
    · exact hm
    · exfalso
      have hn : signedSectorValue mask x i ≤ 0 := by
        simp [signedSectorValue, hm]
      exact (not_lt.mpr hn) hi
  calc
    (Finset.univ.filter (fun i => 0 < signedSectorValue mask x i)).card
        ≤ (Finset.univ.filter (fun i => mask i = true)).card :=
      Finset.card_le_card hsubset
    _ = Fintype.card (PositiveCoordinates mask) := by
      simp [PositiveCoordinates, Fintype.card_subtype]

/-- The exact positive-mask dimension can supply the positive-index
charge of the previous *diagonal* rank–trace theorem. This does not
extend that theorem to general noncommuting Hermitian pairs P and Q. -/
theorem signedHodge_rankTrace_of_mask_card
    (u x : ι → ℝ) (mask : ι → Bool)
    (hu : ∀ i, 0 ≤ u i)
    {r : ℕ}
    (hr : (Finset.univ.filter (fun i => u i ≠ 0)).card ≤ r) :
    2 * (∑ i, u i) + 4 * signedEnergy mask x -
      4 * (Fintype.card (PositiveCoordinates mask) : ℝ) -
      (∑ i, (u i + signedSectorValue mask x i) ^ 2) ≤ (r : ℝ) := by
  exact signedHodge_diagonal_rank_trace_two u x mask hu hr
    (positive_signedSector_card_le_mask mask x)

end

end GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia
