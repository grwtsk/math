# Uniform finite two-point Möbius-prefix supplier for RH-E02

Owners: #391, #388, #373, #369, #366, #357, #354, #350, #347,
#343, #335, and #334 / RH-E02. Canonical target: #15.

Stacked source: draft PR #389 at
`d47fe2d6a70e3c8d4f7cfe2933371743a8c2d5e4`, tree
`9cc235b91f72393c7b2fbfb35434d254bba2f043`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the stronger finite correlation supplier implemented in
`GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean`.
The exact signed shift packet from #388 remains the criterion. The present
condition takes absolute values and a uniform maximum, so it is sufficient but
not equivalent.

## 1. Exact shift source

At dyadic scale

\[
X=2^j,\qquad Y=2X,
\]

#388 identifies the exact kernel with

\[
\mathcal S_j=\sum_{1\le h<Y}S_{j,h},
\]

where

\[
S_{j,h}
 =2\sum_{1\le a<Y-h}
   \mu(a)\mu(a+h)w_X(a+h)
\tag{1}
\]

and

\[
w_X(b)=\frac1{\max(X,b)}-\frac1Y.
\]

The source formalization retains every positive shift, every sign, the factor
two, the half-open endpoint, and cancellation between distinct shifts.

## 2. Finite two-point prefixes

For a positive shift \(h\) and a prefix length \(N\), define

\[
C(h,N)=\sum_{0\le a<N}\mu(a+1)\mu(a+1+h).
\tag{2}
\]

This indexing makes \(C(h,0)=0\), while

\[
C(h,N+1)=C(h,N)+\mu(N+1)\mu(N+1+h).
\]

For the fixed-shift sum (1), the available prefix length is

\[
N_{j,h}=Y-h-1.
\]

The formal envelope is

\[
\mathsf{Envelope}(j,U):
\quad U\ge0
\]

and

\[
|C(h,N)|\le U
\]

for every

\[
1\le h<Y,
\qquad
0\le N\le Y-h-1.
\tag{3}
\]

One constant controls the complete growing rectangle of shifts and prefix
lengths at that scale.

## 3. Exact finite Abel identity

For arbitrary finite sequences \(x_k,q_k\), put

\[
P_n=\sum_{0\le k<n}x_k.
\]

The source proves by induction

\[
\sum_{0\le k<N}x_kq_k
 =\sum_{0\le t<N}P_{t+1}(q_t-q_{t+1})+P_Nq_N.
\tag{4}
\]

The terminal term is retained. It disappears in the application only because
the actual dyadic kernel weight vanishes at the right endpoint.

For fixed \(j,h\), take

\[
x_a=\mu(a+1)\mu(a+1+h),
\qquad
q_a=w_X(a+1+h),
\]

with \(0\le a<N_{j,h}\). The source separately proves

\[
q_{N_{j,h}}=w_X(Y)=0,
\tag{5}
\]

\[
0\le q_{a+1}\le q_a,
\tag{6}
\]

and

\[
q_0\le\frac1Y.
\tag{7}
\]

Equation (6) follows from the monotonicity of
\(b\mapsto\max(X,b)\) and reciprocal order reversal. Equation (7) uses
\(w_X(b)\le 1/Y\) for every \(b\le Y\).

## 4. Fixed-shift payment

Under \(\mathsf{Envelope}(j,U)\), equations (4)--(7) give

\[
\begin{aligned}
\left|\sum_{0\le a<N_{j,h}}x_aq_a\right|
&\le
U\sum_{0\le t<N_{j,h}}(q_t-q_{t+1})\\
&=Uq_0\\
&\le\frac UY.
\end{aligned}
\]

Restoring the ordered-pair factor two yields

\[
\boxed{|S_{j,h}|\le\frac{2U}{Y}.}
\tag{8}
\]

No cancellation between shifts is used in this stronger bound.

## 5. Complete packet payment

There are \(Y-1\) positive shifts below the right endpoint. Therefore

