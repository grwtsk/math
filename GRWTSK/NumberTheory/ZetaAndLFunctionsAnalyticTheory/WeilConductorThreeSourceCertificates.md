# Certificates for the complete conductor-three sampled source

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeSourceCertificates.lean](WeilConductorThreeSourceCertificates.lean).
Starting revision:
[`b09f7ac564b418c51d8062844bd3c9c81e3894db`](https://github.com/grwtsk/math/commit/b09f7ac564b418c51d8062844bd3c9c81e3894db).
The unchanged environment is Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, with Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).

This construction certifies matrices sampled from the complete actual
`sourceKernel`. At a fixed spatial resolution their entries include the
entire gamma integral. An auxiliary gamma cutoff can enclose those entries
and their continuity modulus, but does not change the mathematical matrix
being certified. The arithmetic consumer is the maintained conductor-three,
radius-four `primitiveArithmeticValue` on complex compact C1 tests.

The new source uses
[WeilConductorThreeSourceModulus.lean](WeilConductorThreeSourceModulus.lean)
and
[WeilConductorThreeSourceSampling.lean](WeilConductorThreeSourceSampling.lean)
for the exact continuity modulus and sampled-form comparison. Their
adjacent records supply the detailed analytic arguments and check scopes.
The finite-head results from
[WeilConductorThreeOneSidedCertificates.lean](WeilConductorThreeOneSidedCertificates.lean)
remain valid with their original matrix and budget.

## Source, carrier, and exact mathematical objects

All maintained declarations are in the outer namespace

```lean
GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
```

For the arithmetic return retain

```lean
f : ℝ → ℂ
ContDiff ℝ 1 f
HasCompactSupport f
tsupport f ⊆ Icc (-4 : ℝ) 4
```

Write

```lean
A(f) := primitiveArithmeticValue modThreeQuadratic
  modThreeQuadratic_isPrimitive modThreeQuadratic_nonprincipal 4 f
```

as mathematical notation for the unchanged source, and set

\[
u=f',\qquad E(u)=\int_{\mathbb R}|u(x)|^2\,dx.
\]

The source is the same real, odd, primitive character modulo three, with
conductor three and parity one. Its gamma constant, signed prime-power
inventory, Lebesgue measure, and conjugate-first complex pairing are
unchanged. In particular the source has no principal-character pole term.
The derivative energy `E(f')` is not identified with `E(f)`.

Let `K = sourceKernel`, `K_M = partialSourceKernel M`, and write

\[
\kappa(r)=\frac{e^{-3r/2}}{1-e^{-2r}}\quad(r>0),\qquad
\Gamma(t)=\int_0^\infty\kappa(r)\min(|t|,r)\,dr.
\]

The exact source is

\[
K(t)=-\frac c2|t|-\Gamma(t)+P(t),
\]

where `c = gammaConstant 3 1` and `P = primeHinges` retain their original
definitions. Put

\[
C=L_0=\frac{|c|}{2}+\operatorname{primeLipschitzConstant},
\qquad \omega(h)=Ch+\Gamma(h)\quad(h\ge0).
\]

Here `omega = sourceContinuityModulus` on its nonnegative distance
domain. The formal definition uses `gammaRemainder 0`; the theorem
`sourceContinuityModulus_eq_gamma_min` identifies it with the complete
original parity-one gamma integral displayed above.

The arithmetic signs remain in `P`. Their absolute values occur only in
the price of controlling differences, as in the prior sampling theorem.

## Complete primary argument

### 1. Control the complete source before sampling

For each positive `r`,

\[
|\min(|s|,r)-\min(|t|,r)|
\le\min(|s-t|,r).
\]

Multiplying by the nonnegative actual gamma kernel and integrating gives

\[
|\Gamma(s)-\Gamma(t)|\le\Gamma(s-t).
\]

The absolute-value term and the unchanged finite signed hinge sum have
the retained Lipschitz price `C`. Thus

\[
\boxed{|K(s)-K(t)|\le\omega(|s-t|).}
\]

All integrals involved are genuinely integrable: the maintained gamma
majorant covers the singular endpoint and the entire positive-lag tail.
The comparison is a bound on differences of the actual complete source.
It does not assume positivity of its quadratic form.

The finite gamma head is an auxiliary evaluation device. Its complete
remainder is retained through

\[
T_M=\frac1{4M+1},\qquad
-T_M\le K(t)-K_M(t)\le0.
\]

