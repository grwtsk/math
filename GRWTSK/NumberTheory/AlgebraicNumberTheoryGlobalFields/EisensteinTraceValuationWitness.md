# One trace-product integer controls all classified local valuations

Local attribution: grwtsk contributors.

Maintained source: [EisensteinTraceValuationWitness.lean](EisensteinTraceValuationWitness.lean).
Namespace: `GRWTSK.NumberTheory.EisensteinTraceValuationWitness`.

## Exact mathematical return

Retain the finite root and trace families from
[EisensteinTraceIntegerWitness](EisensteinTraceIntegerWitness.md): natural
`q≥7`, `e≥1`, finite index types `O,S`, roots of unity `z o`, traces
`t s : ℂ` with `‖t s‖≤sqrt(q)+2`, integrality of `q^e t s`, and
separate permutations of the two indexed families under every abstract
complex field automorphism. Put

\[
E_o=q^{-e}z_o+1+q^ez_o^{-1},\qquad
B=|O|\,|S|\,(2e\log q+1).
\]

The theorem `exists_int_trace_product_with_local_bounds` chooses

\[
\exists N\in\mathbf Z:\qquad
N=\prod_o\prod_s q^e(t_s-E_o),\quad
N\ne0,\quad \log|N|\le B.
\]

For this **same integer**, every prime `p`, every abstract field
equivalence `ι : PadicAlgCl p ≃+* ℂ`, and every finite selected family
`X o` may be supplied later. The selected local traces `tr o r` must have
class maps `cl o : X o → S`, injective separately for each `o`, with the
exact readout

\[
\operatorname{tr}_{o,r}=\iota^{-1}(t_{\mathrm{cl}_o(r)}).
\]

Define the actual local difference
`δ(o,r)=tr o r−ι⁻¹(E_o)`. Then the theorem proves

\[
\delta_{o,r}\ne0,\qquad
\|N\|_p\le\prod_o\prod_{r\in X_o}\|\delta_{o,r}\|_p,\qquad
\sum_o\sum_{r\in X_o}-\log_p\|\delta_{o,r}\|_p
\le \operatorname{padicValInt}(p,N).
\]

Thus the quantifier order is `∃ N, ... ∀ p, ι, R, X, tr, cl, ...`.
The integer cannot be chosen afresh after seeing a prime or a selection.
Empty families retain their usual products and sums. Repeated values
across different orbit components are allowed; each full orbit product
has its own indexed copy of the class family.

## Complete analytical argument

### 1. Construct the integer before taking a local norm

The preceding trace-witness theorem supplies the literal integer above,
its nonvanishing, and its archimedean logarithmic bound. Its component
proofs establish integrality and nonvanishing of every scaled factor,
then use full complex-automorphism invariance to descend the finite
product to the integers. This continuation uses that proved result; it
does not assume that an arbitrary small integer has the required local
divisibility.

### 2. Integral factors have local norm at most one

Write `f(o,s)=q^e(t_s−E_o)`. The trace-separation module proves that each
`f(o,s)` is integral over `ℤ`. An abstract field equivalence preserves
the monic integral equation, so `ι⁻¹(f(o,s))` is integral over `ℤ` too.

The [integral subproduct theorem](PadicIntegralSubproduct.md) uses the
integer ring of Mathlib's actual p-adic valuation to derive
`‖ι⁻¹(f(o,s))‖≤1`. It then discards the omitted factors, each of whose
norm is in `[0,1]`. Injectivity ensures that a selected class is not
counted more times than it appears in its orbit's full product. This
gives

\[
\|N\|_p
=\left\|\iota^{-1}\left(\prod_o\prod_s f_{o,s}\right)\right\|_p
\le\prod_o\prod_{r\in X_o}
 \|\iota^{-1}(f_{o,\mathrm{cl}_o(r)})\|_p.
\]

The equality on the left uses that field maps fix integer casts. It
does not identify the complex absolute value with the p-adic norm.

### 3. Remove the scale in the required direction

The exact class readout and ring-map identities give

