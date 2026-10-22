# Dyadic ordered Möbius-pair correlation criterion

Owners: #366, #357, #354, #350, #347, #343, #335, and #334 / RH-E02.  
Canonical target: #15.  
Stacked parent: draft PR #360 at
`c90e918f668cfd9e04974a9c79283a72df121e1a`, tree
`c3e51c6f19052fd6cb7787d1abe395cb36b26425`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicOrderedPairMertensCorrelation.lean`.
It does not prove a new Möbius-correlation estimate.

## 1. Unchanged source

Retain the repository's actual real Möbius coefficients and closed prefix

\[
M_n=\sum_{1\le a\le n}\mu(a).
\]

For the dyadic scale

\[
X=2^j,
\qquad
Y=2X=2^{j+1},
\]

the individual block criterion from #357 uses

\[
B_j
 =\sum_{X\le n<Y}
   \frac{M_n^2}{n(n+1)}.
\tag{1}
\]

The half-open ownership is unchanged. The term at the left endpoint belongs to
this block, and the term at the right endpoint belongs to the next block.

## 2. Exact square decomposition

Define

\[
\operatorname{Diag}(n)
 =\sum_{1\le a\le n}\mu(a)^2
\tag{2}
\]

and the complete ordered off-diagonal sum

\[
\operatorname{Pair}(n)
 =\sum_{\substack{1\le a,b\le n\\a\ne b}}
   \mu(a)\mu(b).
\tag{3}
\]

The word *ordered* is material: if \(a\ne b\), both \((a,b)\) and \((b,a)\)
are present. Expanding the finite square gives

\[
\boxed{
M_n^2=\operatorname{Diag}(n)+\operatorname{Pair}(n).
}
\tag{4}
\]

No absolute values occur in (3). Negative pair contributions are retained.

Define the weighted dyadic pieces

\[
D_j
 =\sum_{X\le n<Y}
   \frac{\operatorname{Diag}(n)}{n(n+1)},
\tag{5}
\]

\[
R_j
 =\sum_{X\le n<Y}
   \frac{\operatorname{Pair}(n)}{n(n+1)}.
\tag{6}
\]

Then (4) gives the exact source identity

\[
\boxed{B_j=D_j+R_j.}
\tag{7}
\]

The new Lean source contains the finite expansion and (7) as proof scripts.
They have not been elaborated.

## 3. The diagonal is fully paid

Mathlib's ordinary coefficient estimate gives

\[
|\mu(a)|\le1,
\qquad
\mu(a)^2\le1.
\]

Consequently

\[
0\le\operatorname{Diag}(n)\le n.
\tag{8}
\]

For \(X\le n<2X\),

\[
0\le
\frac{\operatorname{Diag}(n)}{n(n+1)}
\le
\frac1{n+1}
\le
\frac1X.
\tag{9}
\]

The half-open interval \([X,2X)\) contains exactly \(X\) integers. Therefore

\[
\boxed{0\le D_j\le1.}
\tag{10}
\]

This uses no Möbius cancellation. It pays only the coefficient-square diagonal.
The signed ordered-pair term remains the complete arithmetic debt.

## 4. Exact criterion

Define

\[
\mathsf{PairSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
R_j\le C_\delta(2^j)^\delta.
\tag{11}
\]

The source implements

\[
\boxed{
\mathsf{PairSubpoly}
\iff
\mathsf{DyadicBlockSubpoly}.
}
\tag{12}
\]

The forward implication uses (7), (10), and

\[
1\le(2^j)^\delta
\qquad(\delta>0),
\]

to obtain

\[
B_j
 \le1+C_\delta(2^j)^\delta
 \le(C_\delta+1)(2^j)^\delta.
\tag{13}
\]

The reverse implication follows from \(R_j\le B_j\), because \(D_j\ge0\).
Only an upper bound on \(R_j\) is relevant. Its lower tail may be arbitrarily
negative without obstructing (12).

Composing with #357, #354, #350, and #347 gives the exact arithmetic equivalences

\[
\begin{aligned}
\mathsf{PairSubpoly}
&\iff \mathsf{DyadicBlockSubpoly}\\
&\iff \mathsf{DyadicPrefixSubpoly}\\
&\iff \mathsf{CumulativeSubpoly}\\
&\iff \mathsf{AllPositiveWeightedMertensSquare}.
\end{aligned}
\tag{14}
\]

The final implication to RH remains conditional:

\[
\mathsf{PairSubpoly}\Longrightarrow\mathrm{RH}.
\tag{15}
\]

No converse from RH is claimed.

## 5. Finite pair kernel

The following formulas are written consequences of finite rearrangement. They
are not additional Lean theorems in this increment.

For fixed \(a,b\), the pair contributes to every prefix \(M_n^2\) with

\[
n\ge\max(X,a,b),
\qquad n<Y.
\]

The elementary telescoping identity

\[
\sum_{m\le n<Y}\frac1{n(n+1)}
 =\frac1m-\frac1Y
\tag{16}
\]

therefore yields

\[
\boxed{
R_j
 =\sum_{\substack{1\le a,b<Y\\a\ne b\\
                    \max(X,a,b)<Y}}
   \mu(a)\mu(b)
   \left(
     \frac1{\max(X,a,b)}-\frac1Y
   \right).
}
\tag{17}
\]

With \(Y=2X\), this is

\[
R_j
 =\sum_{\substack{a\ne b<2X}}
   \mu(a)\mu(b)
   \left(
     \frac1{\max(X,a,b)}-\frac1{2X}
   \right),
\tag{18}
\]

where terms with \(\max(X,a,b)\ge2X\) are absent.

The kernel is nonnegative. The sign is entirely arithmetic, from
\(\mu(a)\mu(b)\).

## 6. Triangular correlation form

Pair the two orientations and order the indices by \(a<b\). Since

\[
\sum_{a<b}\mu(a)=M_{b-1},
\]

(17) becomes

\[
\boxed{
R_j
 =2\sum_{1\le b<2X}
   \mu(b)M_{b-1}
   \left(
     \frac1{\max(X,b)}-\frac1{2X}
   \right).
}
\tag{19}
\]

Equivalently, split at the block boundary:

\[
\begin{aligned}
R_j
={}&\frac1X
  \sum_{b<X}\mu(b)M_{b-1}\\
&+2\sum_{X\le b<2X}
  \mu(b)M_{b-1}
  \left(\frac1b-\frac1{2X}\right).
\end{aligned}
\tag{20}
\]

The coefficient in the first line follows from
\(2(1/X-1/(2X))=1/X\).

Formula (19) is the intended next interface. It is a weighted correlation of
the new Möbius coefficient with the complete preceding Mertens state. It is
strictly weaker than separately bounding \(|M_{b-1}|\) at square-root scale,
because the sign of \(\mu(b)M_{b-1}\) is retained.

## 7. Interfaces for further work

The exact supplier in (11), or the triangular form (19), can receive several
kinds of input:

- a Type-II or bilinear decomposition of \(\mu(b)M_{b-1}\);
- a large-sieve estimate after decomposing the smooth dyadic kernel;
- a Chowla-style signed correlation estimate;
- a martingale or heat-flow estimate that is proved for this actual source;
- a comparison theorem from another repository observable with a fully paid
  residual.

None of those inputs follows merely from writing (19). Any future supplier must
be uniform in every dyadic scale and in every positive exponent.

The pair source must not be replaced by

\[
\sum |\mu(a)\mu(b)|K_j(a,b),
\]

because that destroys the cancellation whose upper bound is required.

## 8. Verification boundary

The candidate adds one pure Lean module, this note, and one passive verification
specification. Existing sources, public-root imports, dependency pins,
workflows, held branches, and execution state are unchanged.

An exact-rational authoring diagnostic checked:

- every prefix square decomposition for all \(3^8=6,561\) coefficient streams
  over \(\{-1,0,1\}\);
- every dyadic block through scale \(X=4\) for those streams;
- the diagonal interval \(0\le D_j\le1\);
- the ordered-pair kernel formula (17);
- the triangular formula (19);
- independently generated Möbius prefixes through 4,096 and every completed
  dyadic block through \(X=2^{11}\).

The run completed **181,292 exact checks**. These finite checks are not a proof
of the universal estimate, Lean parsing, elaboration, proof-term acceptance,
or a transitive trust audit.

The decisive open arithmetic statement is now

\[
\boxed{
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\quad
\sum_{2^j\le n<2^{j+1}}
\frac{1}{n(n+1)}
\sum_{\substack{a,b\le n\\a\ne b}}
\mu(a)\mu(b)
\le C_\delta 2^{\delta j}.
}
\tag{21}
\]

Keep #366, #357, #354, #350, #347, #343, #335, #334, and #15 open.