Consequently each raw finite-head entry interval `[a,b]` gives a full-source
entry interval `[a-T_M,b]`. The cutoff does not label a different
full-source target. An enclosure of a reduced matrix must still account
for its actual linear combination of entries; a raw entry radius cannot
silently be reused after reduction.

The same finite decomposition and the exponential estimate supply

\[
\omega(h)\le T_M+L_Mh\quad(h\ge0),
\qquad L_M=\operatorname{partialLipschitzConstant}(M).
\]

For any positive requested accuracy, first make `T_M` small and then
choose a sufficiently fine grid for the fixed finite `L_M`. This proves
that the exact modulus tends to zero with the mesh. The complete source,
including its gamma tail, stays fixed throughout this argument.

### 2. Sample the full source and pay every cell

For `N+1` cells use the existing grid and cell assignment. Write

\[
H_N(i,j)=K(q_i-q_j),\qquad
h_N=\frac8{N+1},\qquad d_N=\omega(h_N).
\]

These are the actual matrices underlying `complexFullSampleMatrix N`.
They depend on `N`; no gamma cutoff occurs in their definition. The source
is real and even, so the matrices are real symmetric before their exact
cast into the complex matrix type. Their diagonal entries are zero.
The formal spatial price is `sourceSpatialBudget N = d_N`.

Each point lies within `4/(N+1)` of its own representative, including the
window endpoints. Both variables therefore give a displacement error at
most `h_N`, and monotonicity of the exact modulus gives

\[
|K(x-y)-K(q_N(x)-q_N(y))|\le d_N
\quad(x,y\in[-4,4]).
\]

For the complete complex cell moments

\[
v_i=\int_{\mathrm{cell}_i}u(x)\,dx,
\]

the integral of the finite sampled kernel is exactly `Q_(H_N)(v)`.
The kernel error, product integration, and finite-measure
Cauchy--Schwarz inequality give

