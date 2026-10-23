# Matched averaging for the closed Möbius pickup

Human mathematical direction, theorem selection and conceptual framing:
grwtsk contributors. Written derivation and implementation assistance:
OpenAI Codex. This is a written mathematical reduction. The matched kernel
and its new source adapters have not received public Lean acceptance.
P04, P05 and the Riemann hypothesis remain open.

For real T >= 0, keep the closed prefix N_T = floor(exp T) and

\[
M(x)=\sum_{1\le n\le x}\mu(n),\qquad
W(T)=\int_0^T e^{-u/2}M(e^u)\,du
=2\sum_{n=1}^{N_T}\mu(n)(n^{-1/2}-e^{-T/2}).
\]

The endpoint correction is -2 exp(-T/2) M(exp T), with the same cutoff
as the weighted prefix. An upper touching response is zero. The public
[arithmetic definitions](../../../../GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean)
and [finite response identity](../../../../GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean)
retain that convention. Relocation and check-in do not certify a new replay.

For 0 < delta <= 1, set eta = delta/2 and define

\[
A_0=\int_0^1e^{\eta v}\,dv,\quad
A_1=\int_0^1v e^{\eta v}\,dv,\quad
D=A_1-A_0/2,\quad
b=(1-A_0)/D,\quad a=1-b/2,
\]

\[
k_\delta(s)=\delta^{-1}(a+bs/\delta),\qquad 0\le s\le\delta.
\]

Integration by parts, with v(1-v) zero at both endpoints, gives

\[
D=\frac\eta2\int_0^1v(1-v)e^{\eta v}\,dv>0.
\]

The two defining equations are therefore well-defined and give exactly

\[
\int_0^\delta k_\delta= a+b/2=1,\qquad
\int_0^\delta k_\delta(s)e^{s/2}\,ds
=aA_0+bA_1=A_0+bD=1.
\]

There is a uniform coefficient bound without evaluating a numerically
cancelling closed formula. Put
I_0 = integral_0^1 (1-v) exp(eta v) dv and
I_1 = integral_0^1 v(1-v) exp(eta v) dv.
Fubini gives A_0-1 = eta I_0, so |b| = 2 I_0/I_1.
Since the derivative of -v(1-v)^2 is (3v-1)(1-v), integration by parts gives

\[
3I_1-I_0=\eta\int_0^1v(1-v)^2e^{\eta v}\,dv\ge0.
\]

Thus -6 <= b < 0. Exact integration of the squared affine polynomial gives

\[
\|k_\delta\|_2^2
=\delta^{-1}(a^2+ab+b^2/3)
=\delta^{-1}(1+b^2/12)\le4/\delta,
\qquad \|k_\delta\|_1\le2.
\]

These choices depend on the homogeneous functions 1 and exp(s/2).
They do not depend on the observed Möbius waveform.

For 0 <= d <= delta, put

\[
F_\delta(d)=\int_d^\delta
k_\delta(s)(e^{s/2}-e^{d/2})\,ds.
\]

The two moments give F_delta(0) = 0; an empty integral gives
F_delta(delta) = 0. For T >= 1 define
R_delta(T) = integral_0^delta k_delta(s) W(T-s) ds - W(T).
The exact source return is

\[
R_\delta(T)=2e^{-T/2}
\sum_{e^{T-\delta}<n\le e^T}
\mu(n)F_\delta(T-\log n).
\]

To prove it, expand the completed closed pickup over n <= exp T before
integrating. If log n <= T-delta, its contribution is
2(n^(-1/2) - exp(-T/2) exp(s/2)); both moments reproduce its value at s=0.
If T-delta < log n <= T, write d = T-log n. That atom contributes only
for s <= d. Subtract its value at T and use both moments on the complementary
interval [d,delta]; the result is 2 exp(-T/2) F_delta(d).
All sums are finite. A lower touching atom has weight F_delta(delta)=0
and an included upper touching atom has weight F_delta(0)=0. The original
recording cutoff is unchanged. This argument deletes no vector from a Gram
energy. It also asserts no pointwise differentiability of W at the atoms.

The two principal arithmetic obligations are

\[
\text{P04: }\exists C_X,r\ge0\ \forall T\ge0:\quad
\mathcal X(T)\le C_X(1+T)^r,
\]

where X is the complete ordered off-diagonal response Gram, and

\[
\text{P05: }\exists a,b,C_{\rm def}\ge0\ \forall T\ge1:\quad
|R_{(1+T)^{-a}}(T)|\le C_{\rm def}(1+T)^b.
\]

The displayed exact finite source formula makes P05 a signed local Möbius
cancellation problem. The witnesses are not supplied. Replacing the width
by an exponentially small one changes the target and its inverse gain.