\[
\iota^{-1}(f_{o,\mathrm{cl}_o(r)})=q^e\delta_{o,r}.
\]

Every natural integer has p-adic norm at most one, so
`‖q^e δ‖ₚ≤‖δ‖ₚ`. Multiplying these nonnegative real inequalities gives
the advertised norm bound for the unscaled trace differences.

This finite inequality holds for **every prime**, including primes
dividing `q`. The submitted source uses `p∤q` to replace the scaled norm
by an equal norm. Equality is stronger than needed here. This
strengthening does not remove the separate prime restrictions used by
the actual Frobenius and admissible-representation construction.

### 4. Derive nonvanishing and take logarithms

Because `N≠0`, its p-adic norm is strictly positive. The selected product
is at least that positive number, so each selected factor is nonzero.
This discharges the nonvanishing needed to expand the logarithm of the
finite product.

For a prime `p>1`, logarithm base `p` is increasing on positive inputs.
Negating the logarithm reverses the norm inequality, and

\[
-\log_p\|N\|_p=\operatorname{padicValInt}(p,N).
\]

The [norm-to-valuation theorem](PadicNormValuationBudget.md) therefore
gives exactly the displayed sum of actual trace-difference valuations.
Its real-valued convention sends zero to zero, so nonvanishing must be
established before logarithmic product expansion. No nonnegativity of
the unscaled differences' valuations is assumed.

### 5. Consume an actual observation estimate

The separate theorem `classified_observation_bound` retains a real
`c≥0` and explicit estimates

\[
a_o\le c\sum_{r\in X_o}-\log_p\|\delta_{o,r}\|_p.
\]

Summing over `o` and multiplying the proved valuation budget by `c`
yields `Σ_o a_o≤c·padicValInt(p,N)`. The submitted arithmetic use sets
`c=2` and supplies `a_o` from an actual deformation/Selmer length.
This theorem proves the finite summation step, while retaining the
substantive length-to-trace estimate as a hypothesis.

The [integer prime budget](IntegerPrimeLogBudget.md) then controls every
finite prime sum once the corresponding observation suppliers exist:
multiply by the nonnegative `log p`, sum, and use
`Σ_p log p·padicValInt(p,N)≤log|N|≤B`. Its two-witness version retains
the distinct auxiliary-prime exception coverage needed in the larger
source. The present theorem does not construct those arithmetic
observations or the representation classifiers.

## Declarations and exact source correspondence

All suffixes below are in the namespace given above.

| Declaration | Exact role and retained inputs |
|---|---|
| `norm_int_le_classified_trace_product` | Builds the local norm inequality from the literal integer-product identity, scaled integrality, roots of unity, and per-orbit injective exact class readouts. Only `q≠0` is needed at this stage. |
| `classified_trace_valuation_bound` | Adds `N≠0` and obtains the sum of actual local trace valuations. |
| `classified_observation_bound` | Adds a nonnegative scalar and an explicit per-orbit observation estimate; concludes the finite observation budget. |
| `exists_int_trace_product_with_local_bounds` | Constructs one integer under the original archimedean/Galois hypotheses, before every later prime and valid classification. |

The mathematical source pin is
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The exact comparisons are:

- `UpperTheory.GalN.V.Win.frobenius_trace_norm_nonzero_log_bound` in
  [FrobeniusTraceCountBoundOfRatEigensystemCount.lean][external],
  SHA-256 `f5f12124c715c51e4c7333d198f450ed138ab3f79c3b2f7d2891279f736ff53b`;
- `UpperTheory.adicNorm_prod_le_prod_of_injective_classes` in
  [AdicNormProdLeProdOfInjectiveClasses.lean][subproduct],
  SHA-256 `3b6597409c8a93feb3c63955963d74c274b42dce51fca4c23429ff06f0e84b00`;
- private `vl_bound` and
  `UpperTheory.V.Z.J.propGK_of_numberU3U_of_oneCharU` in
  [FPropGKU.lean][valuation],
  SHA-256 `c3f14dafdc1a3657be28733e7924a8d72f6e72cb7a0e1dcd766860597b56b76a`.

