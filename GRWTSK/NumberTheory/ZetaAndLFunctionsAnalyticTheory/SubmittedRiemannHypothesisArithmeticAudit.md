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

The valuation continuation refreshed external `main` again at
`8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116`. The two intervening commits
change only README wording; the submitted Lean files and verification
notes are unchanged. The [notes at that revision](https://github.com/Deicyde/riemann-hypothesis/blob/8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116/verification/NOTES.md#results)
still report the full build in progress. No completed external verdict
was observed in this refresh.

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
applies that result to the literal product above. The subsequent
[local valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md)
now supplies the local-norm comparison for an explicitly supplied
injective classifier and exact trace readout. The construction of that
classifier from actual admissible representations remains separate.

For a prime ℓ not dividing q, each integral factor has ℓ-adic norm at most one. Deleting factors therefore increases the product norm. The classifier's injectivity prevents repeated use of one trace class within an orbit component. Thus

\[
|NN|_\ell\le
\prod_o\prod_{\rho\in X_o}
|\operatorname{tr}\rho(\sigma^{-1})-E_o|_\ell.
\]

The submitted argument removes the q^e factors by **equality** under the
explicit hypothesis ℓ∤q. The local continuation proves the sufficient
inequality `‖q^eδ‖_ℓ≤‖δ‖_ℓ` for every prime, using `‖q‖_ℓ≤1`. Thus this
finite comparison alone needs no coprimality. The wider Frobenius and
representation construction retains its separate prime restrictions.
An abstract complex/p-adic equivalence transports the monic equations
and product identities, never the complex norm itself.

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

The [norm-to-valuation reconstruction](../AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.md)
now proves the exact private `vl_bound` on Mathlib's actual `PadicAlgCl ℓ`
and the stronger version deriving selected nonvanishing from `NN≠0`
and the norm comparison. It uses precisely
`vl ℓ x=−Real.logb ℓ ‖x‖`, including the totalized value `vl ℓ 0=0`.
Positive norm of the integer forces every selected norm to be positive;
the increasing logarithm and its negation then give the correct
inequality direction. The integrated theorem retains one integer before
every prime, field identification, and selected family. Its observation
consumer proves the finite summation for `c≥0`, with the per-character
length-to-trace bound still explicit.

## Below OneChar: the two length comparisons

This continuation also inspected concrete source bodies below the
`OneCharU_s` interface. This section is an analytical/source review;
external compilation, full dependency replay, and transitive axiom
auditing of these external bodies are **NOT_RUN**.

### What the supplier actually asserts

[NumberU3US.lean][onecharstatement] defines `OneCharU_s` over an actual
algebraic closure, CM number field, prime, coefficient DVR, level,
exponent, character, and `GD` hypotheses. For the actual Eisenstein
trace and a group element, the absence of that trace among the admitted
representations gives a finite admitted family, uniqueness up to
representation isomorphism, finite `Vlen`, and

\[
V_n(\psi)\le2\sum_{\rho\in X}
 v_\ell(\operatorname{tr}\rho(\sigma)-t).
\]

`Vlen` and its coefficient-normalized `Vn` are the arithmetic length
objects in [DirichletPrimeToLPartMulLPowerPart.lean][lengthdefs]. They
are not definitions of the valuation sum on the right.

The body `oneCharU_of_katoTwoW_rig_admI_automorphy` in
[FOneCharU.lean][onecharproof] first reduces to an unramified coefficient
model. It constructs deformation data, a ring, and a model; identifies
the model trace difference with the actual representation trace
difference; proves admissibility; and selects orbit representatives
without duplicated isomorphism classes. Its central comparisons are

\[
\text{arithmetic/Selmer length}
\le \text{model cotangent length}
\le 2\sum\text{trace-difference valuations}.
\]

The lower comparison is `vlen_le` in [VlenLe.lean][vlen]. It writes a
torsion cohomology module as a directed union of uniformizer-power
torsion pieces, uses `sha_inj` and `model_lower`, and passes to module
length. Its cohomological input and `LemmaM'` are substantive premises.

The upper comparison is `model_upper` in [ModelUpper.lean][modelupper].
It uses `LemmaM`, finiteness of the weight-zero algebra, the actual
point/rigidity conditions, and nonvanishing of the trace difference.
After applying the graded cotangent estimate, it chooses orbit
representatives and reindexes. The factor two enters here, before the
elementary negative-logarithm calculation.

### The source passes concrete algebraic proofs

[LinkedUnlE.lean][linked] supplies the actual theorem bodies
`Alg.M.main_holds`, `Alg.M.mprime_holds`, and `Alg.lemmaP` to the OneChar
assembly. At that composition point these are proved source returns,
rather than three unfilled assumptions. This observation does not
replace checking their dependency closure.

| Source return | Inspected mathematical argument |
|---|---|
| `Alg.M.main_holds : LemmaM` in [MainCotSpan.lean][maincot] | Normalize cotangent generators while preserving their span and equations; construct a chart and finite cover; apply the numerical core. |
| `Alg.M.core_holds` in [AlgMemCoef.lean][algcore] | Build the graded algebra comparison; combine `low_holds`, an Euler-characteristic comparison, and `up_holds`; cancel the positive common power of two. |
| `Alg.M.mprime_holds : LemmaM'` in [Mprime.lean][mprime] | Derivations vanish on the saturated square, factor through the cotangent quotient, and give an injective map to a finite-length Hom module. |
| `Alg.lemmaP : LemmaP` in [LemmaP.lean][lemmap] | Construct the universal framed deformation presentation using grading and tangent/obstruction data. Only the return and initial construction were reviewed here. |

The hypotheses of `LemmaM` in [OrbitVanishingLocal.lean][orbitlocal]
include a complete DVR, an algebraically closed valued coefficient
field with its normalization, the graded algebra and base point,
equations, and conditions `M1` through `M5`. The theorem returns a finite
cover, finite cotangent length, and the upper valuation estimate.
`LemmaM'` is a separate lower module-length estimate. The universal
presentation predicate `LemmaP` is defined in
[FramedTwoCoboundaries.lean][framed]. These definitions retain actual
algebraic objects and constraints.

In the numerical core, the lower side carries `2^(r+r′)` and the upper
side `2^(r+1+r′)`. The common positive factor cancels, leaving precisely
two. This identifies a concrete source of the constant, without treating
it as an arbitrary loss absorbed by a later logarithm.

The remaining point hypotheses use Kato/Selmer vanishing, the two
rigidity cases, and tangent/cohomology identifications; automorphy and
coefficient compatibility also remain in the OneChar proof. No
circularity was visible in the inspected OneChar, model, and PropGK
bodies. This bounded observation is not a global noncircularity or
verification verdict for all imported results.

### A precise next graded-algebra target

The source `locLen_aPiece_sup_span_sq_le_add` in
[LocLenAPieceSupSpanSqLeAdd.lean][squarelength] proves a useful actual
quotient estimate. Let `A` be a commutative graded algebra over `O`,
`B=A₀`, `σ : B →ₐ[O] K` a map into a field, `J` a homogeneous ideal,
and `t∈A_d`. Write `Lσ` for module length after localization at `ker σ`,
with values in the extended natural numbers. For every weight `w`,

\[
L_\sigma\big((A/(J+(t^2)))_w\big)
\le
L_\sigma\big((A/(J+(t)))_{w-d}\big)
+L_\sigma\big((A/(J+(t)))_w\big).
\]

The proof must construct the actual multiplication-by-`t` map from the
first right-hand piece to the left-hand piece, followed by the quotient
projection to the second right-hand piece. Their image and kernel agree.
For an element of the kernel, write a representative as `j+tc`; taking
its weight-`w` component gives `j_w+t c_(w-d)` because `J` is homogeneous.
That provides the required preimage. The reverse inclusion follows
because the projection kills `t`. Localization preserves this exactness,
and module-length subadditivity gives the inequality. No injectivity of
the first map is asserted or needed.

The shift `w−d` is essential: with `A=k[x]`, `t=x`, `J=0`, `w=1`,
replacing it by `w` would give the false inequality `1≤0`. Lengths must
retain their possible infinite value; truncation to natural numbers
would require additional finiteness. A generic length theorem merely
assuming unspecified exact maps would not finish this source target.

Iterating this square-equation estimate contributes the upper power
`2^(r+1+r′)` used by `up_holds` in [TwoSigned.lean][twosigned]; the lower
bound in [AdmissibleMonoIdeal.lean][low] supplies `2^(r+r′)`. This is a
concrete next source reconstruction inside the deformation argument.
No local Lean proof of this graded quotient target is claimed in the
present continuation.

### Source identities for this deeper inspection

All these files were matched byte for byte to the mathematical pin at
the top of this record. Representative SHA-256 values are:

| Pinned file | SHA-256 |
|---|---|
| [NumberU3US.lean][onecharstatement] | `2700c8f6ef0f5a9d68f120028d2d70454239c0c70a38da46d83001fb7a4a150f` |
| [FOneCharU.lean][onecharproof] | `7ba4909bace94627f5dab4a28180f53c93b7b8be03b2ec1d33fba9cf5708a2d9` |
| [VlenLe.lean][vlen] | `c52a30320988ce20b653bb6bc17d23ed2cd58105982cd5b50bfae048392c6fb7` |
| [ModelUpper.lean][modelupper] | `556e9ebbbf6983e2be65a7d647cad666cb96f3d6c0c7eff5aae62b80a947f880` |
| [LinkedUnlE.lean][linked] | `107b75233150ebd8a27bd37ae350a295996a79c863f3d469a925c0f1f78fd0a7` |
| [AlgMemCoef.lean][algcore] | `82a16f09d05845c3e9f495c2f10c7048abeae9315506c368812e7871aa4b30c6` |
| [LocLenAPieceSupSpanSqLeAdd.lean][squarelength] | `7ce3da392d0b3655fee9bad840eb5d2743672a654b1f2d309948d012daa5fcf5` |

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

The next continuation adds three modules and 25 further theorem bodies:

| Local component | Established source return |
|---|---|
| [Integral p-adic subproducts](../AlgebraicNumberTheoryGlobalFields/PadicIntegralSubproduct.md) | Integral factors lie in the unit ball; a per-orbit injective class selection controls the full product. Scale removal as an inequality works at every prime. |
| [Norm-to-valuation budget](../AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.md) | The actual negative-log norm sum is bounded by `padicValInt` of a nonzero integer; selected nonvanishing follows from the norm premise. |
| [Trace-valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md) | The same literal trace-product integer controls all later primes and valid selected families, while retaining the explicit observation supplier. |

All 25 maintained theorem bodies and the exact-target audits passed
`--trust=0` with warnings as errors. Every transitive axiom report lists
only `propext`, `Classical.choice`, and `Quot.sound`. Formal controls
exercise nonintegral factors, duplicate class selection, scale
strictness, zero integer witnesses, reversed norm comparison,
multiplicativity at zero, and the scalar sign. The adjacent records
retain the actual earlier elaboration/audit failures and exact source
digests. Fresh full-dependency replay, an independent kernel
implementation, and substitution into the external automorphic consumer
are **NOT_RUN**. This evidence concerns the local finite reconstruction.

The companion [route walkthrough](SubmittedRiemannHypothesisRoute.md)
explains the one-sided Landau mechanism and the exact local consumers.
Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

## Remaining scope

The numerical absorption and integer-product arguments do not establish the underlying eigensystem count, OneCharU_s, the other count cases, LemmaK, ThmBab, or ThmBc. Nor does their source-level assembly establish the theta/Galois suppliers of the literature package or the full ChebyshevInequalityAtWindowScale construction.

The meaningful remaining verification is the actual source-bound proof of those inputs and their integration, with exact target comparison and transitive axiom/replay evidence. This record identifies inspected arguments and their consumers; it does not promote the external RH/Dirichlet-GRH endpoint to an accepted theorem.

The private `vl_bound` and injective class-map norm comparison now have
checked local counterparts. Constructing the arithmetic classifier and
proving the substantive `OneCharU_s` supplier remain necessary to apply
the checked integer budget to actual deformation lengths. The next
bounded reconstruction identified above is the actual localized graded
quotient inequality, with its multiplication map, projection, and
homogeneous exactness proof, inside the factor-two upper estimate.

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
[onecharstatement]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/NumberU3US.lean
[lengthdefs]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/DirichletPrimeToLPartMulLPowerPart.lean
[onecharproof]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FOneCharU.lean
[vlen]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/VlenLe.lean
[modelupper]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/ModelUpper.lean
[linked]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/LinkedUnlE.lean
[maincot]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/MainCotSpan.lean
[algcore]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AlgMemCoef.lean
[mprime]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/Mprime.lean
[lemmap]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/LemmaP.lean
[orbitlocal]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[framed]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/FramedTwoCoboundaries.lean
[squarelength]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceSupSpanSqLeAdd.lean
[twosigned]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/TwoSigned.lean
[low]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AdmissibleMonoIdeal.lean
