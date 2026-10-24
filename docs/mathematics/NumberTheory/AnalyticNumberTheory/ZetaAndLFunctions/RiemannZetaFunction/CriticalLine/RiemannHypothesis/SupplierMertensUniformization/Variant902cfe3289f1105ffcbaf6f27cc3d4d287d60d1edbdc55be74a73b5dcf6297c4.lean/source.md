# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SupplierMertensUniformization.Variant902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b642d155d99341a3437b46155e9f087451962ac` · SHA-256 `902cfe3289f1105ffcbaf6f27cc3d4d287d60d1edbdc55be74a73b5dcf6297c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SupplierMertensDecayAdapter

/-!
# Uniformizing an eventual classical Mertens bound

The exact closed Möbius recording has the unconditional bound `|M(x)| ≤ x`.
Consequently an eventual classical decay estimate extends to every logarithmic
time `u ≥ 0` after explicitly enlarging its constant.  No additional arithmetic
hypothesis, finite prefix computation, or RH assumption is introduced.

Classical source motivating the eventual premise: Lee--Leong,
arXiv:2208.06141v4, Theorem 1.1.  That arithmetic theorem is not proved here.
Human research direction: grwtsk contributors. Formal implementation: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.SupplierMertensUniformization

open OriginalSignedSupplier SupplierMertensDecayAdapter

/-- The prefix allowance retains the original eventual decay exponent. -/
def uniformizedCoefficient (C c U : ℝ) : ℝ :=
  max C (Real.exp (c * Real.sqrt (max 0 U)))

theorem uniformizedCoefficient_pos {C c U : ℝ} (hC : 0 < C) :
    0 < uniformizedCoefficient C c U :=
  hC.trans_le (le_max_left _ _)

/-- This is the original arithmetic recording, bounded without cancellation. -/
theorem arithmeticRecording_exp_abs_le (u : ℝ) :
    |arithmeticRecording (Real.exp u)| ≤ Real.exp u := by
  exact GRWTSK.RiemannHypothesis.Conversation.SmallDivisorBound.mertens_abs_le
    (Real.exp_pos u).le

/-- The explicitly paid prefix returns the eventual bound to all real `u ≥ 0`. -/
theorem mertensDecayBound_of_eventual {C c U : ℝ} (hc : 0 < c)
    (hdecay : ∀ u : ℝ, max 0 U ≤ u →
      |arithmeticRecording (Real.exp u)| ≤ C * Real.exp (u - c * Real.sqrt u)) :
    MertensDecayBound (uniformizedCoefficient C c U) c := by
  intro u hu
  by_cases hlarge : max 0 U ≤ u
  · exact (hdecay u hlarge).trans
      (mul_le_mul_of_nonneg_right (le_max_left C (Real.exp (c * Real.sqrt (max 0 U))))
        (Real.exp_pos _).le)
  · have huU : u ≤ max 0 U := (lt_of_not_ge hlarge).le
    have hsqrt : c * Real.sqrt u ≤ c * Real.sqrt (max 0 U) :=
      mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt huU) hc.le
    calc
      |arithmeticRecording (Real.exp u)| ≤ Real.exp u := arithmeticRecording_exp_abs_le u
      _ = Real.exp (c * Real.sqrt u) * Real.exp (u - c * Real.sqrt u) := by
        rw [← Real.exp_add]
        congr 1
        ring
      _ ≤ Real.exp (c * Real.sqrt (max 0 U)) * Real.exp (u - c * Real.sqrt u) :=
        mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hsqrt) (Real.exp_pos _).le
      _ ≤ uniformizedCoefficient C c U * Real.exp (u - c * Real.sqrt u) :=
        mul_le_mul_of_nonneg_right (le_max_right _ _) (Real.exp_pos _).le

/-- Uniformization produces a positive constant without any new arithmetic leaf. -/
theorem exists_global_mertensDecayBound {C c U : ℝ} (hC : 0 < C) (hc : 0 < c)
    (hdecay : ∀ u : ℝ, max 0 U ≤ u →
      |arithmeticRecording (Real.exp u)| ≤ C * Real.exp (u - c * Real.sqrt u)) :
    ∃ C' : ℝ, 0 < C' ∧ MertensDecayBound C' c :=
  ⟨uniformizedCoefficient C c U, uniformizedCoefficient_pos hC,
    mertensDecayBound_of_eventual hc hdecay⟩

/-- The global classical proposition follows from exactly the eventual
classical arithmetic estimate, with no condition on the bounded prefix. -/
theorem classicalMertensDecay_of_eventual {C c U : ℝ} (hC : 0 < C) (hc : 0 < c)
    (hdecay : ∀ u : ℝ, max 0 U ≤ u →
      |arithmeticRecording (Real.exp u)| ≤ C * Real.exp (u - c * Real.sqrt u)) :
    ClassicalMertensDecay :=
  ⟨uniformizedCoefficient C c U, c, uniformizedCoefficient_pos hC, hc,
    mertensDecayBound_of_eventual hc hdecay⟩

/-- An exact logical adapter between the global formal input and an eventual
bound on the same recording; this proves neither arithmetic proposition. -/
theorem classicalMertensDecay_iff_eventual : ClassicalMertensDecay ↔
    ∃ C c U : ℝ, 0 < C ∧ 0 < c ∧ ∀ u : ℝ, max 0 U ≤ u →
      |arithmeticRecording (Real.exp u)| ≤ C * Real.exp (u - c * Real.sqrt u) := by
  constructor
  · rintro ⟨C, c, hC, hc, hM⟩
    refine ⟨C, c, 0, hC, hc, ?_⟩
    simpa only [MertensDecayBound, max_self] using hM
  · rintro ⟨C, c, U, hC, hc, hM⟩
    exact classicalMertensDecay_of_eventual hC hc hM

end FormalResearch.RiemannHypothesis.Conversation.SupplierMertensUniformization
```
