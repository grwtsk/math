# Provenance: `GRWTSK.ThetaMultiplicityCost.growthSizeBound`

## Local result and consumer

The local theorem independently reconstructs the scalar `GrowthSizeBound`
contract. The companion declaration
`GRWTSK.ThetaMultiplicityCost.growth_le_twentySix_rpow` exposes the intermediate
bound before the constant 26 is absorbed. The consumer is the scalar final
stage in the announced `ChainCore` argument. Neither theorem constructs
arithmetic data or proves a statement about the zeta function.

Local authorship: **grwtsk contributors**. This is an independent proof in
Mathlib of an attributed external contract, not a claim to originate the
contract or its proposed application.

## External source

- Public mathematical author: **Levent Alpöge**. The announcement acknowledges
  work with Claude; the mirror is maintained by **Deicyde**.
- Announcement: <https://alpo.ge/remark.pdf>.
- Read-only mirror: <https://github.com/Deicyde/riemann-hypothesis>.
- Pinned mirror commit: `a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
- Contract: `src/Formalism/SizeWindowBrackets/GrowthBoundGivesRiemannHypothesis.lean`,
  namespace `Formalism.LFunctionChainParameters.ThickSetMeanBounds`, definitions
  `SizeWindows` and `GrowthSizeBound` (starting at lines 109 and 119).
- Source-contract file SHA-256:
  `8143a96da8be39cf426ef142bccbff94bac7706e5bd8e97719a8feebf3272309`.
- The external proposed proof was inspected at
  `src/Formalism/SizeWindowBrackets/ChainSlopeWindows/LipschitzWeightAndMinimum.lean`,
  declaration `proposition_size_bound`. File SHA-256:
  `90e749885560a742ca12305e0f028da32a95ef10bb42580986306387be48894d`.
  It is not imported, its proof text is not copied, and no acceptance claim for
  its native Lean 4.33.1 environment is made here.

## Preserved statement and representation

The exact source conjunction is retained in `SizeWindows`: real parameters
`C, ε, x, b, k, aE, Err`; natural parameters `n, nT, nT2, m`; all density,
rank, count, error, and constant-absorption inequalities. The theorem also
retains the separate leading-term inequality and arbitrary real `Gx`.
There are no universe parameters, implicit mathematical hypotheses, or
typeclass hypotheses on the public contract. The only representation change
is the namespace. The intermediate proof introduces abbreviations for real
powers and positive factors; it does not identify the two densities or discard
an error term.

The reconstruction first proves an elementary ordered-field estimate for the
four expanded error terms. Put

\[
 r=x^{\varepsilon/8},\quad v=x^\varepsilon,\quad
 w=x^{1/2-\varepsilon},\quad
 Y=x^{1/2+13\varepsilon/8},\quad P=x^{C\varepsilon},\quad
 Q=n_T m b,\quad \delta=n_{T2}/n.
\]

The windows give `n ≤ 2*nT*r`, `m*r*v ≤ Y`, and `r*w*v² ≤ Y`.
After expanding the error, its four pieces are at most `2YQ`, `2YQ`,
`4YQ`, and `2YQ`. The last estimate uses both `nT2 ≤ n` and the upper
bound on `k`; it is not obtained by dropping that contribution. Hence
`Err ≤ 10PYQ`.

More explicitly, put `X = x^(1/2+ε)` and divide the displayed error core by
the strictly positive `Q`. Its four normalized terms satisfy

\[
\begin{aligned}
\frac{a_E}{mb}
  &\le\frac{2x}{m}\le2X\le2Y,\\
\frac{a_E m}{bk}
  &\le\frac{2xm}{k}\le2\le2Y,\\
\frac{2n m x^\varepsilon}{n_T}
  &\le4m x^{9\varepsilon/8}\le4Y,\\
\frac{n_{T2}k x^{2\varepsilon}}{n^2n_T}
  &\le\frac{n x^{1/2+\varepsilon}}{n_T}
   \le2x^{1/2+9\varepsilon/8}\le2Y.
\end{aligned}
\]

The first line uses the lower lift-count bound; the second the lower rank
bound. The third uses the upper lift-count bound and first density bound.
The fourth uses the upper rank bound, `nT2 ≤ n`, and the first density bound.
Thus the square-root scale survives the scalar costs precisely under the
windows stated in the contract. This is also why merely supplying a
fixed-lift theorem would not close the arithmetic realization obligation.

Since `Q > 0`, the leading-term inequality gives
`δ (Gx - 4*x^(1/2+ε)) ≤ 22PY`, using `2/x ≤ 1 ≤ PY`.
The lower density bound gives `1 ≤ vδ`. A sign split handles the possibly
negative gap and gives `Gx - 4*x^(1/2+ε) ≤ 22PYv`. Finally,
`PYv = x^(1/2+(C+21/8)ε)` and `x^(1/2+ε) ≤ PYv`, so

\[
 Gx\le26x^{1/2+(C+21/8)\varepsilon}
 \le x^{1/2+(C+3)\varepsilon}.
\]

Boundary cases were reviewed: `ε` need only be positive, with no upper bound;
`x ≥ 3` makes all real powers and denominator factors positive; the lower
windows force `nT > 0`, `m > 0`, `k > 0`, and `nT2/n > 0`. There is no assumed
nonnegativity of `Err` or `Gx`, and the sign split is needed for that reason.

## Dependencies and remaining obligation

The local proof imports only Mathlib real powers and standard tactics. It
imports no theorem, definition, or artifact from the external formalization,
and no local RH declaration. The external native toolchain and dependencies
are kept separate from the local Lean 4.34.1 / Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` environment.

