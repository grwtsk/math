# Möbius endpoint: small rational-slope sector at every positive rate

**Date:** 2026-11-01  
**Repository:** `grwtsk/math`  
**Classification:** mathematical derivation and Lean source proof candidate  
**Verification:** compilation, expected-type checking, fresh-kernel replay, native execution, and transitive axiom audit are `NOT_RUN`

## 1. Unchanged source

The source is the repository's literal ordered Möbius endpoint packet. For
\(T\ge 0\),

\[
S_T=\{1,\ldots,\lfloor e^T\rfloor\},
\]

\[
K_T(m,n)=\int_0^T r_m(u)r_n(u)\,du,
\]

and

\[
\operatorname{pickupCross}(T)
 =
 \sum_{\substack{m,n\in S_T\\m\ne n}}
 \mu(m)\mu(n)K_T(m,n).
\]

Both ordered orientations, every Möbius sign and zero, the original causal
births, and the diagonal exclusion remain unchanged.

The predecessor source proves the literal Gram--Young estimate

\[
2|\mu(m)\mu(n)K_T(m,n)|
 \le d_m+d_n,
\qquad
d_m=\mu(m)^2K_T(m,m)\ge0,
\]

and

\[
\sum_{m\in S_T}d_m
 =\operatorname{pickupDiagonal}(T)
 \le 2T^2.
\]

It also pays:

1. every selected additive gap through \(e^{\varepsilon T/2}\);
2. every selected exact positive integer quotient through
   \(e^{\varepsilon T/2}\).

Each sector has absolute cost at most

\[
\frac{32}{\varepsilon^2}e^{\varepsilon T}.
\]

## 2. Rational-slope relation

For a finite positive parameter set \(Q\), define the symmetric relation

\[
E_Q(m,n)
\iff
m\ne n
\quad\text{and}\quad
\exists a,b\in Q:
\ a m=b n\ \text{or}\ a n=b m.
\]

For fixed \(m\) and fixed \((a,b)\), either orientation has at most one
candidate neighbor:

\[
n=\frac{am}{b},
\qquad
n=\frac{bm}{a}.
\]

Consequently

\[
\deg_{E_Q}(m)\le 2|Q|^2.
\]

The generic source Gram-degree theorem therefore gives

\[
\boxed{
|X_Q^{\mathrm{slope}}(T)|
\le
2|Q|^2\,\operatorname{pickupDiagonal}(T)
\le
4|Q|^2T^2.
}
\tag{2.1}
\]

This is an absolute bound on one sparse source sector. It is not an
absolute-value decomposition of the unresolved dense residual.

## 3. All-positive-rate parameter choice

Take

\[
Q_{\varepsilon,T}
=
\left\{
1,\ldots,
\left\lfloor e^{\varepsilon T/4}\right\rfloor
\right\}.
\]

Then

\[
|Q_{\varepsilon,T}|^2
\le e^{\varepsilon T/2}.
\]

For \(T\ge0\) and \(\varepsilon>0\),

\[
T^2
\le
\frac{8}{\varepsilon^2}e^{\varepsilon T/2}.
\]

Substitution into (2.1) yields the unconditional estimate

\[
\boxed{
|X_{Q_{\varepsilon,T}}^{\mathrm{slope}}(T)|
\le
\frac{32}{\varepsilon^2}e^{\varepsilon T}.
}
\tag{3.1}
\]

There is no exceptional set, no favorable-scale selection, and no dependence
on an unproved correlation theorem.

## 4. Disjoint source partition

Let

\[
A_{\varepsilon,T}
=
\left\{
1,\ldots,
\left\lfloor e^{\varepsilon T/2}\right\rfloor
\right\}.
\]

The new packet retains only rational-slope edges which are not already in:

- the additive gap sector \(|m-n|\in A_{\varepsilon,T}\);
- the exact integer-ratio sector
  \(n=qm\) or \(m=qn\), \(q\in A_{\varepsilon,T}\).

Deleting edges does not increase graph degree, so the disjoint slope packet
still satisfies (3.1).