Conditional on P05, reconstruction and Cauchy--Schwarz give, for T >= 1,

\[
|W(T)|^2\le8(1+T)^a U_T+
2C_{\rm def}^2(1+T)^{2b},\qquad
U_T=\int_{\max(0,T-1)}^T|W(u)|^2\,du.
\]

For 0 <= T <= 1 the exact pickup is
2(1-exp(-T/2)) up to log 2 and 2(1-1/sqrt 2) thereafter; hence |W(T)|<1.
Thus P06 holds on the entire nonnegative half-line with
C_R = 8 + 2 C_def^2 and s = max(a,2b).

With P04, the sharp diagonal bound gives energy witnesses
C_E = C_X+2 and q = max(r,2). The direct matched estimate then gives

\[
|W(T)|\le C_W(1+T)^{p_W},\qquad
C_W=2\sqrt{C_E}+C_{\rm def},\quad
p_W=\max((a+q)/2,b).
\]

The same witnesses cover the compact range because C_E >= 2. Conversely,
a whole-pickup bound with C_W,p_W >= 0 gives P04 witnesses
C_X = C_W^2/(2p_W+1), r = 2p_W+1 by integrating the completed square and
using D >= 0. It gives P05 with a=0, b=p_W and C_def=3 C_W by the L1 kernel
bound at width one. Therefore P04 AND P05 is equivalent to whole-pickup
polynomial growth as an existential class. No converse from RH is asserted.

Energy-only RH returns use the separate
[polynomial energy criterion](../../../../GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean).
They keep their explicit open growth hypothesis. The stronger pointwise
consumer for P_A(t)=W(t)-W(2 log A) also keeps its own source identities:
for A >= 1 and 2 log A <= t <= 2A a whole-pickup bound gives
|P_A(t)| <= 2 C_W 3^p_W A^p_W. Pickup-response energy, original source-vector
Gram, signed reset pickup and nonnegative Storage remain separate objects.

The [problem registry](pickup-problem-registry.json) records literal targets,
dependencies, current evidence boundaries and remaining witnesses. Written
proofs, finite diagnostics, source inspection and formal acceptance retain
separate grades. Fresh source and consumer replay is still required for the
current relocated library.

## Causal dyadic localization at every positive damping

**Status: written finite analytic proof and executable rational diagnostics;
no Lean admission and no uniform arithmetic bound for the localized source.**
Human mathematical direction: grwtsk contributors. Derivation and implementation
assistance: OpenAI ChatGPT. This is an alternative to the pointwise route above:
it assumes neither P04 nor P05. It also does not assume `MertensLogSquareBound`,
a Mertens power estimate, or a zero-free theorem.

### A source-exact local reading

Let $V(x)=W(\log x)$ for $x\ge1$, and extend $V$ by zero on $0<x<1$.
Put $h=\log2$ and $\alpha=2^{-1/2}$. Define

$$\mathcal L(x)=V(x)-(1+\alpha)V(x/2)+\alpha V(x/4). \tag{DL1}$$

The constant and inverse-square-root parts of an already active response
cancel because

$$1-(1+\alpha)+\alpha=0,\qquad
1-(1+\alpha)\sqrt2+2\alpha=0.$$

Apply this identity to each of the **finite**, actual closed-source response
terms. For a positive integer $n$, the resulting atom is

$$\ell_n(x)=\begin{cases}
2(n^{-1/2}-x^{-1/2}),&n\le x\le2n,\\
\sqrt2(2x^{-1/2}-n^{-1/2}),&2n\le x\le4n,\\
0,&x<n\text{ or }x>4n.
\end{cases}$$

The branches agree at $2n$ and vanish at $n$ and $4n$. Therefore, at every
real $x\ge1$, including all touching cutoffs,

$$\boxed{\mathcal L(x)=\sum_{x/4<n\le x}\mu(n)\ell_n(x).} \tag{DL2}$$

No coefficients preceding $x/4$ occur in this local reading. This does not
mean their contribution to $V(x)$ is discarded: the finite inverse below
recovers it from earlier local readings. The lower strict and upper closed
cutoffs in (DL2) follow only after the exact atom calculation.

For computation, let $A_N=\sum_{n\le N}\mu(n)n^{-1/2}$ and
$M_N=\sum_{n\le N}\mu(n)$, with $A_0=M_0=0$. On the open integer cell
$n<x<n+1$, set

$$P_n=A_n-(1+\alpha)A_{\lfloor n/2\rfloor}
          +\alpha A_{\lfloor n/4\rfloor},$$

