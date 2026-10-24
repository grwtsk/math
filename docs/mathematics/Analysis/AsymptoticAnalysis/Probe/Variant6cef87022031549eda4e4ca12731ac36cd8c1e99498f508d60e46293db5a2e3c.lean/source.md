# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Probe.Variant6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b689bcd9a3c333a1920c33da3d038d928236b5a4` · SHA-256 `6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
open Complex
#check norm_tsum_le_tsum_norm
#check tsum_le_tsum
#check Summable.of_nonneg_of_le
#check summable_norm_iff
#check Real.summable_one_div_nat_pow
#check pow_le_pow_right₀
#check inv_anti₀
#check Complex.norm_natCast
#check Complex.norm_real
#check Real.self_le_exp
#check Real.add_one_le_exp
#check Real.exp_nat_mul
#check Real.exp_mul_nat
#check Nat.factorial_le
#check Nat.factorial_le_pow
#check Complex.Gamma_nat_eq_factorial
#check Real.one_le_pi
#check Complex.Gammaℝ_ne_zero_of_re_pos
#check Complex.re_le_norm
#check Complex.ofReal_norm
#check Complex.norm_natCast
#check pow_le_pow_left₀
#check one_div_le_one_div_of_le
#check norm_inv
#check Complex.norm_natCast
#print Complex.riemannZeta_def_of_ne_zero
```
