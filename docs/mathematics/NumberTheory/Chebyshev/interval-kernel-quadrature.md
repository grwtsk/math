# Finite quadrature for the source's coupled interval kernel

Owner: #194. Exact interval-source owner: #189. Arithmetic consumer: #261;
parallel waveform consumer: #209. This is a source-only evaluation increment,
not an explicit-formula construction, zero-tail theorem or prime certificate.

Base: `eb3124bd05f0f74aaa709ca36a855539f722fb92`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.

The earlier #268 source was incorporated into main under the recorded source-only
integration checkpoint. Its closed PR is not reopened. The current kernel and
square-endpoint owners are reused unchanged. The separate #269 draft already
specifies a center-sum evaluation-error input; the present increment derives a
finite quadrature contribution to that input. It does not rewrite #269 or its
arithmetic margin consumer, and does not claim its source identity has been proved.

## 1. Differentiate in the integration variable, not the zero coordinate

For real 1<a<=b, the existing source defines

    f_z(t) = exp((z-1) log(t)),
    F_(a,b)(z) = integral_a^b f_z(t) dt,

using the real logarithm on the positive axis. Its parameter sensitivity and
its removable value at z=0 remain unchanged.

For the quadrature problem, the derivative that matters is instead

    d/dt f_z(t) = (z-1) exp((z-2) log(t)).

This is an instance of the existing `hasDerivAt_logPower`, not a new supplied
derivative field. If Re(z)<=beta and a<=t<=b, set

    D_(a,b,beta,z)
      = |z-1| max(a^(beta-2), b^(beta-2)).

The Lean definition uses
`|z-1| * densityBound(a,b,beta-1)` and therefore avoids a new real-power
convention. The inherited horizontal density bound gives |f'_z(t)|<=D. The
norm mean-value theorem on the real interval gives

    |f_z(v)-f_z(u)| <= D |v-u|.

This bound includes vertical growth through |z-1|. No Re(z)=1/2 assumption is
inserted. A parameter-space bound with a logarithmic factor is not silently
substituted for this spatial derivative bound.

## 2. An actual quadrature formula with a derived error

Let x be a nondecreasing real node function with x(0)=a and x(N)=b. Put

    l_i = x(i+1)-x(i),
    Q_x(z) = sum_(i<N) l_i f_z(x(i)).

Every cell has nonnegative length. Adjacent interval integrals telescope exactly
to the kernel at x(0),x(N). Duplicate nodes contribute zero-length cells, not
missing mass. The theorem uses the actual endpoints of this node function; it
does not accept a separately named interval without an endpoint equality.

For one cell [c,d] inside [a,b],

    F_(c,d)(z) - (d-c) f_z(c)
      = integral_c^d (f_z(t)-f_z(c)) dt.

Using the preceding spatial bound and integrating D(t-c) gives

    |F_(c,d)(z)-(d-c)f_z(c)| <= D (d-c)^2 / 2.

Finite triangle inequalities now derive

    |F_(a,b)(z)-Q_x(z)| <= (D/2) sum_(i<N) l_i^2.

The discretization error is proved in source from the actual density. It is not
an unconstrained epsilon supplied by a caller. All proofs remain Lean candidates
pending exact-head elaboration and transitive trust review.

For a concrete uniform grid, with N>0,

    x(i)=a+i(b-a)/N,
    Q_N(z)=((b-a)/N) sum_(i<N) f_z(a+i(b-a)/N),

both endpoint identities and monotonicity are derived, and the error becomes

    |F_(a,b)(z)-Q_N(z)| <= D (b-a)^2 / (2N).

For fixed endpoints, beta and z, the displayed upper bound decreases as 1/N.
No all-height, all-stage or simultaneous-limit theorem is inferred. In particular
|z-1| grows with imaginary height, so N may have to increase with a zero cutoff.

## 3. Keep node-value enclosures as a distinct error channel

Suppose v_i approximates the exact density value at the EXACT node x(i), with
an independently proved |f_z(x(i))-v_i|<=eta_i. Define the finite output

    Q_tilde = sum_(i<N) l_i v_i.

Then

    |F_(a,b)(z)-Q_tilde|
      <= (D/2) sum l_i^2 + sum l_i eta_i.

The source supplies the first term and the propagation of the second term.
It does not implement or certify the elementary log/exp evaluation which would
supply the eta_i. Rational/complex sample data are not accepted merely because
they were computed at high precision. Rounded node locations also require a
proved transfer to the exact node; that uncertainty belongs in eta_i or a
separately justified coordinate-error term. Finite sum arithmetic is exact in
these mathematical expressions; a floating final summation needs its own bound.

If all eta_i are bounded by eta, their contribution is at most (b-a)eta, not
something forced to zero merely by refining the mesh. An actual source control
at z=1 returns unit error for uniformly zero samples on [2,3] at every N, even
though the exact-density discretization error is zero.

## 4. Same-family composition on the square interval

The arithmetic specialization reuses

    a_n=n^2+1/2, b_n=(n+1)^2+1/2, b_n-a_n=2n+1, n>=1.

No count, Chebyshev function, correction or square endpoint is redefined. The
uniform bound is

    |squareKernel(n,z)-Q_N(z)|
      <= D_(a_n,b_n,beta,z) (2n+1)^2 / (2N).

For one finite family, exact natural multiplicities m_j, centers c_j, and
proved node-value enclosures, the error on the weighted center sum is at most

    E_quad+E_sample
      = sum_j m_j [(D_j/2) sum_i l_i^2 + sum_i l_i eta_(j,i)].

The final source candidate composes this with the EXISTING coordinate-enclosure
bound for the same indices, multiplicities, centers and square endpoints:

    |sum_j m_j F(rho_j)-sum_j m_j Q_tilde_j|
      <= E_included+E_quad+E_sample.

This can supply a derived center-sum evaluation budget to the #269 interface,
subject to its same-source requirements. Its included-coordinate error must
not be charged twice there. No new arbitrary `Full` target or remainder field
is introduced here. A separately proved full-divisor tail, elementary source
corrections, final arithmetic rounding and any unsmoothing errors remain outside
these finite bounds. An integral tail from a different Mellin representation
is not an omitted-zero-divisor tail.

## 5. Controls and precise limits

At z=1 the density is constant and the exact left quadrature equals the kernel
for every covered partition. At z=2 it is t, and the one-cell error is exactly
(d-c)^2/2. On [2,3] this attains the factor one-half with D=1; dropping or reducing
that constant is invalid for this general analytic rule. These parameters are
exact control cases, not claimed zeta zeros.

N=0 is specifically excluded from the uniform-grid endpoint theorem. Totalized
division would otherwise produce an empty quadrature that misses the full unit
kernel on [2,3] at z=1. The nondecreasing-node hypothesis prevents signed cell
lengths from canceling valid sample-error allowances. Unknown or wrong zero
identities, multiplicities, or cutoffs are not numerical coordinate errors.

The static target binds the seven selected source modules, their Git blobs,
all new declaration names and all-public-type/transitive-import/trust obligations.
The public root and prior targets remain unchanged. This target does not replay
or accept the arithmetic or unselected #269 modules just by topical connection.

Next: exact-head Lean elaboration/repairs and trust review; independently justified
node-value enclosures and final evaluation arithmetic; and, separately, the
complete Riemann source identity, useful omitted-tail estimate, and strict
moving-interval margins. No prime from spectral data, new distribution estimate,
Legendre theorem, RH theorem, worker qualification or F06 release is supplied.

## Pinned upstream statements

All references below use the stated Mathlib revision:

- `Mathlib/Analysis/Calculus/MeanValue.lean`:
  `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`.
- `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean`:
  `intervalIntegral.norm_integral_le_of_norm_le`,
  `intervalIntegral.sum_integral_adjacent_intervals`,
  interval-integral subtraction and constant integration.
- `Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean`:
  `intervalIntegral.integral_id`.

These are upstream dependencies, not evidence that this extension has run.
No novelty claim is made for the elementary left-quadrature bound.
