# Disk-normalized factors and the analytic logarithmic-derivative contribution

Parent: #189. Consumer: #261. Program: #257. Reviewed parent PR #296 at
`c0f1a43fda1cc81f8d5fc7056498b7a999ca8629`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The Lean drafts derive the
factor normalization and logarithmic derivative, Borel--Caratheodory/Cauchy
estimate, actual finite disk inventory and its multiplicity bound, and a
conditional application to translated zeta. The construction of the actual
normalized logarithm below is **WRITTEN_ONLY / NOT_FORMALIZED**. In particular,
`norm_zeta_logDeriv_of_factorization` retains its actual source-factorization,
analytic-logarithm and real-part-ceiling hypotheses. No unconditional Lean
full-logarithmic-derivative theorem is claimed. Classical mathematics only.

## 1. Separate the disk count from the three-unit band

Retain the existing centers c = 2 +/- i(N+3/2), N>=2, actual canonical zeros,
analytic multiplicities, and separated height T_N. The parent supplies

    |zeta(s)| <= M_N := (N+2)^3 on the whole closed radius-three disk,
    |zeta(c)| >= 1/4,
    J_N = 2[log 4 + 3 log(N+2)]/log(6/5),
    delta_N >= 1/[4(J_N+1)],
    |sigma +/- iT_N - rho| >= delta_N for EVERY actual nontrivial zero.

Let H_N = log 4 + 3 log(N+2). Remove all zeros in the CLOSED radius-11/4
disk about c. This is a different inventory from heightBand N. A point at
1/2+i(N-1/2), for example, lies in the upper inner disk but not in the
three-unit band; this is a geometric example, not an assertion of a zeta zero.

The new `diskHead N c` filters the existing COMPLETE height head at N+5 by
actual disk membership. The triangle inequality proves that this cover loses
no canonical disk point, since |Im rho|<=N+3/2+11/4<N+5. Full complex points
are retained, even when their heights agree. Jensen on radii 11/4 and 3 gives

    Mdisk_N := sum_(rho in diskHead N c) m(rho)
       <= Q_N := H_N/log(12/11).

The denominator is log(12/11), NOT the old log(6/5). Disk-boundary zeros retain
full analytic order. This finite count and exact membership have Lean drafts
with no supplied circle ceiling, source identity or center floor.

## 2. Normalize the zero factors on the outer boundary

Use centered coordinates w=s-c and a=rho-c. For a strictly inside radius R,

    B_(R,a)(w) = R(w-a)/(R^2-conj(a)w).

The exact identity

    |R^2-conj(a)w|^2 - R^2|w-a|^2
      = (R^2-|a|^2)(R^2-|w|^2)

proves |B_(R,a)(w)|=1 when |w|=R. Its denominator is nonzero throughout the
closed disk when |a|<R. Its center value is -a/R. The supplied Lean scripts
prove these statements; the strict interior and nonzero-denominator guards
are not discarded.

At a point w!=a its logarithmic derivative is

    B'_(R,a)(w)/B_(R,a)(w)
      = 1/(w-a) + conj(a)/(R^2-conj(a)w).

The SECOND term must remain. For R=3,a=1,w=2, the derivative is 8/7, not 1.
For |a|<=11/4, |w|<=9/4,

    |9-conj(a)w| >= 45/16,
    |conj(a)/(9-conj(a)w)| <= 44/45 <= 1.

At a removed center Lean's totalized logDeriv is not this punctured formula.
All applications explicitly separate w from every included point.

## 3. Actual analytic normalization (written construction)

Set f(w)=zeta(c+w) and let P(w) be the finite product of B_(3,a)(w)^m(a) over
the complete radius-11/4 inventory. The outer disk is pole-free for N>=2;
its imaginary coordinates are bounded away from zero, so its zeta zeros are
all nontrivial. Local analytic factorization at their ACTUAL finite orders
shows that f/P extends holomorphically across every removed zero. Call the
extension g. It is analytic near the outer closed disk and has no zero on
the open radius-11/4 disk. This uses exact multiplicities, not an assumed
simple-zero model or a sampled zero list.

On the outer circle |P|=1, so |g|=|f|<=M_N. The maximum modulus theorem gives
|g|<=M_N throughout the disk. Since f(0)!=0, none of the a is zero; and
|P(0)|=product (|a|/3)^m<=1, hence |g(0)|>=|f(0)|>=1/4.

