# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedCauchyReindexed.Variant543e219f307a31a643a6f73d714895637bdf7d312d3fce4edcf0625bc8c054b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e950cc09f6d92049f3fa8fedfd2704ba2805c4` · SHA-256 `d38ecc7c0f58d59ddcb863b128c56d90bade50a6f28c4f43729f095d3ff4c1f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PairProductByValueWeightedGrouping.Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PairProductByValueWeightedGrouping.Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/WeightedCauchyReindexed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.BoundedDirichletConvolution
import Folder.Rebuild.AnalyticNumberTheory.WeightedDirichletPolynomialProduct

/-!
# Folder.Rebuild.AnalyticNumberTheory.WeightedCauchyReindexed

Divisor-reindexed weighted finite Dirichlet-polynomial products.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PairProductByValueWeightedGrouping.Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

theorem pairProductByValue_weighted_grouping
    [CommSemiring R]
    (N : Nat)
    (f g : ArithFn R)
    (w : Nat → R) :
    ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n f g * w n =
      ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
        f de.1 * g de.2 * w (de.1 * de.2) := by
  classical
  let P : Finset (Nat × Nat) := (Finset.Icc 1 N).product (Finset.Icc 1 N)
  calc
    ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n f g * w n
        = ∑ n ∈ Finset.Icc 1 (N * N),
            ∑ de ∈ P.filter (fun de : Nat × Nat => de.1 * de.2 = n),
              f de.1 * g de.2 * w n := by
          refine Finset.sum_congr rfl ?_
          intro n _hn
          simp [pairProductByValue, P, Finset.sum_mul, mul_assoc]
    _ = ∑ x ∈ (Finset.Icc 1 (N * N)).sigma
          (fun n => P.filter (fun de : Nat × Nat => de.1 * de.2 = n)),
          f x.2.1 * g x.2.2 * w x.1 := by
          exact
            (Finset.sum_sigma (Finset.Icc 1 (N * N))
              (fun n => P.filter (fun de : Nat × Nat => de.1 * de.2 = n))
              (fun x : Sigma (fun _n : Nat => Nat × Nat) =>
                f x.2.1 * g x.2.2 * w x.1)).symm
    _ = ∑ de ∈ P, f de.1 * g de.2 * w (de.1 * de.2) := by
          refine Finset.sum_bij (fun x _hx => x.2) ?hi ?hinj ?hsurj ?hterm
          · intro x hx
            exact (Finset.mem_filter.mp (Finset.mem_sigma.mp hx).2).1
          · intro x hx y hy hxy
            cases x with
            | mk nx dx =>
              cases y with
              | mk ny dy =>
                simp only at hxy
                subst dy
                have hxfilter := (Finset.mem_sigma.mp hx).2
                have hyfilter := (Finset.mem_sigma.mp hy).2
                have hxprod := (Finset.mem_filter.mp hxfilter).2
                have hyprod := (Finset.mem_filter.mp hyfilter).2
                have hfst : nx = ny := hxprod.symm.trans hyprod
                subst ny
                rfl
          · intro de hde
            refine ⟨⟨de.1 * de.2, de⟩, ?_, rfl⟩
            refine Finset.mem_sigma.mpr ?_
            constructor
            · rcases Finset.mem_product.mp hde with ⟨hdmem, hemem⟩
              have hdIcc := Finset.mem_Icc.mp hdmem
              have heIcc := Finset.mem_Icc.mp hemem
              have hpos : 1 ≤ de.1 * de.2 := by
                exact
                  Nat.succ_le_of_lt
                    (Nat.mul_pos
                      (lt_of_lt_of_le Nat.zero_lt_one hdIcc.1)
                      (lt_of_lt_of_le Nat.zero_lt_one heIcc.1))
              have hle : de.1 * de.2 ≤ N * N :=
                Nat.mul_le_mul hdIcc.2 heIcc.2
              exact Finset.mem_Icc.mpr ⟨hpos, hle⟩
            · exact Finset.mem_filter.mpr ⟨hde, rfl⟩
          · intro x hx
            have hxfilter := (Finset.mem_sigma.mp hx).2
            have hxprod := (Finset.mem_filter.mp hxfilter).2
            simp [hxprod]
    _ = ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
          f de.1 * g de.2 * w (de.1 * de.2) := by
          rfl

theorem dirichletPolynomialPairProductComplex_grouped
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialPairProductComplex a b σ N =
      ∑ n ∈ Finset.Icc 1 (N * N),
        boundedDirichletConv N a b n *
          (((posWeightReal σ n : Real) : Complex)) := by
  let w : Nat → Complex := fun n => (((posWeightReal σ n : Real) : Complex))
  calc
    dirichletPolynomialPairProductComplex a b σ N
        = ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
            a de.1 * b de.2 * w (de.1 * de.2) := by
          rfl
    _ = ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n a b * w n := by
          exact (pairProductByValue_weighted_grouping N a b w).symm
    _ = ∑ n ∈ Finset.Icc 1 (N * N),
          boundedDirichletConv N a b n * w n := by
          refine Finset.sum_congr rfl ?_
          intro n hn
          have hnpos : 0 < n :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1
          rw [pairProductByValue_eq_boundedDirichletConv N n a b hnpos]

/--
Checked divisor-reindexed weighted finite Cauchy product.

This is a finite Dirichlet-polynomial identity. It is not the infinite
Dirichlet-series Cauchy product and does not assert analytic Euler products.
-/
theorem dirichletPolynomialComplex_mul_boundedConv
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex a σ N *
      dirichletPolynomialComplex b σ N =
    ∑ n ∈ Finset.Icc 1 (N * N),
      boundedDirichletConv N a b n *
        (((posWeightReal σ n : Real) : Complex)) := by
  rw [dirichletPolynomialComplex_mul_pair]
  exact dirichletPolynomialPairProductComplex_grouped a b σ N

end AnalyticNumberTheory
end Rebuild
end Folder
```
