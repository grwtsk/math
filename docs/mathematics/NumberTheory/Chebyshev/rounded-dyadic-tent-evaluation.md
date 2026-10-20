# Directed-rounded endpoint evaluation and bounded precision selection

Parent: `eed91175503712b974bfe849cb3afe3eebb7f26f` (draft PR #310).
Pinned Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261 under #257.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. No Lean/Lake execution,
executed Lean control, transitive audit, external replay or prime certificate
is represented. All new and inherited proof scripts may need elaboration repair.
These are classical finite error estimates, not a new prime-distribution result.

## 1. The specific rounding operation supplies its own error

For grid bits b, put G=2^b. Define

    down_b(x) = floor(G*x)/G,
    up_b(x)   = -down_b(-x),
    Q_b(z)    = down_b(Re z) + i down_b(Im z),
    rho_b     = 2/G.

Integer floor is used even for negative components. Truncation toward zero is
not the same operation. Pinned integer-floor bounds give

    down_b(x) <= x < down_b(x)+1/G,
    x <= up_b(x) < x+1/G,
    |z-Q_b(z)| <= |Re(z-Q_b(z))|+|Im(z-Q_b(z))| <= 2/G.

No local rounding inequality is supplied by a caller. The bound uses the sum
of two component allowances; substituting one component allowance is invalid.
Every rounded component is an integer divided by G. Upward-rounded error
storage has the same property. This bounds denominators, not numerator size,
overflow, temporary expression size, or runtime. The mathematical real/complex
floor definitions are noncomputable; a serialized rational implementation and
its refinement proof remain separate. The diagnostic companion implements the
rational operations exactly, but is not a kernel-verified implementation.

## 2. Round the seed and each square; round error storage upward

Reuse the inherited scaled power input for t^z=exp(z log t): its rational
logarithm center lambda and error eta, squaring count s, and Taylor term count K.
Write D=2^s and

    r=rectNorm(z)*|lambda|/D, d=rectNorm(z)*eta/D,
    p=P_K(z*lambda/D),
    e=2*r^K/K! + 2[rectNorm(p)+2*r^K/K!]*d.

The unchanged finite guards r<=1, d<=1 and K>=1 supply the complete seed
inequality |exp(z log(t)/D)-p|<=e. Logarithm uncertainty and Taylor truncation
are not redefined or treated as local rounding.

The new algorithm is

    v_0 = Q_b(p),
    E_0 = up_b(e+rho_b),
    v_(j+1) = Q_b(v_j^2),
    E_(j+1) = up_b(E_j[2*rectNorm(v_j)+E_j]+rho_b).

Induction uses the inherited square-error identity and the derived local
quantizer bound. At every step it gives

    |exp(z log(t)/D)^(2^j)-v_j| <= E_j.

At j=s the existing exact exponential restoration identifies the left source
with t^z. Consequently |t^z-v_s|<=E_s. There is no caller-supplied final error,
local-square certificate or exponential value. The rounded value is generally
not equal to the old exact repeated-square value; the old evaluator is retained.

The initial rounding allowance matters even when s=0. The quadratic E_j^2
term and each rho_b enter before later amplification. Rounding E_j down would
invalidate the bound, even if all value components were correctly rounded.
The implementation rounds stored errors up at EVERY step, rather than letting
their exact rational denominators grow through an unrounded recurrence.

## 3. Requested accuracy is checked on the final budget

The generic `firstWithin` traverses a supplied finite candidate list and returns
the first candidate whose complete final error is at most the requested tolerance.
Its source proofs establish membership and that final inequality. A separate
none theorem states exactly that all budgets in that list exceed the tolerance.
Completeness is proved only relative to an already passing member of the list.

`selectPower` instantiates this operation with the rounded power error. A returned
candidate therefore satisfies |t^z-value|<=tolerance by the analytic soundness
result, not merely by validity of a seed guard. The list may vary log precision,
Taylor degree, scaling count and grid bits. No monotonicity of that schedule is
assumed. An empty or exhausted list returns none, never an approximation with an
unproved tolerance. Failure says nothing about an untried candidate, actual
approximation accuracy, the existence of zeros, or prime distribution.

The finite selection is a mathematical function over admissible proof-bearing
inputs and real comparisons. Automatic production of admissibility proofs,
a byte-level checker and a total precision algorithm for every positive target
are NOT supplied. For example the exponential at zero can have an exact value
but a conservative computed budget too large to pass a requested tolerance.
Equality is permitted for an error tolerance; the later prime margin is still strict.

## 4. Same tent, same divisor, same prime criterion

The new point input reuses coordinate proofs, the center real-part bound, and a
positive lower bound for h|c||c+1|. Its three rounded endpoint values feed the
same (B-2X+A)/(h*c*(c+1)) estimate. The complete endpoint errors include all grid
rounding. The entire-kernel coordinate cost remains separate. The quotient is
exact algebra here; rounding that quotient or the final head accumulation still
requires a separate allowance.

The canonical index remains heightHead(T); analytic multiplicities remain the
source values. The sum of m(rho) times each FULL point error bounds the included
finite-source error. A companion accepts an independently checked bound on this
whole head error, not a collection of unrelated local target claims.

The existing sufficient prime condition is unchanged:

    h_n-Re(v_round)-E_head-epsilon_round-D_n-B_n(T)-U_n > 0,
    B_n(T)=8*kappa*(n+1)^4*(log(T)+1)/(h_n*T),
    kappa=44/log(6/5), n>=2, T>=2.

The complete omitted-zero tail, signed trivial-zero correction and proper-power
subtraction remain. This does not identify an external record with a zero,
prove completeness, or establish a strict prime margin. Fixed-input tolerance
selection does not imply every-interval coverage.

## 5. Evidence boundary and next work

Limited local text/manifest/hash checks and exact rational diagnostics are
reported separately from Lean acceptance. The diagnostic candidate rounds both
values and stored errors; reference enclosures use unscaled Taylor polynomials
and positive-Mercator logarithms. Python checks finite rational relations; it
does not prove the analytic identities underlying either complete remainder.
No actual zeta zeros are evaluated.

Required next obligations include exact-head elaboration and repair; generated
structure members and the entire inherited type/import/axiom/native audit;
refinement to a finite rational representation and byte checker; zero-record
identity/completeness and quantitative coordinates; and useful strict margins.
No measured performance gain or automatic universal target attainment is claimed.
