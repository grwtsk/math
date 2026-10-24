-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimePairs.Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CoprimePairs.Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"d11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/GcdClassTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio
import Mathlib.Tactic.Linarith


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimePairs.Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec

set_option autoImplicit false

namespace GcdClassTransportScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

def coprimePairs (N : ℕ) : Finset (ℕ × ℕ) :=
  ((Icc 1 N) ×ˢ (Icc 1 N)).filter (fun p ↦ Nat.Coprime p.1 p.2)

def gcdClasses (N : ℕ) : Finset (Σ _ : ℕ × ℕ, ℕ) :=
  (coprimePairs N).sigma (fun p ↦ Icc 1 (N / max p.1 p.2))

def splitPair (p : ℕ × ℕ) : Σ _ : ℕ × ℕ, ℕ :=
  ⟨(p.1 / Nat.gcd p.1 p.2, p.2 / Nat.gcd p.1 p.2), Nat.gcd p.1 p.2⟩

def joinClass (s : Σ _ : ℕ × ℕ, ℕ) : ℕ × ℕ :=
  (s.2 * s.1.1, s.2 * s.1.2)

theorem splitPair_mem (N : ℕ) (p : ℕ × ℕ)
    (hp : p ∈ (Icc 1 N) ×ˢ (Icc 1 N)) : splitPair p ∈ gcdClasses N := by
  obtain ⟨hp1, hp2⟩ := mem_product.mp hp
  obtain ⟨hd1, hdN⟩ := mem_Icc.mp hp1
  obtain ⟨he1, heN⟩ := mem_Icc.mp hp2
  have hd0 : 0 < p.1 := by omega
  have he0 : 0 < p.2 := by omega
  have hg0 := Nat.gcd_pos_of_pos_left p.2 hd0
  have hu0 := Nat.div_pos (Nat.gcd_le_left p.2 hd0) hg0
  have hv0 := Nat.div_pos (Nat.gcd_le_right p.1 he0) hg0
  have hmax : 0 < max (p.1 / Nat.gcd p.1 p.2) (p.2 / Nat.gcd p.1 p.2) :=
    hu0.trans_le (le_max_left _ _)
  apply mem_sigma.mpr
  constructor
  · apply mem_filter.mpr
    refine ⟨mem_product.mpr ⟨mem_Icc.mpr ⟨hu0, ?_⟩,
      mem_Icc.mpr ⟨hv0, ?_⟩⟩, Nat.coprime_div_gcd_div_gcd hg0⟩
    · exact (Nat.div_le_self _ _).trans hdN
    · exact (Nat.div_le_self _ _).trans heN
  · apply mem_Icc.mpr
    refine ⟨hg0, (Nat.le_div_iff_mul_le hmax).mpr ?_⟩
    change Nat.gcd p.1 p.2 * max (p.1 / Nat.gcd p.1 p.2)
      (p.2 / Nat.gcd p.1 p.2) ≤ N
    rw [mul_max, Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _),
      Nat.mul_div_cancel' (Nat.gcd_dvd_right _ _)]
    exact max_le hdN heN

theorem joinClass_mem (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ)
    (hs : s ∈ gcdClasses N) : joinClass s ∈ (Icc 1 N) ×ˢ (Icc 1 N) := by
  obtain ⟨hp, hg⟩ := mem_sigma.mp hs
  obtain ⟨hp, _⟩ := mem_filter.mp hp
  obtain ⟨hu, hv⟩ := mem_product.mp hp
  obtain ⟨hu1, _⟩ := mem_Icc.mp hu
  obtain ⟨hv1, _⟩ := mem_Icc.mp hv
  obtain ⟨hg1, hgN⟩ := mem_Icc.mp hg
  have hmax : 0 < max s.1.1 s.1.2 := (show 0 < s.1.1 by omega).trans_le (le_max_left _ _)
  have hgmax := (Nat.le_div_iff_mul_le hmax).mp hgN
  exact mem_product.mpr
    ⟨mem_Icc.mpr ⟨by dsimp [joinClass]; nlinarith,
      (Nat.mul_le_mul_left _ (le_max_left _ _)).trans hgmax⟩,
     mem_Icc.mpr ⟨by dsimp [joinClass]; nlinarith,
      (Nat.mul_le_mul_left _ (le_max_right _ _)).trans hgmax⟩⟩

