# Exact amplitude envelope for the pinned prime-weight route

Issue: #763  
Parent issue: #759  
Parent draft PR: #762  
Evidence state: source draft; not elaborated; not kernel audited.

## 1. Purpose

The bounded-capacity layer solved the coefficient optimization problem for the
pinned rank-one response.  At scale `X`, write

\[
A_X=
\sum_{\substack{X<p\le 2X\\p\text{ prime}}}
\frac{\log p}{p}\bigl(|\theta(p)-p|+1\bigr).
\]

For an absolute coefficient budget `C`, the largest normalized response is

\[
\operatorname{Cap}_X(C)=\frac{C A_X^2}{X}.
\]

The corresponding optimized deficit is

\[
D_X^*(C;v)=
\max\left(0,
|\theta(v)-v|+1-\operatorname{Cap}_X(C)
\right).
\]

The parent packet proved that

\[
D_X^*(C;v)\le E
\quad\Longrightarrow\quad
X\bigl(|\theta(v)-v|+1-E\bigr)\le C A_X^2.
\]

This packet proves that, for `E >= 0` and `X > 0`, the implication is an
exact equivalence.

## 2. Pointwise equivalence

Define

\[
\operatorname{AmpReq}(X,C,v,E)
:\Longleftrightarrow
X\bigl(|\theta(v)-v|+1-E\bigr)
\le C A_X^2.
\]

The formal source separates two elementary steps.

For every nonnegative `E`,

\[
D_X^*(C;v)\le E
\iff
|\theta(v)-v|+1-E
\le \operatorname{Cap}_X(C).
\]

For `X>0`, multiplication by `X` gives

\[
D_X^*(C;v)\le E
\iff
\operatorname{AmpReq}(X,C,v,E).
\]

The zero-deficit specialization is

\[
D_X^*(C;v)=0
\iff
X\bigl(|\theta(v)-v|+1\bigr)
\le C A_X^2.
\]

No estimate of `A_X` appears in these proofs.  They are exact rewrites of the
optimized deficit definition.

## 3. What has been eliminated

The chain now removes three forms of artificial freedom.

1. An arbitrary residual is replaced by the least nonnegative canonical
   deficit.
2. A stagewise coefficient choice is bounded by an immutable coefficient
   rule.
3. Every coefficient satisfying the same absolute budget is dominated by the
   constant analytic extremizer.

After these eliminations, the live stagewise obligation is only

\[
X\bigl(|\theta(v)-v|+1-E_X(v)\bigr)
\le C A_X^2.
\]

A different bounded coefficient cannot weaken this inequality.  Any further
advance must estimate the actual pinned amplitude or alter the underlying
response model.

## 4. Error envelope

For threshold parameter `rho`, epsilon parameter `eta`, and nonnegative
constant `R`, define

\[
E_j(R,\rho,\eta)=
R(2^j)^{Q(\rho)+\eta/2},
\qquad
Q(\rho)=2\rho-1.
\]

The source proves this allowance is nonnegative.  It then substitutes this
exact expression into the stagewise equivalence.

The variable-budget amplitude criterion requires that, for every `eta>0`,
there exist nonnegative `C` and `R` and a starting scale such that

\[
2^j
\left(
|\theta(v)-v|+1-E_j(R,\rho,\eta)
\right)
\le
C A_{2^j}^2
\]

for every sufficiently large `j` and every `v` in the next octave.

The fixed-capacity amplitude criterion selects `C` before `eta` and only
allows `R` and the starting scale to depend on `eta`.

## 5. Exact criterion equivalences

The source establishes

\[
\operatorname{CapacityCriterionAt}(\rho)
\iff
\operatorname{AmplitudeCriterionAt}(\rho),
\]

and

\[
\operatorname{FixedCapacityCriterionAt}(C,\rho)
\iff
\operatorname{FixedCapacityAmplitudeCriterionAt}(C,\rho).
\]

Therefore every immutable coefficient-rule deficit criterion implies the
variable-budget amplitude criterion.

