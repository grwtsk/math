# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.PowerTaylor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12551e98270e7868b3476d365f0b91d98c38eaaf` · SHA-256 `6968f5012c6c7ef21f1eb8ccb35179daa430241b626402b9c693660122ff6bbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.FinitePowerPatch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.PowerTaylor

open CriticalStripHeightDescent

example : |Real.log 2 - (56 / 81 : ℝ)| ≤ 1 / 405 := log_two_low_order_enclosure

example {q : ℝ} (hq : 0 ≤ q) (hq1 : q < 1) (n : ℕ) :
    |Real.log ((1 + q) / (1 - q)) - ratioLogCenter q n| ≤ ratioLogRadius q n :=
  ratioLog_encloses hq hq1 n

example (j : ℕ) (u : ℝ) (h1 : 1 ≤ u) (h2 : u ≤ 2) (n : ℕ) :
    RealLogEnclosure ((2 : ℝ) ^ j * u) := dyadicLogEnclosure j u h1 h2 n

example {x : ℝ} (hx : 0 < x) (w : ℂ) :
    (x : ℂ) ^ w = Complex.exp (w * (Real.log x : ℂ)) := positive_cpow_eq_exp_realLog hx w

example (n : ℕ) {z : ℂ} {R : ℝ} (hz : ‖z‖ ≤ R)
    (hr : R / ((n : ℝ) + 1) ≤ 1 / 2) :
    ‖Complex.exp z - complexExpTaylor n z‖ ≤ complexExpTaylorRadius n R :=
  complexExpTaylor_error n hz hr

-- A concrete low-order log record supplies a negative-power enclosure. The
-- analytic log and exponential remainder proofs are not extra fixture premises.
example : ComplexPowerEnclosure 2 (-(1 / 2 : ℂ)) := by
  refine negativePowerEnclosure (by norm_num : (1 : ℝ) ≤ 2) logTwoLowOrder
    (1 / 2 : ℂ) (by norm_num) 8 1 ?_ ?_ ?_
  · norm_num [logTwoLowOrder, norm_div]
  · norm_num [logTwoLowOrder, norm_mul, norm_neg, norm_div]
  · norm_num

example {x : ℝ} (hx : 1 ≤ x) {s : ℂ} (hs : 0 ≤ s.re) :
    ‖(x : ℂ) ^ (-s)‖ ≤ 1 := positive_base_neg_power_norm_le_one hx hs

example {x : ℝ} (hx : 0 < x) (s : ℂ) :
    (x : ℂ) ^ (1 - s) = (x : ℂ) * (x : ℂ) ^ (-s) := positive_base_endpoint_power hx s

example (N : ℕ) (hN : 1 ≤ N) (s : ℂ)
    (d : ∀ k ∈ Finset.Icc 1 N, ComplexPowerEnclosure (k : ℝ) (-s)) :
    FinitePowerEnclosure N s := FinitePowerEnclosure.ofNegativePowerDisks N hN s d

example (N : ℕ) (hN : 1 ≤ N) (s : ℂ)
    (d : ∀ k ∈ Finset.Icc 1 N, ComplexPowerEnclosure (k : ℝ) (-s))
    {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    let e := FinitePowerEnclosure.ofNegativePowerDisks N hN s d
    ‖poleNormalizedZeta s - e.sample‖ ≤ e.sourceError σ :=
  source_enclosed_by_power_disks N hN s d hσ hs

-- Exact guard failures. They do not assert that the conclusion fails every time
-- a sufficient Taylor condition is violated.
example : ¬ ((1 : ℝ) < 1) := lt_irrefl _
example : ¬ ((2 : ℝ) ≤ 1) := by norm_num
example : ¬ ((4 : ℝ) / (2 + 1) ≤ 1 / 2) := by norm_num
example : (2 : ℝ) / (3 + 1) = 1 / 2 := by norm_num

-- Source nonvanishing still requires a strict patch margin even after a power
-- record has been constructed from analytic Taylor proofs.
example (e : FinitePowerEnclosure 4 (3 / 4 + Complex.I))
    (hzero : poleNormalizedZeta (3 / 4 + Complex.I) = 0) :
    ¬ e.sourceError (1 / 2) < ‖e.sample‖ :=
  e.no_strict_margin_at_source_zero (by norm_num) (by norm_num) (by norm_num) hzero

end GRWTSK.RiemannHypothesis.Checks.PowerTaylor
```
