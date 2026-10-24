# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerExponentVectors.Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a6720731a3e5409cd5549da583b90e404e223e9` · SHA-256 `22109033ff3a37401eff33e55d339f3100f4898ab4a60a970ceab473ceb2f965`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExponentVector.Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExponentVector.Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/FiniteEulerExponentVectors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors

Exact finite Euler-product expansion over bounded exponent vectors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExponentVector.Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def ExponentVector
    (S : Finset Nat)
    (K : Nat) :=
  (p : {p : Nat // p ∈ S}) → Fin (K + 1)

instance exponentVectorFintype
    (S : Finset Nat)
    (K : Nat) :
    Fintype (ExponentVector S K) := by
  dsimp [ExponentVector]
  infer_instance

instance exponentVectorDecidableEq
    (S : Finset Nat)
    (K : Nat) :
    DecidableEq (ExponentVector S K) := by
  dsimp [ExponentVector]
  infer_instance

noncomputable def exponentVectorWeightReal
    (S : Finset Nat)
    (K : Nat)
    (σ : Real)
    (e : ExponentVector S K) : Real :=
  ∏ p : {p : Nat // p ∈ S},
    (p.val : Real) ^ (-(σ * (e p).val))

theorem finiteZetaEulerFactorReal_eq_fin_sum
    (p K : Nat)
    (σ : Real) :
    finiteZetaEulerFactorReal p σ K =
      ∑ k : Fin (K + 1), (p : Real) ^ (-(σ * (k : Nat))) := by
  rw [finiteZetaEulerFactorReal]
  rw [Fin.sum_univ_eq_sum_range
    (fun k : Nat => (p : Real) ^ (-(σ * k))) (K + 1)]

theorem finite_product_sum_expansion_subtype
    [CommSemiring R]
    (S : Finset Nat)
    (K : Nat)
    (x : (p : {p : Nat // p ∈ S}) → Fin (K + 1) → R) :
    (∏ p : {p : Nat // p ∈ S},
        ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ExponentVector S K,
      ∏ p : {p : Nat // p ∈ S}, x p (e p) := by
  classical
  change
    (∏ p : {p : Nat // p ∈ S}, ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ((p : {p : Nat // p ∈ S}) → Fin (K + 1)),
      ∏ p : {p : Nat // p ∈ S}, x p (e p)
  exact Fintype.prod_sum x

/--
Exact finite Euler-product expansion over bounded exponent vectors.

This is a finite product-of-sums identity. It is the checked finite algebraic
precursor to Euler products, not an infinite Euler-product theorem.
-/
theorem finiteZetaEulerProductReal_expands_exponent_vectors
    (S : Finset Nat)
    (K : Nat)
    (σ : Real) :
    finiteZetaEulerProductReal S σ K =
      ∑ e : ExponentVector S K,
        exponentVectorWeightReal S K σ e := by
  classical
  calc
    finiteZetaEulerProductReal S σ K
        = ∏ p : {p : Nat // p ∈ S}, finiteZetaEulerFactorReal p.val σ K := by
            rw [finiteZetaEulerProductReal]
            exact
              (Finset.prod_coe_sort S
                (fun p => finiteZetaEulerFactorReal p σ K)).symm
    _ = ∏ p : {p : Nat // p ∈ S},
          ∑ k : Fin (K + 1), (p.val : Real) ^ (-(σ * (k : Nat))) := by
          refine Finset.prod_congr rfl ?_
          intro p _hp
          exact finiteZetaEulerFactorReal_eq_fin_sum p.val K σ
    _ = ∑ e : ExponentVector S K,
          exponentVectorWeightReal S K σ e := by
          simpa [exponentVectorWeightReal] using
            finite_product_sum_expansion_subtype S K
              (fun p k => (p.val : Real) ^ (-(σ * (k : Nat))))

end AnalyticNumberTheory
end Rebuild
end Folder
```