$$Q_n=M_n-(1+\sqrt2)M_{\lfloor n/2\rfloor}
          +\sqrt2 M_{\lfloor n/4\rfloor}.$$

Then $\mathcal L(x)=2(P_n-Q_nx^{-1/2})$. All change points of all three
readings are integers. This supplies exact floor and partial-final-cell
adapters without numerical logarithms. The continuous endpoint values agree.
The entire completed-transform numerator, both endpoint terms and the
unborn-product debt of the original pickup are unchanged.

### Finite causal inverse: the history is reconstructed, not reset

Define $c_k=\sum_{j=0}^k\alpha^j$. The recurrence
$c_k-(1+\alpha)c_{k-1}+\alpha c_{k-2}=0$ for $k\ge2$, together with
$c_0=1$ and $c_1=1+\alpha$, gives

$$\boxed{V(x)=\sum_{k=0}^{\lfloor\log_2x\rfloor}
                c_k\mathcal L(x/2^k).} \tag{DL3}$$

For a direct finite verification, the polynomial identity is

$$(1-(1+\alpha)z+\alpha z^2)\sum_{k=0}^Kc_kz^k
=1-c_{K+1}z^{K+1}+\alpha c_Kz^{K+2}.$$

Apply it to the causal shift. The last two source values lie below one
when $K=\lfloor\log_2x\rfloor$ and are zero by the declared extension.
The term at $x/2^K=1$, when present, is retained and equals zero since
$V(1)=\mathcal L(1)=0$. There is no infinite-series assumption in (DL3).

On $0\le t<h$, $\mathcal L(e^t)=W(t)$. This startup information must
remain. A noncausal homogeneous solution, or resetting the state at every
new octave, would destroy the inverse assertion. For example, changing the
coefficient at one does not change $\mathcal L(16)$ but changes $V(16)$;
the earlier terms of (DL3) carry exactly that difference.

### Finite weighted norms, with complete constants

For $\sigma>0$, define

$$\Gamma_\sigma(T)=\int_0^T e^{-2\sigma t}|\mathcal L(e^t)|^2dt,
\qquad q=2^{-\sigma},$$

$$R_\sigma=[(1-q)(1-\alpha q)]^{-2},\qquad
U_\sigma=[(1+q)(1+\alpha q)]^2.$$

Then for every real $T\ge0$,

$$\boxed{H_\sigma(T)\le R_\sigma\Gamma_\sigma(T),\qquad
\Gamma_\sigma(T)\le U_\sigma H_\sigma(T).} \tag{DL4}$$

Here is a proof that uses only finite-window integrability. Write
$f(t)=e^{-\sigma t}W(t)$, extended by zero at negative time, and let
$S_h f(t)=f(t-h)$. On $[0,T]$, every causal shift is an $L^2$ contraction.
The damped local reading equals
$(I-qS_h)(I-\alpha qS_h)f$. The triangle inequality gives the second
bound in (DL4). Equation (DL3) gives the first, since its finite sum has
nonnegative coefficients $c_kq^k$ and

$$\sum_{k\ge0}c_kq^k
=\left(\sum_{i\ge0}q^i\right)
 \left(\sum_{j\ge0}(\alpha q)^j\right)
=\frac1{(1-q)(1-\alpha q)}.$$

Only this scalar geometric sum is infinite. It bounds the mass of the
finite inverse; it does not assume a half-line $L^2$ representative.
All actual source functions are continuous on compact windows, so the finite
norms used in the argument exist. This is not a bound uniform in $\sigma$.

At $\sigma=1/3$, the constants have the rational certifications

$$\boxed{H_{1/3}(T)\le123\Gamma_{1/3}(T),\qquad
\Gamma_{1/3}(T)\le8H_{1/3}(T).} \tag{DL5}$$

Indeed $q<127/160$ because $(127/160)^3>1/2$, and
$\alpha q<9/16$ because $(9/16)^6>1/32$. Thus
$R_{1/3}<(2560/231)^2<123$. Also $q<4/5$, so
$U_{1/3}<(45/16)^2=2025/256<8$. All these comparisons are integer or
rational inequalities; the exact constants are approximately $122.0483561$
and $7.84213324$.

Consequently a uniform bound on the localized energy is equivalent to the
original one-third bound, with no additional arithmetic hypothesis. Moreover,
the family of localized bounds for **all** positive dampings is equivalent
to `CompletedVerticalLineUniform`, using the existing finite Parseval return.
This is a conditional terminal interface, not a supplier of that family.

The connection to the retained two-mode block energy $K_J$ from the
[weighted projection](Energy/damped-tails.md) is also explicit:

$$K_J\le123\Gamma_{1/3}(J\log2),\qquad
\Gamma_{1/3}(J\log2)\le8(K_J+C_{\rm err}),$$

