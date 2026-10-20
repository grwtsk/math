# Constructing the normalized disk logarithm from an extended quotient

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: #189; prime-interval consumer: #261; program: #257.
Parent source: `27dce31310c1c34c8bfbfce755b815cfe4837db4` (#298).

This increment separates two mathematical constructions that the previous
application required together. It constructs the normalized analytic logarithm
of a zero-free holomorphic function on a disk and derives its real-part ceiling.
It does **not** yet construct the actual zero-removed zeta quotient through
its zeros. The new zeta application still requires that extended quotient,
its inner-disk nonvanishing, and its exact factorization of translated zeta.

## 1. Construct a normalized primitive, not a principal logarithm

Let g be holomorphic and nonzero on |w|<r, with r>0. Its actual logarithmic
derivative g'/g is holomorphic there. The pinned disk primitive theorem supplies
L with L'=g'/g; subtracting its center value makes L(0)=0. Since exp(L) is
nonzero and has logarithmic derivative L', equality of logarithmic derivatives
on the connected disk gives g=C exp(L). Evaluation at zero identifies C=g(0):

\[
L(0)=0,\qquad L'(w)=\frac{g'(w)}{g(w)},\qquad
\boxed{g(w)=g(0)e^{L(w)}}.
\]

The proof constructs L; no analytic-logarithm field or logarithm-existence
hypothesis is supplied. The pinned primitive and logarithmic-derivative
comparison theorems are reused. The construction is noncomputable mathematics,
not a numerical algorithm for evaluating L. It does not use the pointwise
principal complex logarithm and therefore does not insert its branch cut.

Normalized primitives of the same logarithmic derivative agree on the disk:
their difference has zero derivative, is constant on the connected open disk,
and is zero at the center. This is equality on the disk, not outside it.

The center multiplier cannot be suppressed. For the constant function g=-1,
the normalized lift can be L=0, but exp(L)=1, not -1. The represented function
is g/g(0), not g itself with a normalized logarithm value incorrectly set to zero.

## 2. Derive the real-part ceiling

Assume M>0, eta>0, |g(w)|<=M on the disk and eta<=|g(0)|. The constructed
identity gives

\[
e^{\operatorname{Re}L(w)}=\frac{|g(w)|}{|g(0)|}
\le\frac M\eta,
\qquad
\boxed{\operatorname{Re}L(w)\le\log(M/\eta)}.
\]

The center floor is quantitative. Qualitative nonvanishing alone would not
supply the displayed ceiling. Neither a sampled modulus bound nor agreement
at a single point supplies these all-point identities.

## 3. Transport a boundary ceiling to a zero-removed quotient

Reuse B_(3,a)(w)=3(w-a)/(9-conj(a)w), with |a|<=11/4, and the same natural
multiplicities. Write P(w)=product B_(3,a_i)(w)^(m_i). Suppose an already
extended quotient g is holomorphic on |w|<3, continuous on |w|<=3, and
f=gP throughout that closed disk. Suppose also that g has no zero on
|w|<11/4. These are still genuine hypotheses, not consequences of writing f/P.

The retained factor identities give |P|=1 on |w|=3 and |P(0)|<=1. Therefore
an outer-circle ceiling |f|<=M yields |g|<=M on the boundary; the maximum
modulus theorem extends it to every point of the closed outer disk. Similarly,
eta<=|f(0)| and f(0)=g(0)P(0) imply eta<=|g(0)|. The preceding construction
then gives an actual L on the inner disk with the required ceiling and

\[
\boxed{f(w)=g(0)e^{L(w)}P(w)}.
\]

Both the maximum-modulus transport and the normalized logarithm are proof
conclusions. The holomorphic quotient itself is not constructed in this increment.
At a removed zero, totalized division can give the wrong center value: w/w at
zero is assigned zero, whereas its analytic extension is one. This is an explicit
source control and remains an obligation of the missing quotient constructor.

## 4. Canonical zeta application, with the remaining input visible

Keep the actual centers c_N^pm=2 +/- i(N+3/2), N>=2, the canonical `diskHead`
of radius 11/4, and its actual analytic multiplicities. The new zeta application
requires g with

\[
\zeta(c+w)=g(w)\prod_{\rho\in\operatorname{diskHead}(N,c)}
B_{3,\rho-c}(w)^{m(\rho)}\quad (|w|\le3),
\]

plus outer holomorphy/continuity and inner nonvanishing. The existing actual
zeta disk ceiling M=(N+2)^3 and center floor eta=1/4 are supplied internally.
Consequently the constructed logarithm satisfies

\[
\operatorname{Re}L\le H_N:=\log4+3\log(N+2).
\]

Its exact inner-disk identity supplies the neighborhood identity in #298.
For the unchanged selected heights, the resulting conditional central-strip
consumer retains exactly the previous budget

\[
\left|\frac{\zeta'(\sigma+iy)}{\zeta(\sigma+iy)}\right|
\le80H_N+Q_N[4(J_N+1)+1],\qquad0\le\sigma\le2,
\]

where |y|=T_N, the center has the matching height sign,
Q_N=H_N/log(12/11), and J_N=2H_N/log(6/5). No new zero inventory, multiplicity,
height sequence, Mellin kernel or prime observable is introduced.

## 5. Remaining boundary

Construct the actual extended quotient from the complete canonical zero divisor
and its exact finite analytic orders. In particular, prove simultaneous removable
extensions, retain all multiplicities, and prove inner nonvanishing. Then the
new conditional theorem can become an unconditional central-strip application.
The negative-real-part segment [-3,0), growing-height horizontal decay, required
complete zero counting/convergence, the infinite zero-to-prime formula, certified
finite evaluation and all-interval prime margins remain separate.

All new and inherited Lean scripts require exact-head elaboration, exact-type
review, transitive import/axiom auditing and independent acceptance. Finite
rational diagnostics do not verify the universal analytic arguments. No canonical
prime-consumer premise is changed by these additive declarations.

## Pinned upstream sources

Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.

- `Mathlib.Analysis.Complex.HasPrimitives`: `DifferentiableOn.isExactOn_ball`
  and `Complex.IsExactOn.with_val_at`.
- `Mathlib.Analysis.Calculus.LogDeriv`: `logDeriv_eqOn_iff`.
- `Mathlib.Analysis.Complex.AbsMax`: `Complex.norm_le_of_forall_mem_frontier_norm_le`.

These classical theorems are not claimed as new mathematics. Their upstream
copyright and Apache-2.0 license are retained.
