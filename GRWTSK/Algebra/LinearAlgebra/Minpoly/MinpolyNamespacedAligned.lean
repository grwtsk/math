-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MinpolyToLinPrime.Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MinpolyToLinPrime.Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Charpoly/Minpoly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson, Jalex Stark. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson, Jalex Stark, Eric Wieser
-/
import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.RingTheory.PowerBasis


namespace GRWTSK.Algebra.LinearAlgebra.MinpolyToLinPrime.Variant3c6c80defa729f293be527a58362442fb42065ee83e5f50c204fe819e343fa43

#align_import linear_algebra.matrix.charpoly.minpoly from "leanprover-community/mathlib"@"7ae139f966795f684fc689186f9ccbaedd31bf31"

/-!
# The minimal polynomial divides the characteristic polynomial of a matrix.

This also includes some miscellaneous results about `minpoly` on matrices.
-/


noncomputable section

universe u v w

open Polynomial Matrix

variable {R : Type u} [CommRing R]

variable {n : Type v} [DecidableEq n] [Fintype n]

variable {N : Type w} [AddCommGroup N] [Module R N]

open Finset

namespace Matrix

open Matrix

variable (M : Matrix n n R)

@[simp]
theorem minpoly_toLin' : minpoly R (toLin' M) = minpoly R M :=
  minpoly.minpoly_algEquiv (toLinAlgEquiv' : Matrix n n R ≃ₐ[R] _) M
#align matrix.minpoly_to_lin' Matrix.minpoly_toLin'

@[simp]
theorem minpoly_toLin (b : Basis n R N) (M : Matrix n n R) :
    minpoly R (toLin b b M) = minpoly R M :=
  minpoly.minpoly_algEquiv (toLinAlgEquiv b : Matrix n n R ≃ₐ[R] _) M
#align matrix.minpoly_to_lin Matrix.minpoly_toLin

theorem isIntegral : IsIntegral R M :=
  ⟨M.charpoly, ⟨charpoly_monic M, aeval_self_charpoly M⟩⟩
#align matrix.is_integral Matrix.isIntegral

theorem minpoly_dvd_charpoly {K : Type*} [Field K] (M : Matrix n n K) : minpoly K M ∣ M.charpoly :=
  minpoly.dvd _ _ (aeval_self_charpoly M)
#align matrix.minpoly_dvd_charpoly Matrix.minpoly_dvd_charpoly

end Matrix

namespace LinearMap

@[simp]
theorem minpoly_toMatrix' (f : (n → R) →ₗ[R] n → R) : minpoly R (toMatrix' f) = minpoly R f :=
  minpoly.minpoly_algEquiv (toMatrixAlgEquiv' : _ ≃ₐ[R] Matrix n n R) f
#align linear_map.minpoly_to_matrix' LinearMap.minpoly_toMatrix'

@[simp]
theorem minpoly_toMatrix (b : Basis n R N) (f : N →ₗ[R] N) :
    minpoly R (toMatrix b b f) = minpoly R f :=
  minpoly.minpoly_algEquiv (toMatrixAlgEquiv b : _ ≃ₐ[R] Matrix n n R) f
#align linear_map.minpoly_to_matrix LinearMap.minpoly_toMatrix

end LinearMap

section PowerBasis

open Algebra

/-- The characteristic polynomial of the map `fun x => a * x` is the minimal polynomial of `a`.

In combination with `det_eq_sign_charpoly_coeff` or `trace_eq_neg_charpoly_coeff`
and a bit of rewriting, this will allow us to conclude the
field norm resp. trace of `x` is the product resp. sum of `x`'s conjugates.
-/
theorem charpoly_leftMulMatrix {S : Type*} [Ring S] [Algebra R S] (h : PowerBasis R S) :
    (leftMulMatrix h.basis h.gen).charpoly = minpoly R h.gen := by
  cases subsingleton_or_nontrivial R; · apply Subsingleton.elim
  apply minpoly.unique' R h.gen (charpoly_monic _)
  · apply (injective_iff_map_eq_zero (G := S) (leftMulMatrix _)).mp
      (leftMulMatrix_injective h.basis)
    rw [← Polynomial.aeval_algHom_apply, aeval_self_charpoly]
  refine' fun q hq => or_iff_not_imp_left.2 fun h0 => _
  rw [Matrix.charpoly_degree_eq_dim, Fintype.card_fin] at hq
  contrapose! hq; exact h.dim_le_degree_of_root h0 hq
#align charpoly_left_mul_matrix charpoly_leftMulMatrix

end PowerBasis