where $C_{\rm err}=1/[20(1-2^{-1/6})]<1/2$. Thus no separate estimate
of each historical carried coefficient is required *in addition* to the
local-energy estimate. The local estimate itself remains unpaid.

### Compact-support Gram and a paid diagonal

Put $\phi_n(t)=\ell_n(e^t)$ and

$$G^\Delta_T(m,n)=\int_0^T e^{-2t/3}\phi_m(t)\phi_n(t)\,dt.$$

This is an actual finite response Gram. Since the two supports are
$[\log m,\log(4m)]$ and $[\log n,\log(4n)]$,

$$G^\Delta_T(m,n)=0\quad\text{if }\max(m,n)\ge4\min(m,n). \tag{DL6}$$

Equality of the endpoints gives at most a single touching point, with zero
response. There are no distant-ratio off-diagonal interactions. At finite
$T$, however, every Gram entry is still integrated only to $T$; replacing it
by its complete atom integral would introduce an unpaid tail correction.

For $N=\lfloor e^T\rfloor$, define the complete ordered split

$$D_\Delta(T)=\sum_{n\le N}\mu(n)^2G^\Delta_T(n,n),\qquad
X_\Delta(T)=\sum_{\substack{m,n\le N\\m\ne n}}
                    \mu(m)\mu(n)G^\Delta_T(m,n).$$

Finite expansion gives $\Gamma_{1/3}(T)=D_\Delta(T)+X_\Delta(T)$.
Let $c=\int_0^{\log4}e^{-2t/3}\phi_1(t)^2dt$. Scaling gives the complete
atom mass $c\,n^{-5/3}$. For a completely evaluated expression write
$J_p(b,d)=(b^{-p}-d^{-p})/p$; then

$$\begin{aligned}
c=4\big[&J_{2/3}(1,2)-2J_{7/6}(1,2)+J_{5/3}(1,2)\\
       &+2J_{5/3}(2,4)-2J_{7/6}(2,4)+\tfrac12J_{2/3}(2,4)\big].
\end{aligned}$$

In particular $0<c<9/25$: on its support
$0\le\phi_1\le2-\sqrt2<3/5$, while
$\int_0^{\log4}e^{-2t/3}dt<1$, the latter following from $16<27$.
The integral comparison for $\sum n^{-5/3}$ therefore proves

$$\boxed{0\le D_\Delta(T)\le\tfrac52c<\frac9{10}.} \tag{DL7}$$

The exact $\tfrac52c$ is approximately $0.25696642$. The diagonal is
paid. No sign or uniform upper bound for $X_\Delta$ is supplied.
Indeed the finite rational diagnostic at $x=17/2$ certifies
$X_\Delta(\log(17/2))>1/200$, disproving the tempting stronger claim
that the actual Mobius off-diagonal is always nonpositive. This finite
sign enclosure is not a Lean admission or an infinite-range estimate.

The remaining local arithmetic criterion can be stated on integer octaves:

$$\boxed{\exists C\ge0\ \forall J\in\mathbb N:\quad
                   X_\Delta(J\log2)\le C.} \tag{DL8}$$

It is equivalent to uniform one-third energy. A witness gives
$H_{1/3}(T)\le R_{1/3}(C+\tfrac52c)\le123(C+9/10)$ for every real
$T\ge0$: choose $J$ with $T\le J\log2$ and use monotonicity of the
nonnegative localized integral. Conversely $H_{1/3}\le B$ gives
$X_\Delta\le\Gamma_{1/3}\le8B$. This is not the original polynomial
undamped P04; neither that proposition nor its witness is used.

### The literal local sum for an arithmetic attack

Equivalently set $S(x)=\sqrt x\,\mathcal L(x)$ and define the compact
weight

$$\psi(r)=\begin{cases}
\sqrt2(2-r^{-1/2}),&1/4\le r\le1/2,\\
2(r^{-1/2}-1),&1/2\le r\le1,\\
0,&\text{otherwise}.
\end{cases}$$

Then, with no unknown historical prefix,

$$S(x)=\sum_{x/4<n\le x}\mu(n)\psi(n/x),\qquad
\Gamma_{1/3}(\log R)=\int_1^R x^{-8/3}|S(x)|^2dx. \tag{DL9}$$

For $B_j=\int_{2^j}^{2^{j+1}}|S(x)|^2dx$, finiteness of the extended
nonnegative integral is equivalent to summability of
$\sum_j2^{-8j/3}B_j$, by two-sided comparison with factors $1$ and
$2^{-8/3}$. A sufficient, still-unproved arithmetic statement is