For the constant analytic optimizer,

\[
\operatorname{FixedCapacityAmplitudeCriterionAt}(C,\rho)
\iff
\left(
C\ge0
\text{ and }
\operatorname{RuleDeficitCriterionAt}
(\operatorname{constantRule}(C),\rho)
\right).
\]

This equivalence does not turn the constant optimizer into an arithmetic
coefficient law.  Its role remains purely extremal.

## 6. Recurrence transport

A fixed-capacity amplitude criterion supplies the previously isolated
quadratic theta recurrence.  In the admitted range `rho >= 3/4`, it also
supplies one descent step.

The clause-indexed layer identifies

\[
\text{arity }3\longleftrightarrow \rho=\frac78,
\qquad
\text{arity }2\longleftrightarrow \rho=\frac34.
\]

Thus the conditional endpoint can be written directly as

\[
\Theta_{7/8}
+
\operatorname{FixedAmplitude}(C_3,7/8)
+
\operatorname{FixedAmplitude}(C_2,3/4)
\Longrightarrow
\mathrm{RH}.
\]

Both amplitude criteria remain explicit hypotheses.  The endpoint is not an
unconditional theorem.

## 7. Vacuity boundary

The amplitude inequality is a genuine lower-bound demand only when

\[
|\theta(v)-v|+1-E>0.
\]

If the admitted error already satisfies

\[
|\theta(v)-v|+1\le E,
\]

then the left side of `AmpReq` is nonpositive.  For `C>=0`, the right side is
nonnegative, so the inequality holds without requiring any positive amplitude.

This is formalized as a hostile control.  One may not infer an amplitude lower
bound merely from the amplitude-criterion syntax; positivity of the remaining
target must be established separately wherever such an inference is used.

## 8. Remaining analytic problem

At `rho=7/8`, the envelope exponent is

\[
Q(7/8)+\eta/2=\frac34+\frac\eta2.
\]

At `rho=3/4`, it is

\[
Q(3/4)+\eta/2=\frac12+\frac\eta2.
\]

The unresolved task is to prove, with fixed nonnegative budgets `C_3` and
`C_2`, the respective stagewise inequalities

\[
2^j
\left(
|\theta(v)-v|+1-O((2^j)^{3/4+\eta/2})
\right)
\le C_3 A_{2^j}^2,
\]

and

\[
2^j
\left(
|\theta(v)-v|+1-O((2^j)^{1/2+\eta/2})
\right)
\le C_2 A_{2^j}^2.
\]

These are schematic descriptions of the formal predicates, not proved
asymptotic estimates.

## 9. Explicit boundaries

This packet does not establish any of the following implications:

```text
amplitude requirement definition -> amplitude estimate
capacity/amplitude equivalence -> 7/8 criterion
capacity/amplitude equivalence -> 3/4 criterion
nonnegative error envelope -> positive target-after-error
nonzero pinned amplitude -> sufficient pinned amplitude size
constant analytic optimizer -> arithmetic coefficient source law
clause arity -> pinned amplitude lower bound
MAX-3SAT hardness -> theta or prime estimate
conditional amplitude endpoint -> unconditional RH
```

No explicit formula, prime number theorem remainder, lower bound for `A_X`,
coefficient source law, threshold criterion, or unconditional Riemann
Hypothesis result is supplied.

## 10. Source inventory

```text
GRWTSK/NumberTheory/Zeta/Riemann/
  PinnedPrimeWeightAmplitudeEnvelope.lean

GRWTSK/NumberTheory/Zeta/Riemann/
  ClauseIndexedPinnedPrimeWeightAmplitude.lean

GRWTSK/NumberTheory/Zeta/Riemann/Checks/
  PinnedPrimeWeightAmplitudeEnvelopeControls.lean

verification/
  rh-pinned-prime-weight-amplitude-envelope-v0.1.toml
```

The files are additive and are not imported by a public aggregate module in
this increment.
