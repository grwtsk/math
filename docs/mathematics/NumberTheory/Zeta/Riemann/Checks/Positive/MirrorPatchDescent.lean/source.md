# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MirrorPatchDescent

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `154c050ee8412b684fbe2c1a4a12c789deae3856` · SHA-256 `d24869420ad4cad4bfd4c62dbd90cdc8835ca5134624af0e493a15c0aef79657`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.HeightLocalDescent
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.MirrorPatchDescent

open CriticalStripHeightDescent

example (N : ℕ) : (windowZeroLocations N).Finite := windowZeroLocations_finite N

example (N : ℕ) : ∃ S : Finset ℂ, CompleteWindowLocationList N S :=
  exists_completeWindowLocationList N

example (N : ℕ) : ShellRH N ↔ NoTargetZero (upperRightHeightShell N) :=
  shellRH_iff_upperRight_exclusion N

example : (WindowRH 0 ∧ ∀ N m : ℕ, NoTargetZero (rightAwayShell N m)) ↔
    _root_.RiemannHypothesis := base_and_rightAwayShells_iff_rh

example {F : ℂ → ℂ} {U : Set ℂ} (patch : SampleVariationPatch F U)
    {z : ℂ} (hz : z ∈ U) : patch.lower - patch.error ≤ ‖F z‖ :=
  patch.value_norm_lower hz

example {F : ℂ → ℂ} {U : Set ℂ} (patch : SampleVariationPatch F U)
    {z : ℂ} (hz : z ∈ U) : F z ≠ 0 := patch.nonzero hz

example : ∃ r : ℝ, 0 < r ∧
    Nonempty (SampleVariationPatch riemannZeta (Metric.ball (0 : ℂ) r)) :=
  exists_zeta_patch_at_zero

example {U : Set ℂ} (cover : FiniteVariationCover riemannZeta U) :
    NoTargetZero U := cover.noTargetZero

example {F : ℂ → ℂ} {U : Set ℂ} (cover : FiniteVariationCover F U)
    (hne : U.Nonempty) : 0 < cover.count := cover.count_pos_of_nonempty hne

example {N m : ℕ} {z : ℂ} (hz : z ∈ rightAwayShell N m) : z.re < 1 :=
  rightAwayShell_re_lt_one hz

/-- A fixed near-line cutoff misses an ambient off-line point. No zeta-zero
predicate is asserted for the witness. -/
example : (⟨51 / 100, 1 / 2⟩ : ℂ) ∈ upperRightHeightShell 0 ∧
    (⟨51 / 100, 1 / 2⟩ : ℂ) ∉ rightAwayShell 0 10 := by
  norm_num [upperRightHeightShell, upperHeightShell, rightAwayShell,
    ZetaCommutatorRoot.heightAt_eq_im]

/-- With a non-strict margin, F(z)=z can vanish at z=0 even though the center
value at 1 has norm 1 and variation is bounded by 1. -/
example : ‖(0 : ℂ) - 1‖ ≤ (1 : ℝ) ∧ ‖(1 : ℂ)‖ = 1 ∧
    (fun z : ℂ => z) 0 = 0 := by norm_num

/-- The global theorem still visibly requires the full base and N,m cover family. -/
example (hbase : WindowRH 0)
    (covers : ∀ N m : ℕ, FiniteVariationCover riemannZeta (rightAwayShell N m)) :
    _root_.RiemannHypothesis := rh_of_base_and_patch_covers hbase covers

end GRWTSK.RiemannHypothesis.Checks.MirrorPatchDescent
```
