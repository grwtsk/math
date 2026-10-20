# Canonical finite-head evaluation from coordinate and primitive enclosures

Parent: `7db0dd6f9aac06e8ac36d6993f75cc0844b43ff8` (draft PR #304).
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Mathematical owners: #189 / #261, under #257.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. No Lean execution,
elaboration, transitive trust audit, or external acceptance is represented.
The following mathematics is classical error analysis, not a new prime result.

## 1. What is new and what stays a premise

The parent prime consumer requires an enclosure of one complete canonical
finite zero sum. This increment derives that enclosure from per-point data:
exact source identity and analytic multiplicity, a coordinate ball, three
independently proved real-logarithm enclosures, finite Taylor polynomials with
an explicit degree guard, and a positive denominator lower bound at the center.
It does not require an already certified kernel value or exponential value.

The finite records are indexed by `heightHead T` itself. This is a mathematical
specification, not an algorithm to enumerate zeros. A numerical file still needs
an exact coverage/identity bridge to that index. Neither this index nor a proof
field establishes that an external file is complete. No new prime certificate,
actual zero data, numerical completeness checker, or universal margin is supplied.

## 2. A finite exponential polynomial with its entire omitted tail

Let

    P_K(q) = sum_(0<=j<K) q^j/j!,
    e_K(r) = 2 r^K/K!.

Pinned Mathlib `Complex.exp_bound'` proves

    |exp(q)-P_K(q)| <= e_K(r)

when |q|<=r and r/(K+1)<=1/2. The norm radius is nonnegative as a consequence
of |q|<=r. K=0 is admitted only with its stated guard and retains error 2;
an empty polynomial is not an exact exponential evaluation. The guard cannot
be dropped for a large complex argument. This is a complete infinite-tail
bound, not a next-term estimate inferred from a finite sample.

Write ||q||_1=|Re q|+|Im q|. This rational ceiling bounds the Euclidean norm.
For |u-v|<=d<=1, the degree-one version of the same result gives

    |exp(u)-exp(v)| <= 2 |exp(v)| d.

Since |exp(v)|<=||P_K(v)||_1+e_K(r), a separate argument perturbation yields

    |exp(u)-P_K(v)|
      <= e_K(r)+2[||P_K(v)||_1+e_K(r)]d.

No omitted argument-error term is hidden in the polynomial truncation error.

## 3. Powers at the true endpoint logarithms

For the original positive-axis `logPower(t,z)=exp(z log(t))`, a PowerEvaluation
contains lambda, eta, K and r, with proofs

    eta>=0, |log(t)-lambda|<=eta,
    |z lambda|<=r, r/(K+1)<=1/2,
    d=||z||_1 eta<=1.

Its value is the actual finite polynomial P_K(z lambda), not an assigned
approximate answer. Its error is the derived expression

    E=e_K(r)+2[||P_K(z lambda)||_1+e_K(r)]||z||_1 eta.

The error includes uncertainty in the REAL logarithm, with no complex branch
choice or replacement of the positive-axis convention. In the tent application
the exponent is c+1 at each of a=x-h, x and b=x+h.

The logarithm enclosure remains an independent input. The increment does not
formalize a rational log algorithm or infer enclosure from floating-point values.
For rational endpoints, one ordinary way to supply it is the real atanh series:
if u=(t-1)/(t+1) lies in [0,1),

    log(t)=2 sum_(j>=0) u^(2j+1)/(2j+1),
    0<=log(t)-2 sum_(j<K) u^(2j+1)/(2j+1)
       <=2 u^(2K+1)/[(2K+1)(1-u^2)].

Range reduction can improve this computation. That algorithm is used only in
external synthetic diagnostics here; it is NOT a new Lean logarithm supplier.

## 4. Coordinate sensitivity remains pole-free

Put a=x-h>1, h>0 and b=x+h. The existing tent is a fixed affine combination
of four integral-defined interval kernels. Applying the inherited half-plane
sensitivity to those four integrals gives, for Re z, Re c<=beta,

    |M(z)-M(c)| <= L_beta |z-c|,
    L_beta=[S(a,x,beta+1)+a S(a,x,beta)
            +b S(x,b,beta)+S(x,b,beta+1)]/h.

This is valid at all complex parameters, including 0 and -1: it does not
compare totalized quotient values there. At beta=1 the source simplifies it to

    L_1=(2x-h)log(x)+2b log(b) <= 4b log(b).

Thus, for |rho-c|<=r_rho and c.re<=1, using the actual unconditional rho.re<1,

    |M(rho)-M(c)| <= 4b(lambda_b+eta_b)r_rho.

The upper logarithm enclosure is reused to make the coordinate budget explicit.
The center need not be on the critical line. A center on that line together with
a positive radius does not assert RH or remove horizontal uncertainty. The
bound is deliberately coarse and may be expensive when many radii are summed.

## 5. Three endpoint polynomials and one guarded division

Let A,X,B approximate a^(c+1), x^(c+1), b^(c+1), with derived errors e_A,e_X,e_B.
A PointEvaluation records a positive d such that

    0<d<=h |c| |c+1|.

This proves c!=0 and c+1!=0 before applying the existing quotient theorem.
The computed center value is

    V=(B-2X+A)/(h c(c+1)),
    |M(c)-V| <= (e_B+2e_X+e_A)/d.

The middle coefficient two and the tent radius h are retained. Division here
is exact complex algebra. Any finite-machine rounding of V belongs to an
additional error, not silently to exact division.

Combining both estimates gives the complete record budget

    eps_rho = 4b(lambda_b+eta_b)r_rho + (e_B+2e_X+e_A)/d,
    |M(rho)-V_rho|<=eps_rho.

Only the evaluation center must avoid 0 and -1. A coordinate ball intersecting
one of those parameters is not intrinsically invalid, because coordinate
transport used the entire integral-defined kernel. Conversely a center equal
to either parameter is rejected by this quotient evaluator; a future integral
or removable-value evaluator would be a different evaluation branch.

## 6. Complete-head aggregation and the unchanged prime criterion

For each rho in the SAME complete `heightHead T`, define

    V_head = sum m(rho)V_rho,
    E_head = sum m(rho)eps_rho.

The multiplicities come from the actual analytic source, not record labels.
The finite triangle inequality proves |Z_(n,T)-V_head|<=E_head. An independent
accumulation enclosure |V_head-v_round|<=eps_round yields

    |Z_(n,T)-v_round|<=E_head+eps_round.

An exact rational accumulation may take v_round=V_head and eps_round=0.
A one-sided upper enclosure follows by taking the real part. The new prime
wrapper supplies the parent's formerly external whole-head norm enclosure,
retaining exactly the old condition

    h_n-Re(v_round)-E_head-eps_round-D_n-B_n(T)-U_n > 0,
    B_n(T)=8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa=44/log(6/5), n>=2, T>=2.

It does not establish this strict margin. The coefficient-kappa omitted tail,
signed trivial-zero floor and proper-prime-power correction remain unchanged.
No extra right-contour error is introduced. Refining coordinate/logarithm data
or increasing polynomial degree does not replace omitted-zero completeness.

## 7. Practical and trust limits

There is no range reduction in the new Lean polynomial evaluator. Its guard
can require degree proportional to |c+1|log(b), and coarse coordinate sensitivity
may make the full budget impractical at a large cutoff. No runtime, scalable
spectral evaluator, or positive-margin success is claimed. The records contain
mathematical real/complex data and proof obligations, not a byte-level format.

The new root is isolated. Existing branches, public imports, historical targets,
issue state and execution holds are preserved. Exact-head elaboration and all
inherited type/import/axiom/native obligations remain. Synthetic arithmetic
and interval diagnostics do not verify any zeta zero, the universal analytic
arguments, a complete zero database, or a Landau conjecture.
