# Smooth Wiener test limits imply the exact half-open relative-window theorem

Issue: #964.
Parent: #950 / draft PR #960.
Implementation branch: research/964-wi-smooth-to-interval-v01.
Exact parent head: f33e4ab9f4a0468b95dd46221158ee3ae0ea5e72.

Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 1. Precise consumed smooth theorem

The historical Prime Number Theorem + project's real-valued smooth Wiener-Ikehara source says that for every infinitely differentiable compactly supported test function φ on the positive half-line (support closure separated from zero), the normalized arithmetic sum tends to its residue-weighted integral:

    (1/T) sum_(n>=0) f(n)*φ(n/T)
      -> A * integral_(0,infty) φ(t) dt.

The new source selects the actual residue-one case A=1. It defines the full theorem *proposition* SmoothUnitResidueWienerTestLimit f with all test-function quantifiers, smoothness, compact support and positive-support hypotheses. It does not construct a proof term for that proposition from Dirichlet-series boundary continuation.

For the pinned arithmetic sequence f=Λ, the missing input is precisely PinnedVonMangoldtSmoothWienerLimit, the source-normalized f=Λ specialization of the historical wiener_ikehara_smooth_real statement.

The genuine analytic Fourier/Schwartz Wiener-Ikehara source is NOT imported: historical PNTAnd revision a5040887e6bb24f7c201db8568e7755c138b3878 pins Mathlib 308445d7985027f538e281e18df29ca16ede2ba3, whereas this repository pins db584cd6d46c92f209a44c0f1c829460d327499d.

## 2. The index and summability identities are mathematical obligations

For each real T>0, every natural n, and positive half-open interval [a,b), the source proves the EXACT equivalence

    n ∈ Finset.Ico ⌈a*T⌉₊ ⌈b*T⌉₊
      ↔ (n:Real)/T ∈ Set.Ico a b.

Both boundaries are ceilings. The half-open source includes a whenever n/T=a, and excludes b whenever n/T=b. The exact resulting sum formula is

    tsum_n f(n)*indicator_[a,b)(n/T)
      = sum_(⌈a*T⌉₊ <= n < ⌈b*T⌉₊) f(n).

This is an equality for all positive real T, not an asymptotic with an unaccounted O(1) or endpoint multiplicity term.

The source separately proves that a compactly supported smooth test φ gives a FINITELY supported sequence n↦f(n)φ(n/T) for every T>0. This uses the actual compact-support bound and n/T ≤ M ⇒ n ≤ MT; it does not invoke PNT or assume the infinite series summable by analogy. The indicator test is likewise finitely supported using the exact ceiling membership identity. Therefore the comparison of these infinite sums through Summable.tsum_le_tsum is legitimate.

## 3. A genuine positivity sandwich of arithmetic series

Assume f(n)≥0 for all n. The parent PR #960 produces real smooth functions lower, upper such that

    0 ≤ lower(t) ≤ indicator_[a,b)(t)
                   ≤ upper(t) ≤ 1

with compact support separated from zero and quantitative integral mass controls

    b-a-eta ≤ integral_(0,infty) lower
    integral_(0,infty) upper ≤ b-a+eta.

For each T>0, the source now proves TERM BY TERM and through actual summable series

    (1/T) tsum_n f(n)*lower(n/T)
      ≤ (1/T) tsum_n f(n)*indicator_[a,b)(n/T)
      ≤ (1/T) tsum_n f(n)*upper(n/T).

The inequalities are not inferred merely from comparing integrals. They use coefficient nonnegativity and the actual parent pointwise bracket.

## 4. Epsilon proof of the interval limit

Let L=b-a and fix ε>0. Choose one positive

    eta = min(a/2, (b-a)/2, ε/4).

The hypotheses 0<a<b guarantee eta>0, eta<a and eta<b-a. The parent source then supplies the two genuine witnesses using the SAME eta. The smooth Wiener limit input, instantiated independently on lower and upper, gives sufficiently large T for which

    |smoothLower(T) - integral lower| < ε/4
    |smoothUpper(T) - integral upper| < ε/4.

Their integral mass bounds and the arithmetic sandwich yield

    L - eta - ε/4 < interval(T)
    interval(T) < L + eta + ε/4,

