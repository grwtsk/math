-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExpDiagonal.Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExpDiagonal.Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/MatrixExponential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Analysis.NormedSpace.Exponential
import Mathlib.Analysis.Matrix
import Mathlib.LinearAlgebra.Matrix.ZPow
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Symmetric
import Mathlib.Topology.UniformSpace.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.ExpDiagonal.Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26

#align_import analysis.normed_space.matrix_exponential from "leanprover-community/mathlib"@"1e3201306d4d9eb1fd54c60d7c4510ad5126f6f9"

/-!
# Lemmas about the matrix exponential

In this file, we provide results about `exp` on `Matrix`s over a topological or normed algebra.
Note that generic results over all topological spaces such as `exp_zero` can be used on matrices
without issue, so are not repeated here. The topological results specific to matrices are:

* `Matrix.exp_transpose`
* `Matrix.exp_conjTranspose`
* `Matrix.exp_diagonal`
* `Matrix.exp_blockDiagonal`
* `Matrix.exp_blockDiagonal'`

Lemmas like `exp_add_of_commute` require a canonical norm on the type; while there are multiple
sensible choices for the norm of a `Matrix` (`Matrix.normedAddCommGroup`,
`Matrix.frobeniusNormedAddCommGroup`, `Matrix.linftyOpNormedAddCommGroup`), none of them
are canonical. In an application where a particular norm is chosen using
`local attribute [instance]`, then the usual lemmas about `exp` are fine. When choosing a norm is
undesirable, the results in this file can be used.

In this file, we copy across the lemmas about `exp`, but hide the requirement for a norm inside the
proof.

* `Matrix.exp_add_of_commute`
* `Matrix.exp_sum_of_commute`
* `Matrix.exp_nsmul`
* `Matrix.isUnit_exp`
* `Matrix.exp_units_conj`
* `Matrix.exp_units_conj'`

Additionally, we prove some results about `matrix.has_inv` and `matrix.div_inv_monoid`, as the
results for general rings are instead stated about `Ring.inverse`:

* `Matrix.exp_neg`
* `Matrix.exp_zsmul`
* `Matrix.exp_conj`
* `Matrix.exp_conj'`

## TODO

* Show that `Matrix.det (exp 𝕂 A) = exp 𝕂 (Matrix.trace A)`

## References

* https://en.wikipedia.org/wiki/Matrix_exponential
-/


open scoped Matrix BigOperators

