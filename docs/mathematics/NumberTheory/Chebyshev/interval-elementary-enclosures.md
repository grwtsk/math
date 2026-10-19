# Finite elementary values for the coupled interval quadrature

Owner #194; consumers #189/#209/#261. Additive extension of draft #274.
Parent source: `a562d683332a6490ba74cf90dbbf4561c243e9ff`.
Underlying main snapshot: `eb3124bd05f0f74aaa709ca36a855539f722fb92`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The declarations are Lean proof
candidates, not an elaboration result, rational evaluator qualification, or
transitive trust receipt. All previous files and hypotheses are preserved.
No originality claim is made for these elementary finite estimates.

## 1. Replace the supplied logarithm value by a finite reciprocal enclosure

For positive a<=b, the elementary log inequality applied to b/a and a/b gives

    (b-a)/b <= log b-log a <= (b-a)/a.

For a nondecreasing positive chain x(0),...,x(L), sum every adjacent cell:

    lo = sum_(i<L) (x(i+1)-x(i))/x(i+1),
    hi = sum_(i<L) (x(i+1)-x(i))/x(i),
    lo <= log x(L)-log x(0) <= hi.

No approximation to log appears on the right. Rational endpoints give rational
lo and hi. Zero-length cells contribute zero. Wrong endpoints or a zero/nonpositive
node cannot be repaired by naming the intended logarithm.

The specialization reuses the parent's `uniformNodes 1 t L` for t>=1, L>0.
Put c_L(t)=(lo+hi)/2 and eta_L(t)=(hi-lo)/2. Then

    |log t-c_L(t)| <= eta_L(t),
    eta_L(t) = (t-1)^2/(2 L t).

The radius formula follows from the exact constant-step telescope

    hi-lo = d(1/x(0)-1/x(L)), d=(t-1)/L.

This is a baseline enclosure, not a fast large-t log algorithm. Its error
shrinks as 1/L for fixed t but grows roughly as t/L as t increases. In
particular the square-stage and logarithm-grid limits cannot be interchanged
without a quantitative choice of L. Dyadic range reduction is not implemented
or assumed by this increment.

## 2. Finite Taylor evaluation with a checked tail and an uncertain input

Define the M-term exponential polynomial

    T_M(w)=sum_(k<M) w^k/k!.