theorem joinClass_splitPair (p : ℕ × ℕ) : joinClass (splitPair p) = p := by
  apply Prod.ext <;> dsimp [joinClass, splitPair]
  · exact Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _)
  · exact Nat.mul_div_cancel' (Nat.gcd_dvd_right _ _)

theorem splitPair_joinClass (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ)
    (hs : s ∈ gcdClasses N) : splitPair (joinClass s) = s := by
  obtain ⟨hp, hg⟩ := mem_sigma.mp hs
  have huv := (mem_filter.mp hp).2
  have hg0 : 0 < s.2 := (mem_Icc.mp hg).1
  have hcalc : Nat.gcd (s.2 * s.1.1) (s.2 * s.1.2) = s.2 := by
    rw [Nat.gcd_mul_left, huv.gcd_eq_one, mul_one]
  dsimp only [splitPair, joinClass]
  rw [hcalc, Nat.mul_div_cancel_left _ hg0, Nat.mul_div_cancel_left _ hg0]

theorem sum_eq_coprime_classes (N : ℕ) (H : ℕ → ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N, H d e) =
      ∑ p ∈ coprimePairs N, ∑ g ∈ Icc 1 (N / max p.1 p.2), H (g * p.1) (g * p.2) := by
  calc
    _ = ∑ p ∈ (Icc 1 N) ×ˢ (Icc 1 N), H p.1 p.2 := (sum_product _ _ _).symm
    _ = ∑ s ∈ gcdClasses N, H (joinClass s).1 (joinClass s).2 := by
      apply sum_bij' (fun p _ ↦ splitPair p) (fun s _ ↦ joinClass s)
      · exact splitPair_mem N
      · exact joinClass_mem N
      · intro p _
        exact joinClass_splitPair p
      · exact splitPair_joinClass N
      · intro p _
        rw [joinClass_splitPair]
    _ = _ := sum_sigma _ _ _

theorem moebius_weighted_sum_eq_coprime_classes (N : ℕ) (E : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N,
      (ArithmeticFunction.moebius d : ℝ) * (ArithmeticFunction.moebius e : ℝ) * E (d * e)) =
      ∑ p ∈ coprimePairs N, (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max p.1 p.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (p.1 * p.2) then 1 else 0) * E ((p.1 * p.2) * g ^ 2) := by
  rw [sum_eq_coprime_classes]
  apply sum_congr rfl
  intro p hp
  have hprod (g : ℕ) : (g * p.1) * (g * p.2) = (p.1 * p.2) * g ^ 2 := by ring
  simp_rw [hprod]
  exact MobiusRatio.weighted_ratio_sum_eq _ E p.1 p.2 (mem_filter.mp hp).2

end
end GcdClassTransportScratch

#print axioms GcdClassTransportScratch.coprimePairs
#print axioms GcdClassTransportScratch.gcdClasses
#print axioms GcdClassTransportScratch.splitPair
#print axioms GcdClassTransportScratch.joinClass
#print axioms GcdClassTransportScratch.splitPair_mem
#print axioms GcdClassTransportScratch.joinClass_mem
#print axioms GcdClassTransportScratch.joinClass_splitPair
#print axioms GcdClassTransportScratch.splitPair_joinClass
#print axioms GcdClassTransportScratch.sum_eq_coprime_classes
#print axioms GcdClassTransportScratch.moebius_weighted_sum_eq_coprime_classes
#check GcdClassTransportScratch.moebius_weighted_sum_eq_coprime_classes