variable (𝕂 : Type*) {m n p : Type*} {n' : m → Type*} {𝔸 : Type*}

namespace Matrix

section Topological

section Ring

variable [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n] [∀ i, Fintype (n' i)]
  [∀ i, DecidableEq (n' i)] [Field 𝕂] [Ring 𝔸] [TopologicalSpace 𝔸] [TopologicalRing 𝔸]
  [Algebra 𝕂 𝔸] [T2Space 𝔸]

theorem exp_diagonal (v : m → 𝔸) : exp 𝕂 (diagonal v) = diagonal (exp 𝕂 v) := by
  simp_rw [exp_eq_tsum, diagonal_pow, ← diagonal_smul, ← diagonal_tsum]
#align matrix.exp_diagonal Matrix.exp_diagonal

theorem exp_blockDiagonal (v : m → Matrix n n 𝔸) :
    exp 𝕂 (blockDiagonal v) = blockDiagonal (exp 𝕂 v) := by
  simp_rw [exp_eq_tsum, ← blockDiagonal_pow, ← blockDiagonal_smul, ← blockDiagonal_tsum]
#align matrix.exp_block_diagonal Matrix.exp_blockDiagonal

theorem exp_blockDiagonal' (v : ∀ i, Matrix (n' i) (n' i) 𝔸) :
    exp 𝕂 (blockDiagonal' v) = blockDiagonal' (exp 𝕂 v) := by
  simp_rw [exp_eq_tsum, ← blockDiagonal'_pow, ← blockDiagonal'_smul, ← blockDiagonal'_tsum]
#align matrix.exp_block_diagonal' Matrix.exp_blockDiagonal'

theorem exp_conjTranspose [StarRing 𝔸] [ContinuousStar 𝔸] (A : Matrix m m 𝔸) :
    exp 𝕂 Aᴴ = (exp 𝕂 A)ᴴ :=
  (star_exp A).symm
#align matrix.exp_conj_transpose Matrix.exp_conjTranspose

theorem IsHermitian.exp [StarRing 𝔸] [ContinuousStar 𝔸] {A : Matrix m m 𝔸} (h : A.IsHermitian) :
    (exp 𝕂 A).IsHermitian :=
  (exp_conjTranspose _ _).symm.trans <| congr_arg _ h
#align matrix.is_hermitian.exp Matrix.IsHermitian.exp

end Ring

section CommRing

variable [Fintype m] [DecidableEq m] [Field 𝕂] [CommRing 𝔸] [TopologicalSpace 𝔸] [TopologicalRing 𝔸]
  [Algebra 𝕂 𝔸] [T2Space 𝔸]

theorem exp_transpose (A : Matrix m m 𝔸) : exp 𝕂 Aᵀ = (exp 𝕂 A)ᵀ := by
  simp_rw [exp_eq_tsum, transpose_tsum, transpose_smul, transpose_pow]
#align matrix.exp_transpose Matrix.exp_transpose

theorem IsSymm.exp {A : Matrix m m 𝔸} (h : A.IsSymm) : (exp 𝕂 A).IsSymm :=
  (exp_transpose _ _).symm.trans <| congr_arg _ h
#align matrix.is_symm.exp Matrix.IsSymm.exp

end CommRing

end Topological

section Normed

variable [IsROrC 𝕂] [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n] [∀ i, Fintype (n' i)]
  [∀ i, DecidableEq (n' i)] [NormedRing 𝔸] [NormedAlgebra 𝕂 𝔸] [CompleteSpace 𝔸]

nonrec theorem exp_add_of_commute (A B : Matrix m m 𝔸) (h : Commute A B) :
    exp 𝕂 (A + B) = exp 𝕂 A * exp 𝕂 B := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_add_of_commute h
#align matrix.exp_add_of_commute Matrix.exp_add_of_commute

nonrec theorem exp_sum_of_commute {ι} (s : Finset ι) (f : ι → Matrix m m 𝔸)
    (h : (s : Set ι).Pairwise fun i j => Commute (f i) (f j)) :
    exp 𝕂 (∑ i in s, f i) =
      s.noncommProd (fun i => exp 𝕂 (f i)) fun i hi j hj _ => (h.of_refl hi hj).exp 𝕂 := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_sum_of_commute s f h
#align matrix.exp_sum_of_commute Matrix.exp_sum_of_commute

nonrec theorem exp_nsmul (n : ℕ) (A : Matrix m m 𝔸) : exp 𝕂 (n • A) = exp 𝕂 A ^ n := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_nsmul n A
#align matrix.exp_nsmul Matrix.exp_nsmul

nonrec theorem isUnit_exp (A : Matrix m m 𝔸) : IsUnit (exp 𝕂 A) := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact isUnit_exp _ A
#align matrix.is_unit_exp Matrix.isUnit_exp

-- TODO(mathlib4#6607): fix elaboration so `val` isn't needed
nonrec theorem exp_units_conj (U : (Matrix m m 𝔸)ˣ) (A : Matrix m m 𝔸) :
    exp 𝕂 (U.val * A * (U⁻¹).val) = U.val * exp 𝕂 A * (U⁻¹).val := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_units_conj _ U A
#align matrix.exp_units_conj Matrix.exp_units_conj

-- TODO(mathlib4#6607): fix elaboration so `val` isn't needed
theorem exp_units_conj' (U : (Matrix m m 𝔸)ˣ) (A : Matrix m m 𝔸) :
    exp 𝕂 ((U⁻¹).val * A * U.val) = (U⁻¹).val * exp 𝕂 A * U.val :=
  exp_units_conj 𝕂 U⁻¹ A
#align matrix.exp_units_conj' Matrix.exp_units_conj'

end Normed

section NormedComm

variable [IsROrC 𝕂] [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n] [∀ i, Fintype (n' i)]
  [∀ i, DecidableEq (n' i)] [NormedCommRing 𝔸] [NormedAlgebra 𝕂 𝔸] [CompleteSpace 𝔸]

theorem exp_neg (A : Matrix m m 𝔸) : exp 𝕂 (-A) = (exp 𝕂 A)⁻¹ := by
  rw [nonsing_inv_eq_ring_inverse]
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact (Ring.inverse_exp _ A).symm
#align matrix.exp_neg Matrix.exp_neg

theorem exp_zsmul (z : ℤ) (A : Matrix m m 𝔸) : exp 𝕂 (z • A) = exp 𝕂 A ^ z := by
  obtain ⟨n, rfl | rfl⟩ := z.eq_nat_or_neg
  · rw [zpow_ofNat, coe_nat_zsmul, exp_nsmul]
  · have : IsUnit (exp 𝕂 A).det := (Matrix.isUnit_iff_isUnit_det _).mp (isUnit_exp _ _)
    rw [Matrix.zpow_neg this, zpow_ofNat, neg_smul, exp_neg, coe_nat_zsmul, exp_nsmul]
#align matrix.exp_zsmul Matrix.exp_zsmul

theorem exp_conj (U : Matrix m m 𝔸) (A : Matrix m m 𝔸) (hy : IsUnit U) :
    exp 𝕂 (U * A * U⁻¹) = U * exp 𝕂 A * U⁻¹ :=
  let ⟨u, hu⟩ := hy
  hu ▸ by simpa only [Matrix.coe_units_inv] using exp_units_conj 𝕂 u A
#align matrix.exp_conj Matrix.exp_conj

theorem exp_conj' (U : Matrix m m 𝔸) (A : Matrix m m 𝔸) (hy : IsUnit U) :
    exp 𝕂 (U⁻¹ * A * U) = U⁻¹ * exp 𝕂 A * U :=
  let ⟨u, hu⟩ := hy
  hu ▸ by simpa only [Matrix.coe_units_inv] using exp_units_conj' 𝕂 u A
#align matrix.exp_conj' Matrix.exp_conj'

end NormedComm

end Matrix
