# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SmoothNumberReindexing.Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2734ba1986cbd59a76bb98ae6c65d368dd6da64e` · SHA-256 `d843be3918108ab67473bd606322898c05cd9f9ef27c5e7e1abb4b44c35bdaa3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerFactorOf.Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteEulerFactorOf.Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/SmoothNumberReindexing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.FiniteFactorizationPlumbing
import Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity
import Folder.Rebuild.NumberTheory.MultiplicativeFunction

/-!
# Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing

Finite Euler products reindexed over bounded smooth numbers.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerFactorOf.Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def finiteEulerFactorOf
    [CommSemiring R]
    (w : ArithFn R)
    (p K : Nat) : R :=
  ∑ k ∈ Finset.range (K + 1), w (p ^ k)

noncomputable def finiteEulerProductOf
    [CommSemiring R]
    (w : ArithFn R)
    (S : Finset Nat)
    (K : Nat) : R :=
  ∏ p ∈ S, finiteEulerFactorOf w p K

theorem finiteEulerFactorOf_eq_fin_sum
    [CommSemiring R]
    (w : ArithFn R)
    (p K : Nat) :
    finiteEulerFactorOf w p K =
      ∑ k : Fin (K + 1), w (p ^ (k : Nat)) := by
  rw [finiteEulerFactorOf]
  rw [Fin.sum_univ_eq_sum_range (fun k : Nat => w (p ^ k)) (K + 1)]

theorem finiteEulerProductOf_expands_exponent_vectors
    [CommSemiring R]
    (w : ArithFn R)
    (S : Finset Nat)
    (K : Nat) :
    finiteEulerProductOf w S K =
      ∑ e : ExponentVector S K,
        ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
  classical
  calc
    finiteEulerProductOf w S K
        = ∏ p : {p : Nat // p ∈ S}, finiteEulerFactorOf w p.val K := by
            rw [finiteEulerProductOf]
            exact (Finset.prod_coe_sort S (fun p => finiteEulerFactorOf w p K)).symm
    _ = ∏ p : {p : Nat // p ∈ S},
          ∑ k : Fin (K + 1), w (p.val ^ (k : Nat)) := by
          refine Finset.prod_congr rfl ?_
          intro p _hp
          exact finiteEulerFactorOf_eq_fin_sum w p.val K
    _ = ∑ e : ExponentVector S K,
          ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
          simpa using
            finite_product_sum_expansion_subtype S K
              (fun p k => w (p.val ^ (k : Nat)))

theorem completely_multiplicative_exponentVectorNat
    [CommMonoid R]
    (w : ArithFn R)
    (hw : IsCompletelyMultiplicative w)
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    w (exponentVectorNat S K e) =
      ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val) := by
  classical
  unfold exponentVectorNat
  let f : {p : Nat // p ∈ S} → Nat := fun p => p.val ^ (e p).val
  change w (∏ p : {p : Nat // p ∈ S}, f p) =
    ∏ p : {p : Nat // p ∈ S}, w (f p)
  refine Finset.induction_on (Finset.univ : Finset {p : Nat // p ∈ S}) ?base ?step
  · simp [hw.1]
  · intro a s has ih
    simp [Finset.prod_insert has, hw.2, ih]

theorem finiteEulerProductOf_expands_boundedSmoothNumbers
    [CommSemiring R]
    (w : ArithFn R)
    (hw : IsCompletelyMultiplicative w)
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteEulerProductOf w S K =
      ∑ n ∈ boundedSmoothNumbers S K, w n := by
  classical
  rw [finiteEulerProductOf_expands_exponent_vectors]
  calc
    (∑ e : ExponentVector S K,
        ∏ p : {p : Nat // p ∈ S}, w (p.val ^ (e p).val))
        = ∑ e : ExponentVector S K, w (exponentVectorNat S K e) := by
          refine Finset.sum_congr rfl ?_
          intro e _he
          exact (completely_multiplicative_exponentVectorNat w hw S K e).symm
    _ = ∑ n ∈ boundedSmoothNumbers S K, w n := by
          unfold boundedSmoothNumbers
          have hinj :
              Set.InjOn
                (fun e : ExponentVector S K => exponentVectorNat S K e)
                (↑(Finset.univ : Finset (ExponentVector S K))) := by
            intro a _ha b _hb h
            exact exponentVectorNat_injective_of_prime_set S K hSprime h
          exact
            (Finset.sum_image
              (s := (Finset.univ : Finset (ExponentVector S K)))
              (g := fun e => exponentVectorNat S K e)
              (f := w) hinj).symm

theorem posWeightReal_completely_multiplicative
    (σ : Real) :
    IsCompletelyMultiplicative (fun n : Nat => posWeightReal σ n) := by
  constructor
  · exact posWeightReal_one σ
  · intro a b
    by_cases ha : a = 0
    · subst a
      simp [posWeightReal]
    · by_cases hb : b = 0
      · subst b
        simp [posWeightReal]
      · exact posWeightReal_mul σ (Nat.pos_of_ne_zero ha) (Nat.pos_of_ne_zero hb)

theorem posWeightReal_prime_power
    (σ : Real)
    {p k : Nat}
    (hp : 0 < p) :
    posWeightReal σ (p ^ k) = (p : Real) ^ (-(σ * k)) := by
  have hp_pow : 0 < p ^ k := pow_pos hp _
  rw [posWeightReal_of_pos σ hp_pow]
  rw [Nat.cast_pow]
  rw [← Real.rpow_natCast (p : Real) k]
  rw [← Real.rpow_mul (by positivity : 0 ≤ (p : Real))]
  congr 1
  ring

theorem finiteZetaEulerProductReal_eq_finiteEulerProductOf_posWeight
    (S : Finset Nat)
    (K : Nat)
    (σ : Real)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductReal S σ K =
      finiteEulerProductOf (fun n => posWeightReal σ n) S K := by
  unfold finiteZetaEulerProductReal finiteEulerProductOf
    finiteZetaEulerFactorReal finiteEulerFactorOf
  refine Finset.prod_congr rfl ?_
  intro p hpS
  refine Finset.sum_congr rfl ?_
  intro k _hk
  exact (posWeightReal_prime_power σ (p := p) (k := k) (hSprime p hpS).pos).symm

theorem finiteZetaEulerProductReal_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (σ : Real)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductReal S σ K =
      ∑ n ∈ boundedSmoothNumbers S K, posWeightReal σ n := by
  rw [finiteZetaEulerProductReal_eq_finiteEulerProductOf_posWeight S K σ hSprime]
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => posWeightReal σ n)
      (posWeightReal_completely_multiplicative σ)
      S K hSprime

end AnalyticNumberTheory
end Rebuild
end Folder
```
