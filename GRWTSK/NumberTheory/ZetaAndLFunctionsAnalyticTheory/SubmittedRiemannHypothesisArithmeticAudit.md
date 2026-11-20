# Deeper arithmetic audit of the submitted RH route

grwtsk contributors

Source: Deicyde/riemann-hypothesis, revision **a172c464fd4bcfc4f53e394dcba45d742b1409a6**. All links below are pinned to that revision.

This is a bounded source-level audit. The inspected chain contains concrete constructions and estimates, and no demonstrated mathematical defect was found in those inspected bodies. This does not establish the correctness of all imported results. External compilation, complete proof-object replay, and a transitive axiom audit were **NOT_RUN in this audit**. The external endpoint has not been admitted to the local RH/Dirichlet-GRH routes.

Before publication, external revision `976eeac58f2c5fdf94d935bd12e5d9cdada93726`
was also inspected. Its intervening changes concern verification metadata
and CI, without changes to the submitted Lean proofs. Its
[verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/976eeac58f2c5fdf94d935bd12e5d9cdada93726/verification/NOTES.md#results)
still report the build in progress. The mathematical audit pin above is retained.

The next continuation inspected revision
`1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba`. Its additional changes clarify
the export sandbox and which clean files supply the judge configuration;
they do not change submitted Lean proofs or report a completed result.
The [current pinned verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba/verification/NOTES.md#results)
still record the build in progress. The independently reconstructed local
arithmetic components below have their own narrower source-bound checks.

## Finite count, integer witness, and valuation sum

### 1. Polynomially many automorphic systems

In [TCardK.lean][count], UpperTheory.V.Af.card_k_of_printed_results combines two bounds:

\[
\dim\Xi\le c_1(H+1)^{A_1},\qquad
\operatorname{cohDim}(K(3M),\Xi)\le c_2M^{A_2}\dim\Xi.
\]

The cohomology and Borel-injection fields of its explicit Hypotheses′ input yield

\[
\#S\le c_1c_2[M(H+1)]^{A_1+A_2}.
\]

The second bound is supplied by UpperTheory.V.Af.cohBoundFree in [CohBoundFree.lean][cohomology]. Its body uses a finite double-coset decomposition, bounded arithmetic-group cohomology, and the congruence-index bound

\[
[K(3):K(3M)]\le(3M)^{[F:\mathbf Q]n^2}.
\]

These arithmetic and cohomological suppliers have not been independently replayed.

### 2. The finite carrier contains the actual systems

The declarations countK_alt and countQ_alt in [FrobeniusTraceCountBoundOfCmEigensystemCount.lean][systems] construct a finite image of the actual Satake-system map on SigK. The carrier installed by exists_eigData is the image of that map; this construction does not use the empty Inhabited default for EigData.

[WinDefs.lean][tracedata] defines TrData q e with a finite trace-class family S satisfying

\[
|t_s|\le\sqrt q+2,\qquad q^et_s\text{ integral over }\mathbf Z,
\]

and stability of the indexed family under complex field automorphisms. Its classifier records the actual Frobenius trace and injectivity up to representation isomorphism. Purity, integrality, Galois conjugacy, level compatibility, and Frobenius classification enter explicitly as suppliers.

### 3. Trace separation and a nonzero integer

In [FrobeniusTraceCountBoundOfRatEigensystemCount.lean][product], eisenstein_trace_difference_log_bound assumes q≥7, e≥1, a root of unity z, |t|≤sqrt(q)+2, and integrality of q^e t. For

\[
E(q,e,z)=q^{-e}z+1+q^ez^{-1},\qquad Q=q^e,
\]

it proves

\[
t\ne E(q,e,z),\quad Q(t-E(q,e,z))\text{ integral},\quad
\log|Q(t-E(q,e,z))|\le2e\log q+1.
\]

The lower bound |E|≥Q−1−Q^{-1}>sqrt(q)+2 separates the trace. Integrality follows from

\[
Q(t-E)=Qt-z-Q-Q^2z^{-1}.
\]

The upper triangle bound is |Q(t−E)|≤2Q²; taking logarithms and using log 2≤1 gives the estimate. The local [trace-separation reconstruction](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.md) now proves the exact three conclusions, and the stronger quantitative lower bound |Q(t−E)|≥5/2, directly from the root Mathlib. Its separate analytic argument uses sqrt(q)≤q/2, with all original parameters retained.

The same file's frobenius_trace_norm_nonzero_log_bound constructs

\[
NN=\prod_{o\in O}\prod_{s\in S}q^e(t_s-E(q,e,z_o)).
\]

Its integrality and invariance under every complex automorphism make it an integer, through UpperTheory.exists_int_eq_prod_of_galois_permuted_integral in [ExistsIntEqProdOfGaloisPermutedIntegral.lean][integer]. Every factor is nonzero, and

\[
\log|NN|\le |O|\,|S|\,(2e\log q+1).
\]

The local [integer-product descent](../AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.md)
now proves this actual integer existence from integral factors permuted
by **every abstract complex field automorphism**, preserving indexed
multiplicities. Its transcendence-basis extension and algebraic fixed-field
argument derives rationality before integral closure gives the integer.
The [trace-specific assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md)
applies that result to the literal product above. It has not yet supplied
the classifier and local-norm comparison in the next paragraph.

For a prime ℓ not dividing q, each integral factor has ℓ-adic norm at most one. Deleting factors therefore increases the product norm. The classifier's injectivity prevents repeated use of one trace class within an orbit component. Thus

\[
|NN|_\ell\le
\prod_o\prod_{\rho\in X_o}
|\operatorname{tr}\rho(\sigma^{-1})-E_o|_\ell.
\]

The q^e factors disappear only under the explicit hypothesis ℓ∤q.

### 4. Uniformity of the integer budget

In [KeepNumU.lean][number], UpperTheory.GalN.V.Win.N.numberU3U_of_adm2A_imp_adm2B and numberU3U_of_prints combine rank-three CM and rank-two rational trace families. For imaginary quadratic K, d=|disc K| and q=Nw=p^h with 1≤h≤2, they obtain

\[
\log|NN|\le
5(c_1+c_2d^{A_2})\,|O|\,
[N(e+1)]^{A_1+A_2+1}\log p.
\]

The constants are fixed before e,N,p vary.

### 5. The substantive deformation input remains explicit

In [FPropGKU.lean][valuation], UpperTheory.V.Z.J.propGK_of_numberU3U_of_oneCharU uses OneCharU_s to supply

\[
V_n(\psi)\le
2\sum_{\rho\in X_\psi}
v_\ell(\operatorname{tr}\rho(\sigma^{-1})-E_\psi).
\]

Taking logarithms of the integer-product inequality gives

\[
\sum_{\psi\in\operatorname{orb}(H)}V_n(\psi)\le2v_\ell(NN).
\]

This is the PropGK inequality. OneCharU_s contains genuine deformation, Kato, and automorphy content; the finite-product argument does not establish that input.

UpperTheory.V.U3.corGK in [CorGSumLog.lean][sum] uses two distinct auxiliary primes, allowing each ℓ to use at least one witness, and the elementary estimate

\[
\sum_{\ell\in L}v_\ell(n)\log\ell\le\log|n|\qquad(n\in\mathbf Z\setminus\{0\}).
\]

UpperTheory.V.U3.countI in [CountI.lean][counti] groups characters by kernel and uses

\[
\sum_H\varphi([G:H])\le|G|\le N.
\]

It absorbs the fixed coefficient in
2c₅(log r₁+log r₂)N[N(e+1)]^A into (Nt)^(k+1+A).
The auxiliary primes and k are selected from the fixed character before the variable host, e, and t.

The local [prime-logarithm budget](../AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.md)
now reconstructs the exact finite-prime inequality through the full prime
factorization of |n|. It also proves the two-distinct-exception deduction
once the corresponding pointwise valuation bounds are supplied. The
trace-witness assembly chooses one nonzero integer before quantifying
over every finite prime set. This does not prove `OneCharU_s` or its
deformation-length estimate.

## From count bounds to the VWin budget

[WindowBoundOfLiteratureLevel.lean][countassembly], declaration vwin_of_hypotheses_H_E_alt, supplies CountI, CountII, CountIII and CountV from the literature/automorphy package and LemmaK. [HVCore.lean][hvasm], declaration Core.of_four_alt, also supplies CountZ, ThmBab and ThmBcFree, then invokes the count assembly in [JointWinOfCounts.lean][joint]. CountI alone is insufficient for this step.

The precise JointWin, ThmBc and admitted predicates are in [PrimeSetBoundDataOfPrimitiveChar.lean][inputs]. The consumer in [AdmissibleOfPageN.lean][window] is

- UpperTheory.V.vwinAt_of_joint: 1≤Ct, JointWin Ct and ThmBc Ct imply VWinAt ψ Ct;
- UpperTheory.V.vwin_of_joint: the specialization Ct=401.

The consumer sets t(x)=floor(x^Ct), combines two-primary, plus and minus bounds, and uses u=condF(E)t(x). The eventual conductor estimate [log_conductor_mul_height_le_of_pageN][conductor] supplies u≥1 and log u≤2x^(eps/4).

It then applies UpperTheory.V.error_terms_le_sqrt_exp_rpow in [ErrorTermsLeSqrtExpRpow.lean][numerical] to the complete retained error:

\[
e^{x^{4\varepsilon/5}}\log2+
Ke^{8x^{\varepsilon/4}}+
u^C+Ce^{x^{4\varepsilon/5}}
\le\sqrt{e^{x^\varepsilon}}.
\]

K,C are arbitrary fixed reals; eps>0. An explicit sufficient cutoff is max(1,T^(5/eps)), with

\[
N_0=\log2+|C|+|K|+1,\quad
D=9+2|C|,\quad T=2(D+\log N_0+1).
\]

For b=x^(4eps/5), s=x^(eps/5), the left side is at most N₀ exp(Db), while b≥1, s≥T and x^eps=bs imply log N₀+Db≤bs/2. No polynomial term or fixed coefficient is dropped.

The output [VWin][vwin] bounds the finite shaLen sums for **1≤e<floor(x^401)** by sqrt(exp(x^eps)), on complete intervals [Y,Y²] with X^(1/J)≤Y and Y²≤X, for the specified prime pairs and character fields. The parameter eps is in (0,1/52). This square root is not a statement about choosing sqrt(X) theta lifts.

## Independent local continuations

[PowerExponentialBudget.lean](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.lean)
now proves the same numerical absorption statement directly from Mathlib,
using separate term budgets and eventual power growth. Its
[source record](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.md)
retains the quantifier order and actual verification scope. This local
reconstruction does not substitute the declaration into the external
build or verify the arithmetic suppliers listed above.

The subsequent finite arithmetic continuation adds four checked modules:

| Local component | Established source return |
|---|---|
| [Trace separation](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.md) | The exact scaled difference is nonzero and integral, with lower norm 5/2 and logarithmic bound 2e log q+1. |
| [Integral Galois product](../AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.md) | The literal finite product is an actual integer, with nonvanishing and complete indexed logarithmic cost. |
| [Prime budget](../AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.md) | Finite prime valuation sums are bounded by log|n|; two distinct auxiliary exceptions are covered under the supplied pointwise estimates. |
| [Trace-witness assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md) | One nonzero integer, equal to the full trace product, works for every finite prime set. |

All 22 new theorem bodies compiled with `--trust=0` and warnings treated
as errors. All 22 transitive axiom queries reported only `propext`,
`Classical.choice`, and `Quot.sound`. Exact-target and hostile-control
audits passed; the component records distinguish their trust settings
and retain earlier failed development attempts. Fresh full-dependency
replay and independent kernel implementations are `NOT_RUN`. These are
local reconstruction results, not a completed external submission check.

The companion [route walkthrough](SubmittedRiemannHypothesisRoute.md)
explains the one-sided Landau mechanism and the exact local consumers.
Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

## Remaining scope

The numerical absorption and integer-product arguments do not establish the underlying eigensystem count, OneCharU_s, the other count cases, LemmaK, ThmBab, or ThmBc. Nor does their source-level assembly establish the theta/Galois suppliers of the literature package or the full ChebyshevInequalityAtWindowScale construction.

The meaningful remaining verification is the actual source-bound proof of those inputs and their integration, with exact target comparison and transitive axiom/replay evidence. This record identifies inspected arguments and their consumers; it does not promote the external RH/Dirichlet-GRH endpoint to an accepted theorem.

The next compact arithmetic target is the private `vl_bound` in
[FPropGKU.lean][valuation]: a norm-product inequality becomes a sum of
valuations under explicit nonzero and prime hypotheses. The injective
class-map/local-norm comparison and the substantive `OneCharU_s` supplier
are still needed before applying the checked prime budget to deformation
lengths.

[count]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/TCardK.lean
[cohomology]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/AutomorphicForms/TemperedLocalComponents/CohBoundFree.lean
[systems]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FrobeniusTraceCountBoundOfCmEigensystemCount.lean
[tracedata]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/WinDefs.lean
[product]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[integer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/BuildingsResidueChars/ExistsIntEqProdOfGaloisPermutedIntegral.lean
[number]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/KeepNumU.lean
[valuation]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FPropGKU.lean
[sum]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/CorGSumLog.lean
[counti]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/CountI.lean
[countassembly]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/WindowBoundOfLiteratureLevel.lean
[hvasm]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/HVCore.lean
[joint]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/JointWinOfCounts.lean
[numerical]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/ErrorTermsLeSqrtExpRpow.lean
[conductor]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/LogConductorMulHeightLeOfPageN.lean
[window]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean
[vwin]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean
[inputs]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/PrimeSetBoundDataOfPrimitiveChar.lean