The unresolved analytic/arithmetic bridge is to construct, for the actual
observable (`G_L` for the main weighted character-family assembly, or `Gz`
for the distinct zeta-only endpoint), objects satisfying every window and the
leading-term inequality, uniformly in the required growing lift-count range,
with a loss exponent `C` fixed outside the epsilon quantifier. The endpoint
must retain its own quantifiers: the main assembly uses arbitrarily late
complete power windows; the inspected zeta-only endpoint uses an eventual
bound at every sufficiently large argument. This scalar proof does not
establish either bridge, the automorphic correspondence, a Weil source
identity, or RH.

The scalar variable `Gx` is arbitrary. This result does not identify it with
`Gz` or with the weighted character-family observable used in the main
external assembly. The family-bound distinction is explained in the maintained
[submitted-route review](../SubmittedRiemannHypothesisRoute.md). A bound for
one observable cannot be silently substituted for a bound for the other.

## Verification

- Lean 4.34.1 elaboration and kernel checking: **PASSED** (exit 0, no warnings).
  Source SHA-256:
  `3d5e4008cdf4becc4d3528eb748ee634abe974951a3b8efcf5cb727c010be9bc`.
  The source was unchanged during compilation. Operational logs and the olean
  digest are outside this mathematical source tree.
- Full theorem type / foundational axiom audit: **PASSED**. A separately
  restated external window/implication contract accepted the candidate proof.
  Both public theorems and that acceptance theorem have only `propext`,
  `Classical.choice`, and `Quot.sound` in their transitive axiom sets. No
  `sorryAx` or additional mathematical axiom occurs.
- Full-import fresh Lean-kernel replay: **CANCELLED**, to avoid replaying
  unrelated imported constants. It was superseded by the successful
  parent-owned replay of the actual transitive dependency closure.
- Fresh replay of actual dependencies: **PASSED**. The parent verifier
  replayed the combined 60,469-declaration closure for five partial results
  into an empty Lean kernel environment, then inserted the actual proof
  expression at the independently specified `ProtectedTargets.ThetaGrowthBound`
  type. The scalar candidate's own audited closure contained 16,538
  declarations. The process exited 0 in 202.7003 seconds, and its bound source
  and artifact files were unchanged. This uses the same Lean kernel, not a
  separately implemented checker.
- Additional implementation checker: **PASSED**. The native Lean4Lean
  executable replayed the same 60,469 declarations and admitted the five
  proof expressions at the independent target types, including this exact
  scalar contract. Exit 0 in 554.4178 seconds; all 54 bound files were
  unchanged. The 18-module checker closure at revision
  `67f63b0c818920dfaed2ad07ccff187a6a8fe1e3` compiled unchanged with Lean
  4.34.1. The earlier VM timeout and initial native link failure are retained
  separately. Lean4Lean derives from Lean's kernel and shares the
  loader/runtime; this is an additional implementation check, not an
  independently designed foundation or a proof of the checker's metatheory.
- Independent source comparison: **PASSED** for the parent verifier's
  `ProtectedTargets.ThetaGrowthBound`, which repeats the external contract
  without importing either local candidate definition. All 16 conjuncts,
  the natural/real parameter sorts, the leading inequality, and conclusion
  agree with the pinned external specification.
- Final parent/verifier acceptance of the independently fixed contract:
  **PASSED**, under the declaration
  `VerifiedPartial.GRWTSK.ThetaMultiplicityCost.growthSizeBound`.
  Operational evidence is in the parent verifier's `admission.json` and
  `admission.stdout`, outside this mathematical source tree. Its recorded
  result is `VERIFIED_PARTIAL_RESULT`, with `rh_proved = false`.

Only completed checks may be promoted to passed status. Publication does not
discharge the remaining arithmetic and analytic obligations.
