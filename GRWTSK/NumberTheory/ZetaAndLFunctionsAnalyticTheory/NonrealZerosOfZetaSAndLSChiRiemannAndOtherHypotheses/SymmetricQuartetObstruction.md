# Symmetric quartet obstruction: declaration-level provenance

Local attribution: grwtsk contributors.

## Exact source and evidence scope

Canonical Lean source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SymmetricQuartetObstruction.lean`.
Namespace: `GRWTSK.NumberTheory.SymmetricQuartetObstruction`.
Source SHA-256: `666ed2ef2f9515f38714c928b1f3e7d7310ed409b645e82719ea4e1663b64b4d`.
Source Git blob: `20e77a042e248aa8b977f600d93cfbcc93783cfe`.
Inspection base: `grwtsk/math` commit `98e14f6db72c460f28f7099c5dc8b759378ed425`; this is not asserted to be the eventual publication parent.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Publication and any later verification receipt: <https://github.com/grwtsk/math/issues/1803>.

**Source proof candidate.** Lean parsing/elaboration/build, fresh kernel replay, transitive axiom audit, CI, numerical execution, independent reproduction and independent mathematical review: **NOT_RUN**. No novel result or priority is asserted. A textual proof body and Git publication are not kernel acceptance. The imported source candidates are not reverified here.

Paper: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 14.5, printed p.30 / PDF p.39, and section 20.5 (RP-OC-09), printed p.45 / PDF p.54. Supplied filename: `Typed_Mathematical_Architecture_and_Off_Critical_Research.pdf`. Exact supplied-byte SHA-256: `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. The paper was supplied as an attachment; the coordination issue is the persistent source-identification record, not a claim of a new public PDF download. No third-party PDF is copied into this repository.

The twenty numbered sections below are individual theorem provenance records sharing the exact local source, paper edition, pins, evidence status and limits in this header. Each gives its fully qualified declaration, source correspondence, hypotheses, conclusion, argument and consumer. The paper's unnumbered polynomial example is not mislabeled as a numbered literature theorem. Entries marked local consequence are not quotations from the monograph.

## Primary argument and backward consumer

For real gamma and epsilon, the literal source is

`P(z)=((z-gamma)^2+epsilon^2)*((z+gamma)^2+epsilon^2)`.

Since `(epsilon*I)^2=-epsilon^2`, each quadratic factors, giving the four labeled roots `gamma+epsilon*I`, `gamma-epsilon*I`, `-gamma+epsilon*I`, and `-gamma-epsilon*I`. The field zero-product property proves these are all the zeros, without assuming distinctness. All roots have imaginary-part absolute value `abs(epsilon)`. Thus for `gamma>0` and `0<epsilon<1/2`, P is a nonzero even entire real-type function with its *entire* zero set in the critical spectral strip, but not on the real axis. At epsilon=0 and gamma!=0 the factor at the opposite center is nonzero, so the actual analytic order at each center is two. At gamma=epsilon=0 the function is z^4, giving order four instead. This boundary invalidates silently dropping the distinct-center hypothesis.

An algebraically different check of the symmetry is the coefficient expansion

`P(z)=z^4+2*(epsilon^2-gamma^2)*z^2+(gamma^2+epsilon^2)^2`.

This is a written algebraic comparison, not an independently executed computation or independent review. The source proves the expanded identity; it does not separately formalize a `Polynomial.natDegree` theorem.

The original arithmetic consumer remains the existing
`GRWTSK.NumberTheory.DirichletQuadraticClusterReturn.PrimitiveDirichletCriticalStripGRH`,
whose target uses actual `DirichletCharacter.LFunction` values. Its source charts and Hermite nonnegativity suppliers remain explicit obligations. Here each factor instead has discriminant parameter `-epsilon^2`. Symmetry, analyticity and strip confinement cannot supply that missing nonnegative-discriminant premise for arbitrary functions.

The final theorem uses the already maintained `spectralCoordinate` and `arithmeticCoordinate`. It sends the explicit synthetic root to `s=1/2-epsilon+I*gamma`, so `0<re(s)<1` and `re(s)!=1/2`. The conclusion is only that the *quartic composed with the spectral coordinate* vanishes. It is not a zero of any Dirichlet L-function. No Euler product, conductor, gamma factor, pole-inclusive Weil identity or arithmetic realization is supplied or changed.

## Canonical comparison and reuse

Inspected at the inspection base, without claiming a corpus-wide duplicate audit:

