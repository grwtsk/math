-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SignedDilation.Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SignedDilation.Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/latest-phase53/20261007T062925Z/bytes/c018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1--MangoldtMobiusJacobi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import Mathlib.Data.Matrix.Block
import Mathlib.LinearAlgebra.Matrix.Symmetric
import Mathlib.Tactic

/-!
# Signed finite covariance operators and the accepted RH residual

A symmetric block dilation represents a bilinear covariance without replacing
either arithmetic row by its absolute value. The construction works for every
finite signed kernel; its existence alone supplies no uniform estimate and no
Jacobi or Catalan identification.

The source specialization below reuses the accepted finite Möbius-log expansion
and the exact Mertens-residual theorem. The unmerged Vaughan cell ledger is not
silently substituted for these declarations. Endpoint and source conventions
are inherited from `primePowerInventory` and `closedPrimeWeight`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SignedDilation.Variantc018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi

open Matrix
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMobiusSplit EstimateMertensResidual PrimePowerDescent

noncomputable section

variable {ι κ : Type*} [Fintype ι] [Fintype κ]

/-- Symmetric operator retaining both signed arithmetic rows. -/
def signedDilation (H : Matrix ι κ ℝ) : Matrix (ι ⊕ κ) (ι ⊕ κ) ℝ :=
  Matrix.fromBlocks 0 H H.transpose 0

/-- The two rows remain separate components of the cyclic test vector. -/
def jointVector (x : ι → ℝ) (y : κ → ℝ) : ι ⊕ κ → ℝ := Sum.elim x y

omit [Fintype ι] [Fintype κ] in
theorem signedDilation_symmetric (H : Matrix ι κ ℝ) :
    (signedDilation H).transpose = signedDilation H := by
  simp [signedDilation, Matrix.fromBlocks_transpose]

/-- Exact signed cancellation takes place before any estimate. -/
theorem signedDilation_quadratic (H : Matrix ι κ ℝ)
    (x : ι → ℝ) (y : κ → ℝ) :
    jointVector x y ⬝ᵥ signedDilation H *ᵥ jointVector x y =
      2 * (x ⬝ᵥ H *ᵥ y) := by
  rw [signedDilation, Matrix.fromBlocks_mulVec, Matrix.dotProduct_block]
  simp only [jointVector, Function.comp_def, Sum.elim_inl, Sum.elim_inr,
    Matrix.zero_mulVec, zero_add, add_zero]
  change (x ⬝ᵥ H *ᵥ y) + (y ⬝ᵥ H.transpose *ᵥ x) = 2 * (x ⬝ᵥ H *ᵥ y)
  rw [Matrix.dotProduct_transpose_mulVec]
  ring

theorem signedDilation_quadratic_sum (H : Matrix ι κ ℝ)
    (x : ι → ℝ) (y : κ → ℝ) :
    jointVector x y ⬝ᵥ signedDilation H *ᵥ jointVector x y =
      2 * ∑ i, ∑ j, x i * H i j * y j := by
  rw [signedDilation_quadratic]
  congr 1
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

variable [DecidableEq ι]

/-- A pair-index kernel retains the exact allowed/deleted pair set in its type. -/
def pairKernel (w : ι → ℝ) : Matrix ι ι ℝ := Matrix.diagonal w

theorem pairKernel_covariance (w x y : ι → ℝ) :
    jointVector x y ⬝ᵥ signedDilation (pairKernel w) *ᵥ jointVector x y =
      2 * ∑ i, x i * y i * w i := by
  rw [signedDilation_quadratic]
  simp only [pairKernel, dotProduct]
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  rw [Matrix.mulVec_diagonal]
  ring

/-- An arbitrary finite Mangoldt–signed-row covariance has an exact symmetric
operator representation. The pair type preserves any cutoff, cell partition,
and deleted diagonal already present in `P`; `beta` keeps its centering sign.
This theorem does not identify that finite operator with a Jacobi operator. -/
theorem finiteMangoldtMobius_covariance (P : Finset (ℕ × ℕ))
    (beta : ℕ → ℝ) (w : ℕ × ℕ → ℝ) :
    jointVector (fun q : P => ArithmeticFunction.vonMangoldt q.val.1)
        (fun q : P => beta q.val.2) ⬝ᵥ
      signedDilation (pairKernel (fun q : P => w q.val)) *ᵥ
        jointVector (fun q : P => ArithmeticFunction.vonMangoldt q.val.1)
          (fun q : P => beta q.val.2) =
      2 * ∑ q ∈ P, ArithmeticFunction.vonMangoldt q.1 * beta q.2 * w q := by
  rw [pairKernel_covariance]
  congr 1
  exact Finset.sum_coe_sort P
    (fun q => ArithmeticFunction.vonMangoldt q.1 * beta q.2 * w q)

