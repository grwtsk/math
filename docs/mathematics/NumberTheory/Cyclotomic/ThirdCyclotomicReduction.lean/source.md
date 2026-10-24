# Complete source: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5584866341f069a616c24df73eaa7b0854d33f04` · SHA-256 `e4a0ebc56271091ad812884274ad54c34d59fd31fbb59f393eda882c7e425837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual primitive-root reduction and the ramified prime in the third cyclotomic ring.
Adapted from OpenAI math, project author OpenAI, Apache-2.0,
commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean, omega/lambda and
omega_primitive (493-505), omega_reduced_primitive (529-551),
SHA256 0e8e4184de91161a75802e3a26abfd19a322dffa6441968bf9caeb25800b5d7c.
Mathlib NumberTheory/NumberField/Cyclotomic/Ideal.lean:
Copyright (c) 2025 Xavier Roblot. All rights reserved. Author: Xavier Roblot.
Mathlib cyclotomic, number-field, ideal-norm and primitive-root individual credits
remain retained, including Riccardo Brasca, Ashvni Narayanan, Anne Baanen,
Alex J. Best and Eric Rodriguez. Released under Apache-2.0 as described in LICENSE.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
Original characters, coefficient weights, completed sums/common support and RH remain open.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
import Mathlib.NumberTheory.NumberField.Cyclotomic.Ideal

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
noncomputable section
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals

private instance : IsCyclotomicExtension {3} ℚ K := actual_cyclotomic_extension
private instance : Fact (Nat.Prime 3) := ⟨by decide⟩

noncomputable def omega : O := (IsCyclotomicExtension.zeta_spec 3 ℚ K).toInteger
noncomputable def lambda : O := omega-1

lemma omega_primitive : IsPrimitiveRoot omega 3 :=
  (IsCyclotomicExtension.zeta_spec 3 ℚ K).toInteger_isPrimitiveRoot

lemma lambda_ne_zero : lambda≠0 := sub_ne_zero.mpr (omega_primitive.ne_one (by decide))

/-- Exact source good-reduction theorem for the actual root and actual maximal quotient. -/
theorem omega_reduced_primitive (P : Ideal O) [P.IsMaximal] (hgood : lambda∉P) :
    IsPrimitiveRoot (Ideal.Quotient.mk P omega) 3 := by
  let : Field (O⧸P) := Ideal.Quotient.field P
  let ρ : O→+*O⧸P := Ideal.Quotient.mk P
  have hpow : (ρ omega)^3=1 := by
    rw [←map_pow,omega_primitive.pow_eq_one,map_one]
  have hne : ρ omega≠1 := by
    intro he
    apply hgood
    have hz : ρ (omega-1)=0 := by rw [map_sub,he,map_one,sub_self]
    exact Ideal.Quotient.eq_zero_iff_mem.mp hz
  apply IsPrimitiveRoot.mk_of_lt _ (by decide) hpow
  intro l hl0 hl3
  have hl : l=1 ∨ l=2 := by omega
  rcases hl with rfl|rfl
  · simpa using hne
  · intro h2
    apply hne
    calc
      ρ omega=(ρ omega)^2*ρ omega := by rw [h2,one_mul]
      _ =(ρ omega)^3 := by ring
      _ =1 := hpow

noncomputable def ramifiedIdeal : Ideal O := Ideal.span ({lambda} : Set O)

lemma lambda_prime : Prime lambda := by
  exact (IsCyclotomicExtension.zeta_spec 3 ℚ K).zeta_sub_one_prime'

lemma ramifiedIdeal_absNorm : Ideal.absNorm ramifiedIdeal=3 := by
  let : IsCyclotomicExtension {3^(0+1)} ℚ K := by
    simpa only [Nat.zero_add,pow_one] using actual_cyclotomic_extension
  have hz : IsPrimitiveRoot (IsCyclotomicExtension.zeta 3 ℚ K) (3^(0+1)) := by
    convert IsCyclotomicExtension.zeta_spec 3 ℚ K using 1; norm_num
  simpa only [ramifiedIdeal,lambda,omega] using
    IsCyclotomicExtension.Rat.absNorm_span_zeta_sub_one 3 0 hz

