# Quantitative separation of the Eisenstein trace

Local attribution: grwtsk contributors.

Maintained source: [EisensteinTraceSeparation.lean](EisensteinTraceSeparation.lean).
Namespace: `GRWTSK.NumberTheory.EisensteinTraceSeparation`.

## Exact object and consumer

For natural numbers `q,e`, put `Q=q^e` and

\[
E(q,e,z)=Q^{-1}z+1+Qz^{-1}.
\]

This is the actual three-term expression `eis3` in the submitted source's
[CongruenceNumberRankThree.lean][definition], not an unspecified comparison
value. The declaration `eisenstein_trace_difference_log_bound` in
[FrobeniusTraceCountBoundOfRatEigensystemCount.lean][external] assumes
`q≥7`, `e≥1`, `k>0`, `z^k=1`, `‖t‖≤sqrt(q)+2`, and integrality of `Qt`
over the integers. Its three conclusions are

\[
t\ne E(q,e,z),\qquad Q(t-E(q,e,z))\text{ integral over }\mathbf Z,
\qquad \log|Q(t-E(q,e,z))|\le2e\log q+1.
\]

The local theorem with the same suffix proves exactly these conclusions
with all hypotheses retained. Its norm estimate is stronger:

\[
\boxed{\frac52\le|Q(t-E(q,e,z))|\le2Q^2.}
\]

The concrete local consumer is
[EisensteinTraceIntegerWitness.lean](EisensteinTraceIntegerWitness.lean),
which applies this bound to every member of the supplied finite trace and
root families and constructs their actual nonzero integer product. The
external consumer is `frobenius_trace_norm_nonzero_log_bound` in the same
pinned source file. Constructing the automorphic trace family, its
purity/integrality/conjugacy properties, and its classification remains
outside this elementary theorem.

## Complete argument

The analytic argument only needs `‖z‖=1`. More generally let `a` be
complex, set `r=‖a‖≥7`, and suppose `‖t‖≤r/2+2`. Write
`E=a⁻¹z+1+az⁻¹`. The triangle inequality applied after isolating the
large term `az⁻¹` gives

\[
r\le |t-E|+|t|+r^{-1}+1.
\]

Since `r⁻¹≤1/7`,

\[
|t-E|\ge r/2-3-1/7\ge5/14.
\]

Multiplying by `r≥7` gives the lower bound `|a(t-E)|≥5/2`.
Clearing the inverse scale gives the exact algebraic identity

\[
a(t-E)=at-z-a-a^2z^{-1}.
\]

Consequently

\[
|a(t-E)|\le r|t|+1+r+r^2
\le\tfrac32r^2+3r+1\le2r^2.
\]

For the last step, `r≥7` implies `r²−6r−2≥0`; for example
`r²−6r−2=(r−7)(r+1)+5`.

Now specialize `a=q^e`. The assumptions give `Q≥q≥7` and
`sqrt(q)≤q/2≤Q/2`, so the general trace bound applies. The positive
lower bound justifies taking the logarithm away from zero. The upper
bound yields

\[
\log|Q(t-E)|\le\log2+2\log(q^e)\le1+2e\log q.
\]

For integrality, `z^k=1` with `k>0` makes both `z` and `z⁻¹` integral:
each has a positive power equal to one. The integer `Q`, the integral
trace `Qt`, and the identity

\[
Q(t-E)=Qt-z-Q-Q^2z^{-1}
\]

then prove integrality by closure under subtraction and multiplication.
This algebraic step does not use the trace norm bound; the analytic step
does not use integrality.

## Comparison and hostile checks

The submitted proof uses `sqrt(q)≤(q+9)/6` and a final exponential
comparison. The local proof uses `sqrt(q)≤q/2`, proves a quantitative
lower bound, and takes logarithms directly. These are different local
derivations of the same elementary leaf, sharing triangle inequalities
and the same integrality argument. They are not independent proofs of RH,
nor is prior-art novelty claimed. No submitted implementation was copied
or imported.