The external `Formalism.ConjugateSelfDual.Qbar p` is definitionally
Mathlib's `PadicAlgCl p`. The local logarithmic valuation is exactly the
source's `−Real.logb p ‖x‖`; the component record pins both definitions.
The local class readout is an explicit finite interface to the actual
external classifier, not a construction of that classifier. The
[arithmetic audit](../ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
follows the visible concrete proof bodies below `OneCharU_s` and records
their unperformed dependency checks.

The implementation is original, MIT licensed, and attributed to
`grwtsk contributors`. It imports only the maintained local mathematical
modules and root Mathlib, with upstream licensing retained. No submitted
Lean implementation is imported. The assembly shares its mathematical
premises with its component proofs; it is not an independent proof of
those components or of RH. A separate agent reviewed the actual local
objects, quantifier order, nonzero conditions, selection multiplicities,
and norm direction, finding no interface defect in the inspected source.

## Hostile comparisons and limits

For an omitted nonintegral factor `1/p`, the full norm is `p>1`, exceeding
the empty selection's product `1`. For a duplicated selected class with
factor `p`, the false comparison would be `1/p≤1/p²`. For `q=p`, `e=1`,
and difference `1`, scale removal is strictly decreasing: `1/p<1`.
These controls justify the unit-ball, injectivity, and inequality
choices. They were formally checked in the component audit.

For `N=0` with one selected factor `p`, the norm premise holds but the
claimed valuation sum would be `1≤0`. With `N=1` and factor `p`, reversing
the norm premise causes the same failure. These were formally checked
in the valuation audit. Merely dropping the separate selected-nonzero
premise is not a counterexample: the other premises imply it.

The larger arithmetic route still must construct finite trace families,
their admissible-representation class maps and readouts, and the actual
deformation/Selmer estimate. The new theorem closes the finite local
comparison and its numerical valuation consumer. It does not supply
`OneCharU_s`, the other count cases, the complete arithmetic windows, or
an RH/Dirichlet-GRH endpoint.

## Exact-source evidence

Source base: `grwtsk/math@d398a7cbc4e86691a1fdf5cf2cacf958e6568786`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`025e810dd3fe2b0c0921a14044642ffc2dda261a458326646578f1c5a7901958`.

- Maintained compilation passed with `--trust=0` and warnings as errors,
  exit `0`, no diagnostics, in 5.759 seconds. It imported the exact
  checked objects documented in the component records.
- The imported exact-target audit passed with the same flags, exit `0`,
  in 4.602 seconds. It spells out both the three-term Eisenstein trace
  and negative log-base norm, and preserves `∃ N, ... ∀ p, ι, X, ...`.
  It also checks the observation consumer with its supplier explicit.
- All four transitive axiom queries returned exactly `propext`,
  `Classical.choice`, and `Quot.sound`.
- Audit SHA-256:
  `d2d4bdb09e913b0947d8f54d8760eef8512f4859f998f34578507f9f3ad68a1d`.
- The first maintained-source attempt failed in 4.641 seconds at the
  final subtype-product conversion because two placeholders left the
  codomain unresolved. Explicit finite-set and real-valued function
  arguments fixed the elaboration error. The mathematical statement
  was unchanged; the failed source hash was
  `c7aa5a3177def0167fe245e8b2c3b1fe2615ebc661bad58e17b417accc7fc7b1`.
  The imported exact-target audit passed on its first attempt. No timeout
  occurred in these assembly checks.

Fresh full-dependency replay, an independently implemented kernel check,
and recompilation of the submitted automorphic consumer with these
local declarations substituted are **NOT_RUN**. Trust-zero source
compilation and transitive axiom reports do not by themselves establish
those stronger evidence categories. No full-submission verdict follows.

With the pinned dependencies and local imports built:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[subproduct]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/BuildingsResidueChars/AdicNormProdLeProdOfInjectiveClasses.lean
[valuation]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FPropGKU.lean
