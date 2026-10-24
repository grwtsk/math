# Complete source: GRWTSK.NumberTheory.Ideal.Checks.Positive.CompactNormSupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8907a247a43cb0643fcc4b21fc98c48bb6d09d2` · SHA-256 `f5a0bf03037b133b004dfd0e19a788158773cadf6bd6d7ff21a848ab782f9e0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual integer-ideal consumers and a proved failure without zero-ideal cancellation.
OpenAI/Mathlib Apache-2.0 notices and named individual credit remain in imported sources. -/
import GRWTSK.NumberTheory.Ideal.CompactNormSupport
import GRWTSK.Analysis.Calculus.CompactCutoff
namespace GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
noncomputable section
open scoped Classical SchwartzMap
open GRWTSK.Analysis.Calculus.CompactCutoff

noncomputable def integerWindow : ℝ→ℂ := schwartzCutoff 1
lemma integerWindow_compact : HasCompactSupport integerWindow := schwartzCutoff_compact 1
lemma integerWindow_zero : integerWindow 0=1 := schwartzCutoff_one 1 0 (by norm_num) (by norm_num)
lemma integerWindow_one : integerWindow 1=1 := schwartzCutoff_one 1 1 (by norm_num) (by norm_num)

/-- The actual integer-ideal triple weight, with zero-ideal cancellation built into the value. -/
noncomputable def integerTriple (p : Ideal ℤ×Ideal ℤ×Ideal ℤ) : ℂ :=
  if p.1=0 ∨ p.2.1=0 ∨ p.2.2=0 then 0
  else integerWindow ((Ideal.absNorm p.1:ℝ)*(Ideal.absNorm p.2.1:ℝ)^3*(Ideal.absNorm p.2.2:ℝ)^3)

lemma integerTriple_zero (I J H : Ideal ℤ) (h : I=0 ∨ J=0 ∨ H=0) : integerTriple (I,J,H)=0 := by
  dsimp only [integerTriple]
  rw [if_pos h]

lemma integerTriple_window (I J H : Ideal ℤ)
    (h : integerWindow ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3/1)=0) :
    integerTriple (I,J,H)=0 := by
  by_cases hz : I=0 ∨ J=0 ∨ H=0
  · exact integerTriple_zero I J H hz
  · simpa only [integerTriple,if_neg hz,div_one] using h

/-- The theorem is instantiated with actual Dedekind/free/finite/CharZero integer instances. -/
theorem actual_integer_finite_support : (Function.support integerTriple).Finite :=
  finite_support_norm_triple integerWindow integerWindow_compact 1 (by norm_num)
    integerTriple integerTriple_zero integerTriple_window

lemma actual_unit_triple_nonzero : integerTriple (1,1,1)=1 := by
  simpa [integerTriple] using integerWindow_one

/-- Actual distinct integer ideals, certified by their actual absolute norms. -/
lemma integer_span_nat_injective : Function.Injective (fun n : ℕ=>Ideal.span ({(n:ℤ)} : Set ℤ)) := by
  intro m n h
  have hn := congrArg (fun I : Ideal ℤ=>Ideal.absNorm I) h
  simpa [Ideal.absNorm_span_natCast] using hn

/-- Remove only the zero-ideal cancellation: all triples on the first zero-ideal fiber survive. -/
noncomputable def zeroFiber (p : Ideal ℤ×Ideal ℤ×Ideal ℤ) : ℂ := if p.1=0 then 1 else 0

lemma zeroFiber_window (I J H : Ideal ℤ)
    (h : integerWindow ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3/1)=0) :
    zeroFiber (I,J,H)=0 := by
  by_cases hI : I=0
  · subst I
    have hh : (1:ℂ)=0 := by simpa only [map_zero,Nat.cast_zero,zero_mul,zero_div,integerWindow_zero] using h
    exact (one_ne_zero hh).elim
  · dsimp only [zeroFiber]
    rw [if_neg hI]

lemma zeroFiber_zero_nonzero : zeroFiber (0,1,1)=1 := by simp [zeroFiber]

lemma zeroFiber_zero_cancellation_false :
    ¬ (∀I J H : Ideal ℤ,I=0 ∨ J=0 ∨ H=0→zeroFiber (I,J,H)=0) := by
  intro h
  have hh := h 0 1 1 (Or.inl rfl)
  rw [zeroFiber_zero_nonzero] at hh
  exact one_ne_zero hh

/-- Actual infinite support via n↦(zero ideal, ideal(n), unit ideal), not an arbitrary norm oracle. -/
theorem actual_zeroFiber_support_infinite : (Function.support zeroFiber).Infinite := by
  let f : ℕ→Ideal ℤ×Ideal ℤ×Ideal ℤ := fun n=>(0,Ideal.span ({(n:ℤ)} : Set ℤ),1)
  have hinj : Function.Injective f := by
    intro m n h
    apply integer_span_nat_injective
    exact congrArg (fun p : Ideal ℤ×Ideal ℤ×Ideal ℤ=>p.2.1) h
  apply Set.infinite_of_injective_forall_mem hinj
  intro n
  simp [f,Function.mem_support,zeroFiber]

/-- Compact W, positive scale and the actual window implication hold; only zero cancellation fails. -/
theorem actual_missing_zero_counterexample :
    HasCompactSupport integerWindow ∧ integerWindow 0≠0 ∧ (0:ℝ)<1 ∧
      (∀I J H : Ideal ℤ,integerWindow ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*
        (Ideal.absNorm H:ℝ)^3/1)=0→zeroFiber (I,J,H)=0) ∧
      ¬ (Function.support zeroFiber).Finite := by
  exact ⟨integerWindow_compact,by rw [integerWindow_zero]; norm_num,by norm_num,
    zeroFiber_window,actual_zeroFiber_support_infinite⟩

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
```
