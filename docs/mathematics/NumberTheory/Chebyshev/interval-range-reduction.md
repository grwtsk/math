# Dyadic logarithms and nonamplifying Mellin input errors

Owner #194; exact-kernel consumers #189/#209/#261. Additive source extension
of draft #274 at parent `ed0cadca71b928d22fb8bd54a182003bf1f85802`, tree
`52c84a31bfe4388161f202fe2337abe2863e5337`. Mathlib remains pinned to
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The mathematical derivations
below accompany Lean proof candidates. Source presence, rational sanity checks,
and high-precision floating comparisons do not establish elaboration, transitive
trust acceptance, or a qualified executable evaluator. No novelty claim is made.
All preceding owners, roots, targets, source identities, and objections are retained.

## 1. The identified cost comes from the interval, not the logarithm's value

The previous exact-node logarithm enclosure uses a uniform reciprocal grid on
[1,t]. Its radius is exactly `(t-1)^2/(2Lt)`, growing approximately like t/(2L)
for fixed L and large t. A correctness theorem for that bound does not make it
a useful precision choice at large square stages.

For t>=1 choose a natural k with `2^k <= t < 2^(k+1)`, and set `r=t/2^k`.
The pinned Archimedean power theorem supplies existence. A rational selector can
check the two power inequalities using integers; this source does not qualify
such an implementation. The source's analytic bounds also permit r=2. Thus a
boundary input can have two valid scales; uniqueness is not needed.

The exact identity is

    t = 2^k r,    log t = k log 2 + log r,    1 <= r <= 2.

It is proved by the existing real-log division and natural-power identities.
No floating logarithm is used to establish a scale, and wrong scale data cannot
be made valid by an approximate reconstruction field.

## 2. Reuse the existing reciprocal grids only on [1,2]

Write c_L(s), eta_L(s) for the previous `logCenter`, `logRadius`. Use positive
resolutions L_2 and L_r, and define

    c = k c_(L_2)(2) + c_(L_r)(r),
    eta = k eta_(L_2)(2) + eta_(L_r)(r).

Both are finite rational expressions at rational inputs. The original log-two
sample can be reused across nodes, but its error is the SAME error each time:
it is multiplied by k. No independence assumption or square-root reduction is
allowed. The new source derives c>=0 and

    |log t-c| <= eta
      = k/(4 L_2) + (r-1)^2/(2 L_r r)
      <= k/(4 L_2) + 1/(4 L_r).

The last inequality uses `2(r-1)^2<=r` on [1,2]. For equal grids L_2=L_r=L,

    eta <= (k+1)/(4L).

The source includes the finite precision implication

    k+1 <= 4 L epsilon  ==>  |log t-c|<=epsilon,

under the same scale and positive-grid guards. This is a quantitative condition,
not a claim that fixed L works at arbitrarily large t.

For t=2^k the mantissa radius is zero but the total radius is k/(4L_2), not zero.
For t=2^(k+1), the two boundary choices (k,r=2) and (k+1,r=1) give exactly the
same center and radius when both grids have the same L. Both identities have
source controls. At t=4, k=0 is outside the reduced upper guard and its original
grid radius exceeds 1/(4L); the upper guard is necessary for the resource bound.

For example at t=2^20 and L=64, the old direct-grid radius is
`1099509530625/134217728`, approximately 8191.984375. The reduced radius is exactly
`5/64 = 0.078125`. These compare the two explicit allowances, not actual errors,
wall-clock timing, a zeta computation, or any prime-count conclusion. Computing
the same reduced grid at many nodes still has arithmetic and bit-complexity costs.

## 3. Transport input error through the true exponential

The previous general bound passes logarithm uncertainty through the Taylor
polynomial, using a norm-based power perturbation allowance J_M(B,e). That is
valid, but it can amplify errors severely for highly oscillatory arguments.

For a complex a with Re(a)<=0 and real s,t>=0,

    |exp(a s)-exp(a t)| <= |a| |s-t|.

Indeed the real-variable derivative is `a exp(a u)`, and on u>=0 its norm is
`|a| exp(Re(a)u) <= |a|`. The real convex-domain mean-value theorem proves the
inequality. Both scalar nonnegativity conditions and the horizontal sign are
essential. The source includes an actual positive-real-part control: at a=1,
s=1,t=0, the difference exceeds one, so the nonamplifying bound cannot be
extended to that domain without an additional factor.

For the original Mellin density `f_z(t)=exp((z-1)log t)`, suppose t>=1 and
Re(z)<=1. The proved c>=0 and log t>=0 allow the preceding lemma to give

    |f_z(t)-exp((z-1)c)| <= |z-1| eta <= q eta,
    q = |Re(z-1)| + |Im(z-1)|.