$$\exists C\ge0,\epsilon>0\ \forall j\ge0:\quad
B_j\le\frac{C\,2^{8j/3}}{(j+1)^{1+\epsilon}}. \tag{DL10}$$

It would give $H_{1/3}(T)\le123C(1+1/\epsilon)$. The startup octave is
included in (DL10); no unspecified compact-range constant is concealed.
No witness for (DL8), (DL9) finiteness, or (DL10) is obtained here.

A source-independent substitute fails even after this localization. For the
coefficient sequence identically one, $\psi(r)>1/4$ on $[1/2,3/4]$.
There are at least $x/8$ integers in $(x/2,3x/4]$ for $x\ge8$. Hence
$S_1(x)\ge x/32$, and

$$\Gamma_{1/3,1}(\log R)\ge\frac3{1024}(R^{1/3}-2)
\quad(R\ge8).$$

Thus the infinite-range supplier cannot depend only on bounded coefficients,
compact atom support, or Gram positivity. It must use actual Mobius arithmetic.

For the current literature comparison, Matomaki--Pandey--Pliego--Teravainen--Wang,
[arXiv:2610.09567v1](https://arxiv.org/html/2610.09567v1), Theorems 1.2 and
1.4, gives logarithmic savings in its stated short-interval ranges. The
finite partial-summation port here is exact: since $\psi$ vanishes at both
endpoints and has total variation $4(\sqrt2-1)$,

$$|S(x)|\le4(\sqrt2-1)
 \sup_{x/4\le y\le x}\left|\sum_{x/4<n\le y}\mu(n)\right|.$$

Obtaining only $O(x/(\log x)^A)$ for this supremum by an absolute assembly
still permits $B_j=O(2^{3j}/j^{2A})$, an allowance whose multiplication by
$2^{-8j/3}$ is not summable for any fixed $A$. This identifies the failed
majorization, not divergence of the actual signed energy. The cited paper's
estimates are not imported as an unspecified constant or a proved supplier
of (DL10); no new Mertens exponent is claimed.

### Pole and zero-damping safeguards

On the already justified initial Laplace domain $\Re z>1/2$, the local
source has transform

$$\frac{(1-2^{-z})(1-2^{-(z+1/2)})}
 {z(z+1/2)\zeta(z+1/2)}.$$

Neither numerator factor vanishes when $\Re z>0$. Thus localization cannot
cancel a hypothetical zeta pole of the reciprocal in that half-plane. No
contour is shifted in this argument. The filter handles the two known
homogeneous modes but does not provide a new zero-free exponent.

Positive damping is essential. For the single-atom coefficient sequence
$a_1=1$, $a_n=0$ for $n>1$, $W(t)=2(1-e^{-t/2})$ has infinite undamped
energy while its localized reading is supported on $[0,\log4]$. Therefore
the analogous uniform criterion at $\sigma=0$ is false. The blow-up of
$R_\sigma$ as $\sigma\downarrow0$ is not removed or replaced by a
rate-uniform constant.

### Implementation and evidence boundary

`dyadic_pickup_localization.py` (artifact:gitblob:c4a10f77336d8d9a59a21d70e8f2f9afa414efd1)
implements the local atoms, independent literal filter, finite inverse,
finite-horizon Gram, and integer-cell energies. Its optional ordered-pair
check retains both orders. The unchanged rational root and Mobius sieve
implementation comes from `one_third_energy.py` and is separately hash-bound.

`test_dyadic_pickup_localization.py` (artifact:gitblob:6d0dbeeb831ee40542bc1c9088694405cb4240b8)
checks causal inversion in exact rational algebra, both finite norm bounds,
actual root identities, startup, local-support independence, the positive
actual off-diagonal counterexample, finite-versus-complete Gram entries,
ordered pairs, original energy, integer and noninteger cutoffs, and invalid
inputs under optimized Python. Precision is checked before entering the
cached root routine, including numerically equal inputs with wrong types.

```sh
python3 -B artifact:gitblob:6d0dbeeb831ee40542bc1c9088694405cb4240b8
python3 -O -B artifact:gitblob:6d0dbeeb831ee40542bc1c9088694405cb4240b8
python3 -B artifact:gitblob:c4a10f77336d8d9a59a21d70e8f2f9afa414efd1 --cutoff 17/2 --pair-check
```

The new source-bound receipt (artifact:gitblob:023c213afbbda39d99c45fc82bed9e5f886fa4f5)
records actual runs, the initial failed validation control and its repair,
and finite enclosures. Overlap of intervals is a consistency test, not a
proof of a general identity. The analytic statements above are written proofs,
not kernel-checked declarations. No Lean source, compiler pin, historical
receipt, workflow, or permission is changed. Pinned Lean replay and full-repo
structural checks were not available in this execution environment.
The previously retained block modes are not declared small: (DL8) is the
remaining source-specific arithmetic inequality. RH is not claimed.

## Arithmetic sectors of the localized Gram

**Status: written proofs and finite exact diagnostics, not a Lean admission.
The remaining signed core has no uniform upper-bound witness.** Human
mathematical direction: grwtsk contributors. Derivation and implementation:
OpenAI ChatGPT. The Möbius multiplicativity and squarefree identities used
below are classical; no new theorem about cancellation of general shifted
Möbius sums is claimed.

### Exact finite source and primitive-ratio identity

Retain the localized atoms from (DL2), now writing the physical recording
cutoff as R>=1 and

\[
G_R(m,n)=\int_1^R x^{-5/3}\ell_m(x)\ell_n(x)\,dx,
\qquad c=G_4(1,1).
\]

The atoms are nonnegative. The preceding evaluated single-atom formula gives
0<c<9/25, and scaling and Cauchy--Schwarz give

\[
0\le G_R(m,n)\le c(mn)^{-5/6},\qquad
G_R(m,n)=0\quad(n\ge4m,\ m\le n).                    \tag{PS1}
\]

The right side of the inequality may use complete single-atom integrals;
the left side always retains its actual finite R. There is no replacement
of the source's finite Gram by a completed Gram.

For g,a,b positive with gcd(a,b)=1, classical multiplicativity gives

\[
\mu(ga)\mu(gb)=\mu(a)\mu(b)\mu(g)^2
                    1_{\gcd(g,ab)=1}.                \tag{PS2}
\]

If gcd(g,ab)>1, a prime divides both g and one of a,b, so one product ga or
gb has a squared prime factor and its Möbius coefficient vanishes. Otherwise
multiplicativity applies to both factors. Squareful a,b or g also give zero.
Thus (PS2) retains the coprimality restriction even though its input pair is
already primitive. Dropping that restriction fails, for example, at a=2,
b=3,g=2.

Atom dilation gives ell_(ga)(x)=g^(-1/2)ell_a(x/g). Hence

\[
G_R(ga,gb)=g^{-5/3}G_{R/g}(a,b).                       \tag{PS3}
\]

The transformed cutoff R/g is essential. At fixed finite R every sum below
is finite. With N=floor(R), the complete ordered cross term is therefore

\[
X_\Delta(\log R)=
2\!\sum_{\substack{1\le a<b\le N\\b<4a,\ (a,b)=1}}
\mu(a)\mu(b)
\!\sum_{\substack{1\le g\le\lfloor R/b\rfloor\\(g,ab)=1}}
\mu(g)^2g^{-5/3}G_{R/g}(a,b).                         \tag{PS4}
\]

This is finite gcd regrouping, not an infinite Euler product or an
interchange of conditionally convergent series. The factor 2 restores the
other ordering. Closed upper cutoffs, touching responses, and the original
completed numerator with both endpoint terms and unborn-product debt remain
unchanged.

### Four disjoint pair sectors

Classify each strict pair m<n<4m, g=gcd(m,n), in this order:

| Sector | Exact integer condition |
|---|---|
| P, divisible rays | m divides n, necessarily n=2m or 3m |
| Q, other large-gcd pairs | m does not divide n and g^2>=m |
| A, short gaps | g^2<m and (n-m)^2<=m |
| Z, remaining core | g^2<m and (n-m)^2>m |

For each sector use the complete signed sum 2 sum mu(m)mu(n)G_R(m,n),
with 1<=m<n<=floor(R). Denote these sums P(R), Q(R), A(R), Z(R).
Let D(R) be the original localized diagonal. Then exactly

\[
\Gamma_{1/3}(\log R)=D(R)+P(R)+Q(R)+A(R)+Z(R).         \tag{PS5}
\]

No sector is discarded from this identity. P, Q, A are bounded below as
well as above, so their later removal from the *remaining obligation* is a
controlled estimate rather than a source deletion.

### The arithmetic sign on divisible rays is exact

For p=2 or 3,

\[
\mu(m)\mu(pm)=-\mu(m)^2 1_{p\nmid m}.                \tag{PS6}
\]

If p divides m then pm is squareful; if not, multiplicativity and mu(p)=-1
apply. Since G_R>=0, P(R)<=0 for the actual Möbius coefficients. Also

\[
\begin{aligned}
|P(R)|
&\le 2c(2^{-5/6}+3^{-5/6})\sum_{m\ge1}m^{-5/3}\\
&\le5c(2^{-5/6}+3^{-5/6})<10c.
\end{aligned}                                                       \tag{PS7}
\]

The series comparison uses sum m^(-5/3)<=1+integral_1^infinity
u^(-5/3)du=5/2. This is a genuine source-specific sign, not a consequence
of bounded coefficients. For comparison, the ratio 3/2 satisfies
mu(2g)mu(3g)=mu(g)^2 1_(g,6)=1>=0. Thus all multiplicative rays cannot be
assigned the same sign.

### Two infinite classes have finite absolute budgets

For short gaps, at most floor(sqrt(m)) positive differences occur for each m.
From (PS1), G_R(m,m+h)<=c m^(-5/3), and consequently

\[
\sum_{(m,n)\in A}2|\mu(m)\mu(n)|G_R(m,n)
\le2c\sum_{m\ge1}m^{-7/6}\le14c.                    \tag{PS8}
\]

This pays all fixed additive shifts eventually: a fixed h lies in the
short-gap region whenever m>=h^2, except for pairs already in another paid
sector. No shifted-correlation theorem is needed for that conclusion.

For the nondivisible large-gcd sector, put m=ga,n=gb. Then a>=2,
a<b<4a and g>=a. Removing coprimality only in this positive *upper bound*,
and using fewer than 3a choices of b, gives

\[
\begin{aligned}
\sum_{(m,n)\in Q}2|\mu(m)\mu(n)|G_R(m,n)
&\le 2c\sum_{a\ge2}3a\,a^{-5/3}
                  \sum_{g\ge a}g^{-5/3}\\
&\le 15c\sum_{a\ge2}a^{-4/3}\le45c.                \tag{PS9}
\end{aligned}
\]

Here sum_(g>=a)g^(-5/3)<=a^(-5/3)+(3/2)a^(-2/3)
<=(5/2)a^(-2/3), and sum_(a>=2)a^(-4/3)<=integral_1^infinity
u^(-4/3)du=3. The powers -7/6 and -4/3 are the precise sources of
summability. They arise from pair counting and the actual homogeneous atom
bound, not from an assumed new Mertens exponent.

All bounds hold at every finite R and also bound the full absolute masses
of the designated sectors. Keeping the cutoff in Z remains essential.

### The smaller surviving arithmetic inequality and exact return

Combining D(R)<=5c/2, -10c<=P(R)<=0, |Q(R)|<=45c and |A(R)|<=14c,

\[
\boxed{\Gamma_{1/3}(\log R)\le Z(R)+\frac{123}{2}c,
\qquad Z(R)\le\Gamma_{1/3}(\log R)+69c.}             \tag{PS10}
\]

It follows, using the finite causal bounds (DL5), that

\[
\boxed{\exists C\ge0\ \forall J\in\mathbb N:\ Z(2^J)\le C}
                                                               \tag{PS11}
\]

is equivalent to uniform boundedness of H_(1/3)(T). A witness C gives

\[
H_{1/3}(T)\le123(C+123c/2)
             <123(C+1107/50)\qquad(T\ge0).          \tag{PS12}
\]

For a real T choose J with exp(T)<=2^J and apply monotonicity of the
nonnegative localized energy, not monotonicity of Z. Conversely a uniform
H_(1/3)<=B gives Z(2^J)<=8B+69c. These are existential bound transfers,
not a supplier for (PS11). In primitive coordinates its remaining pairs obey

\[
a\ge2,\quad a<b<4a,\quad(a,b)=1,\quad
1\le g<a,\quad g(b-a)^2>a,\quad gb\le2^J,\quad(g,ab)=1,
\]

with signed summand 2 mu(a)mu(b)mu(g)^2 g^(-5/3)G_(2^J/g)(a,b).
Both primitive signs must survive. No P04 premise is introduced.

### Actual Möbius obstruction to bounding either sign separately

Let Z_+(R) and Z_-(R) be the positive and negative masses of Z(R), so
Z=Z_+-Z_-. These are nonnegative finite sums, not sums for arbitrary test
coefficients. Both are unbounded for the actual Möbius function.

Here are finite lower certificates with explicit constants. For an integer
X>=4 let P_X be the primes in (X,5X/4], K=|P_X|, and
H=ceil(sqrt(5X/4)). If m<n are in P_X and n-m>H, the pair lies in Z,
mu(m)mu(n)=1, and

\[
G_{2X}(m,n)\ge \frac1{1296}X^{-5/3}.                \tag{PS13}
\]

To check the constant, integrate only over [3X/2,7X/4]. Both atoms are in
their increasing branches and each is greater than X^(-1/2)/9, using
sqrt(4/5)>8/9 and sqrt(2/3)<5/6. The physical weight is greater than
X^(-5/3)/4 and the interval length is X/4. There are at least
max(0,K(K-1-2H)/2) unordered separated pairs. Thus

\[
Z_+(2X)\ge
\frac{K\max(0,K-1-2H)}{1296}X^{-5/3}.              \tag{PS14}
\]

For distinct p,q in P_X, use m=p,n=2q. These also lie in Z: their gcd is
one and their gap is greater than sqrt(m). Their Möbius product is -1.
On [3X,7X/2], the first atom is greater than X^(-1/2)/15 and the second
greater than X^(-1/2)/12. The rational comparisons
sqrt(7/2)<15/8, sqrt(2/5)>5/8 and 1/sqrt(3)<7/12 prove these bounds.
The weight is greater than X^(-5/3)/16 and the length is X/2. Therefore

\[
G_{4X}(p,2q)\ge\frac1{5760}X^{-5/3},\qquad
Z_-(4X)\ge\frac{K(K-1)}{2880}X^{-5/3}.             \tag{PS15}
\]

Every finite X and its exact prime count can be checked without an
asymptotic input. For the *infinite-range refutation only*, the unconditional
prime number theorem, for example [DLMF 27.12.5](https://dlmf.nist.gov/27.12.E5),
gives K~X/(4 log X). Consequently both lower bounds diverge. More explicitly,
whenever K>=X/(8 log X) and K>=4H+2, (PS14) is at least
X^(1/3)/(165888 log^2 X); (PS15) is at least
X^(1/3)/(368640 log^2 X). PNT proves those gates eventually; no numerical
onset X_0 is supplied or claimed. The executable finite certificates instead
report the exact count, gap and number of eligible pairs at the selected X.

Thus the positive part alone and the absolute core both have infinite
half-line mass. So does the negative part. This does NOT prove that Z or
H is unbounded: cancellation between these two divergent masses is exactly
what remains. It rules out a uniform unsigned or positive-part supplier even
for the actual arithmetic source, rather than merely for a comparison vector.
It also prohibits an unproved infinite regrouping of the signed core.

### Research applicability and verification boundary

The pinned Mathlib Möbius file already contains
`isMultiplicative_moebius`, `moebius_apply_prime`,
`moebius_eq_zero_of_not_squarefree` and `abs_moebius_le_one`.
These are the classical inputs for a future native port of (PS2) and (PS6),
not new Lean admissions here. The finite Gram adapters also require their
own native source identification.

Tao's [logarithmically averaged two-point theorem, Theorem 1.2 and its
Elliott extension](https://arxiv.org/html/1509.05422v4), uses fixed affine
forms with nonzero determinant and a logarithmic average. The primitive
forms ag,bg have zero determinant: (PS2) shows directly why their products
need not cancel as g varies. Fixed additive shifts are already covered by
the absolute budget above, apart from finitely many terms. A theorem applied
to the surviving core must therefore supply uniform aggregate control for
growing differences and growing primitive parameters, with the actual
finite-horizon kernel. No such bound is obtained from that theorem here.

`localized_mobius_pair_sectors.py` (artifact:gitblob:b418b4642a33e5f1c1809c4cf2ad48f7812d593d)
uses the unchanged finite localized Gram. It independently compares direct
pairs, gcd regrouping with the shifted recording cutoff, and the integrated
localized source. It reports every sector, including zeros and both signs;
only exact zero summands can skip numerical integration. Arbitrary test
sequences are labeled and do not inherit the Möbius ray-sign theorem.
The prime certificates use independent trial division and exact integer
counts. Rational enclosures are finite executable evidence, not Lean proofs.

`test_localized_mobius_pair_sectors.py` (artifact:gitblob:3cb0b832506ae32758889e53bff2babc01fe97cf)
checks primitive gates, boundary equality, both orders, scaled cutoffs,
actual and comparison signs, finite sector budgets, independent sieve
values, and explicit prime-kernel lower constants. The
source-bound receipt (artifact:gitblob:6854a8bacf3139c52abad3d4ad24aa3a981e433d)
records the normal and optimized runs and their exact source hashes.

No source library, compiler pin, workflow, permission, or historical receipt
is changed. No Lean/Lake executable or full checkout is available in this
execution; pinned Lean replay, owned-declaration auditing and repository-wide
structural checks are NOT_RUN. The mathematics proved in this appendix is
written, including the two sign-mass divergence arguments. The new uniform
signed core estimate (PS11), an unconditional native Mertens-log supplier,
and the terminal RH theorem remain unproved here.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimitiveIdentification.lean`](../../../../GRWTSK/NumberTheory/Moebius/PrimitiveIdentification.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 21 |
| Theorem/lemma commands | 20 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
