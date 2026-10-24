# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variantbd38bd9fa38f3830719c92cb05d35b5cc02b51a5395f1aea231bd50ca723bfa3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d154499acec2d85f72c37cdf43fd27787f7b94` · SHA-256 `c30b97793c9dc0aeb782a03d00fab371eccb4b24a01c7f698cc52e765ed5c22a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ShiftedInventory.Variant08adaa7b94e8706c890f316689c1b34a93fcb7f80d5ff5281e98dff312d0096f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08adaa7b94e8706c890f316689c1b34a93fcb7f80d5ff5281e98dff312d0096f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ShiftedInventory.Variant08adaa7b94e8706c890f316689c1b34a93fcb7f80d5ff5281e98dff312d0096f","mathematical_subject":"Analysis.Integration","original_sha256":"08adaa7b94e8706c890f316689c1b34a93fcb7f80d5ff5281e98dff312d0096f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/proper_power_assembly/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProperPowerTransport
import ClosedProperPowerPrefix

/-! Genuine finite-to-countable proper-power closed-prefix transport.
Research direction grwtsk contributors; focused construction OpenAI Codex.
No Laurent identification, Ramaré, arithmetic intercept or signed-budget premise. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ShiftedInventory.Variant08adaa7b94e8706c890f316689c1b34a93fcb7f80d5ff5281e98dff312d0096f

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ProperPowerAssembly
open Finset MeasureTheory Set
open ContinuousResearch.ProperPowerMoments
open ContinuousResearch.ProperPowerTransport
open ContinuousResearch.ClosedProperPowerPrefix
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel

def shiftedInventory (N : ℕ) : Finset (Nat.Primes × ℕ) :=
  (((range (N+1)).subtype Nat.Prime).product (range (N+1))).filter
    (fun pk => pk.1.val ^ (pk.2+2) ≤ N)

theorem mem_shiftedInventory_iff (N : ℕ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory N ↔ p.val^(k+2) ≤ N := by
  constructor
  · intro h
    exact (mem_filter.mp h).2
  · intro h
    have hpN : p.val ≤ N := by
      have hpk : p.val ≤ p.val^(k+2) := by
        conv_lhs => rw [←pow_one p.val]
        exact Nat.pow_le_pow_right p.property.one_lt.le (by omega)
      exact hpk.trans h
    have hkN : k ≤ N := by
      have hpow := (Nat.lt_pow_self p.property.one_lt (n:=k+2)).le.trans h
      omega
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_subtype.mpr (mem_range.mpr (Nat.lt_succ_iff.mpr hpN)),
        mem_range.mpr (Nat.lt_succ_iff.mpr hkN)⟩,h⟩

theorem shiftedInventory_onset_iff (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory ⌊Real.exp t⌋₊ ↔ powerOnset p k ≤ t := by
  rw [mem_shiftedInventory_iff,prime_power_closed_onset_iff t p.property]
  rfl

theorem closedOnsetAtom_zero_outside (t : ℝ) (pk : Nat.Primes × ℕ)
    (h : pk ∉ shiftedInventory ⌊Real.exp t⌋₊) :
    closedOnsetAtom t pk.1 pk.2 = 0 := by
  unfold closedOnsetAtom
  exact if_neg (fun hp => h ((shiftedInventory_onset_iff t pk.1 pk.2).mpr hp))

theorem closedOnsetPrefix_eq_finite_shifted (t : ℝ) :
    closedOnsetPrefix t =
      ∑ pk ∈ shiftedInventory ⌊Real.exp t⌋₊, powerWeight pk.1 pk.2 := by
  unfold closedOnsetPrefix
  rw [tsum_eq_sum (s:=shiftedInventory ⌊Real.exp t⌋₊)
    (fun pk h => closedOnsetAtom_zero_outside t pk h)]
  apply sum_congr rfl
  intro pk h
  exact if_pos ((shiftedInventory_onset_iff t pk.1 pk.2).mp h)

theorem finite_shifted_sum_eq_actual (t : ℝ) :
    (∑ pk ∈ shiftedInventory ⌊Real.exp t⌋₊, powerWeight pk.1 pk.2) =
      actualProperPowerClosedPrefix t := by
  unfold actualProperPowerClosedPrefix
  apply sum_bij (fun pk _ => (pk.1.val,pk.2+2))
  · intro pk hpk
    apply (mem_inventory_iff _ _ _).mpr
    exact ⟨pk.1.property,by omega,(mem_shiftedInventory_iff _ pk.1 pk.2).mp hpk⟩
  · intro x _ y _ heq
    have hp : x.1.val = y.1.val := congrArg Prod.fst heq
    have hk : x.2+2 = y.2+2 := congrArg Prod.snd heq
    exact Prod.ext (Subtype.ext hp) (by omega)
  · intro pk hpk
    obtain ⟨hp,hk,hpow⟩ := (mem_inventory_iff _ _ _).mp hpk
    have he : pk.2-2+2 = pk.2 := by omega
    refine ⟨(⟨pk.1,hp⟩,pk.2-2),?_,?_⟩
    · apply (mem_shiftedInventory_iff _ _ _).mpr
      simpa only [he] using hpow
    · exact Prod.ext rfl he
  · intro pk _
    rfl

theorem actual_closed_prefix_eq_countable (t : ℝ) :
    actualProperPowerClosedPrefix t = closedOnsetPrefix t := by
  rw [closedOnsetPrefix_eq_finite_shifted,finite_shifted_sum_eq_actual]

theorem actual_weighted_difference_eq_countable (t : ℝ) :
    weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t = closedOnsetPrefix t := by
  rw [actual_closed_prefix_dictionary,actual_closed_prefix_eq_countable]

theorem actual_weighted_difference_add_tail (t : ℝ) :
    (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t) + omittedOnsetTail t =
      properPowerMoment 0 := by
  rw [actual_weighted_difference_eq_countable]
  exact closedOnsetPrefix_add_tail t

theorem actual_complement_eq_omitted_tail (t : ℝ) :
    properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t) =
      omittedOnsetTail t := by
  rw [actual_weighted_difference_eq_countable]
  exact properPowerMoment_sub_closedPrefix t

theorem actual_complement_nonneg (t : ℝ) :
    0 ≤ properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t) := by
  rw [actual_complement_eq_omitted_tail]
  exact omittedOnsetTail_nonneg t

theorem actual_complement_integrable_positive :
    IntegrableOn (fun t : ℝ =>
      properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t)) (Ioi 0) := by
  have he : (fun t : ℝ =>
      properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t)) =
      omittedOnsetTail := funext actual_complement_eq_omitted_tail
  rw [he]
  exact omittedOnsetTail_integrable_positive

theorem actual_complement_integral_eq_B1 :
    (∫ t in Ioi 0,
      properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t)) =
      properPowerB1 := by
  simp_rw [actual_complement_eq_omitted_tail]
  exact omittedOnsetTail_integral_eq_B1

theorem actual_weighted_difference_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t = 0 := by
  rw [actual_weighted_difference_eq_countable]
  exact closedOnsetPrefix_below_first ht

theorem actual_complement_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    properPowerMoment 0 - (weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t) =
      properPowerMoment 0 := by
  rw [actual_weighted_difference_below_first ht,sub_zero]

end ContinuousResearch.ProperPowerAssembly
```
