# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicIdeals

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13de7dd1da45de7995cee319d61086b314faf58d` · SHA-256 `e9ecd358d2f5dc533784b9b4ad599877ae86ee3b9ea199453c99bab2d51b3fbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual third-cyclotomic ideal consumers and a checked distinction from integer ideal norms.
OpenAI/Mathlib Apache-2.0 notices and individual author credits remain in imported sources. -/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
import GRWTSK.Analysis.Calculus.CompactCutoff
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
noncomputable section
open scoped Classical SchwartzMap
open GRWTSK.Analysis.Calculus.CompactCutoff

noncomputable def cyclotomicWindow : ℝ→ℂ := schwartzCutoff 1
lemma cyclotomicWindow_compact : HasCompactSupport cyclotomicWindow := schwartzCutoff_compact 1
lemma cyclotomicWindow_one : cyclotomicWindow 1=1 := schwartzCutoff_one 1 1 (by norm_num) (by norm_num)

/-- Actual ideal triples of the third cyclotomic ring, at scale X=4. -/
noncomputable def cyclotomicTriple (p : Ideal O×Ideal O×Ideal O) : ℂ :=
  if p.1=0 ∨ p.2.1=0 ∨ p.2.2=0 then 0
  else cyclotomicWindow ((Ideal.absNorm p.1:ℝ)*(Ideal.absNorm p.2.1:ℝ)^3*(Ideal.absNorm p.2.2:ℝ)^3/4)

lemma cyclotomicTriple_zero (I J H : Ideal O) (h : I=0 ∨ J=0 ∨ H=0) : cyclotomicTriple (I,J,H)=0 := by
  dsimp only [cyclotomicTriple]
  rw [if_pos h]

lemma cyclotomicTriple_window (I J H : Ideal O)
    (h : cyclotomicWindow ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3/4)=0) :
    cyclotomicTriple (I,J,H)=0 := by
  by_cases hz : I=0 ∨ J=0 ∨ H=0
  · exact cyclotomicTriple_zero I J H hz
  · simpa only [cyclotomicTriple,if_neg hz] using h

/-- Actual O specialization pays all ring instances and actual compact/zero/window suppliers. -/
theorem actual_cyclotomic_finite_support : (Function.support cyclotomicTriple).Finite :=
  finite_support_norm_triple cyclotomicWindow cyclotomicWindow_compact 4 (by norm_num)
    cyclotomicTriple cyclotomicTriple_zero cyclotomicTriple_window

lemma principal_two_ne_zero : Ideal.span ({(2:O)} : Set O)≠0 := by
  intro hz
  have hn := principal_two_absNorm
  rw [hz,map_zero] at hn
  norm_num at hn

/-- A genuine nonzero term whose norm is 4, not the integer generator's norm 2. -/
theorem actual_principal_two_term : cyclotomicTriple (Ideal.span ({(2:O)} : Set O),1,1)=1 := by
  have hz : ¬ (Ideal.span ({(2:O)} : Set O)=0 ∨ (1:Ideal O)=0 ∨ (1:Ideal O)=0) := by
    rintro (h|h|h)
    · exact principal_two_ne_zero h
    · exact one_ne_zero h
    · exact one_ne_zero h
  dsimp only [cyclotomicTriple]
  rw [if_neg hz]
  have harg : (Ideal.absNorm (Ideal.span ({(2:O)} : Set O)):ℝ)*(Ideal.absNorm (1:Ideal O):ℝ)^3*
      (Ideal.absNorm (1:Ideal O):ℝ)^3/4=1 := by
    rw [principal_two_absNorm]
    norm_num only [map_one,Nat.cast_ofNat]
  rw [harg,cyclotomicWindow_one]

lemma integer_principal_two_absNorm : Ideal.absNorm (Ideal.span ({(2:ℤ)} : Set ℤ))=2 := by
  norm_num [Ideal.absNorm_span_natCast]

/-- Actual norms in the two actual rings disagree at the same rational integer generator. -/
theorem actual_integer_norm_identification_false :
    Ideal.absNorm (Ideal.span ({(2:O)} : Set O))≠Ideal.absNorm (Ideal.span ({(2:ℤ)} : Set ℤ)) := by
  rw [principal_two_absNorm,integer_principal_two_absNorm]
  norm_num

lemma actual_ring_rank_two : Module.finrank ℤ O=2 := integer_finrank

/-- The actual zero-generator principal ideal has norm zero. -/
lemma actual_zero_principal_norm : Ideal.absNorm (Ideal.span ({(0:O)} : Set O))=0 := by
  simp

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
```