Pinned Mathlib's `Complex.exp_bound'` implies, for |w|<=B and
B/(M+1)<=1/2,

    |exp(w)-T_M(w)| <= tau_M(B),
    tau_M(B)=2 B^M/M!.

The guard is part of the theorem. It must not be dropped when the parameter
height or the real input changes. No exponential evaluation is needed to
calculate this tail. At M=0, T_0(0)=0 while exp(0)=1 and tau_0(0)=2;
an empty truncation is not accepted as exact zero error.

For |u|,|v|<=B and |u-v|<=e, define the nonnegative recurrence

    R_0(B,e)=0,
    R_(k+1)(B,e)=B R_k(B,e)+B^k e.

The identity

    u^(k+1)-v^(k+1)=u(u^k-v^k)+(u-v)v^k

proves |u^k-v^k|<=R_k. The source also derives
R_(k+1)=(k+1)B^k e. It follows by a finite sum that

    |T_M(u)-T_M(v)| <= J_M(B,e),
    J_M(B,e)=sum_(k<M) R_k(B,e)/k!.

Consequently a polynomial at the approximate input v satisfies

    |exp(u)-T_M(v)| <= tau_M(B)+J_M(B,e).

The second term cannot be omitted merely by increasing M. It represents
uncertainty in the input, not a tail of the exponential series.

## 3. Construct samples of the original density

The actual source remains

    f_z(t)=exp((z-1)log t).

At an exact node t>=1, set

    c=c_L(t), eta=eta_L(t),
    q=|Re(z-1)|+|Im(z-1)|,
    B=q(|c|+eta), e=q eta,
    v=T_M((z-1)c), E=tau_M(B)+J_M(B,e).

The source proves the L1 component bound by reusing Mathlib and derives

    |(z-1)log t|<=B,
    |(z-1)c|<=B,
    |(z-1)log t-(z-1)c|<=e.

Subject to the finite guard B/(M+1)<=1/2, it then derives

    |f_z(t)-v|<=E.

Thus the old quadrature theorem's node-value hypothesis is supplied by an
explicit construction. It is not renamed as another certificate field. The
new `nodeValue` and `nodeError` use only finite arithmetic in their input
components; they do not call log, exp, numerical quadrature, or zeta.

The declarations are over real/complex mathematical values and are marked
noncomputable. At rational nodes and rational complex components the displayed
expressions are rational arithmetic. This does not itself prove correctness
of a separately implemented rational library, serializer, interval package,
floating evaluator, or code-generation path. No such runtime is introduced.

## 4. Supply quadrature samples, then account for final arithmetic separately

For the parent's exact nondecreasing quadrature nodes x and N cells, set
l_i=x(i+1)-x(i). Choose positive log resolutions L_i and Taylor term counts M_i,
prove their finite guards, and use the newly constructed values v_i and E_i.
The existing quadrature theorem then yields

    |F_(x(0),x(N))(z)-sum_(i<N) l_i v_i|
      <= E_mesh + sum_(i<N) l_i E_i.

For Re(z)<=2, the existing density majorant at horizontal bound 2 is exactly
one after the spatial-derivative shift. Hence its spatial slope is |z-1|,
bounded by q. A purely arithmetic mesh allowance is therefore

    E_mesh <= q/2 sum_(i<N) l_i^2.

This restricted horizontal bound is explicit. It is not a critical-line
projection and is not asserted for arbitrary Re(z)>2. The general inherited
quadrature theorem remains available with its original majorant.

For a finite accumulator A_i with A_0=0, suppose each local update satisfies

    |A_(i+1)-(A_i+l_i v_i)|<=r_i.

Induction derives the final sum error <=sum r_i. The assembled theorem is

    |F_(x(0),x(N))(z)-A_N|
      <= q/2 sum l_i^2 + sum l_i E_i + sum r_i, Re(z)<=2.

Zero initialization and all local weighted-term errors are explicit. Rounded
multiplications must be included in r_i, not only rounded additions. Exact
rational sums may use zero r_i only after their equality has been established.
At rational inputs every radius in this last display is finite rational
arithmetic; no uncomputed exponential remains in that particular mesh bound.

The exact half-square endpoint family already lives in the inherited root.
This increment introduces no new square endpoints, Chebyshev functions, prime
counts, multiplicity records, or full-target remainder. Using this node supplier
for a finite center sum still requires the same indices, weights and exact
nodes; the included-coordinate uncertainty must not be charged twice.

## 5. What this does not settle

The proof candidates still require pinned elaboration/repair and an independent
transitive trust audit. Local static scans do not validate tactic elaboration.
Auxiliary Python checks compare finite formulas; they are not Lean replay.

These bounds may be very conservative. The direct log grid and the norm-based
Taylor/input radius can be expensive at large t or imaginary height. Choosing
admissible M is not evidence that the resulting radius is useful for a prime
margin. Range reduction, sharper signed/complex enclosures, and quantified
resource costs remain further numerical-analysis work.

The complete Riemann source identity, actual zero/multiplicity/cutoff coverage,
omitted-divisor tail, explicit-formula normalization, and uniformly strict
arithmetic margins remain separate. Accurate finite evaluation alone supplies
none of them. A Mellin integral tail from another representation is not the
missing zero-divisor tail. No prime is certified from spectral data here.

## 6. Source ownership and verification

New mathematical owners:

- `GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure`;
- `GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure`;
- `GRWTSK.Analysis.Complex.IntervalMellinElementary`.

The isolated root is `GRWTSK.Interfaces.QuadraticIntervalElementaryCore`.
The static target is `verification/quadratic-interval-elementary-v0.1.toml`.
It preserves the parent's source snapshots and requires exact public types,
module coverage, full transitive imports/axioms and inherited controls. The
public root and previous manifests are unchanged. This is not a replay receipt.

Pinned upstream ingredients, all at the Mathlib revision above:

- `Mathlib/Analysis/SpecialFunctions/Log/Basic.lean`:
  `Real.log_div`, `Real.log_le_sub_one_of_pos`.
- `Mathlib/Analysis/Complex/Exponential.lean`:
  `Complex.exp_bound'` with its literal ratio guard.
- `Mathlib/Analysis/Complex/Norm.lean`:
  `Complex.norm_le_abs_re_add_abs_im`, `Complex.norm_natCast`.
- `Mathlib/Analysis/Normed/Group/Basic.lean`: finite norm triangle inequalities.

Upstream notices and authorship remain upstream. No Lean/Lake process, build
request, worker qualification, F06 release, merge or issue closure is attached.