\[
\boxed{
|A(f)-Q_{H_N}(v)|\le8d_NE(f').
}
\]

The factor eight is the measure of the original radius-four interval.
This is a bound on the full source form for every test in the stated
carrier. It does not restrict tests to the span of the cell indicators.
The scalar prices decrease and tend to zero as `N` increases. This does
not assert a matrix order, spectral monotonicity, or nesting of successive
midpoint grids.

### 3. Eliminate only the exact complex zero-sum constraint

Compact-support differentiation gives `sum v = 0`. The existing exact
pivot-zero reconstruction returns every such complex vector from its
nonpivot entries `z = tailVector v`. Define

```lean
reducedFullSampleMatrix N := reducedMatrix (complexFullSampleMatrix N)
```

using the unchanged reduction. Then

\[
Q_{H_N}(v)=Q_{\widetilde H_N}(z).
\]

Both real and imaginary coordinates are retained. This identity adds no
approximation price or projection residual. It returns the same arithmetic
error estimate through `arithmeticValue_full_reduced_finite_error`.

### 4. Return accepted packets with their actual metric

Let a rational packet `P` enclose the realification of
`reducedFullSampleMatrix N`, and let the unchanged rational `intervalCheck`
accept `C`. Write `tau = (P.tolerance : Real)`, let `G` be the real cast of
the packet metric, and let `zR = splitVector z`. The accepted enclosure
gives

\[
Q_{\widetilde H_N}(z)\ge-\tau z_R^{\mathsf T}Gz_R.
\]

Together with the complete source comparison this proves

\[
\boxed{A(f)\ge-\tau z_R^{\mathsf T}Gz_R-8d_NE(f').}
\]

The metric is not replaced by Euclidean norm in this general theorem.
For the separate explicit hypothesis `P.metric = 1`, checker acceptance
supplies `tau >= 0`, and the maintained moment-energy estimate gives

\[
\|z_R\|^2\le\frac8{N+1}E(f').
\]

The resulting coefficient is the new definition

\[
\boxed{
\operatorname{fullSourceCertificateBudget}(N,\tau)
=8d_N+\frac{8\tau}{N+1}.
}
\]

Entry uncertainty has already been paid by the accepted enclosure and
checker. The displayed remaining price pays the continuous spatial
comparison and the actual tolerance in the identity metric. In
particular no omitted gamma contribution is set to zero.

## The same packet certifies the complete two-cell source

At `N=1`, the representatives are `-2,2`. Set `k = K(4)`. The complete
matrix and its exact reduction are

\[
H_1=\begin{pmatrix}0&k\\k&0\end{pmatrix},
\qquad \widetilde H_1=[-2k].
\]

The already proved `sourceKernel_four_bounds` says

\[
-\frac3{32}\le k\le-\frac1{32},
\qquad \frac1{16}\le-2k\le\frac3{16}.
\]

The existing `encloses_scalar` theorem therefore encloses the realified
full-source reduction with the unchanged packet:

| Packet or certificate field | Exact rational value |
| --- | --- |
| Center | `(1/8) I_2` |
| Radius | `(1/16) I_2` |
| Metric | `I_2` |
| Tolerance | `0` |
| Gram factor | `(1/4) I_2` |
| Equality and inequality indices | `Empty` |

The existing acceptance proof is reused. The finite-head enclosure and
the new full-source enclosure are separate applications to different
actual matrices; neither changes the checker or substitutes a generic
Green fixture. The conclusion retains the complete complex zero-sum
domain. The negative sign of `k` also exhibits why unconstrained
positivity on all of `Complex^2` would be false.

### A sharper concrete arithmetic coefficient

The exact two-cell modulus is `d_1 = 4 L_0 + Gamma(4)`. The retained
eight-term gamma enclosure and entire tail allowance give

\[
0\le\Gamma(4)\le\frac{61}{100}+\frac1{33}<\frac23.
\]

Using the coarser rational endpoint `2/3` yields the explicit arithmetic
estimate

\[
\boxed{A(f)\ge-\left(32L_0+\frac{16}{3}\right)E(f').}
\]

This is stronger than the preceding finite-head one-sided coefficient
`32 L_8`. Indeed

\[
L_8-L_0=\sum_{m<8}\frac1{2m+3/2}\ge\frac23,
\]

and therefore

\[
32L_8-\left(32L_0+\frac{16}{3}\right)\ge16.
\]

This comparison concerns the conservative coefficients in two valid
arithmetic lower bounds. It does not claim that either is the exact
approximation error, nor that the full source form is nonnegative.

The actual gamma-constant observation still gives `L_0 > 1/2`.
Since `Gamma(4) >= 0`, the exact full-source two-cell budget is

\[
8d_1=32L_0+8\Gamma(4)>16.
\]

Thus the improved fixed packet still cannot be repeated as a producer of
vanishing budgets in this accounting.

## Uniform certificate producer and the exact remaining sign obligation

The conditional limit theorem asks for a family uniform over the source
test class. For every dyadic precision index `k`, the same data must give
a spatial resolution `N`, a packet `P`, and an accepted certificate `C`
such that

\[
P.\mathrm{metric}=I,\qquad
P\text{ encloses }\operatorname{realification}(\widetilde H_N),\qquad
\operatorname{intervalCheck}(P,C)=\mathrm{true},
\]

\[
\operatorname{fullSourceCertificateBudget}(N,P.\mathrm{tolerance})
\le2^{-k}.
\]

For each fixed admissible `f`, its finite nonnegative derivative energy
then multiplies a coefficient tending to zero. The existing dyadic limit
argument returns `A(f) >= 0`.

The complete source matrix depends only on `N`, so any chosen auxiliary
gamma cutoff used to evaluate its entries leaves this premise unchanged.
This is the structural improvement over asking for signs of different
finite gamma heads. It does not construct the required family of signs.
An arbitrarily small spatial price, a valid finite entry enclosure, and a
passing positive certificate are distinct obligations. Only the specific
two-cell full-source packet is supplied here.

Complete fixed-window positivity, all-window/all-conductor positivity,
RH, and Dirichlet GRH remain unresolved.

## Historical comparison, alternative checks, and related check-ins

The full-source construction starts from the same complete integrated
kernel used in
[WeilConductorThreeKernelReturn.md](WeilConductorThreeKernelReturn.md).
The exact modulus refines the existing finite-head Lipschitz argument.
As a separate analytical check, applying the signed tail interval at two
displacements gives an oscillation allowance `T_M`, rather than `2*T_M`.
Combining this with the finite-head Lipschitz estimate reproduces the
upper allowance `T_M + L_M*h`. This check shares the maintained source
definitions and does not constitute independent external verification.

The prior
[positive-remainder construction](WeilConductorThreeGammaRemainder.md)
uses translated energy and Fubini to order continuous forms on compact
C1 derivatives. The present sampling construction uses an exact scalar
modulus and a proved finite-matrix enclosure. It does not infer a form
order from pointwise kernel order. The two constructions are compatible
and have separate error and sign responsibilities.

[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean),
Section 7 at the starting revision, records a written actual-source
negative-test argument simultaneous for `0 <= M <= 10^19`. It retains
the signed prime inventory and realizes the prime phases through one
physical carrier. Its evidence status is not upgraded here. The result's
scope is that stated finite cutoff range, not every natural cutoff. It
explains why universally positive finite gamma heads cannot be silently
assumed as spatial grids become finer. The full-source sampled target
retains the omitted gamma contribution from the start.

The related check-in
[`b09f7ac564b418c51d8062844bd3c9c81e3894db`](https://github.com/grwtsk/math/commit/b09f7ac564b418c51d8062844bd3c9c81e3894db)
was reviewed before this increment. Its
[Euler derivation](../../CommutativeAlgebra/GradedEulerDerivation.md),
[localization pullback](../../CommutativeAlgebra/LocalizedPointDerivation.md),
and [graded slice return](../../CommutativeAlgebra/GradedSlicePointDerivation.md)
construct the Euler direction, preserve the homogeneous ideal, and prove
vanishing of slice point derivations under the complete supplied `M4`
condition. The nonzero degree after its cast to the point field remains
explicit. At that revision, its next bounded return used actual Kähler differential fibers,
residue-field embeddings, and Nakayama; reducedness, length-one, and
deformation suppliers remain separate. That work stays coordinated in
[math #1828](https://github.com/grwtsk/math/issues/1828), and supplies none
of the arithmetic sign certificates required here.

During verification, the related check-in
[`1d7d057d8c47c3d0535af91a1a746f8fbaaa0d20`](https://github.com/grwtsk/math/commit/1d7d057d8c47c3d0535af91a1a746f8fbaaa0d20)
closed that differential/Nakayama implication and the conditional finite
separating-points return. Its actual graded-slice consumer retains finite
type, inversion of every nonzero coefficient, full `M4`, and the nonzero
degree cast. The next bounded suppliers are finite type from `IsWRing.gen`
and `M2`, DVR coefficient units, the normalized-point lift, and the exact
localization-zero return `c*g^n*h ∈ I+(f-1)` with `c ≠ 0`. Graded-piece
reducedness, cyclicity, length-one, Rees/Herbrand, and lower cotangent
suppliers remain separate. A read-only traversal found 82 local `GRWTSK`
sources in this increment's import closure and no intersection with that commit's
changed paths; its changes also leave instructions, root imports, and
dependency pins unchanged. That check-in is preserved as the publication
base, without promoting its separate verification or arithmetic scope.

No new external paper theorem, upstream formalization equivalence, or
prior-art novelty is claimed. The mathematical source and analytical
comparison above are local consequences of the maintained definitions
and exact earlier source observations.

## Public declaration correspondence

The namespace of each declaration is the outer namespace specified above;
the last ten declarations extend its `FullSourceTwoCell` namespace.

| Declaration | Mathematical role |
| --- | --- |
| `reducedFullSampleMatrix` | Apply exact complex zero-sum reduction to the complete sampled source, with no gamma-cutoff parameter. |
| `arithmeticValue_full_reduced_finite_error` | Return the whole-cell modulus comparison to the actual arithmetic functional and reduced moments. |
| `checked_full_reduced_arithmeticValue_lower` | Retain the arbitrary metric of an accepted packet for the actual complete reduced matrix. |
| `fullSourceCertificateBudget` | Define the exact full-source spatial and identity-tolerance coefficient. |
| `fullSourceCertificateBudget_le` | Bound that coefficient using any auxiliary gamma cutoff without changing the matrix target. |
| `checked_identity_full_reduced_arithmeticValue_lower` | Use accepted nonnegative tolerance and exact moment-energy control when the metric is explicitly the identity. |
| `arithmeticValue_nonneg_of_full_source_certificates` | Return a jointly supplied all-dyadic accepted family to source nonnegativity. |
| `complexFullSampleMatrix_twoCell` | Identify the actual complete two-cell matrix from source evenness and its value at zero. |
| `reducedFullSampleMatrix_twoCell` | Identify its scalar reduced matrix as `-2 * sourceKernel 4`. |
| `FullSourceTwoCell.encloses` | Enclose the complete source using the unchanged rational packet and the earlier full scalar interval. |
| `FullSourceTwoCell.reduced_nonnegative` | Apply the existing checked packet to every complex reduced coordinate. |
| `FullSourceTwoCell.original_nonnegative` | Return the certificate to all original complex zero-sum vectors. |
| `FullSourceTwoCell.original_indefinite` | Preserve the strict negative and positive directions before imposing the zero-sum constraint. |
| `FullSourceTwoCell.arithmeticValue_lower` | Return the concrete packet with its exact complete-source spatial modulus. |
| `FullSourceTwoCell.gammaIntegral_four_le` | Bound the entire original gamma integral at four by `2/3`, using the actual eight-term head and complete remainder. |
| `FullSourceTwoCell.spatial_price_le` | Give the explicit coefficient `32*L_0 + 16/3`. |
| `FullSourceTwoCell.arithmeticValue_lower_explicit` | Return that coefficient to the original arithmetic source and derivative energy. |
| `FullSourceTwoCell.explicit_price_improves` | Prove a coefficient improvement of at least sixteen over the preceding `32*L_8`. |
| `FullSourceTwoCell.budget_gt_sixteen` | Prove the exact fixed-grid accounting still stays above sixteen. |

This source contains seventeen public theorems and two definitions. The
two supporting modules have their own public inventories in their adjacent
records. The scalar upper bound and full-space negative control are
concrete consequences of earlier source observations, not free numerical
or positivity assumptions.

## Verification evidence

The aggregate target

```text
GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeSourceCertificates
```

was built from the exact source hashes below under the unchanged Lean
`4.34.1` compiler `5045d0056413266e57c625dcd7c365b10e377c52` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

### Executed build attempts

| Source-bound attempt | Outcome | Exit | Elapsed |
| --- | --- | --- | --- |
| `source_sampling_build_1` | FAILED | `1` | 179.651 s |
| `source_sampling_build_2` | FAILED | `1` | 193.082 s |
| `source_sampling_build_3` | FAILED | `1` | 394.418 s |
| `source_sampling_build_4` | FAILED | `1` | 337.783 s |
| `source_sampling_build_5` | PASSED | `0` | 192.857 s |

The successful invocation was `lake build` of the aggregate target above.
Each attempt retained its own three-source and dependency-pin hashes;
source bytes stayed unchanged during each process. Failed attempts are
retained as failures, not relabeled as unperformed checks.

`source_sampling_build_1` reported: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceModulus.lean:60:72: unsolved goals`; `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceModulus.lean:104:6: Tactic rewrite failed: Did not find an occurrence of the pattern`.

`source_sampling_build_2` reported: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceModulus.lean:65:25: Application type mismatch: The argument`; `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceModulus.lean:60:72: unsolved goals`.

`source_sampling_build_3` reported: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceSampling.lean:34:50: unsolved goals`.

`source_sampling_build_4` reported: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceCertificates.lean:214:2: linarith failed to find a contradiction`; `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceCertificates.lean:236:6: Tactic rewrite failed: Did not find an occurrence of the pattern`; `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeSourceCertificates.lean:274:4: Type mismatch`.

The exact source identities for the failed aggregate attempts are:

| Attempt | Source | SHA-256 |
| --- | --- | --- |
| `source_sampling_build_1` | `WeilConductorThreeSourceModulus.lean` | `e95333240581b44ecda83dcaefea0052a6260d2954c49a2d602346d591032458` |
| `source_sampling_build_1` | `WeilConductorThreeSourceSampling.lean` | `e71284e9047927060ff160144c87aa45f3108cbdf5ec7a7463e4860ad277ed1e` |
| `source_sampling_build_1` | `WeilConductorThreeSourceCertificates.lean` | `ff835613c95c4710db8f7efd406eac66f3a35f420bcb138f7ca5c9b20e02c8de` |
| `source_sampling_build_2` | `WeilConductorThreeSourceModulus.lean` | `26b2afcd1c6a618738bfdcefcec0e2b7a7769985ac2ebac14e3e7e0b8ccdc22f` |
| `source_sampling_build_2` | `WeilConductorThreeSourceSampling.lean` | `07ef5e490441bdd238487f5c2c359d3efdfe99ce1f73a93cd9b35dd21ecf2736` |
| `source_sampling_build_2` | `WeilConductorThreeSourceCertificates.lean` | `ff835613c95c4710db8f7efd406eac66f3a35f420bcb138f7ca5c9b20e02c8de` |
| `source_sampling_build_3` | `WeilConductorThreeSourceModulus.lean` | `012aecb01467c62d7b4f78abd83cea2e19d954532bfac31afb5af17263d5a23d` |
| `source_sampling_build_3` | `WeilConductorThreeSourceSampling.lean` | `8e7ac4ba788e6bfabea8c3a2aaf1b70e67710446ab36f1b5144a3f6e906951ba` |
| `source_sampling_build_3` | `WeilConductorThreeSourceCertificates.lean` | `ff835613c95c4710db8f7efd406eac66f3a35f420bcb138f7ca5c9b20e02c8de` |
| `source_sampling_build_4` | `WeilConductorThreeSourceModulus.lean` | `012aecb01467c62d7b4f78abd83cea2e19d954532bfac31afb5af17263d5a23d` |
| `source_sampling_build_4` | `WeilConductorThreeSourceSampling.lean` | `ae077372173ab36eb69373bb8be53f069211736ebc5803d8292c76aa015972bf` |
| `source_sampling_build_4` | `WeilConductorThreeSourceCertificates.lean` | `ff835613c95c4710db8f7efd406eac66f3a35f420bcb138f7ca5c9b20e02c8de` |

A stopped aggregate build does not establish a check of downstream modules
that were not reached. The successful final aggregate build and audit below
supply the final-source evidence.

The first attempt exposed two pointwise-function simplification obligations
in the modulus source. They were corrected by explicitly reducing function
zero and subtraction application. The analogous zero-application reduction
was also made explicit in the sampling zero lemma. These corrections do not
change any mathematical statement or hypothesis. The second attempt showed
that elaborating the simplifier argument did not unfold membership in
`Ioi 0` when applying `.le`. The correction introduces an explicitly typed
nonnegativity fact before simplifying the minimum. Any later failed attempt
retains its own source-bound diagnostics above. The third attempt passed
the modulus module and exposed a normalization mismatch between `min |0| r`
and `min 0 r` in the sampling source zero lemma. The local zero-integral
fact was stated in the normalized form; its statement `K(0)=0` is unchanged.
The fourth attempt passed the sampling module and reached the consumer.
Its three errors were corrected by using the established explicit two-point
matrix presentation for the strict sign control, rewriting the gamma identity
pointwise, and normalizing only the first gamma slope instead of evaluating
the entire finite-sum hypothesis. The source statements, carrier, constants,
and producer quantifiers remain unchanged.

### Final-source transitive axiom audit

A separate fresh Lean process, labeled `source_sampling_axioms_1`, imported
the aggregate target and printed the transitive axioms of every new public
declaration. It **PASSED**, exit `0`, in
**164.663 seconds**. Coverage is **47 public declarations:
41 theorems and six definitions**. No declaration was missing, and every
axiom set is a subset of `propext`, `Classical.choice`, and `Quot.sound`.
Private helpers are covered transitively by the public consumers.

The audit and successful build have identical source and dependency-pin
hashes. No new `sorry`, `admit`, axiom declaration, or `native_decide` is
present in the three new Lean files. The existing rational checker and its
previous kernel-evaluated acceptance theorem are reused without change.

| Final checked source | SHA-256 |
| --- | --- |
| `WeilConductorThreeSourceModulus.lean` | `012aecb01467c62d7b4f78abd83cea2e19d954532bfac31afb5af17263d5a23d` |
| `WeilConductorThreeSourceSampling.lean` | `ae077372173ab36eb69373bb8be53f069211736ebc5803d8292c76aa015972bf` |
| `WeilConductorThreeSourceCertificates.lean` | `90c5b659b64d16ceb5896acc18c1ac7016afc1130b41ea568b562281636ee262` |

Warnings in imported cached modules remain at their original scope.
Lake's cache label `Replayed` is not a fresh proof-term replay claim.
Source-bound logs and operational receipts are kept outside this pure
mathematical checkout.

### Review and checks not performed

AI-assisted mathematical/source review checked the full-source identity,
actual gamma endpoint and complete tail, fixed matrix identity, whole-cell
modulus, original Lebesgue mass, conjugate-first complex coordinates, exact
zero-sum reduction, arbitrary/identity packet metrics, accepted tolerance
sign, the actual two-cell source interval, coefficient improvement, and
uniform producer quantifiers. The signed-width analytical comparison and
full-space negative control supply additional checks of the argument.
They share maintained source observations and are not independent external
mathematical review.

The following remain **NOT_RUN** for this increment:

- Fresh proof-term replay of the entire dependency closure.
- Independent external mathematical review.
- Independently implemented kernel checking.

No interrupted or timed-out formal attempt occurred in this increment.
The historical written finite-head obstruction, broader Sobolev/Fourier
arguments, and unrelated geometric route retain their separate evidence
statuses. The required all-precision accepted full-source certificate
producer remains open, as do complete fixed-window positivity,
all-window/all-conductor positivity, RH, and GRH.