This retains height through q but does not introduce exponential amplification
in this input-error channel. Nothing projects z onto Re(z)=1/2 or assumes it is
a zeta zero. A center with Re(z)>1 cannot use this new theorem; the old general
node theorem remains available. The stricter domain is an explicit tradeoff.

## 4. The truncation error remains and still needs its finite guard

At the approximate exponent v=(z-1)c, reuse the existing finite polynomial
T_M(v) and tail tau_M(B)=2B^M/M!, with B=q|c|. Only |v|<=B is needed here.
The inherited exponential-tail theorem requires `B/(M+1)<=1/2`. Therefore

    |f_z(t)-T_M((z-1)c)| <= q eta + 2B^M/M!.

The source derives the first term by the true exponential inequality and the
second term at the approximate input. It does not drop a required polynomial
error from the old argument; it uses a different, explicitly derived triangle
path through exp(v). It does not require an upper bound on the true exponent's
norm for this particular tail theorem.

The new definitions `reducedNodeBound`, `reducedNodeValue`, `reducedNodeError`
contain no log or exp calls: they use the inherited finite reciprocal grids and
Taylor arithmetic. The analytic proof, of course, refers to the actual log and
exp. All declarations remain noncomputable real/complex mathematics, not an
accepted executable implementation.

Admissibility alone does not mean a small Taylor tail. For example B=100,M=200
satisfies the ratio guard while 2*100^200/200! is still greater than one. The new
method improves the log interval and input-error transport; it does not solve
high-height Taylor truncation, range reduction of the exponential, bit complexity,
or a useful uniform accuracy/cost theorem. No overall runtime speedup is claimed.

## 5. Reuse exact quadrature and local arithmetic accounting

For the parent's ordered nodes x_i and cell lengths l_i>=0, use one reusable
L_2 and per-node k_i,L_(r,i),M_i with their explicit guards. The same exact
kernel and the previous sample-error theorem yield

    |F_(x_0,x_N)(z) - sum_i l_i reducedNodeValue_i|
      <= (q/2) sum_i l_i^2 + sum_i l_i reducedNodeError_i, Re(z)<=1.

The purely arithmetic mesh majorant is inherited from the previously proved
Re(z)<=2 case. The new narrower domain implies that hypothesis; no source or
endpoint is redefined. The new quadrature theorem retains the upper scale guard
for use with the stated resource bounds, although the unrelaxed positive-mantissa
node-error formula itself does not need r<=2 for correctness.

An accumulator A_0=0 with independently established weighted-step errors r_i
satisfies the same additional final allowance sum_i r_i. That bound must cover
multiplication and addition. Exact rational summation can claim zero error only
through a proved equality; missing arithmetic checks cannot default to zero.

The existing square-kernel and finite-multiplicity interfaces can use this
supplier at the same exact nodes, parameters and indices. Parameter enclosures,
changed multiplicities, missing records, and the omitted-divisor tail are not
logarithm-input errors. No square-count or complete-source theorem is redefined,
and no accuracy claim is transferred to the triangular observable without its
own exact transform and source alignment.

## 6. Scope and remaining obligations

The two new mathematical owners are `DyadicLogEnclosure` under Analysis/ErrorBounds
and `IntervalMellinRangeReduction` under Analysis/Complex. The former imports the
existing elementary module because it owns the original grid center/radius;
those prior declarations are reused unchanged rather than moved or duplicated.
The new root is `GRWTSK.Interfaces.QuadraticIntervalRangeReductionCore` and the
static target is `docs/verification/Interfaces/QuadraticIntervalRangeReductionCore/quadratic-interval-range-reduction-v0.1.toml`.
All selected inherited and new modules require exact elaborated signatures,
transitive import/axiom coverage and independent replay. A manifest is not a receipt.

Next acceptance work remains pinned elaboration/repair and transitive trust
review. Executable finite-arithmetic refinement, exponential range reduction,
and precision/cost bounds remain separate numerical-analysis work. Complete
arithmetic source identity, zero/multiplicity/coverage, omitted-tail bounds,
and sufficiently strong prime margins are not supplied by finite evaluation.
No worker qualification, F06 release, build request, merge, issue closure,
Legendre result, RH result or new prime-distribution estimate is made.

Pinned upstream ingredients at the stated Mathlib revision:

- Mathlib/Algebra/Order/Archimedean/Basic.lean: exists_nat_pow_near.
- Mathlib/Analysis/SpecialFunctions/Log/Basic.lean: Real.log_div, Real.log_pow.
- Mathlib/Analysis/Calculus/MeanValue.lean:
  Convex.norm_image_sub_le_of_norm_hasDerivWithin_le.
- Mathlib/Analysis/Complex/RealDeriv.lean: HasDerivAt.ofReal_comp.
- Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean: HasDerivAt.cexp.
- The parent's ComplexTaylorEnclosure.exponential_tail, retaining Mathlib's
  literal Complex.exp_bound' ratio guard and all upstream attribution.
