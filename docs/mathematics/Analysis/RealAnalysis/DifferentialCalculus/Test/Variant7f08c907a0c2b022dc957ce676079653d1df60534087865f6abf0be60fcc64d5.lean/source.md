# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Test.Variant7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90b05643b1035cb393498f9634f61e4b818036c0` · SHA-256 `7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

noncomputable section
open FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

def p1 (u : ℝ) : ℝ :=
  7*u^7+112*u^6+768*u^5+2880*u^4+6144*u^3+6912*u^2+4096*u+1024

example (u : ℝ) : -deriv overlapProfile u = u*(2-u)^8*p1 u / 90090 := by
  unfold overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv_div_const,
    deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
  dsimp [p1]
  ring

def p2 (u : ℝ) : ℝ :=
  7*u^8+98*u^7+904*u^6+6384*u^5+30096*u^4+88032*u^3+
    149056*u^2+108416*u+30976

theorem dprofile (u : ℝ) : deriv overlapProfile u = -(u*(2-u)^8*p1 u / 90090) := by
  have h : -deriv overlapProfile u = u*(2-u)^8*p1 u / 90090 := by
    unfold overlapProfile overlapP0
    simp (disch := fun_prop) only [deriv_div_const,
      deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
      deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
    dsimp [p1]
    ring
  linarith

example (u : ℝ) : deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u =
    u^2*(2-u)^7*p2 u / 315315 := by
  rw [show deriv overlapProfile = fun u => -(u*(2-u)^8*p1 u / 90090) from funext dprofile]
  unfold p1 overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv.fun_neg, deriv_div_const,
    deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
  dsimp [p2]
  ring
```