On the simply connected radius-11/4 disk, construct an analytic logarithm of
g/g(0) normalized by L(0)=0. Equivalently, take the primitive of g'/g whose
value at zero is zero; differentiating g exp(-L) makes it constant, yielding

    exp L(w) = g(w)/g(0),
    Re L(w) = log(|g(w)|/|g(0)|) <= log(4 M_N) = H_N,
    f(w) = g(0) exp L(w) P(w).

This is a LOCAL logarithm of the zero-removed factor, not a global branch of
log zeta across its zeros. Both g and L are constructed from the actual f;
there is no free residual chosen to enforce an equality.

Formalizing finite holomorphic division with center extensions, maximum-
modulus transport, and the normalized primitive/logarithm construction is
still required. The current Lean consumer keeps these suppliers visible.
The derivation above is not a kernel receipt or a claim those suppliers
already exist as Lean declarations in this increment.

## 4. Derive, rather than assume, the regular derivative bound

Borel--Caratheodory at radius 11/4 gives

    |L(w)| <= 2 H_N |w|/(11/4-|w|) <= 20 H_N, |w|<=5/2.

A radius-1/4 Cauchy circle about any |w|<=9/4 stays within radius 5/2.
Therefore

    |L'(w)| <= 80 H_N, |w|<=9/4.

These two steps are Lean proof drafts reusing the pinned upstream theorems.
The derivative bound is a conclusion, not an application hypothesis.
Differentiating the actual neighborhood factorization yields

    zeta'(c+w)/zeta(c+w)
      = L'(w) + sum_a m(a)[1/(w-a) + conj(a)/(9-conj(a)w)].

The generic Lean theorem proves the same equality and bounds it from an
explicit neighborhood factorization. A pointwise equality at one sample
cannot substitute for that neighborhood premise.

## 5. Consequence on the central horizontal segment

For 0<=sigma<=2 and y=+/-T_N, choose the matching signed center c. The old
height selection gives |y-Im c|<=1/2, so

    |sigma+iy-c|^2 <= 4+1/4 < (9/4)^2.

The GLOBAL zero separation applies even to disk zeros outside heightBand.
The written actual construction above, the new disk count, and the generic
bound thus give the ordinary-mathematical full-source estimate

    |zeta'(sigma +/- iT_N)/zeta(sigma +/- iT_N)|
      <= 80 H_N + Q_N [4(J_N+1)+1],  0<=sigma<=2, N>=2.

This is O(log^2(N+2)) with explicit displayed constants. It includes the
analytic factor and the reflected denominator terms; it is not merely the
old local principal-sum estimate. The corresponding LEAN APPLICATION IS
CONDITIONAL on the normalized-log construction from Section 3.

The interval [-3,0) is NOT covered. At the same height, real part -3 is at
distance at least five from the center. Functional-equation/digamma control
or another justified covering argument is still needed for that part of
#291's fixed strip. Hence no complete horizontal decay, height-infinite tent
explicit formula, canonical prime-consumer discharge, or positive
all-interval margin follows from this increment.

## 6. Verification boundary

Source scripts and exact finite algebra diagnostics do not prove Lean
elaboration or universal complex analysis. The external checker uses only
Fraction arithmetic: independent polynomial quotient differentiation,
Gaussian-rational boundary points, factor multiplicities, signs, denominator
margins, finite geometric inventories, and outward logarithm enclosures.
There is no actual zeta evaluation, zero database, certified spectral prime
certificate, native Lean evaluation, build request, worker launch, merge or
hold release. Full exact-head elaboration and transitive trust auditing remain
required for every new and inherited source.

## Primary source bindings

The maintained source is at math commit c0f1a43fda1cc81f8d5fc7056498b7a999ca8629.
Upstream Mathlib is pinned to db584cd6d46c92f209a44c0f1c829460d327499d:

- Mathlib/Analysis/Complex/BorelCaratheodory.lean:
  Complex.borelCaratheodory_zero (Maksym Radziwill).
- Mathlib/Analysis/Complex/Liouville.lean:
  Complex.norm_deriv_le_of_forall_mem_sphere_norm_le (upstream authors).
- Mathlib/Analysis/Calculus/LogDeriv.lean:
  logDeriv_prod, logDeriv_fun_pow, logDeriv_congr_nhds (Chris Birkbeck).
- The existing JensenFiniteMultiplicity and CubicZetaCircleBound modules
  provide actual source-bound multiplicity and modulus estimates.