- `GRWTSK/FunctionsOfAComplexVariable/QuadraticClusterReality.lean`: reuse `quadratic`, `AllRootsReal`, `quadratic_eq_two_factors` and `quadratic_order_at_collision` rather than introduce alternate cluster semantics.
- `GRWTSK/FunctionsOfAComplexVariable/AnalyticOrderTransport.lean`: reuse `order_mul_nonzero_right`, retaining its analyticity and nonvanishing hypotheses.
- Adjacent `WeilNegativeWitness.lean`: reuse its spectral coordinate, whose imaginary part is `1/2-re(s)`.
- Adjacent `DirichletQuadraticClusterReturn.lean`: reuse the inverse coordinate and inspect the actual all-character critical-strip target and conditional chart consumer.
- Adjacent `FiniteSamplingZeroObstruction.lean`: preserve the existing arbitrary-finite-sampling result. That construction did not assert confinement of all its roots to the critical spectral strip; this separate literal quartet fixture does not assert finite-sample agreement.

Mathlib's maintained analytic-order API is described at <https://leanprover-community.github.io/mathlib4_docs/Mathlib/Analysis/Analytic/Order.html>. Current documentation was used only as an API comparison; it is not substituted for the pinned dependency or for actual elaboration. The mathematical methods are elementary factorization and the standard order law for nonvanishing analytic multipliers. Novelty remains unassessed; no novelty is claimed.

## Individual declaration records

### 01. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_eq_quadratics`

**Source/type:** local representation identity for the literal section 14.5 family. **Statement:** for all real gamma, epsilon and complex z, P(z) equals the product of the existing centered quadratics with centers gamma and -gamma and discriminant parameter `-epsilon^2`. **Argument:** unfold both definitions and transport real casts, negation and squares. **Consumer:** the existing Program 5 factorization and collision-order results. No positivity, source arithmetic identity or distinctness is assumed.

### 02. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_expansion`

**Source/type:** local algebraic consequence of section 14.5. **Statement:** the explicit quartic coefficient expansion above holds for all parameters and z. **Argument:** expand the product in the complex commutative ring. **Consumer:** an alternate explanation of real coefficients and evenness. This is a function identity, not a separately typed polynomial degree result.

### 03. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_even`

**Source/type:** direct formalization of section 14.5 sign symmetry. **Statement:** P(-z)=P(z) for arbitrary real parameters. **Argument:** use the coefficient expansion; the variable occurs only in even powers. **Consumer:** NC9-SYM preserves sign symmetry without assuming real zeros.

### 04. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_conj`

**Source/type:** direct formalization of section 14.5 conjugation symmetry. **Statement:** P(conj z)=conj(P(z)). **Argument:** conjugation preserves addition, multiplication and powers and fixes real parameters. **Consumer:** the real-type condition in the rejection fixture. This does not assert an arithmetic functional equation.

### 05. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_differentiable`

**Source/type:** standard analytic consequence of the section 14.5 polynomial. **Statement:** P is complex differentiable everywhere for fixed real parameters. **Argument:** differentiation closure for constants, identity, sums, products and natural powers. **Consumer:** the entire-function comparison class. No parameter-continuation or growth theorem is inferred.

### 06. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_neg_center`

**Source/type:** local symmetry identity. **Statement:** replacing gamma by -gamma preserves the whole function. **Argument:** exchange the two factors and use commutativity. **Consumer:** return the positive-center collision-order result to the negative center without duplicating order theory.

### 07. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.imaginary_displacement_sq`

**Source/type:** elementary helper, not a separate paper theorem. **Statement:** `(epsilon*I)^2=-epsilon^2` as a complex identity. **Argument:** `I^2=-1`, multiplication of powers and the real-to-complex map. **Consumer:** the explicit square-root input to the existing quadratic factorization theorem.

### 08. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_factorization`

**Source/type:** direct algebraic formalization of section 14.5. **Statement:** P is the product of the four displayed linear factors for all real parameters. **Argument:** apply the existing two-factor theorem to each centered quadratic with the preceding square identity. **Consumer:** complete zero-set reasoning and retention of repeated labels. Distinctness is deliberately not required.

### 09. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_zero_iff`

**Source/type:** direct formalization of the section 14.5 zero locations. **Statement:** P(z)=0 exactly when z equals at least one of the four displayed roots. **Argument:** apply the field zero-product property to the factorization. **Consumer:** no unlisted zeros in the strip fixture. The disjunction is a zero-set description, not a multiplicity count.

### 10. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_at_positive_root`

**Source/type:** local witness selection from section 14.5. **Statement:** `gamma+epsilon*I` is a zero for every parameter pair. **Argument:** select the first disjunct of the exact zero characterization. **Consumer:** explicit nonreal and arithmetic-coordinate witnesses. This theorem alone does not assume epsilon nonzero.

### 11. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_zero_im_abs`

**Source/type:** local strengthening of the section 14.5 control. **Statement:** every zero has `abs(im(z))=abs(epsilon)`. **Argument:** check all four alternatives from the exact zero-set theorem and the imaginary part of the real parameters. **Consumer:** full-divisor location, not merely existence of one suitably placed root.

### 12. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_roots_in_strip`

**Source/type:** local consequence. **Hypotheses:** real A with `abs(epsilon)<A`, and P(z)=0. **Conclusion:** `abs(im(z))<A`. **Argument:** substitute the preceding equality. **Consumer:** a negative control whose entire zero set satisfies the same strip confinement demanded of the comparison class. No arithmetic zero is identified.

