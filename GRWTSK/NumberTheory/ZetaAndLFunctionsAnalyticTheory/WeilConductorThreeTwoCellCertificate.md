# A certificate for the actual conductor-three two-cell source

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeTwoCellCertificate.lean](WeilConductorThreeTwoCellCertificate.lean).
Starting revision:
[`6395f161d50488d54df5cd19f57f89e25ceed3a5`](https://github.com/grwtsk/math/commit/6395f161d50488d54df5cd19f57f89e25ceed3a5).
The checked delivery base is
[`46dac5ff500f690d2e68b2cbdf302f06bebb5b2a`](https://github.com/grwtsk/math/commit/46dac5ff500f690d2e68b2cbdf302f06bebb5b2a).
The intervening local-valuation, graded-length, and dehomogenization
check-ins were reviewed and fast-forwarded during this continuation;
their exact source and evidence boundaries are recorded below.
The unchanged environment is Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).

This source joins exact scalar observations to the existing rational matrix
checker and the original arithmetic return. Its consumer is the same
`primitiveArithmeticValue` as the preceding constrained-certificate module.
The specific matrix uses gamma cutoff `M=8` and two spatial cells, `N=1`.
The finite matrix source, complex zero-sum domain, and complete approximation
cost are retained. Verification status is recorded separately below.

## Actual scalar source and the three observations

Use the unchanged definitions in
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean):

\[
c=\operatorname{gammaConstant}(3,1),\qquad
\alpha_m=2m+\frac32,\qquad
G_8(4)=\sum_{m=0}^{7}\frac{1-e^{-4\alpha_m}}{\alpha_m^2},
\]

\[
K_8(4)=\operatorname{partialSourceKernel}(8,4)
       =-2c-G_8(4)+P(4),
\]

where `P(4) = primeHinges 4` is the original signed conductor-three prime
term. It is not an unsigned coefficient mass or an unrelated Green fixture.

The two supporting modules provide the following source observations:

| Original expression | Outward interval | Source declaration |
| --- | --- | --- |
| `gammaConstant 3 1` | `[-1133/1000, -1131/1000]` | `ScalarBounds.gammaConstant_three_one_bounds` |
| The actual eight-term gamma head at displacement four | `[3/5, 61/100]` | `ScalarBounds.finiteGammaHead_eight_four_bounds` |
| `primeHinges 4` | `[-171/100, -17/10]` | `primeHinges_four_bounds` |

[WeilConductorThreeScalarBounds.md](WeilConductorThreeScalarBounds.md)
records the exact conductor/parity shift
`gammaConstant 3 1 = gammaConstant 1 0 + log 3 + pi`, the reused Euler and
logarithm observations, and the proved allowance for every retained
exponential. [WeilConductorThreePrimeBounds.md](WeilConductorThreePrimeBounds.md)
records the signed character identity and the exact restriction of the
radius-four inventory at this displacement to integers `2` through `54`.
All omitted hinges vanish; all retained prime powers and their signs remain.
Both records identify their actual source inputs and rational interval
soundness theorems.

Multiplication by `-2` reverses the gamma-constant endpoints. Therefore

\[
\frac{2262}{1000}\le-2c\le\frac{2266}{1000}.
\]

Combining the three intervals with the actual signs gives

\[
\frac{2262}{1000}-\frac{61}{100}-\frac{171}{100}
\le K_8(4)\le
\frac{2266}{1000}-\frac35-\frac{17}{10}.
\]

The endpoints simplify exactly to

\[
\boxed{-\frac{29}{500}\le K_8(4)\le-\frac{17}{500}.}
\]

This is the statement of `partialSourceKernel_eight_four_bounds`. It is
stronger than the previously proposed interval `[-3/32,-1/32]` for this
finite source. Its proof is ordered-field arithmetic on the three sound
source intervals; no numerical source value is supplied as a hypothesis.

## Full integrated source at displacement four

The existing theorem `sourceKernel_sub_partial_bounds` in
[WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean)
retains the complete gamma remainder with its sign:

\[
-\frac1{33}\le K(4)-K_8(4)\le0,
\qquad K(4)=\operatorname{sourceKernel}(4).
\]

Combining it with the finite enclosure gives the analytical bounds

\[
-\frac{1457}{16500}
=-\frac{29}{500}-\frac1{33}
\le K(4)\le-\frac{17}{500}.
\]