/-- Each source divisor atom occurs once, with the original finite cutoffs. -/
def SourceAtom (A : ℝ) :=
  Σ n : {n : ℕ // n ∈ primePowerInventory (2 * A)},
    {dk : ℕ × ℕ // dk ∈ n.val.divisorsAntidiagonal}

instance sourceAtomFintype (A : ℝ) : Fintype (SourceAtom A) := by
  unfold SourceAtom
  infer_instance

instance sourceAtomDecidableEq (A : ℝ) : DecidableEq (SourceAtom A) :=
  Classical.decEq _

/-- The signed real Möbius value of the source atom's first divisor coordinate. -/
def sourceMobiusRow (A : ℝ) (q : SourceAtom A) : ℝ :=
  ((ArithmeticFunction.moebius q.2.val.1 : ℤ) : ℝ)

/-- The logarithm of the source atom's second divisor coordinate. -/
def sourceLogRow (A : ℝ) (q : SourceAtom A) : ℝ := Real.log q.2.val.2

/-- The original closed prime weight at the prime-power index of the source atom. -/
def sourceAtomWeight (A : ℝ) (q : SourceAtom A) : ℝ :=
  closedPrimeWeight A q.1.val

/-- The symmetric block dilation of the source atom weights, retaining their signs. -/
def sourceSignedOperator (A : ℝ) :
    Matrix (SourceAtom A ⊕ SourceAtom A) (SourceAtom A ⊕ SourceAtom A) ℝ :=
  signedDilation (pairKernel (sourceAtomWeight A))

/-- The source Möbius and logarithm rows as separate components of one vector. -/
def sourceJointVector (A : ℝ) : SourceAtom A ⊕ SourceAtom A → ℝ :=
  jointVector (sourceMobiusRow A) (sourceLogRow A)

/-- The quadratic value of the signed source operator on the joint arithmetic vector. -/
def sourceOperatorValue (A : ℝ) : ℝ :=
  sourceJointVector A ⬝ᵥ sourceSignedOperator A *ᵥ sourceJointVector A

/-- This identity uses the actual accepted source expansion, with no estimate. -/
theorem sourceOperatorValue_eq_twice_mobius (A : ℝ) :
    sourceOperatorValue A = 2 * mobiusClosedPrimeMoment A := by
  unfold sourceOperatorValue sourceJointVector sourceSignedOperator
  rw [pairKernel_covariance]
  congr 1
  simp only [SourceAtom, Fintype.sum_sigma, sourceMobiusRow, sourceLogRow,
    sourceAtomWeight, mobiusClosedPrimeMoment, mobiusLogTerm]
  have hinner (n : {n : ℕ // n ∈ primePowerInventory (2 * A)}) :
      (∑ dk : {dk : ℕ × ℕ // dk ∈ n.val.divisorsAntidiagonal},
        ((ArithmeticFunction.moebius dk.val.1 : ℤ) : ℝ) * Real.log dk.val.2 *
          closedPrimeWeight A n.val) =
      ∑ dk ∈ n.val.divisorsAntidiagonal,
        ((ArithmeticFunction.moebius dk.1 : ℤ) : ℝ) * Real.log dk.2 *
          closedPrimeWeight A n.val :=
    Finset.sum_coe_sort n.val.divisorsAntidiagonal
      (fun dk => ((ArithmeticFunction.moebius dk.1 : ℤ) : ℝ) *
        Real.log dk.2 * closedPrimeWeight A n.val)
  simp_rw [hinner]
  exact Finset.sum_coe_sort (primePowerInventory (2 * A))
    (fun n => ∑ dk ∈ n.divisorsAntidiagonal,
      ((ArithmeticFunction.moebius dk.1 : ℤ) : ℝ) * Real.log dk.2 * closedPrimeWeight A n)

/-- Exact accepted residual specialization. It does not claim a Vaughan adapter. -/
theorem sourceOperatorValue_eq_twice_residual (A : ℝ) (hA : 1 ≤ A) :
    sourceOperatorValue A = 2 * mertensResidual A := by
  rw [sourceOperatorValue_eq_twice_mobius,
    ← closedPrimeMoment_eq_mobius, mertensResidual_eq_closedPrimeMoment A hA]

/-- The operator estimate remains an explicit, unproved analytic target. -/
def SignedOperatorTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → sourceOperatorValue A ≤ D

/-- Existence of the representation does not remove the original obstruction. -/
theorem signedOperatorTail_iff_mertensResidualTail :
    SignedOperatorTailUpperBound ↔ MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D / 2, by positivity, R, hR, ?_⟩
    intro A hA
    have heq := sourceOperatorValue_eq_twice_residual A (hR.trans hA)
    have hb := h A hA
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨2 * D, by positivity, R, hR, ?_⟩
    intro A hA
    rw [sourceOperatorValue_eq_twice_residual A (hR.trans hA)]
    linarith [h A hA]

/-- A checked consumer retains the unchanged RH estimate target as its result. -/
theorem estimate_of_signedOperatorTail (h : SignedOperatorTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (signedOperatorTail_iff_mertensResidualTail.mp h)

/-- Hostile fixture: perfect joint cancellation can coexist with arbitrarily
large separate contributions. This family is not a fixture for the RH source. -/
theorem cancellation_fixture (r : ℝ) :
    jointVector (![1, 1] : Fin 2 → ℝ) ![r, -r] ⬝ᵥ
      signedDilation (pairKernel (fun _ : Fin 2 => (1 : ℝ))) *ᵥ
        jointVector ![1, 1] ![r, -r] = 0 := by
  rw [pairKernel_covariance]
  simp [Fin.sum_univ_two]

theorem absolute_fixture (r : ℝ) (hr : 0 ≤ r) :
    (∑ i : Fin 2, |(![r, -r] : Fin 2 → ℝ) i|) = 2 * r := by
  simp [Fin.sum_univ_two, abs_of_nonneg hr]
  ring

/-- Common block syntax supplies no uniform bound: this equally valid family
has arbitrary positive size. It is not a counterexample to RH #16. -/
theorem unbounded_representation_fixture (r : ℝ) :
    jointVector (![1] : Fin 1 → ℝ) ![r] ⬝ᵥ
      signedDilation (pairKernel (fun _ : Fin 1 => (1 : ℝ))) *ᵥ
        jointVector ![1] ![r] = 2 * r := by
  rw [pairKernel_covariance]
  simp

end
end FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi
