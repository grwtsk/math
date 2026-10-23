# Chebyshev psi source rule for the pinned prime-weight recurrence

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`  
Issue: `#830`  
Parent issue: `#822`  
Parent draft PR: `#825`  
Route: `RH-G01`

This packet instantiates the abstract signed-source interface from the parent
with a canonical arithmetic source. It closes the complete higher-prime-power
residual channel and isolates one remaining nonlinear response inequality.

It does not prove that inequality, construct a global zeta explicit formula,
run Lean or Lake, or prove the Riemann Hypothesis.

## 1. Exact arithmetic split

Write

\[
E_\theta(v)=\theta(v)-v,
\qquad
E_\psi(v)=\psi(v)-v.
\]

Then, identically for every real \(v\),

\[
E_\theta(v)
 =E_\psi(v)+\theta(v)-\psi(v).
\]

At stage \(j\), let

\[
X_j=\operatorname{dyadicScale}(j)=2^{j+1}.
\]

The packet defines

\[
\operatorname{response}(j,v)=X_jE_\psi(v)
\]

and

\[
\operatorname{signedResidual}(j,v)=\theta(v)-\psi(v).
\]

Therefore

\[
\boxed{
E_\theta(v)
 =\frac{\operatorname{response}(j,v)}{X_j}
  +\operatorname{signedResidual}(j,v).
}
\]

This equality is proved directly. It is not inferred from the source metadata.
The response does not read `thetaError` into itself: it is the full Chebyshev
`psi` error, while the residual is the exact correction from the prime-power
source back to the prime-only target.

## 2. Pinned source binding

The source record binds:

```text
repository:
  leanprover-community/mathlib4

revision:
  db584cd6d46c92f209a44c0f1c829460d327499d

path:
  Mathlib/NumberTheory/Chebyshev.lean

blob:
  6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a
```

The consumed declarations are:

```text
Chebyshev.psi
Chebyshev.theta
Chebyshev.theta_le_psi
Chebyshev.psi_sub_theta_le_mul_sqrt
```

The local error definitions come from:

```text
GRWTSK/NumberTheory/Zeta/Riemann/
  DyadicPsiAbelReconstruction.lean
  DyadicThetaOctaveSupplier.lean
```

These bindings retain provenance. The exact decomposition and every inequality
used by the packet remain proof-relevant fields or theorem terms.

## 3. The declared next-octave geometry

The parent interface consumes target points in

\[
\operatorname{NextOctave}(j)
 = [X_{j+1},2X_{j+1}].
\]

Since

\[
X_{j+1}=2X_j,
\]

the declared target interval is

\[
[2X_j,4X_j].
\]

The source proves explicitly that every target point satisfies

\[
v\le 4X_j.
\]

No same-octave substitution is made. This distinction matters because the
residual estimate is supplied at a point in the next octave while its envelope
is normalized at the current scale.

## 4. Higher-prime-power residual

Pinned Mathlib gives a constant \(C_{\mathrm{hp}}\) such that

\[
0\le \psi(v)-\theta(v)
 \le C_{\mathrm{hp}}\sqrt v.
\]

Because the signed residual is nonpositive,

\[
\left|\operatorname{signedResidual}(j,v)\right|
 =\psi(v)-\theta(v).
\]

Fix \(\rho\ge 3/4\) and \(\eta>0\), and put

\[
e=Q(\rho)+\frac\eta2,
\qquad
Q(\rho)=2\rho-1.
\]

The threshold condition gives

\[
e\ge \frac12.
\]

For \(Y=X_{j+1}=2X_j\), the proof uses the already formalized threshold
square-root comparison

\[
\sqrt{2Y}\le 2Y^e.
\]

Since \(v\le 2Y\),

\[
\sqrt v
 \le 2Y^e
 =2\,2^eX_j^e.
\]

Let

\[
A=|C_{\mathrm{hp}}|,
\qquad
R=2A\,2^e+1.
\]

As \(X_j\ge1\) and \(e\ge0\), one has \(1\le X_j^e\). Hence

\[
\begin{aligned}
\left|\operatorname{signedResidual}(j,v)\right|+1
&\le 2A\,2^eX_j^e+X_j^e\\
&=R X_j^e.
\end{aligned}
\]

Thus the complete residual, including the additive `1`, satisfies

\[
\boxed{
\left|\operatorname{signedResidual}(j,v)\right|+1
 \le
 R X_j^{Q(\rho)+\eta/2}
}
\]

uniformly for every stage and every declared next-octave point.

This is an unconditional source-level discharge of the entire residual side of
the signed-coupling criterion.

## 5. The two live residual exponents

At the first threshold,

\[
Q\!\left(\frac78\right)=\frac34,
\]

so the residual satisfies

\[
\left|\operatorname{signedResidual}(j,v)\right|+1
 \ll_\eta X_j^{3/4+\eta/2}.
\]

At the second threshold,

\[
Q\!\left(\frac34\right)=\frac12,
\]

so the same immutable source rule satisfies

\[
\left|\operatorname{signedResidual}(j,v)\right|+1
 \ll_\eta X_j^{1/2+\eta/2}.
\]

No second residual theorem is required. The pinned Chebyshev prime-power
correction is already small enough for both transitions.

## 6. Exact remaining nonlinear supplier

The response magnitude is not opaque:

\[
\begin{aligned}
\left|\operatorname{response}(j,v)\right|
 &=\left|X_jE_\psi(v)\right|\\
 &=X_j|E_\psi(v)|.
\end{aligned}
\]

Let

\[
A_{X_j}
 =\sum_{\substack{X_j<p\le2X_j\\p\text{ prime}}}
   \frac{\log p}{p}
   \bigl(|E_\theta(p)|+1\bigr)
\]

be the actual pinned current-octave amplitude.

The remaining source theorem is precisely the existence of one fixed
\(C\ge0\) and one late stage such that

\[
\boxed{
X_j|E_\psi(v)|\le C A_{X_j}^2
}
\]

for every later stage and every next-octave point.

The packet names this proposition

```text
PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget(C)
```

and its existential form

```text
PinnedPrimeWeightPsiQuadraticResponseCapacity.
```

This inequality is not proved here. It is the full nonlinear, cross-scale
arithmetic coupling. A Chebyshev upper bound for `psi`, an exact `psi/theta`
split, or a small higher-prime-power correction cannot supply it by itself.

## 7. Forward transport

For every \(\rho\ge3/4\), the source proves the conditional chain

```text
PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget(C)
  -> PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt(
       pinnedPrimeWeightPsiSourceRule, C, rho)
  -> PinnedPrimeWeightFixedBertrandRatioCriterionAt(C, rho)
  -> QuadraticThetaSourceRecurrenceAt(rho)
  -> QuadraticThetaDescentAt(rho).
```

The first implication combines:

1. the assumed fixed-budget psi response inequality; and
2. the unconditional higher-prime-power residual envelope proved in this
   packet.

The remaining arrows reuse the parent signed-source, ratio, and recurrence
interfaces. No reverse implication is asserted.

The existential response-capacity proposition therefore supplies both live
recurrence obligations:

```text
QuadraticThetaSourceRecurrenceAt(7/8)
QuadraticThetaSourceRecurrenceAt(3/4)
```

and the complete interval-valued descent program

```text
QuadraticThetaDescentSevenEighthsToHalf.
```

These are conditional reductions. The response-capacity premise remains open.

## 8. Hostile controls

### 8.1 Vanishing amplitude

Suppose

\[
A_{X_j}=0.
\]

Then a claimed response inequality becomes

\[
|X_jE_\psi(v)|\le0.
\]

Since \(X_j>0\), this forces

\[
E_\psi(v)=0.
\]

Thus totalized real division or a zero denominator cannot manufacture a source
certificate.

### 8.2 Target-fitted replacement

The canonical psi response equals the hostile target-fitted response

\[
X_jE_\theta(v)
\]

if and only if

\[
\psi(v)=\theta(v).
\]

Therefore replacing `psiError` by `thetaError` erases exactly the
higher-prime-power channel that makes this an independent source split. Such a
replacement recreates the target-fitted fixture rejected by the parent packet.

### 8.3 Residual control is not response control

The estimate

\[
|\theta(v)-\psi(v)|=O(\sqrt v)
\]

controls only the difference between two arithmetic channels. It does not
bound the full value of \(E_\psi(v)\) by a square of a current-octave prime
feature.

### 8.4 Metadata is not mathematics

The pinned repository, revision, path, blob, and declaration names make the
source auditable. They do not prove either the exact split or the response
capacity. Both remain represented by theorem terms or explicit open
propositions.

## 9. Rejected promotions

This packet rejects:

```text
exact psi/theta decomposition
  -> quadratic psi response capacity

O(sqrt(v)) higher-prime-power residual
  -> nonlinear cross-scale contraction

global Chebyshev upper bounds
  -> pinned-amplitude lower coupling

psi source metadata
  -> proof of the exact identity

psi response replaced by X*thetaError
  -> source-faithful construction

zero amplitude plus totalized division
  -> finite response certificate

source-specific conditional endpoint
  -> unconditional Riemann Hypothesis.
```

## 10. Remaining arithmetic work

A subsequent source packet must prove the fixed-budget estimate

\[
X_j|\psi(v)-v|\le C A_{X_j}^2
\]

from an independent arithmetic mechanism. Depending on the selected mechanism,
that proof may require explicit treatment of:

```text
prime powers;
endpoint conventions;
smoothing or unsmoothing;
normalization by X_j;
contour or transform truncation;
pole and gamma terms;
trivial and nontrivial zero channels;
summation order;
tails and uniformity in the target point.
```

The present packet does not choose among an explicit-formula, detector,
safe-shift, or equivalent construction.

## 11. Files

```text
GRWTSK/NumberTheory/Zeta/Riemann/
  PinnedPrimeWeightPsiSourceRule.lean

GRWTSK/NumberTheory/Zeta/Riemann/Checks/
  PinnedPrimeWeightPsiSourceRuleControls.lean

docs/mathematics/NumberTheory/Zeta/Riemann/
  pinned-prime-weight-psi-source-rule.md

verification/
  rh-pinned-prime-weight-psi-source-rule-v0.1.toml
```

No public aggregate import, existing source file, dependency revision, or
repository-wide theorem claim is changed.

## 12. Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CHEBYSHEV_PSI_SIGNED_RULE_DEFINED
HIGHER_PRIME_POWER_RESIDUAL_DISCHARGED
SEVEN_EIGHTHS_RESIDUAL_BOUND_DEFINED
THREE_QUARTERS_RESIDUAL_BOUND_DEFINED
PSI_RESPONSE_CAPACITY_INTERFACE_DEFINED
PSI_CAPACITY_TO_RECURRENCE_DEFINED
PSI_CAPACITY_TO_DESCENT_DEFINED
QUADRATIC_PSI_RESPONSE_CAPACITY_OPEN
NO_GLOBAL_EXPLICIT_FORMULA_CLAIM
NO_COMPLEXITY_TO_ZETA_TRANSFER
NO_RH_CLAIM
```

No Lean/Lake execution, kernel acceptance, nonlinear psi-response theorem,
global explicit formula, merge, or unconditional RH result is represented by
this document.
