-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveFactorPair.Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PositiveFactorPair.Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/PositivePairReindexing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.AnalyticNumberTheory.PositivePairReindexing

Finite positive factor-pair fibers for Dirichlet convolution.

This module supplies the local finite divisor-fiber vocabulary used by the
generic Dirichlet-series Cauchy product.  The infinite summability/reindexing
step is supplied by the checked Mathlib L-series convolution theorem in
`DirichletCauchyProductGeneric`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveFactorPair.Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

/-- A positive divisor `d` of `n`, represented as the factor pair `(d, n / d)`. -/
structure PositiveFactorPair
    (n : Nat) where
  d : Nat
  hdvd : d ∈ Nat.divisors n
deriving DecidableEq

namespace PositiveFactorPair

instance
    (n : Nat) :
    Fintype (PositiveFactorPair n) :=
  Fintype.ofEquiv {d // d ∈ Nat.divisors n}
    { toFun := fun x => ⟨x.1, x.2⟩
      invFun := fun x => ⟨x.d, x.hdvd⟩
      left_inv := by
        intro x
        cases x
        rfl
      right_inv := by
        intro x
        cases x
        rfl }

def left
    {n : Nat}
    (x : PositiveFactorPair n) : Nat :=
  x.d

def right
    {n : Nat}
    (x : PositiveFactorPair n) : Nat :=
  n / x.d

theorem left_pos
    {n : Nat}
    (x : PositiveFactorPair n) :
    0 < x.left :=
  Nat.pos_of_mem_divisors x.hdvd

theorem right_pos
    {n : Nat}
    (x : PositiveFactorPair n)
    (hn : 0 < n) :
    0 < x.right := by
  exact Nat.div_pos
    (Nat.le_of_dvd hn (Nat.dvd_of_mem_divisors x.hdvd))
    x.left_pos

theorem mul_eq
    {n : Nat}
    (x : PositiveFactorPair n) :
    x.left * x.right = n :=
  Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors x.hdvd)

end PositiveFactorPair

noncomputable def productFiberSum
    (F : Nat → Nat → Complex)
    (n : Nat) : Complex :=
  ∑ d ∈ Nat.divisors n, F d (n / d)

/--
Finite divisor-fiber identity for positive factor pairs.

This is the finite reindexing skeleton behind Dirichlet convolution: summing
over divisors `d | n` is the same as summing over positive pairs `(d, n / d)`.
-/
theorem productFiberSum_eq_sum_positive_pairs
    (F : Nat → Nat → Complex)
    (n : Nat) :
    productFiberSum F n =
      ∑ x : PositiveFactorPair n, F x.left x.right := by
  classical
  let e : PositiveFactorPair n ≃ {d // d ∈ Nat.divisors n} :=
    { toFun := fun x => ⟨x.d, x.hdvd⟩
      invFun := fun x => ⟨x.1, x.2⟩
      left_inv := by
        intro x
        cases x
        rfl
      right_inv := by
        intro x
        cases x
        rfl }
  have hsum :
      (∑ x : PositiveFactorPair n, F x.left x.right) =
        ∑ x : {d // d ∈ Nat.divisors n}, F x.1 (n / x.1) := by
    exact Fintype.sum_equiv e _ _ (by intro x; rfl)
  rw [hsum]
  simp [productFiberSum]

end AnalyticNumberTheory
end Rebuild
end Folder