### 13. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_allRootsReal_iff`

**Source/type:** local exact criterion extending the section 14.5 example. **Statement:** the existing `AllRootsReal P` predicate is equivalent to epsilon=0 for every real gamma. **Argument:** the explicit positive-center root has imaginary part epsilon; conversely, epsilon=0 makes all four alternatives real. **Consumer:** rejects the inference from symmetry to real-rootedness, including the degenerate center case.

### 14. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_at_zero`

**Source/type:** local evaluation identity. **Statement:** P(0) is the complex embedding of `(gamma^2+epsilon^2)^2`. **Argument:** substitute zero into the literal factors. **Consumer:** the non-identically-zero guard. No normalization P(0)=1 is claimed.

### 15. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_not_identically_zero`

**Source/type:** local guard for section 20.5. **Hypothesis:** gamma!=0. **Conclusion:** P is not the zero function. **Argument:** its value at zero is strictly positive as a real number, hence nonzero after complex embedding. **Consumer:** exclude a vacuous zero-function artifact in the strip counterexample. The hypothesis is sufficient, not asserted necessary.

### 16. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_order_at_positive_collision`

**Source/type:** direct formalization of the section 14.5 double collision, reusing existing order theorems. **Hypotheses:** epsilon=0 and gamma!=0. **Conclusion:** `analyticOrderAt (quartet gamma 0) gamma=2`. **Argument:** the centered quadratic has order two; the opposite-center factor is analytic and nonzero at gamma. Apply the maintained nonzero-multiplier rule. **Consumer:** preserve actual multiplicity, not distinct-root cardinality.

### 17. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.quartet_order_at_negative_collision`

**Source/type:** direct formalization of the other section 14.5 collision. **Hypotheses:** epsilon=0 and gamma!=0. **Conclusion:** the analytic order at -gamma is two. **Argument:** use center-exchange equality and the preceding theorem at -gamma. **Consumer:** both collision centers, with the same nonvanishing guard.

### 18. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.zero_center_order_four`

**Source/type:** additional hostile boundary, outside the paper's gamma>0 convention. **Statement:** at gamma=epsilon=0 the analytic order at zero is four. **Argument:** identify the function with z^4 and use the centered-monomial order law. **Consumer:** rejects deleting gamma!=0 from the two preceding double-collision assertions. This extension is identified explicitly rather than attributed verbatim to the paper.

### 19. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.symmetric_strip_counterexample`

**Source/type:** combined NC9-SYM acceptance/rejection fixture, local consequence of sections 14.5 and 20.5. **Hypotheses:** gamma>0 and 0<epsilon<1/2. **Conclusion:** P is entire, even, conjugation-compatible, not identically zero, all its zeros satisfy `abs(im(z))<1/2`, and not all zeros are real. **Argument:** assemble the preceding exact results. **Consumer:** reject the claimed implication from those preserved properties to real-zero localization. No numerical sampling, inference about primitive characters or arbitrary algorithmic undecidability is asserted.

### 20. `GRWTSK.NumberTheory.SymmetricQuartetObstruction.arithmetic_strip_witness`

**Source/type:** local source-separated coordinate return, not an arithmetic theorem. **Hypotheses:** any real gamma and 0<epsilon<1/2. **Conclusion:** there exists s with 0<re(s)<1, re(s)!=1/2, im(s)=gamma and `quartet gamma epsilon (spectralCoordinate s)=0`. **Argument:** choose the existing arithmetic coordinate of `gamma+epsilon*I`; compute re(s)=1/2-epsilon and check the existing spectral inverse on that point. **Consumer:** a synthetic critical-strip negative fixture using the same coordinate convention as the actual GRH consumer. It does not replace the L-function by this polynomial in any arithmetic theorem.

## Static clean-checkout verification specification

These commands are a specification, **not an executed receipt**. Checkout the publication commit recorded in issue #1803, preserve its toolchain and manifest, and run in an authorized verification environment:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.SymmetricQuartetObstruction
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SymmetricQuartetObstruction.lean
```

Verify the source digest above, every imported module at that commit, and the twenty declarations. For a separate axiom probe, import that exact module and use `#print axioms` on `symmetric_strip_counterexample`, `arithmetic_strip_witness`, both collision-order declarations and `zero_center_order_four` with their full namespace. Record the output and its complete dependency scope; ordinary compilation alone is not a fresh kernel or transitive axiom audit.

Expected formal conclusions: the exact synthetic statements above, with their displayed hypotheses. Known execution status: NOT_RUN, not PASS. Local `lean` and `lake` were absent. No Noe proof automation, browser messaging, scheduled action or remote verification job was invoked. No numerical experiment was conducted. The actual all-character arithmetic source identification, Weil positivity and GRH obligations are unchanged. Remaining Program 9 normalization, nonnormal-resolvent and runtime controls remain separate targets.
