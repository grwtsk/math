-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteZetaEulerFactorReal.Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteZetaEulerFactorReal.Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/EulerProductApproximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane
import Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative
import Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

/-!
# Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation

Finite Euler-product approximation layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteZetaEulerFactorReal.Varianta7fc2a7b1e4431f528f691d26d714f26d277acfd06c8c85c54cf08fbd57a0e85

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild
open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def finiteZetaEulerFactorReal
    (p : Nat)
    (σ : Real)
    (K : Nat) : Real :=
  ∑ k ∈ Finset.range (K + 1), (p : Real) ^ (-(σ * k))

noncomputable def finiteZetaEulerProductReal
    (S : Finset Nat)
    (σ : Real)
    (K : Nat) : Real :=
  ∏ p ∈ S, finiteZetaEulerFactorReal p σ K

theorem finiteZetaEulerFactorReal_pos
    {p K : Nat}
    {σ : Real}
    (hp : 0 < p) :
    0 < finiteZetaEulerFactorReal p σ K := by
  unfold finiteZetaEulerFactorReal
  refine Finset.sum_pos ?_ ?_
  · intro k _hk
    exact Real.rpow_pos_of_pos (Nat.cast_pos.mpr hp) _
  · exact Finset.nonempty_range_iff.mpr (Nat.succ_ne_zero K)

theorem finiteZetaEulerProductReal_pos
    {S : Finset Nat}
    {σ : Real}
    {K : Nat}
    (hS : ∀ p ∈ S, 0 < p) :
    0 < finiteZetaEulerProductReal S σ K := by
  unfold finiteZetaEulerProductReal
  exact
    Finset.prod_pos
      (fun p hpS => finiteZetaEulerFactorReal_pos (p := p) (K := K) (σ := σ) (hS p hpS))

theorem finiteZetaEulerFactorReal_ge_one
    {p K : Nat}
    {σ : Real}
    (hp : 0 < p) :
    1 ≤ finiteZetaEulerFactorReal p σ K := by
  unfold finiteZetaEulerFactorReal
  have hnonneg :
      ∀ k ∈ Finset.range (K + 1),
        0 ≤ (p : Real) ^ (-(σ * k)) := by
    intro k _hk
    exact le_of_lt (Real.rpow_pos_of_pos (Nat.cast_pos.mpr hp) _)
  have hmem : 0 ∈ Finset.range (K + 1) := by
    simp
  have hle := Finset.single_le_sum hnonneg hmem
  simpa using hle

theorem finiteZetaEulerProductReal_ge_one
    {S : Finset Nat}
    {σ : Real}
    {K : Nat}
    (hS : ∀ p ∈ S, 0 < p) :
    1 ≤ finiteZetaEulerProductReal S σ K := by
  unfold finiteZetaEulerProductReal
  exact
    Finset.one_le_prod
      (fun p hpS =>
        finiteZetaEulerFactorReal_ge_one (p := p) (K := K) (σ := σ) (hS p hpS))

theorem finiteZetaEulerFactor_geometric_identity
    {p K : Nat}
    {σ : Real}
    (hp : 0 < p) :
    (1 - (p : Real) ^ (-σ)) *
      finiteZetaEulerFactorReal p σ K =
    1 - ((p : Real) ^ (-σ)) ^ (K + 1) := by
  have hp_nonneg : 0 ≤ (p : Real) := by positivity
  have hpow :
      ∀ k : Nat,
        ((p : Real) ^ (-σ)) ^ k = (p : Real) ^ (-(σ * k)) := by
    intro k
    rw [← Real.rpow_natCast ((p : Real) ^ (-σ)) k]
    rw [← Real.rpow_mul hp_nonneg]
    congr 1
    ring
  unfold finiteZetaEulerFactorReal
  conv_lhs =>
    arg 2
    arg 2
    intro k
    rw [← hpow k]
  exact finite_geometric_euler_factor_mul ((p : Real) ^ (-σ)) K

def analyticEulerProductHalfPlaneAnchor : ClassicalAnchor where
  shortName := "Analytic Euler product half-plane"
  paperOrBook := "Classical Euler product references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "The infinite Euler product for the zeta half-plane is indexed here as a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

end AnalyticNumberTheory
end Rebuild
end Folder
