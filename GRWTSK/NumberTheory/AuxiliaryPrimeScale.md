# Uniform numerical scale for auxiliary-prime discovery

Local source attribution: grwtsk contributors.

The [Lean module](AuxiliaryPrimeScale.lean) supplies the numerical step consumed by
`GRWTSK.PrimeFieldFactoring.AnalyticExistence.surplus_at_scale`. The
[complete analytic argument](AuxiliaryPrimeAnalyticExistence.md) proves the
ordinary mathematical implication from a fixed Dedekind zero-free strip. This
module proves the arithmetic of that implication; it does not formalize the
explicit formula or supply a zero-free theorem.

## Source correspondence

The upstream mathematical method is OpenAI, *Deterministic Polynomial
Factorization over Prime Fields*, October 4, 2026, Proposition 11.3
(`analytic:auxiliary`), specifically the scale choice and comparison of the
main term, analytic error and exceptional contributions. The source revision
is `3344da59991ed94f9ba711217b29c1d760badfa6`, analytic-section Git blob
`21081c288d68760167d2d94a34247ba61240dddf`.
[Exact primary text](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex).

The local declarations are new arithmetic consequences of that method, not
imported upstream Lean proofs. They use the sharpened linear weighted height
and the nuisance bound established in the adjacent modules. Unlike the source's
choice proportional to $B^{20000000}$, the local parameterization is
$x=(TB)^m$, where $m=4r\ge4$ and the strip width is $1/m$.

| Fully qualified declaration | Exact local role |
| --- | --- |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.analytic_error_at_power` | From $B\ge1$, $T\ge2$, $576C\le T$ and $m\ge1$, bounds $72CB(TB)^{m-1}$ by $x/8$. |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.nuisance_error_at_quarter` | From $1920H\le T$ and $r\ge1$, bounds $240HB(TB)^{3r}$ by $(TB)^{4r}/8$. |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.strip_power_nat` | Proves $(y^m)^{1-1/m}=y^{m-1}$ for $y\ge0$, $m\ge1$, using Mathlib's real-power laws. |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.quarter_power` | Proves $(y^{4r})^{3/4}=y^{3r}$ without rounding. |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.polynomial_cap_identity` | Proves the natural-number identity $2(TB)^m=(2T^m)B^m$. |
| `GRWTSK.PrimeFieldFactoring.AnalyticScale.strict_surplus` | With $x>0$, $q\ge2$, combined absolute error at most $x/8$ and nuisance at most $x/8$, proves nuisance $<u-v/q$. |

The power identities use `Real.rpow_mul` and `Real.rpow_natCast` from
[Mathlib's real-power module at the pinned revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean).
The margin is strict because the difference is at least $3x/8$ and $x>0$.
At $x=0$, zero sums and zero nuisance give equality, so that positivity
hypothesis cannot be dropped. Allowing $T$ to depend on each input would also
destroy the uniform polynomial claim. The consumer chooses one $T$ before
quantifying over the fields and input integers.

## Exact-source evidence

Source Git blob: `13b2201421cac7c4f72079657cda1d26b3bb6c8a`.
Source SHA-256: `8a31274b1e59f84bee0dbc75d5c3172679c383e4dca48a4e01cadf3e59619ac8`.
Lean 4.34.1, build `5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` compiled these bytes with exit 0
and no diagnostics. `#print axioms` inspected all six public theorems:
the cap identity uses only `propext`; the other five use exactly
`propext`, `Classical.choice` and `Quot.sound`. The source contains no
`sorry` or added axiom. The [source-bound group replay](AuxiliaryPrimeAnalyticExistence.md#exact-source-verification-2026-11-27)
passed for all 46 public declarations and 45,786 transitive constants using
exactly the three standard axioms. These checks do not supply the shared analytic
premises or establish prior-art novelty.