Both endpoints lie inside `[-3/32,-1/32]`. The public theorem
`sourceKernel_four_bounds` states that coarser interval for the complete
integrated source. The sharper combined endpoints above explain the exact
rational slack in its proof.

This is a pointwise source enclosure at one displacement. The sign of a
pointwise kernel remainder does not by itself order its quadratic forms on
signed or complex inputs. The arithmetic return below therefore keeps the
existing full approximation allowance.

## Actual matrix and exact constrained coordinates

The unchanged grid has representatives

\[
\operatorname{gridPoint}(1,0)=-2,\qquad
\operatorname{gridPoint}(1,1)=2.
\]

Zero displacement gives zero kernel value, and the source is even.
`complexSampleMatrix_twoCell` consequently identifies the actual matrix,
for every gamma cutoff `M`, as

\[
H_M=
\begin{pmatrix}
0&K_M(4)\\
K_M(4)&0
\end{pmatrix},
\]

with each real entry cast into the existing complex matrix type. At `M=8`
write `k=K_8(4)`. The complete complex zero-sum vectors are `(-z,z)`.
The original pivot-zero reduction gives

\[
\widetilde H_8=[-2k],\qquad
Q_{H_8}(-z,z)=(-2k)|z|^2.
\]

`reducedSampleMatrix_twoCell` proves the source identity for this scalar
matrix. It uses the exact generic reduction from
[ZeroSumQuadraticReduction.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSumQuadraticReduction.lean).
There is no projection residual or loss of an imaginary direction. The
realification is `(-2k) I_2`, with index type `Fin 1 ⊕ Fin 1`.

The sharper finite interval implies

\[
\frac{17}{250}\le-2k\le\frac{29}{250},
\]

which lies inside `[1/16,3/16]`. The wider interval is convenient for an
exact rational Gram certificate.

## Rational enclosure and checker acceptance

The namespace `TwoCellCertificate` defines the following existing packet
and certificate types, with two real coordinate columns and two Gram rows:

| Field | Exact rational value |
| --- | --- |
| `packet.center` | `(1/8) I_2` |
| `packet.radius` | `(1/16) I_2` |
| `packet.metric` | `I_2` |
| `packet.tolerance` | `0` |
| `certificate.gram` | `(1/4) I_2` |
| Equality and inequality constraint indices | `Empty` |

The scalar enclosure says precisely

\[
\left|-2k-\frac18\right|\le\frac1{16}.
\]

Off-diagonal entries of both the realified matrix and its enclosure are
zero. `encloses_scalar` proves this entrywise statement for any real `k`
in `[-3/32,-1/32]`; `encloses` supplies the actual source value using
`partialSourceKernel_eight_four_bounds`.

The radius matrix is symmetric and nonnegative. The existing checker's
row penalty is `(1/16) I_2`, so its lower target is

\[
\frac18 I_2-\frac1{16}I_2=\frac1{16}I_2.
\]

That target equals the Gram matrix of `(1/4) I_2`. The declaration `checks`
evaluates the unchanged rational checker with `decide +kernel`. It does
not use native evaluation or a second positivity checker. The enclosure
theorem and executable acceptance are separate ingredients.

The existing checker theorem then gives `reduced_nonnegative` for every
complex reduced coordinate. `original_nonnegative` returns that bound to
every original `u : Fin 2 → ℂ` with `sum u = 0`, using exact coordinate
reconstruction. This is the actual arithmetic sample matrix at `M=8,N=1`.
The prior generic two-point Green fixture is not substituted for it.

### Full-space negative control

The same source satisfies

\[
Q_{H_8}(1,1)=2k<0,\qquad
Q_{H_8}(1,-1)=-2k>0.
\]

`original_indefinite` states both strict signs for the actual sample matrix.
Thus unconstrained positivity would be false. The exact derivative
zero-sum condition is mathematically necessary for the certified conclusion.

## Return to the original arithmetic test and its remaining cost

For `f : ℝ → ℂ`, retain the original hypotheses

```lean
ContDiff ℝ 1 f
HasCompactSupport f
tsupport f ⊆ Icc (-4 : ℝ) 4
```

Write

```lean
A(f) := primitiveArithmeticValue modThreeQuadratic
  modThreeQuadratic_isPrimitive modThreeQuadratic_nonprincipal 4 f
```

