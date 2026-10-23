# Uniform q=1 von Mangoldt logarithmic kernel — full integral-test source

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
**Mathematical repository:** grwtsk/math, authored on main.
**Effectful custody:** grwtsk/noeaaeue; no runner proposal submitted.
**Research dependency:** finite Abel majorization and actual shifted Lambda monotonicity from existing main sources. The checked Mellin/Fourier headers and queued boundary/Fubini packets are not changed.

## Exact primary-source identity

Maintained Prime Number Theorem + Project:
- AlexKontorovich/PrimeNumberTheoremAnd at commit 127b50e33f6033e2147921167a117af96d9ba4ea;
- PrimeNumberTheoremAnd/Wiener.lean, blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac;
- source theorem bound_sum_log', approximately line 1642.

Local toolchain is Lean 4.33.0 with pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. The maintained upstream uses Lean 4.35.0. The new source imports and reuses pinned local library theorems; it does not assert imported cross-version theorem acceptance.

## Actual new mathematical supplier

Source:

    GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean

Controls:

    GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean

The target is the **actual** zero-safe von Mangoldt kernel

    K_T(n) = 0                         if n=0,
    K_T(n) = Lambda(n)/n
             /[1+(log(n/T)/(2*pi))^2]  if n>=1.

The source authors the quantitative theorem

    forall T>=1,
    Summable (K_T) AND
    tsum_n K_T(n) <= (log(4)+4)*(1+2*pi^2).

This is the historical bound_sum_log' for the actual pinned Lambda arithmetic function, not a structure field or named equivalent premise.

### 1. Exact logarithmic integral

Let c=2*pi and

    W_T(x)=1/[x*(1+(log(x/T)/c)^2)], x>0.

The parent source has already authored W_T positive and antitone on all positive reals. Define the genuinely shifted Cauchy function

    H_T(y)=[1+((y-log T)/c)^2]^-1.

The source constructs full-line integrability from pinned
integrable_inv_one_add_sq, Integrable.comp_div for the nonzero
scale c, and Integrable.comp_sub_right for translation by log T.

Pinned Lebesgue translation invariance, integral_sub_right_eq_self,
and integral_comp_div then prove the exact mass:

    integral_R H_T(y)dy
      = c*integral_R [1+y^2]^-1 dy
      = c*pi = 2*pi^2.

The logarithmic substitution is an ACTUAL pinned
integral_comp_log_Ioi theorem, with lower limit x>1:

    integral_(x>1) W_T(x)dx
      = integral_(y>0) H_T(y)dy.

The support y>0 is contained in the whole logarithmic real line,
and H_T>=0. By genuine setIntegral_mono_set for its actual integrable
majorant, the half-line integral is therefore <=2*pi^2.
This proof is valid for every positive real T, including noninteger,
nondyadic and very large T. No arbitrary analytic-growth premise or
numerically estimated integral is used.

### 2. Actual infinite integral test

The prior theorem supplies monotonicity of W_T on x>0. The source
specializes the pinned theorem

    AntitoneOn.tsum_comp_add_le_integral

at N=1. It gives

    tsum_(k>=0) W_T(k+2)
       <= integral_(x>1) W_T(x)dx.

The first term W_T(1) remains explicit; it is positive and <=1.
The original shifted infinite weight sum is thus summable and

    tsum_(k>=0) W_T(k+1)
       <= W_T(1)+integral_(x>1) W_T(x)dx
       <= 1+2*pi^2.

The source uses the actual AntitoneOn.summable_of_integrableOn_Ioi
to establish summability, followed by the legitimate
Summable.tsum_eq_zero_add decomposition. The term at n=1 is not
dropped merely because Lambda(1)=0; its weight supplies the upper
constant 1.

### 3. Real Lambda infinite bound from actual finite Abel

For all N, the prior pure theorem gave

    sum_(k<N) Lambda(k+1)*W_T(k+1)
      <= (log(4)+4)*sum_(k<N) W_T(k+1).

The new source combines this finite inequality with the just-proved
summability of shifted weights and their quantitative bound. It then
uses the **pinned** nonnegative-series theorems
Real.summable_of_sum_range_le and
Real.tsum_le_of_sum_range_le, producing genuine summability and
the matching infinite bound for Lambda(k+1)*W_T(k+1).

This does not assume any pointwise bound Lambda(k)<=C; its only
arithmetic hypothesis is the actual pinned Chebyshev prefix bound
for the original Lambda sequence.

### 4. Exact original Fourier zero-term convention

The prior finite-sigma Fourier source defined the original kernel
wienerLambdaLogKernel T n, with n=0 assigned 0.

The new source proves the equality, for EVERY natural k,

    wienerLambdaLogKernel T (k+1)
       = Lambda(k+1)*W_T(k+1).

It uses summable_nat_add_iff and Summable.tsum_eq_zero_add to
identify the original unshifted zero-safe infinite sum with the
quantitatively bounded shifted series. This is not an assertion of
an undefined logarithm or ordinary division by zero.

The authored top-level source theorem is:

    wienerLambdaLogKernel_uniform_bound
       {T : Real} (hT : 1<=T) :
       Summable (wienerLambdaLogKernel T) /\
       tsum_n (wienerLambdaLogKernel T n)
          <= (Real.log 4+4)*(1+2*Real.pi^2).

Its controlling checks explicitly replay the translated Cauchy
mass, tail integrability, first term, all shifted series bounds,
original exact index equality, and T=1 endpoint.

## Formal trust and dependency boundary

This is a **source draft**. The new source has NOT yet been passed
through actual Lean/Lake elaboration on pinned Lean 4.33.0, compiler
warnings-as-errors, --trust=0, exact theorem-type replay or full axiom
closure. Static absence of source-level sorry/admit/axiom does not
prove that it compiles.

The module imports the previous finite Abel and first finite-sigma
Fourier sources; those maintain their own independent verification
states. The earlier 19 checked Mellin/Fourier declarations at
a9d81821f5044b1dedcf56523ab491f0ee04dcc8
are not altered by this new packet. The q=1 boundary packet queued
for separate local replay is also unchanged. No new runner proposal
or background task was issued.

In particular, a kernel-accepted bound_sum_log' has not yet been
established merely by committing these proof scripts.

## Next genuine analytic frontier

The exact historical uniform logarithmic-kernel bound is now
authored at source level. The still-independent Wiener--Ikehara
analytic suppliers are:

1. Derive the sigma-downarrow-one arithmetic Fourier-series limit,
   consuming the kernel bound as a real dominating summable series,
   rather than inferring the limit from q=1 boundary continuity.
2. Combine the first and second finite-sigma Fourier/Fubini identities
   with the actual q=1 pole-subtracted auxiliary at Re(s)>1.
3. Prove uniform-in-T discarded-tail control for the compact-to-
   Schwartz approximation, reusing the same logarithmic-kernel bound.
4. Complete the maintained limiting_cor_schwartz source theorem
   after each dependency and its pinned Mathlib version have been
   separately elaborated and kernel audited.
5. Treat the smooth-to-interval squeeze in PR #965 as a separately
   unverified downstream draft. It cannot supply the missing Fourier
   convergence or arithmetic domination.

The original fixed integer-psi quadratic-capacity route remains
mathematically rejected. No RH, PNT, Chowla or Goldbach theorem is
established by the new source without the remaining analytic and
formal trust obligations.