where interval(T) is the normalized ACTUAL half-open indicator arithmetic series. As eta≤ε/4, the epsilon criterion for

    interval(T) -> b-a

follows. This is a real mathematical limit theorem, not the definition of an interval limit and not a claim that the smoothing limit holds automatically.

The authored declaration is smoothWiener_testLimit_to_realInterval.

## 5. Exact natural-scale transport and the real Λ consumer

Composition with the genuine limit N↦(N:Real)→+∞, together with the all-positive-T identity of section 2, gives

    Tendsto
      (fun N:Nat =>
        (sum_(n∈Finset.Ico ⌈a*N⌉₊ ⌈b*N⌉₊) f(n))/N)
      Filter.atTop (nhds (b-a)).

The source theorem smoothWiener_testLimit_to_integerWindow states this for every 0<a<b, preserving the right-open integer endpoint.

For the actual pinned von Mangoldt coefficients, f=Λ and b=1, the upper ceiling equals the exact integer N. Therefore the source now authors the conditional theorem

    pinnedVonMangoldt_relativeWindows_of_smoothWiener
      (h : PinnedVonMangoldtSmoothWienerLimit) :
        PinnedVonMangoldtRelativeIntervalLimits.

This is exactly the **independent** interval-source proposition consumed by the prior genuine Tauberian de-windowing theorem pinnedVonMangoldtWeakPNT_of_intervalLimits in PR #944. The controls compose them to obtain the range-open weak-PNT limit, still conditional on the unimported smooth-test theorem.

## 6. Hostile controls

The source consumers prove and check:
- real interval membership at BOTH ceiling endpoints;
- exclusion when n/T=b, the right endpoint;
- exclusion of n=0 when a>0;
- literal equality of finite indicator sums and their historical tsum form;
- summability of actual pinned Λ smooth weights from compact support;
- conditional transport to the exact existing relative-window theorem;
- conditional last-mile weak PNT;
- the zero coefficient sequence CANNOT satisfy the unit-residue smooth Wiener test theorem: choose the actual positive smooth bracket at [1/2,1), eta=1/8, whose lower integral is positive, and use uniqueness of a constant zero limit.

A fixed finite computation, a source label, or a generic boundary-continuity theorem cannot create a witness inhabiting the smooth Wiener limit proposition.

## 7. Provenance and remaining theorem

Historical analytic proof source:
- AlexKontorovich/PrimeNumberTheoremAnd, historical commit a5040887e6bb24f7c201db8568e7755c138b3878.
- PrimeNumberTheoremAnd/Wiener.lean, blob 06d464bfbf34b21360a8c725422d6c7d1cb4c2eb.
- Historical theorem family: wiener_ikehara_smooth_real, WienerIkeharaInterval, WienerIkeharaInterval_discrete', WeakPNT.

Local pinned Mathlib:
- revision db584cd6d46c92f209a44c0f1c829460d327499d.
- Mathlib/Geometry/Manifold/PartitionOfUnity.lean for the smooth witnesses from PR #960.
- Mathlib/Analysis/SpecificLimits/Basic.lean for natural-scale divergence.
- The actual von Mangoldt and Chebyshev sources already bound on the parent stack.

REMAINING INDEPENDENT SUPPLIER: prove or compatibly port the genuine smoothed Wiener-Ikehara convergence theorem for every smooth compactly supported φ with positive support, using the actual pinned f=Λ, complexified L-series, normalized pole-subtracted q=1 auxiliary, Fourier/Schwartz machinery, and full transitive theorem/axiom closure.

Only after that theorem is proved and this child/prior stack are elaborated and audited can the formal chain be reported as unconditional. The smooth convergence is not replaced by a conjectural premise masquerading as a kernel-verified theorem.

## 8. Epistemic status

The **mathematical** smoothing-to-interval implication is standard and is proved here at source text level through a real epsilon argument, literal arithmetic comparisons, and compact-support finite summability.

The **formal artifact** is SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. No local lean or lake binary was present, no exact-head compilation or generated axiom report was performed, and no GitHub Actions job was run in this child.

This stack belongs to a negative audit of a **mathematically rejected** fixed uniform integer-psi quadratic-capacity premise. It does not recover that false premise, establish RH, or exclude unrelated signed/smoothed approaches.
