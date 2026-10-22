# Pinned smooth Urysohn brackets for Wiener–Ikehara interval limits

Issue: #950. Parent: issue #940 / draft PR #944.
Branch: research/950-wi-smooth-interval-brackets-v01.
Exact base: 25de08401117faf2d38bb5cb6adda18d4c5af6ab.
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## 1. One exact mathematical supplier

The historical Prime Number Theorem + project passes from a smoothed Wiener–Ikehara theorem to an indicator-function interval limit. The discontinuous indicator must be bounded above and below by actual smooth compactly supported functions, with integral masses arbitrarily close to the interval length. Its own smooth Urysohn theorem targets an older Lean/Mathlib revision and cannot be imported directly without a compatibility proof.

This child constructs the precise approximation from pinned Mathlib. It does not provide the smoothed Wiener–Ikehara limit itself.

For real numbers 0<a<b and 0<eta<min(a,b-a), the source constructs smooth lower and upper real functions, both valued in [0,1], such that

    0 <= lower <= indicator_[a,b) <= upper <= 1.

The integrals obey

    b-a-eta <= integral_(0,infty) lower
    integral_(0,infty) upper <= b-a+eta.

Both functions have compact support whose closure lies strictly inside the positive reals, as required by the Mellin/Fourier formulation.

## 2. Pinned smooth Urysohn input

Pinned Mathlib revision: db584cd6d46c92f209a44c0f1c829460d327499d.
File: Mathlib/Geometry/Manifold/PartitionOfUnity.lean.
Pinned blob: e9d0243283efab7d65cd7144ef21bf1b717e5eb0.
Theorem: exists_contMDiff_zero_iff_one_iff_of_isClosed.

For u<v and w<z, take disjoint closed sets

    S = (-infty,u] union [z,infty)
    T = [v,w].

The pinned theorem supplies a smooth real function phi in [0,1], vanishing exactly on S and equal to one on T. Therefore its support is exactly (u,z). The closure of its support lies in the compact closed interval [u,z], and when u>0 this closure is a subset of (0,infty).

The authored declarations pinnedSmoothUrysohnIoo and pinnedIntervalSupport_closure_away construct the witnesses and preserve support separation from zero.

## 3. Lower smooth bracket

Set u=a, v=a+eta/2, w=b-eta/2 and z=b. Since eta<b-a, the inner closed interval is nonempty. The lower bump is supported in (a,b), equals one on [v,w], and is nonnegative. It satisfies

    indicator_[a+eta/2,b-eta/2] <= lower <= indicator_[a,b).

Thus the pinned interval-volume and set-integral comparisons give

    integral_(0,infty) lower
       >= (b-eta/2)-(a+eta/2)
       = b-a-eta.

The source declaration is pinnedSmoothIntervalLower.

## 4. Upper smooth bracket

Set u=a-eta/2, v=a, w=b, z=b+eta/2. Because eta<a, the lower support endpoint u is positive. The upper bump is one on the FULL closed interval [a,b], supported in (u,z), and obeys

    indicator_[a,b) <= upper <= indicator_(a-eta/2,b+eta/2).

The upper bracket dominates at a, the included arithmetic endpoint. Its mass satisfies

    integral_(0,infty) upper
      <= (b+eta/2)-(a-eta/2)
      = b-a+eta.

The source declaration is pinnedSmoothIntervalUpper. The combined theorem pinnedSmoothIntervalBrackets_exists packages both genuine functions with the SAME error eta and all pointwise, support, smoothness and integrability properties.

## 5. Source-consuming finite arithmetic inequality

For any finite index set F and any nonnegative arithmetic sequence f, the same smooth witnesses give the exact finite weighted comparison

    sum_(n in F) f(n) lower(n/T)
      <= sum_(n in F) f(n) indicator_[a,b)(n/T)
      <= sum_(n in F) f(n) upper(n/T).

The hostile-control module proves this from actual termwise nonnegative multiplication, without assuming or deriving convergence of infinite sums. It also constructs an explicit witness when a=1/2, b=1 and eta=1/8, retaining strict positivity and width obligations.

## 6. Historical source and the independent analytic gate

Historical source: AlexKontorovich/PrimeNumberTheoremAnd at revision
a5040887e6bb24f7c201db8568e7755c138b3878.

- Wiener.lean blob 06d464bfbf34b21360a8c725422d6c7d1cb4c2eb: source declarations wiener_ikehara_smooth_real and WienerIkeharaInterval, around lines 1790–2027.
- SmoothExistence.lean blob 198c43f9d13429531d2d6d90a58a0d3f0f0b033d: external smooth_urysohn_support_Ioo helper.

External Mathlib pin: 308445d7985027f538e281e18df29ca16ede2ba3.
Local Mathlib pin: db584cd6d46c92f209a44c0f1c829460d327499d.

The actual smooth-test Wiener–Ikehara convergence theorem remains OPEN, including the Fourier/Schwartz or distribution-theoretic proof, source normalization, and transitive dependency/kernel audit. The next analytical transport would combine smooth-test convergence and these positive brackets to derive interval limits. No such convergence proof is silently supplied by finite inequalities or by GitHub provenance metadata.

The earlier PR #944 de-windowing lemma still consumes the real interval-limit theorem as an explicit premise. This new bounded increment supplies a nontrivial part of the smoothing-to-interval argument but does not prove that analytical supplier.

## 7. Evidence and research disposition

The mathematical smooth interval-bracketing statement is unconditional and follows from existing smooth Urysohn mathematics and interval measure. The Lean file authors that proof from pinned declarations.

This execution has no local Lean/Lake executable, and no kernel-elaboration run has occurred. All statements in this packet are SOURCE_DRAFT, not KERNEL_CHECKED, and require exact-head replay under trust issue #100.

This branch remains a negative audit of the mathematically rejected fixed all-target integer-psi quadratic capacity. It neither rescues that false supplier nor proves RH or rules out different arithmetic/smoothed responses.

Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PINNED_SMOOTH_INTERVAL_BRACKETS_DEFINED / SMOOTH_WIENER_IKEHARA_LIMIT_OPEN / NO_RH_CLAIM.
