# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SeparatedPoleCharges.Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28730a4b5d984ad1fe93f51be3520b84f7e822c0` · SHA-256 `7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteMobiusJet

/-!
# Separated source children can recover opposite zeta poles

For the actual finite Mobius polynomial and Mathlib zeta, a supplied
continuous source germ C splits into raw low and high children with opposite
residue charges M0(U)*C(1) and -M0(U)*C(1). A nonzero charge forbids even
continuity of either raw child at one. In particular the literal cutoff U=1
has M0(1)=1, so every supplied nonzero continuous source value exhibits this
failure. The unit-jet correction in FiniteMobiusJet removes these charges.

This formalizes the analytic separation boundary in B16-L03, conditional on
the actual centered Dirichlet source being identified with the supplied C.
That identification and its Euler-gamma value remain open. Human direction:
grwtsk contributors. Local formalization: OpenAI Codex. Qualified Mathlib zeta
and derivative declarations remain upstream, as recorded in the source manifest.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SeparatedPoleCharges

open FiniteMobiusJet UnitJetCorrection Filter
open scoped Topology BigOperators ArithmeticFunction.Moebius
noncomputable section

/-- The raw low in this module, with the following exact parameterization.

def rawLow (U : ℕ) (C : ℂ → ℂ) (s : ℂ) : ℂ := finiteMobius U s * riemannZeta s * C s
-/
def rawLow (U : ℕ) (C : ℂ → ℂ) (s : ℂ) : ℂ :=
  finiteMobius U s * riemannZeta s * C s
/-- The raw high in this module, with the following exact parameterization.

def rawHigh (U : ℕ) (C : ℂ → ℂ) (s : ℂ) : ℂ := (1 - finiteMobius U s * riemannZeta s) * C s
-/
def rawHigh (U : ℕ) (C : ℂ → ℂ) (s : ℂ) : ℂ :=
  (1 - finiteMobius U s * riemannZeta s) * C s

theorem raw_children_join (U : ℕ) (C : ℂ → ℂ) (s : ℂ) :
    rawLow U C s + rawHigh U C s = C s := by
  unfold rawLow rawHigh
  ring

theorem continuous_source_has_zero_pole_charge {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (s - 1) * C s) (𝓝[≠] 1) (𝓝 0) := by
  have hs : Tendsto (fun s : ℂ ↦ s - 1) (𝓝[≠] 1) (𝓝 0) := by
    have hc : ContinuousAt (fun s : ℂ ↦ s - 1) 1 :=
      continuousAt_id.sub continuousAt_const
    simpa using hc.tendsto.mono_left
      (nhdsWithin_le_nhds : (𝓝[≠] (1 : ℂ)) ≤ 𝓝 1)
  simpa using hs.mul (hC.tendsto.mono_left nhdsWithin_le_nhds)

theorem raw_low_charge (U : ℕ) {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (s - 1) * rawLow U C s) (𝓝[≠] 1)
      (𝓝 ((momentZero U : ℂ) * C 1)) := by
  have hm : Tendsto (finiteMobius U) (𝓝[≠] 1) (𝓝 (finiteMobius U 1)) :=
    (finite_mobius_derivative U).continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  rw [finite_mobius_value] at hm
  have h := (riemannZeta_residue_one.mul hm).mul
    (hC.tendsto.mono_left nhdsWithin_le_nhds)
  simp only [one_mul] at h
  apply h.congr'
  exact Filter.Eventually.of_forall (fun s ↦ by unfold rawLow; ring)

theorem raw_high_charge (U : ℕ) {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (s - 1) * rawHigh U C s) (𝓝[≠] 1)
      (𝓝 (-((momentZero U : ℂ) * C 1))) := by
  have h := (continuous_source_has_zero_pole_charge hC).sub (raw_low_charge U hC)
  simp only [zero_sub] at h
  apply h.congr'
  exact Filter.Eventually.of_forall (fun s ↦ by unfold rawHigh rawLow; ring)

theorem nonzero_charge_forbids_continuity {f : ℂ → ℂ} {charge : ℂ}
    (hres : Tendsto (fun s ↦ (s - 1) * f s) (𝓝[≠] 1) (𝓝 charge))
    (hne : charge ≠ 0) : ¬ ContinuousAt f 1 := by
  intro hf
  have hz := continuous_source_has_zero_pole_charge hf
  exact hne (tendsto_nhds_unique hres hz)

theorem nonzero_source_charge_keeps_both_raw_children_singular (U : ℕ)
    {C : ℂ → ℂ} (hC : ContinuousAt C 1)
    (hcharge : (momentZero U : ℂ) * C 1 ≠ 0) :
    ¬ ContinuousAt (rawLow U C) 1 ∧ ¬ ContinuousAt (rawHigh U C) 1 :=
  ⟨nonzero_charge_forbids_continuity (raw_low_charge U hC) hcharge,
    nonzero_charge_forbids_continuity (raw_high_charge U hC) (neg_ne_zero.mpr hcharge)⟩

theorem first_mobius_moment : momentZero 1 = 1 := by
  simp [momentZero]

theorem actual_first_cutoff_recovers_opposite_poles {C : ℂ → ℂ}
    (hC : ContinuousAt C 1) (hsource : C 1 ≠ 0) :
    ¬ ContinuousAt (rawLow 1 C) 1 ∧ ¬ ContinuousAt (rawHigh 1 C) 1 := by
  apply nonzero_source_charge_keeps_both_raw_children_singular 1 hC
  simpa [first_mobius_moment] using hsource

end
end GRWTSK.RiemannHypothesis.Conversation.SeparatedPoleCharges
```
