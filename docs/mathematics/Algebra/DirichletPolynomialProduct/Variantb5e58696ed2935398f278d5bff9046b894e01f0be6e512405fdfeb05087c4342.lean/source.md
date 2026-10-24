# Complete source: GRWTSK.Algebra.DirichletPolynomialProduct.Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aea7fc0e04060013a0d9ff811928a0c297ddaf5e` · SHA-256 `d6f4033e078390c7812a9a2b8aa6fb8c2490062f15178fedf63a3ef92a2d35d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DirichletPolynomialComplex.Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DirichletPolynomialComplex.Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/DirichletPolynomialProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.DirichletSeries
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct

Finite Dirichlet polynomial identities.
-/


namespace GRWTSK.Algebra.DirichletPolynomialComplex.Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def dirichletPolynomialComplex
    (a : ArithFn ℂ)
    (σ : Real)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    a n * ((posWeightReal σ n : Real) : ℂ)

theorem dirichletPolynomialComplex_zero_coeff
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex (fun _ => 0) σ N = 0 := by
  simp [dirichletPolynomialComplex]

theorem dirichletPolynomialComplex_add
    (a b : ArithFn ℂ)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex (fun n => a n + b n) σ N =
      dirichletPolynomialComplex a σ N +
        dirichletPolynomialComplex b σ N := by
  simp [dirichletPolynomialComplex, Finset.sum_add_distrib, add_mul]

def boundedDirichletConv
    [Semiring R]
    (N : Nat)
    (f g : ArithFn R) : ArithFn R :=
  fun n =>
    ∑ d ∈ Nat.divisors n,
      if d ≤ N ∧ n / d ≤ N then f d * g (n / d) else 0

theorem finite_dirichlet_cauchy_product_unweighted
    (a b : ArithFn ℂ)
    (N : Nat) :
    (∑ d ∈ Finset.Icc 1 N, a d) *
      (∑ e ∈ Finset.Icc 1 N, b e) =
    ∑ x ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
      a x.1 * b x.2 := by
  rw [Finset.sum_mul_sum]
  exact
    (Finset.sum_product
      (Finset.Icc 1 N)
      (Finset.Icc 1 N)
      (fun x : Nat × Nat => a x.1 * b x.2)).symm

end AnalyticNumberTheory
end Rebuild
end Folder
```