instance ramifiedIdeal_isPrime : ramifiedIdeal.IsPrime := by
  simpa only [ramifiedIdeal,lambda,omega] using
    IsCyclotomicExtension.Rat.isPrime_span_zeta_sub_one' 3 (IsCyclotomicExtension.zeta_spec 3 ℚ K)

lemma ramifiedIdeal_ne_zero : ramifiedIdeal≠0 := by
  intro h
  have hn := ramifiedIdeal_absNorm
  rw [h,map_zero] at hn
  norm_num at hn

instance ramifiedIdeal_isMaximal : ramifiedIdeal.IsMaximal :=
  ramifiedIdeal_isPrime.isMaximal ramifiedIdeal_ne_zero

lemma ramifiedIdeal_proper : ramifiedIdeal≠⊤ := ramifiedIdeal_isPrime.ne_top

lemma lambda_mem_ramifiedIdeal : lambda∈ramifiedIdeal := Ideal.subset_span (by simp)

lemma three_mem_ramifiedIdeal : (3:O)∈ramifiedIdeal := by
  have h := Ideal.absNorm_mem ramifiedIdeal
  simpa only [ramifiedIdeal_absNorm,Nat.cast_ofNat] using h

lemma two_not_mem_ramifiedIdeal : (2:O)∉ramifiedIdeal := by
  simpa only [ramifiedIdeal,lambda,omega] using
    IsCyclotomicExtension.Rat.two_not_mem_span_zeta_sub_one' 3
      (IsCyclotomicExtension.zeta_spec 3 ℚ K) (by decide)

/-- In the actual ramified quotient the primitive source root collapses to one. -/
lemma omega_ramified_eq_one : Ideal.Quotient.mk ramifiedIdeal omega=1 := by
  apply sub_eq_zero.mp
  have h := Ideal.Quotient.eq_zero_iff_mem.mpr lambda_mem_ramifiedIdeal
  simpa only [lambda,map_sub,map_one] using h

lemma omega_ramified_not_primitive : ¬IsPrimitiveRoot (Ideal.Quotient.mk ramifiedIdeal omega) 3 := by
  intro h
  exact (h.ne_one (by decide)) omega_ramified_eq_one

/-- A genuine good maximal ideal exists above (2), without assuming the desired good prime. -/
theorem exists_good_maximal_above_two :
    ∃P : Ideal O,P.IsMaximal ∧ (2:O)∈P ∧ lambda∉P := by
  have htwo : Ideal.span ({(2:O)} : Set O)≠⊤ := by
    intro h
    have hn := principal_two_absNorm
    rw [h,Ideal.absNorm_top] at hn
    norm_num at hn
  obtain ⟨P,hP,hcontain⟩ := Ideal.exists_le_maximal (Ideal.span ({(2:O)} : Set O)) htwo
  have h2 : (2:O)∈P := hcontain (Ideal.subset_span (by simp))
  refine ⟨P,hP,h2,?_⟩
  intro hmem
  have h3 : (3:O)∈P :=
    ((Ideal.span_singleton_le_iff_mem _).mpr hmem) three_mem_ramifiedIdeal
  have h1 : (1:O)∈P := by
    convert P.sub_mem h3 h2 using 1; ring
  exact hP.ne_top ((Ideal.eq_top_iff_one P).mpr h1)

/-- The actual ramified prime cannot have the primary-generator normalization lambda² | p-1. -/
theorem ramified_primary_generator_obstruction :
    ¬∃p : O,ramifiedIdeal=Ideal.span ({p} : Set O) ∧ lambda^2∣p-1 := by
  rintro ⟨p,hspan,⟨a,ha⟩⟩
  have hp : p∈ramifiedIdeal := by
    rw [hspan]
    exact Ideal.subset_span (by simp)
  have hsq : lambda^2∈ramifiedIdeal := by
    simpa only [pow_two] using ramifiedIdeal.mul_mem_left lambda lambda_mem_ramifiedIdeal
  have hsub : p-1∈ramifiedIdeal := by
    rw [ha]
    exact ramifiedIdeal.mul_mem_right a hsq
  have h1 : (1:O)∈ramifiedIdeal := by
    convert ramifiedIdeal.sub_mem hp hsub using 1; ring
  exact ramifiedIdeal_proper ((Ideal.eq_top_iff_one ramifiedIdeal).mpr h1)

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
```
