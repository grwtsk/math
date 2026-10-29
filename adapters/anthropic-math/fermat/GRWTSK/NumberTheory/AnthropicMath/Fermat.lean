/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import FinalCheck

namespace GRWTSK.NumberTheory.AnthropicMath.Fermat

/-- The upstream theorem, preserving its positive-natural and exponent hypotheses. -/
theorem noPositivePowerSum (n a b c : ℕ) (hn : 3 ≤ n)
    (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : a ^ n + b ^ n ≠ c ^ n :=
  _root_.flt_pinned n hn a b c ha hb hc

/-- A Diophantine consumer: positive natural cubes cannot sum to a positive cube. -/
theorem noPositiveCubeSum (a b c : ℕ)
    (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) : a ^ 3 + b ^ 3 ≠ c ^ 3 :=
  noPositivePowerSum 3 a b c (by decide) ha hb hc

end GRWTSK.NumberTheory.AnthropicMath.Fermat