The source proves the exact ordered finite identity

\[
\boxed{
\operatorname{pickupCross}
=
X_{\mathrm{gap}}
+
X_{\mathrm{integer\ ratio}\setminus\mathrm{gap}}
+
X_{\mathrm{rational\ slope}\setminus(\mathrm{gap,ratio})}
+
X_{\mathrm{reduced\ core}}.
}
\tag{4.1}
\]

The residual is defined directly on the original pairs. It is not a freely
assigned remainder.

## 5. GCD interpretation

For positive \(m,n\), put

\[
d=(m,n),\qquad
m=db,\qquad n=da,\qquad (a,b)=1.
\]

Then

\[
a m=b n.
\]

Hence a pair is in the selected rational-slope graph whenever

\[
a\le H,\qquad b\le H,
\qquad
H=\left\lfloor e^{\varepsilon T/4}\right\rfloor.
\]

Conversely, if \(a'm=b'n\) with \(a',b'\le H\), coprimality of \(a,b\)
implies \(a\mid a'\) and \(b\mid b'\), so \(a,b\le H\). Thus the rational-slope
condition is exactly a bound on the reduced numerator and denominator.

For \(m<n\), a surviving reduced-core pair therefore satisfies

\[
\frac{n}{(m,n)}>H,
\]

and hence

\[
\boxed{
(m,n)<\frac{n}{H}.
}
\tag{5.1}
\]

At the selected rate this is, up to the harmless floor,

\[
(m,n)
\lesssim
n\,e^{-\varepsilon T/4}.
\]

For surviving squarefree source indices, the gcd is itself radical, so (5.1)
can be written as a shared-prime logarithmic deficit:

\[
\sum_{p\mid m,\ p\mid n}\log p
=
\log (m,n)
<
\log n-\log H.
\]

This is a structural restriction on the remaining packet, not cancellation.

## 6. Exact transfer loss

On one fixed scale set \(G\), let
`DenseReducedRatioCoreAllRateOn G` denote all-positive-rate one-sided control
of the last term in (4.1). The three paid sectors each cost at most

\[
\frac{32}{\varepsilon^2}e^{\varepsilon T}.
\]

Therefore the source proves

\[
\boxed{
\operatorname{DenseReducedRatioCoreAllRateOn}(G)
\iff
\operatorname{SubexponentialOn}(\operatorname{pickupCross},G)
}
\tag{6.1}
\]

with additive transfer constant

\[
\frac{96}{\varepsilon^2}.
\]

Combining (6.1) with affine-frequent coverage feeds the existing canonical RH
return. The reduced-core premise itself remains unproved and RH-strength.

## 7. Comparison and novelty boundary

The abstract facts used here are elementary:

- one partial matching per rational slope;
- a degree-times-diagonal Gram/Schur estimate;
- the reduced-fraction description using a gcd.

No new abstract graph theorem or classical number-theory theorem is claimed.
The programme-specific advance is that these facts are applied to the literal
Möbius causal Gram, with the previous additive and exact-ratio packets removed
disjointly, yielding a new unconditional all-positive-rate source sector and a
strictly smaller direct residual.

The result does not use fixed-shift Chowla, random signs, an elliptic
replacement, or the Riemann Hypothesis.

## 8. Remaining arithmetic frontier

The remaining ordered pairs are simultaneously:

1. additively far;
2. not related by a selected small exact integer quotient;
3. of large reduced rational height, equivalently with relatively small gcd.

The next bounded research step is to estimate this complete signed
small-gcd core before outer absolute values. Candidate inputs include a
gcd-stratified Type-II identity, a large-sieve estimate retaining the outer
Möbius signs, or a source-exact bilinear form on coprime reduced coordinates.
A termwise bound over all surviving reduced slopes recreates an exponential
family-size loss and does not close the target.

## 9. Verification boundary

The Lean source is a `SOURCE_PROOF_CANDIDATE`.

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- dense reduced-ratio core supplier: `UNPROVED`;
- complete endpoint estimate: `UNPROVED`;
- uniform energy: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