The exact-target audit proved three counterexamples to weakened numerical
hypotheses:

| Change | Counterexample, retaining trace integrality |
|---|---|
| Replace `q≥7` by `q≥5` | `q=5,e=1,k=2,z=−1,t=−21/5` gives `t=E`, `qt=−21`, and `abs(t)≤sqrt(5)+2`. This does not assert that seven is sharp. |
| Drop `e≥1` | `q=7,e=0,k=2,z=−1,t=−1` gives `t=E`. |
| Drop `k>0` | `q=7,e=1,k=0,z=0,t=1` satisfies the vacuous zeroth-power equation but gives `t=E`. |

A separate analytic review also checked the algebraic boundaries.
Without trace integrality, `q=7,e=1,z=1,t=1/14` gives scaled difference
`−113/2`. Norm one alone does not ensure integrality: with
`z=(3+4i)/5`, `q=7,e=1,t=0`, the scaled difference is
`−37+(192/5)i`, whose minimal polynomial over the rationals has constant
coefficient `71089/25`, so it is not an algebraic integer. These last two
algebraic counterexamples were reviewed mathematically, not formalized
in the audit.

## Declaration correspondence

Every suffix below is in `GRWTSK.NumberTheory.EisensteinTraceSeparation`.

| Declaration | Source correspondence and role |
|---|---|
| `eisensteinTrace` | Exact representation of external `eis3`, with reciprocal scale written using inverse. |
| `scaled_difference_identity` | Original algebraic denominator-clearing identity. |
| `scaled_difference_norm_bounds` | Original quantitative argument for any complex scale of norm at least seven. |
| `eisenstein_scaled_difference_norm_bounds` | Specialization to the exact natural-power parameters and trace bound. |
| `eisenstein_trace_difference_log_bound_of_norm_one` | Analytic nonvanishing and logarithmic estimate with only the unit-circle hypothesis. |
| `scaled_difference_isIntegral` | Separate integral-closure argument, retaining positive root order and nonzero base. |
| `eisenstein_trace_difference_log_bound` | Exact counterpart of the pinned external theorem of the same suffix. |

The submitted mathematical source is mirrored by the verification project
at revision `a172c464fd4bcfc4f53e394dcba45d742b1409a6`; the mirror's
maintainer is not attributed as the author of the submission. Local code
is original and MIT licensed; imported Mathlib retains its own authorship
and Apache-2.0 license.

## Exact-source verification

Source base: `grwtsk/math@8acc7048187539cb1bbdfd810472e3150d5d919d`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`d2974c02d9c5ae740842d73d31830f9ef3694ef44af58ae86f6b89c870daaac4`.

- Maintained source compiled with `--trust=0 -DwarningAsError=true`,
  exit `0`, no diagnostics, in 5.213 seconds.
- An imported audit with the same flags passed in 3.514 seconds. It
  checked the independently spelled raw-expression target, printed
  transitive axioms for all six theorems, and proved the three numerical
  counterexamples above. Every axiom list was exactly `propext`,
  `Classical.choice`, and `Quot.sound`.
- Audit source SHA-256:
  `9e3091b45d5e048259e6ff339a68e82f2ef06dae48841bec91847491219df40a`.
- Earlier development compilation failed on elaboration and linter
  issues. The first audit failed on control-code lint diagnostics and
  an unavailable helper name; these attempts were retained, corrected,
  and followed by the exact-source passing checks. No timeout occurred.
- A separate agent reviewed the mathematics and maintained source and
  found no material defect. This review shares the same supplied source
  and is not an independent kernel implementation.

Fresh full-dependency replay, an independently implemented kernel check,
and an external build with this local declaration substituted are
`NOT_RUN`. These checks establish this local leaf at the stated scope,
not the full submitted RH/Dirichlet-GRH endpoint.

Reproduce with the pinned dependencies:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[definition]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/AutomorphicForms/CongruenceNumberRankThree.lean
[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
