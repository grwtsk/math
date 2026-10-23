# Coupled interval kernel: removable value, analytic sensitivity, and finite errors

Owner: #194; exact-source consumer #189; optional waveform #209 and Legendre
consumer #261. Implementation stays in draft PR #256 on its existing branch.

Parent source: `61059a22f70f1ff6ee2c8171bf9530e6d5a49c27`.
Mathematical base: `99f310907528f620d85095b675ec1b6f9d7a7046`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** The new Lean declarations are
proof candidates. Neither their presence nor the auxiliary numerical checks is
an elaboration, transitive trust audit, or external acceptance receipt. This
note records the written mathematics and the exact source-drafting boundary;
it makes no originality claim. Every v0.1/v0.2 file is preserved unchanged.

## 1. Define the consumer before dividing

For real `1<a<=b`, use the positive-axis convention

    logPower(t,z) = exp(z log t),
    density(z,t)  = exp((z-1) log t),
    F_(a,b)(z)    = integral_a^b density(z,t) dt.

The logarithm in these definitions is the real logarithm, embedded in C. In
particular the source does not select a varying branch of a complex logarithm
and does not silently replace a complex parameter by its critical-line projection.

On the compact positive interval, both density and density times log t are
continuous and integrable. These facts are proved in the source; they are not
fields supplied by the user. This prevents the totalized integral of a
nonintegrable function from serving as an artificial identity.

Differentiating logPower in the real integration variable gives

    d/dt logPower(t,z) = z density(z,t).

The fundamental theorem of calculus, with both endpoints retained, gives

    z F_(a,b)(z) = logPower(b,z)-logPower(a,z).

Only after this identity is established, and only under `z != 0`, may one write

    F_(a,b)(z) = (b^z-a^z)/z.

At zero, applying the fundamental theorem to the real logarithm instead gives

    F_(a,b)(0) = log b-log a = log(b/a).

For a<b this value is nonzero. Totalized division would instead return zero
from the displayed quotient at z=0; the source's `kernel_zero_ne_zero` is the
control against that substitution. A zero-length interval has kernel zero,
and F_(a,b)(1)=b-a, including the interval's orientation in that identity.

## 2. Construct the analytic derivative and a uniform horizontal bound

Define

    M_beta(a,b)
      = exp(max((beta-1) log a, (beta-1) log b)).

For positive endpoints this is equivalently max(a^(beta-1),b^(beta-1)). If
Re(z)<=beta and a<=t<=b, monotonicity of exp gives

    |density(z,t)| <= M_beta(a,b),
    |density(z,t) log t| <= log b M_beta(a,b).

The first inequality splits according to the sign of beta-1; the second uses
0<=log t<=log b. For beta<=1, the left endpoint controls M_beta exactly.
No assumption that beta=1/2 is inserted.

For each z0, the open half-plane Re(w)<Re(z0)+1 is a neighborhood on which the
parameter derivatives have the same integrable constant majorant. The source
uses Mathlib's dominated parametric interval-integral theorem with those
constructed bounds and with the proved compact integrability/measurability.
It yields, at every z including zero,

    F'_(a,b)(z) = integral_a^b density(z,t) log t dt.

Thus F is complex differentiable everywhere. The norm estimates are

    |F_(a,b)(z)|  <= (b-a) M_beta(a,b),
    |F'_(a,b)(z)| <= C_beta(a,b),
    C_beta(a,b)   = (b-a) log b M_beta(a,b).

The closed horizontal half-plane is convex over R. The norm form of the mean
value theorem on that set therefore proves

    |F_(a,b)(z)-F_(a,b)(w)| <= C_beta(a,b) |z-w|

whenever both Re(z)<=beta and Re(w)<=beta. This is the sensitivity of the
coupled endpoint consumer; it introduces no inverse distance from zero.

## 3. Do not discard high-parameter decay

The pole-free bound has no decay in Im(z). It cannot alone control a sum over
an unbounded zero family. The off-zero endpoint identity also gives

    |F_(a,b)(z)| <= (a^beta+b^beta)/|z|,  z!=0.

The source retains both estimates and proves their minimum is a valid bound.
The first is well behaved at zero; the second can be smaller at large |z|.
Even their minimum is not an omitted-divisor tail theorem. A separate argument
must still retain multiplicities, zero counts, summation order, and cancellation
or smoothing appropriate to the selected source. In particular, an inverse-|z|
pointwise estimate is not a proof of absolute summability over the full divisor.