\[
\begin{aligned}
|\mathcal S_j|
&\le\sum_{1\le h<Y}|S_{j,h}|\\
&\le(Y-1)\frac{2U}{Y}\\
&\le2U.
\end{aligned}
\]

Thus the source proves

\[
\boxed{|\mathcal S_j|\le2U.}
\tag{9}
\]

The exact packet can be much smaller than this estimate because (9) discards
cross-shift cancellation. Consequently this supplier is not equivalent to the
packet criterion.

## 6. All-scale supplier

Define

\[
\mathsf{UniformTwoPointSubpoly}:
\]

for every \(\delta>0\), there is \(A_\delta\ge0\) such that

\[
\mathsf{Envelope}
\left(j,A_\delta X^\delta\right)
\]

holds for every dyadic scale \(j\).

Applying (9) gives

\[
\mathcal S_j
\le|\mathcal S_j|
\le2A_\delta X^\delta.
\]

The source therefore proves the conditional chain

\[
\boxed{
\mathsf{UniformTwoPointSubpoly}
\Longrightarrow
\mathsf{ShiftPacketSubpoly}
\Longrightarrow
\mathrm{RH}.
}
\tag{10}
\]

The first arrow is strict as a methodological matter: the exact packet may
benefit from cancellation across shifts that the uniform envelope ignores.
No converse is asserted from RH, energy-abscissa zero, or the shift packet.

## 7. Relation to Chowla-type estimates

The source premise is finite and uniform in both variables:

\[
\max_{\substack{1\le h<2X\\0\le N\le2X-h-1}}
\left|
\sum_{0\le a<N}\mu(a+1)\mu(a+1+h)
\right|
\le A_\delta X^\delta.
\tag{11}
\]

This is substantially stronger than proving cancellation for each fixed shift
with constants allowed to depend arbitrarily on \(h\). It is also stronger
than an averaged-shift estimate. Those weaker possibilities remain natural
future suppliers because the exact criterion sums the signed shift fibres
rather than their absolute values.

The next useful directions are therefore:

1. replace the maximum in (11) by an averaged \(\ell^2\) or large-sieve norm;
2. retain signed cross-shift cancellation through a dispersion identity;
3. derive the finite prefix estimate from a source-specific Type-II
   decomposition;
4. compare the packet with the repository's existing retained Mellin packets
   without identifying distinct arithmetic sources by notation alone.

## 8. Hostile boundaries

The following do not establish (10):

- estimates for only finitely many shifts;
- estimates for each fixed shift without uniform scale dependence;
- an average over prefix lengths that leaves exceptional lengths unpaid;
- deletion of the Abel terminal term before proving the right-endpoint weight
  is zero;
- use of \(M_b\) instead of the previous prefix \(M_{b-1}\);
- omission of the factor two;
- replacing the exact signed packet by an unsigned object and calling it
  equivalent.

The uniform absolute envelope is allowed only as a sufficient supplier. The
exact signed shift packet remains the sharper RH-E02 criterion.

## 9. Verification boundary

The exact-rational diagnostic checks:

- all \(3^8=6{,}561\) streams over \(\{-1,0,1\}\);
- dyadic scales \(X=1,2,4\);
- weight nonnegativity, monotonicity, right-endpoint vanishing, and the
  \(1/Y\) allowance;
- the fixed-shift reindexing and finite Abel identity;
- the bound \(|S_{j,h}|\le2U/Y\);
- the complete packet bound \(|\mathcal S_j|\le2U\);
- independently generated Möbius values through 512 and nine dyadic scales;
- mutations using the current prefix, omitting the factor two, and dropping
  the final Abel difference.

Normal and optimized runs produced byte-identical reports with **459,288**
checks. The canonical payload SHA-256 is

`db79a713e6d28d2f8c317e4a8840f9afb81c4916a7ec38a07ed638df62a9975c`.

These checks are not Lean parsing, elaboration, proof-term acceptance, a
universal two-point estimate, a transitive axiom/native audit, repository
tests, or independent mathematical review.