as mathematical notation for the unchanged source expression, not a new
Lean definition. The exact derivative moments cover all these tests;
they are not point samples or tests restricted to the two-cell indicator
span. Their sum is zero by the existing compact-support derivative theorem.

`TwoCellCertificate.arithmeticValue_lower` applies
`checked_reduced_arithmeticValue_lower` from
[WeilConductorThreeConstrainedCertificates.lean](WeilConductorThreeConstrainedCertificates.lean)
to the actual packet, its source enclosure, and acceptance. Since its
tolerance is zero, the certificate metric term vanishes. The conclusion is

\[
\boxed{A(f)\ge-8\Delta_{8,1}E(f'),}
\qquad E(f')=\int_{\mathbb R}|f'(x)|^2\,dx.
\]

The complete previously established approximation coefficient is still

\[
8\Delta_{8,1}
=8\left(\frac1{33}+\frac{8L_8}{2}\right)
=\frac8{33}+32L_8,
\qquad L_8=\operatorname{partialLipschitzConstant}(8)\ge0.
\]

It pays for the full gamma tail and spatial approximation on the actual
derivative carrier. Entry uncertainty was already paid in checker
acceptance. No uniform inequality comparing derivative energy with physical
energy is required or asserted.

### A fixed certificate does not provide all accuracies

`TwoCellCertificate.budget_exceeds_dyadic_three` proves

\[
2^{-3}<\operatorname{constrainedApproximationBudget}(8,1,0).
\]

Indeed `8/33 > 1/8`, even before adding the nonnegative spatial cost.
Repeating this accepted packet therefore cannot supply the earlier joint
dyadic producer. That producer still requires actual enclosures, accepted
certificates, and vanishing complete budgets at the same choices of data.
The fixed packet provides a genuine finite source certificate and an
arithmetic lower estimate, not nonnegativity of `A(f)` on its full test class.

This is also consistent with the historical finite-gamma negative-direction
argument recorded in
[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean):
a coarse constrained sample matrix can be positive while unresolved
continuous directions remain within the charged approximation error.
That historical analytical argument keeps its original evidence scope.

## Related check-ins and their distinct mathematical roles

The comparison distinguishes work present at the starting revision from
the subsequent arithmetic and graded-algebra check-ins incorporated during
this continuation:

| Check-in | Relevant result and retained boundary |
| --- | --- |
| [`a3223956a2db00cea33439d23523f55962d84ba8`](https://github.com/grwtsk/math/commit/a3223956a2db00cea33439d23523f55962d84ba8) | [Weil magnitude minimax](WeilZetaMagnitudeMinimax.md) gives original conductor-one unit-energy tests with equal correlation magnitudes at every real shift and opposite signed first-prime readouts. The exact decoder tolerance is `log 2 / sqrt 2`. It establishes the importance of retaining signed information; it does not identify the gamma or pole terms of that pair or determine the complete Weil form's sign. |
| [`8acc7048187539cb1bbdfd810472e3150d5d919d`](https://github.com/grwtsk/math/commit/8acc7048187539cb1bbdfd810472e3150d5d919d) | [Wider-window Mangoldt recovery](../MultiplicativeNumberTheory/SmoothedMangoldtWindows.md) retains the correctly oriented endpoint observations and the complete width/error cost. [Power-exponential absorption](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.md) retains eventual quantifiers and fixed coefficient losses. Neither supplies the actual scalar observations used here. |
| [`d398a7cbc4e86691a1fdf5cf2cacf958e6568786`](https://github.com/grwtsk/math/commit/d398a7cbc4e86691a1fdf5cf2cacf958e6568786) | [Trace-witness assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md) returns an actual nonzero integer from supplied integral, Galois-stable trace families and bounds every finite prime-valuation sum. The subsequent check-in below closes the finite local-norm and valuation consumers left separate at this revision. Trace-family realization, actual representation classification, and deformation suppliers remain distinct requirements. |
| [`68cd4c5195ae9ff07adaa7f71378c312a3ac497c`](https://github.com/grwtsk/math/commit/68cd4c5195ae9ff07adaa7f71378c312a3ac497c) | [Integral subproducts](../AlgebraicNumberTheoryGlobalFields/PadicIntegralSubproduct.md), [norm-to-valuation control](../AlgebraicNumberTheoryGlobalFields/PadicNormValuationBudget.md), and [the trace-valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md) now prove the exact finite comparison and the submitted private `vl_bound` counterpart. One literal integer controls all later primes and valid injective class selections. The actual class construction/readout and observation-to-trace estimate remain inputs. These valuation-weighted sums are distinct from the signed hinge expression enclosed here. |
| [`bc258a0ff05033c88fa4f03c41c008b7bc656a32`](https://github.com/grwtsk/math/commit/bc258a0ff05033c88fa4f03c41c008b7bc656a32) | [Actual graded quotient maps](../../CommutativeAlgebra/GradedQuotientExact.md), [localized lengths](../../CommutativeAlgebra/LocalizedGradedLength.md), and [finite-family squaring](../../CommutativeAlgebra/GradedSquareFamilyLength.md) establish the previously identified quotient estimate and its `2^n c` iteration, including the actual five-family `2^(r+1+r′)` return. The original all-weight length-at-most-one bound and later geometric, Rees/Herbrand, and lower comparisons remain separate suppliers. |
| [`46dac5ff500f690d2e68b2cbdf302f06bebb5b2a`](https://github.com/grwtsk/math/commit/46dac5ff500f690d2e68b2cbdf302f06bebb5b2a) | [Nonzero-degree dehomogenization](../../CommutativeAlgebra/GradedDehomogenization.md), [its actual localization return](../../CommutativeAlgebra/GradedDehomogenizationLocalization.md), and [finite-image point nilpotence](../../CommutativeAlgebra/FiniteAlgebraPointNilpotence.md) now prove the previously identified `deh_holds` leaf and the associated algebraic consumers. The slice relation remains a geometric supplier; its Euler/tangent argument, local reducedness/cyclicity, and the complete length-one conclusion are not supplied by these algebraic implications. |

The first comparison gives a concrete reason to retain the `0,1,-1`
conductor-three coefficients and their signed interval multiplication.
Replacing them by magnitudes would change the actual source and discard the
cancellation used by this proof. It does not require importing the magnitude
obstruction into the finite certificate's dependency closure.

The [protected target comparisons](RiemannHypothesisTargetEquivalences.md)
and [theta scalar cost](ThetaMultiplicityCost.provenance/growthSizeBound.md)
from `a3223956a` are also partial results with explicit remaining suppliers.
Their records report native empty-environment replay and an additional
Lean4Lean implementation check for five selected partial-result targets.
Those observations retain their original source and target scope; they are
not verification evidence for this new three-module increment. The
automorphic arithmetic continuation in
[the submitted-route audit](SubmittedRiemannHypothesisArithmeticAudit.md)
remains coordinated separately in [math #1828](https://github.com/grwtsk/math/issues/1828).

In the new local-valuation increment, integrality puts every scaled factor
in the actual p-adic unit ball. Deleting factors through an injective class
map increases the product norm. The scale can be removed in the needed
direction using `‖q^e δ‖ₚ ≤ ‖δ‖ₚ`; this finite inequality holds even when
`p ∣ q`, without changing the separate prime restrictions of the arithmetic
representation supplier. For the same nonzero integer `N`, the resulting
norm bound forces selected nonvanishing and gives

\[
\sum_o\sum_{r\in X_o}-\log_p\|\delta_{o,r}\|_p
\le \operatorname{padicValInt}(p,N).
\]

Its exact quantifier order is `∃ N, ... ∀ p, ι, X, tr, cl, ...`, with
injectivity and the exact trace readout retained. It does not choose a new
integer after seeing the prime. The observation consumer still assumes
`a_o ≤ c Σ_r -log_p ‖δ(o,r)‖ₚ` with `c ≥ 0`. The substantive deformation or
Selmer supplier, actual trace-family/classifier construction, and full
arithmetic windows therefore remain separate. The subsequent `bc258a0ff`
check-in establishes the actual localized graded quotient estimate inside
the factor-two upper bound, so neither that estimate nor `vl_bound` remains
an open leaf in this comparison.

For a commutative integer-graded algebra, homogeneous ideal `J`, homogeneous
`t` of degree `d`, and a prime `P` of the degree-zero ring, the new theorem
uses actual quotient pieces and actual localized module lengths to prove

\[
L_P((A/(J+(t^2)))_w)
\le L_P((A/(J+(t)))_{w-d})+L_P((A/(J+(t)))_w).
\]

Multiplication by `t` and quotient projection are constructed explicitly;
homogeneous projection supplies the shifted kernel preimage. The first map
need not be injective. Lengths remain in `ℕ∞`, and no finite-length premise
or natural-number truncation is introduced. The finite-family induction
allows different generator degrees but requires the starting bound `c` at
every weight; it concludes the bound `2^n c` after squaring all `n` indexed
equations.

The five-family endpoint retains `G,E′,Z`, of degrees `-2,+2,0`, and squares
only the `r+1` degree-minus-one generators `F` and the `r′` degree-one
generators `E`.
It returns the exact upper factor `2^(r+1+r′)` from the supplied original
all-weight length-at-most-one hypothesis. It does not prove that geometric
hypothesis, the Rees/Herbrand connection to valuations, or the separate
lower comparison with factor `2^(r+r′)`. Thus finite squaring alone does
not establish the complete factor-two deformation estimate.

The `46dac5ff5` continuation now proves the source implication `deh_holds`:
for homogeneous `J`, `f ∈ A_d` with `d ≠ 0`, and homogeneous `h`, membership
`h ∈ J+(f-1)` gives `∃ n : ℕ, f^n h ∈ J`. Its finite-support recurrence
works in the actual quotient, with no cancellation or regularity of `f`
assumed. On these homogeneous elements it also proves equivalence with
vanishing in the actual localization of `A/J` away from the image of `f`.
It does not identify that localization with the whole slice quotient.

The post-slice return additionally retains an opposite-degree element `g`,
the degree-zero element `τ=fg` with `σ(τ) ≠ 0`, a nonzero base coefficient
`c`, a degree-zero `b` with `σ(b) ≠ 0`, and a supplied relation
`c • (g^N (b h)) ∈ J+(f-1)`. The field-point formulation requires the
coefficient map to the field to be faithful. It constructs a degree-zero
multiplier outside `ker σ` killing `h` modulo `J` and proves vanishing of
the original homogeneous quotient-piece class after localization at
`ker σ`. Producing that slice relation remains an explicit hypothesis.

The finite-image theorem retains a finitely generated degree-zero quotient
image over a nontrivial coefficient ring, a field point `σ` with faithful
coefficient map, and `σ(p)=0`. It proves
`∃ b ∈ A₀, σ(b) ≠ 0 ∧ ∃ n : ℕ, b p^n ∈ I` using a nonzero annihilating
polynomial and its factor with nonzero constant coefficient. The point
need not factor through the quotient, and this finite-image step alone
does not require the ideal `I` to be homogeneous. Its conclusion supplies
local nilpotence; the separate reduced-slice argument is still needed to
obtain actual local vanishing.

The updated audit's next bounded geometric reconstruction is the Euler
point derivation `E(a_j)=j ξ(a_j)` and its vanishing on a homogeneous ideal
already killed by `ξ`. The source's characteristic hypothesis makes
`E(f)=-2` nonzero on the normalized degree-minus-two slice. Its tangent
dependence, finite-type, differential/Nakayama, and reduced-slice arguments
remain substantive suppliers. The subsequent conditional cyclicity,
maximal-ideal annihilation, and residue-field length arguments are also
not reconstructed by this increment. They, and the Rees/Herbrand and lower
comparisons, remain separate from the signed conductor-three scalar source
and its finite certificate.

The records for `68cd4c519` report trust-zero source and exact-target checks
for that local-valuation increment's 25 theorem bodies, with only `propext`,
`Classical.choice`, and `Quot.sound` in the transitive axiom reports. They
retain fresh full-dependency replay, an independent kernel implementation,
and substitution into the external automorphic consumer as **NOT_RUN**.
Those are source-bound observations of that separate increment, not checks
performed again here and not evidence for this new two-cell module.

The records for `bc258a0ff` report trust-zero compilation with warnings as
errors for all three graded sources and their imported endpoint/control
audits. All 21 public theorem axiom reports contain exactly `propext`,
`Classical.choice`, and `Quot.sound`; the source identities match the
adjacent records. Fresh full-dependency replay, an independent kernel
implementation, and substitution into the external deformation consumer
remain **NOT_RUN**. These reported checks retain their own source and
target scope and were not rerun as part of this two-cell review.

The records for `46dac5ff5` report trust-zero source and imported
endpoint/control checks with warnings as errors for the three new modules.
All 14 public theorem axiom reports contain exactly `propext`,
`Classical.choice`, and `Quot.sound`, including the two private finite-support
helpers transitively. The three current source digests match those records.
Fresh full-dependency replay, an independent kernel implementation, and
substitution into the external geometric consumer remain **NOT_RUN**.
These checks establish the recorded local algebraic scope; they are not
verification of the remaining geometric suppliers or of this two-cell
module, and were not rerun during this review.

## Public declaration correspondence

The outer namespace is
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.

| Declaration | Role |
| --- | --- |
| `partialSourceKernel_eight_four_bounds` | Combine the three observations with the exact source signs. |
| `sourceKernel_four_bounds` | Charge the complete one-sided gamma tail at displacement four. |
| `complexSampleMatrix_twoCell` | Identify the actual midpoint matrix for arbitrary cutoff. |
| `reducedSampleMatrix_twoCell` | Identify its exact complex zero-sum reduction. |
| `TwoCellCertificate.packet`, `TwoCellCertificate.certificate` | Exact rational enclosure and Gram factor, both on two real coordinates. |
| `TwoCellCertificate.checks` | Executable acceptance by the existing checker. |
| `TwoCellCertificate.encloses_scalar` | Generic scalar-to-realification enclosure. |
| `TwoCellCertificate.encloses` | Supply the actual source enclosure at `M=8,N=1`. |
| `TwoCellCertificate.reduced_nonnegative` | Checked finite sign for every complex reduced coordinate. |
| `TwoCellCertificate.original_nonnegative` | Exact return to every original complex zero-sum vector. |
| `TwoCellCertificate.original_indefinite` | Both full-space signs for the actual source matrix. |
| `TwoCellCertificate.arithmeticValue_lower` | Return to the original arithmetic value with complete derivative-energy cost. |
| `TwoCellCertificate.budget_exceeds_dyadic_three` | The fixed packet's cost exceeds `2^(-3)` and cannot be repeated as an all-precision producer. |

The module has twelve named theorems and two definitions. Its analytical
argument is interval arithmetic, exact finite congruence, and the maintained
source return. Direct evaluation of `Q(-z,z)=(-2k)|z|^2` is a useful algebraic
comparison with checker acceptance; it shares the same source interval and
does not constitute an independent proof of that enclosure.

These are local consequences of maintained mathematical sources and the
existing checker. No new paper theorem or prior-art novelty is claimed.
There is no all-grid, all-window, all-conductor, or RH/GRH conclusion.

## Verification evidence

The exact target
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeTwoCellCertificate`
passed `lake build` in 187.713 seconds. The build uses
unchanged Lean `4.34.1`, compiler revision
`5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The three new source files and
dependency-pin files were unchanged throughout the completed check.
This is an exact-target build with its import closure, not a repository-wide build.

| Checked source | SHA-256 |
| --- | --- |
| `WeilConductorThreeScalarBounds.lean` | `341ac04923ba1f3bc9a766e4af2b041a27f4689ff1db60853b5cd5e84d64a2b7` |
| `WeilConductorThreePrimeBounds.lean` | `abe5d710f41ec00e054168f7d552bfe111e90cd957c6ed34750533880f3ac2fa` |
| `WeilConductorThreeTwoCellCertificate.lean` | `13f46ffbdd518c6d10029794578dae2813b36c40688fd3efb3affc49a6abd8a2` |

A separate `#print axioms` audit in a fresh Lean process passed in
127.056 seconds. It covered all
37 public declarations in these three modules:
27 theorems and 10 definitions. Every reported transitive
axiom set was a subset of `propext`, `Classical.choice`, and `Quot.sound`;
no declaration was missing. The prime module's private inventory lemma is
covered transitively through its public consumers. The audit used the same
source and dependency-pin hashes as the successful build.

The new source contains no `sorry`, `admit`, added axiom, or `native_decide`.
The closed rational guards use `decide +kernel`. An axiom inventory and a
new source build are distinct from fresh replay of every imported proof term.

### Earlier attempts and completed checks

The first prime-target build was **INTERRUPTED**, with observed exit 130,
to stop a later duplicate build of the same previously unbuilt dependency
closure. Its source SHA-256 at interruption was
`806c4cae5156f9a8d90e6c160289ba1bb8661814a50af27ef6a4d03964aec90b`.
It did not complete the prime module. Subsequent proof-only corrections
are reflected in the final source identities above.

The first scalar-target attempt reached its 1200-second cap while compiling
existing dependencies and was recorded as **TIMEOUT**, with exit -15 and
unchanged source SHA-256
`14f1f5fa95e0e8d263b2c3f2223e8b03c75b816c1f1087da5fb8aadfb00d9a14`.
Completed dependency artifacts were reused by the bounded continuation.
Lake's cached-warning label `Replayed` is not a fresh kernel replay claim.

The second scalar attempt was interrupted and its runtime session became
unavailable. It produced no completion receipt, so its exit code and elapsed
duration are **UNKNOWN**; it is not classified as a timeout or a successful
build. Its retained log stops after `WeilOddDiagonalSeriesTail`, before the
required entry and scalar-observation modules completed. The scalar source
remained at the same SHA-256 as the first attempt. Subsequent completed checks
are identified by their own observed results below.

A profiled direct check of the unchanged `WeilUnitWindowOddEntries.lean`
then passed in 150.881 seconds at source SHA-256
`656e1f6db2da8844852ec1fba4fa5f751d8d85c7773db708abf8faa09796955a`. Its profile attributed 144 seconds to importing
the dependency environment. This diagnostic source check supplied no new
axiom-audit or full proof-replay claim, and no maintained proof was changed
as a performance workaround.

The first combined target attempt also lost its runtime session, with no
completion receipt. Its exit code and elapsed duration remain **UNKNOWN**;
it is recorded as an interrupted, unavailable session, not as a successful
build or an observed timeout. The subsequent attached attempt
`two_cell_build_2` completed with exit 1 in 821.429 seconds, reporting proof
elaboration errors in character-zero normalization and rational-to-real
casts. Proof-only corrections followed; the mathematical definitions,
statements, and interval endpoints were unchanged.

The next combined attempt, `two_cell_build_3`, compiled both enclosure
modules and then failed in the final module's full-space negative control:
the finite sums were not expanded at the definitionally equal two-point
index type. In `two_cell_build_4`, making that matrix type explicit expanded
the sums and reduced both sign claims to the same scalar inequality; the
now-redundant `constructor` tactic caused that attempt to fail and was
removed. These corrections did not change the statement. The realification
enclosure proof was also split into its four actual cases to remove an
unreachable tactic branch.

| Local attempt | Observed status | Exit | Seconds | Source SHA-256 identity |
| --- | --- | --- | --- | --- |
| `scalar_build_1` | TIMEOUT | -15 | 1200.137 | `WeilConductorThreeScalarBounds.lean`: `14f1f5fa95e0e8d263b2c3f2223e8b03c75b816c1f1087da5fb8aadfb00d9a14` |
| `two_cell_build_2` | FAILED | 1 | 821.429 | `WeilConductorThreeScalarBounds.lean`: `14f1f5fa95e0e8d263b2c3f2223e8b03c75b816c1f1087da5fb8aadfb00d9a14`; `WeilConductorThreePrimeBounds.lean`: `05a6beabb1de6e90ec171635480e414c08836b2b50d593881d4decc97274ba98`; `WeilConductorThreeTwoCellCertificate.lean`: `9c8653c3911c347e8cc1a10f801ac01d70335b8871626ebe148b6040aeaf0d32` |
| `two_cell_build_3` | FAILED | 1 | 327.146 | `WeilConductorThreeTwoCellCertificate.lean`: `9c8653c3911c347e8cc1a10f801ac01d70335b8871626ebe148b6040aeaf0d32`; remaining files as in final source table |
| `two_cell_build_4` | FAILED | 1 | 162.460 | `WeilConductorThreeTwoCellCertificate.lean`: `7b9e037f90312dafb12f779d9570d81c23e91734688608f0773b8dc8af9c428f`; remaining files as in final source table |
| `two_cell_build_5` | PASSED | 0 | 187.713 | Final source table |
| `two_cell_axioms_1` | PASSED | 0 | 127.056 | Final source table |

Failed, interrupted, or timed-out attempts are retained as those outcomes;
they are not classified as unperformed checks. Successful results apply to
the exact final sources listed above.

Fresh proof-term replay of the complete dependency closure, independent
external mathematical review, and an independently implemented checker are
**NOT_RUN** for this increment. A separate AI-assisted read-only source
review checked the interval signs, full-tail allowance, exact matrix entries,
complex constrained return, Gram normalization, full-space negative control,
complete arithmetic cost, and fixed-budget boundary. That review shares the
maintained sources and is not independent external review or a second kernel
implementation. Related check-ins' replay observations retain their own
source and target scope.