## 4. Finite enclosure transport and the separate complete tail

Let S be an actual finite index set, m_j natural multiplicities, rho_j exact
parameters, c_j centers, and r_j radii. Assume, for each j in S,

    |rho_j-c_j|<=r_j,
    Re(rho_j)<=beta_j and Re(c_j)<=beta_j.

Then the finite triangle inequality and the preceding sensitivity theorem give

    |sum_S m_j F(rho_j) - sum_S m_j F(c_j)|
      <= sum_S m_j C_(beta_j)(a,b) r_j.

This is implemented for an arbitrary finite mathematical family. The statement
does not certify that the parameters are zeros, that their multiplicities are
correct, that two record identifiers denote the same zero, or that a cutoff is
complete. Those are still source-identification/coverage obligations.

A separate conditional composition theorem takes an independently proved bound

    |Full - sum_S m_j F(rho_j)| <= tail

and derives

    |Full - sum_S m_j F(c_j)|
      <= tail + sum_S m_j C_(beta_j)(a,b) r_j.

It does not construct `Full`, identify it with a symmetrically summed zeta
divisor, or provide `tail`. A computed approximation to the exact centered sum
needs an additional proved evaluation/rounding bound. Nothing here permits
omitted records, missing proof fields, or a failed computation to become zero
error. The fractional-Mellin integral tail from #253/#255 is not used as a
zero-divisor tail.

## 5. Exact square-endpoint application

`QuadraticIntervalKernel.lean` reuses `QuadraticIntervals.squareEndpoint`:

    a_n=n^2+1/2, b_n=(n+1)^2+1/2.

For n>=1 the required analytic domain holds; the interval is strictly ordered,
and b_n-a_n=2n+1. The source specializes entire differentiability, the off-zero
quotient, the nonzero removable value, parameter-one width, the Lipschitz bound,
and finite multiplicity-weighted enclosure transport to those exact endpoints.

No Chebyshev function, higher-power correction, or prime count is redefined.
The v0.2 source-correction identity and finite budgets remain unchanged. PR #264
is still a separate exact-count branch; it is neither imported nor modified by
this extension. Positivity/count identification and global every-interval
margins still require their own source-bound integration under #261.

## 6. Static target, checks, and remaining work

The new root is `GRWTSK.Interfaces.QuadraticIntervalKernelCore`; the new static
target is `docs/verification/Interfaces/QuadraticIntervalKernelCore/quadratic-interval-core-v0.3.toml`. The target retains
the old eight modules and adds the two new owners and import-only root. Its
module source hashes and required new declaration names are static identities,
not elaborated types or evidence of execution. The public root is unchanged.

Auxiliary high-precision tests independently compare direct compact integrals
with the stable expression

    a^z log(b/a) exprel(z log(b/a)),
    exprel(w)=expm1(w)/w for w!=0, exprel(0)=1.

They also check the logarithmic moment against a numerical parameter derivative,
the two value bounds, derivative/Lipschitz bounds, near-zero values, finite
multiplicity transport, and a separately supplied synthetic tail. These are
75-digit floating numerical sanity checks, not certified interval arithmetic,
not tests using actual zeta zeros, and not Lean replay. The runner/results stay
outside this pure-math repository.

Remaining gates are exact-head Lean elaboration/repair and transitive trust
review; actual numerical enclosure/evaluation producers; complete zero source
and omitted-divisor tail; any selected explicit-formula normalization and
unsmoothing theorem; and a substantive moving-interval cancellation or strict
margin supplier. Generic analytic error transport supplies none of these
premises. No mean-square target, Legendre statement, or RH statement is proved.

Pinned upstream statement references, all at the Mathlib revision above:

- `Mathlib/Analysis/Calculus/ParametricIntervalIntegral.lean`:
  `intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le`.
- `Mathlib/Analysis/Calculus/MeanValue.lean`:
  `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`.
- `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean`:
  compact interval integrability and `intervalIntegral.norm_integral_le_of_norm_le_const`.
- `Mathlib/MeasureTheory/Integral/IntervalIntegral/FundThmCalculus.lean`:
  `intervalIntegral.integral_eq_sub_of_hasDerivAt`.
- `Mathlib/Analysis/Complex/RealDeriv.lean`:
  `HasDerivAt.ofReal_comp`.
- `Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean` and
  `Mathlib/Analysis/SpecialFunctions/Log/Deriv.lean`: exponential/logarithmic derivatives.

Upstream imports retain their existing authorship and Apache-2.0 notices.
