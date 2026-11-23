# Integral homomorphisms of the CM twists and the distribution of aligned primes

Let \(p\equiv3\bmod4\) be prime, \(q=p^2\), \(d=(q-1)/4\),
\(K_0=\mathbb Q_p(i)\), \(O_0=\mathbb Z_p[i]\). In the elliptic
parameter \(t=-x/y\) on \(E_c:y^2=x^3-cx\) put
\[
 \ell_c(T)=\int_0^T(1+4cX^4)^{-1/2}\,dX,\quad
 t_c=\ell_c^{-1},\quad L(T)=\sum_{j\ge0}T^{q^j}/p^j .
\]
For \(c\in O_0^\times\) the strict coordinate \(B_c=t_c\circ L\) is
integral to every degree exactly when \(\bar c^d=-1\). We give the
descent in its full coefficient filtration, classify the integral
homomorphisms between two unit twists, and determine the sharp
obstruction to using a fixed finite list of Gaussian twists at all
inert primes. The elliptic example occurs in §III.5 of the November 21
exposition of Alpöge's argument. Its general theta lifts involve other
lattices and sections. [Source exposition](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

## From the actual endomorphisms to every coefficient

For \(E_1/\mathbb F_p\) the trace of Frobenius vanishes by pairing \(x\)
with \(-x\) in the point count. Its Frobenius polynomial therefore
gives \({\rm Fr}_q=[-p]\) as endomorphisms. Identify the special fibers
of \(E_1,E_c\) by scaling \(x,y\) by \(u^2,u^3\), with
\(u^4=\bar c\). The discrepancy in Frobenius is precisely the
automorphism with scaling factor \(u^{q-1}=\bar c^d\). At an aligned
twist this is inversion, so \({\rm Fr}_q=[p]\) on \(E_c\).
In the stated parameter its reduction is literally \(T^q\). The good
integral model supplies the integral series \(f=[p]_{E_c}\).

For the Honda group \(F_H\) with logarithm \(L\), the functional
equation \(L(T)=T+p^{-1}L(T^q)\) supplies the integral formal group law
by the functional-equation lemma. Its \(p\)-series \(g\) reduces to
\(T^q\): the logarithm identifies it with
\(F_H(T^q,L^{-1}(pT))\). The strict series \(p^{-1}L(pT)\) and its
inverse are integral, so \(L^{-1}(pT)\) is a multiple of \(p\).
Both \(f,g\) have linear coefficient \(p\).
[Hazewinkel, *On formal groups*, §2](https://www.numdam.org/item/AST_1979__63__73_0/)
[Elliptic Frobenius and differential in the specified frame](AlpogeQuarticTwistDetection.md)

Characteristic-zero logarithms give \(f\circ B_c=B_c\circ g\).
Suppose its coefficients below degree \(n>1\) are integral, and let
\(A\) be that truncation. In the difference
\(R_n=[T^n](f\circ A-A\circ g)\), the whole series reduces to zero,
since \(\bar A^q=\bar A(T^q)\) over the full residue field
\(\mathbb F_q\). Changing the missing degree-\(n\) coefficient by \(b\)
changes the defect by \((p-p^n)b\). This follows by expanding the two
compositions: in an inner power of order at least two the change begins
in degree \(n+1\), and \([T^n]g^n=p^n\). Thus
\[
 [T^n]B_c=-\frac{R_n/p}{1-p^{n-1}}\in O_0.
\]
The tangent is one, so induction proves integrality in every degree.
The inverse of a strict integral series is integral by coefficient
recursion. Conversely the first possible collision at degree \(q\)
has residue \(p[T^q]B_c\equiv1+\bar c^d\), as computed by inverse
series and the central binomial congruence. This proves necessity and
locates an explicit denominator for every misaligned base-field unit.
The divisibility argument uses the whole residue-field Frobenius; it
does not extend verbatim when \(T^q\) acts nontrivially on coefficients.
[First-collision computation](AlpogeHondaConvergence.md)

The Lean theorem \(\texttt{intertwiner_integral}\) proves exactly the
induction for any given ambient-field intertwiner, a local subring, a
nonzero nonunit linear coefficient generating the reduction kernel in
the required direction, and equality of both reductions to the full
finite-field Frobenius. Its two supporting theorems give the precise
coefficient change and the residue identity. The identification of the
elliptic and Honda multiplication maps with its inputs is the preceding
analytic argument. A separate exact test counts both curves over all
six residue fields and computes the entire Gaussian-rational jet to
degree 180 at \(p=3\) by \(t_1''=8t_1^3\). The aligned and untwisted
degree-nine coefficients are \(1/5\) and \(7/15\).
[Lean source](AlpogeStrictCoordinateComparison.lean) · [Exact controls](../../../scripts/verify_alpoge_strict_coordinate.py)

## All integral formal homomorphisms between unit twists

Let \(K\subseteq\mathbb C_p\) be complete and contain \(K_0\).
Take \(c,e\in O_K^\times\), an aligned \(c_0\in O_0^\times\), and
choose \(u^4=c/c_0,\ v^4=e/c_0\) in \(\mathbb C_p\). Differentiation
identifies the additive group of integral formal group homomorphisms
from \(\widehat E_c\) to \(\widehat E_e\) over \(O_K\) with
\[
               (u/v)O_0\cap K .
\]
Indeed, over \(K\) the only candidate of derivative \(a\) is
\(t_e(a\ell_c(T))\), since homomorphisms in logarithm coordinates are
additive series in characteristic zero. Homogeneity of \(\ell\)
rewrites this series as
\[
 v^{-1} B_{c_0}\circ[av/u]_H\circ B_{c_0}^{-1}(uT),
 \qquad [b]_H=L^{-1}(bL).
\]
All other coordinate changes and their inverses are integral over
\(O_{\mathbb C_p}\). The scalar \([b]_H\) is integral there precisely
when \(b\in O_0\): nonintegral derivatives are immediate, and for
integral \(b\notin O_0\) the first denominator is given by the scalar
depth calculation. This also proves descent, because the unique
rational candidate already has coefficients in \(K\).
[Scalar depth proof](AlpogeHondaScalarDescent.md) · [Boundary coefficient and radius](AlpogeHondaConvergence.md)

In particular a nonzero map exists precisely when \(c/e\) has a fourth
root in \(K\); in that case an isomorphism already exists. Every
nonzero map has finite formal degree \(q^{v_p(a)}\). Indeed, after
integral invertible coordinate changes and extension to
\(O_{\mathbb C_p}\), it is multiplication by a unit followed by the
\(v_p(a)\)-fold iterate of the Honda \(p\)-series, with special-fiber
order \(q^{v_p(a)}\). Over a discretely valued base this is also the
finite flat kernel rank by preparation. For \(c,e\in O_0^\times\)
the smallest unramified extension degree supporting a nonzero map is
the order of \((\bar c/\bar e)^d\) in \(\mu_4\):
the residue criterion over degree \(m\) raises this character to
\(1+q+\cdots+q^{m-1}\equiv m\bmod4\), and simple-root Hensel lifting
supplies the fourth root. None of these group maps requires lifting
an arbitrary formal endomorphism to a global algebraic endomorphism.

## How often a fixed list of twists fails

Fix \(c_1,\ldots,c_n\in C^\times\), \(C=\mathbb Q(i)\), excluding the
finitely many bad rational primes. Among inert primes the relative
natural density at which **every** \(c_j\) misses alignment is at least
\(2^{-n}\). The bound is attained for every \(n\).

Choose complex fourth roots \(\beta_j\) of \(c_j\). Adjoin them and
their complex conjugates to \(C\), obtaining a Galois extension
\(F/\mathbb Q\) with abelian subgroup \(A={\rm Gal}(F/C)\).
Use actual complex conjugation \(\tau\). Frobenius at an inert prime
belongs to the coset \(A\tau\). Write the multipliers of
\(\sigma\in A\) on \(\beta_j,\bar\beta_j\) as \(a_j,b_j\in\mu_4\).
Then \((\sigma\tau)^2\beta_j/\beta_j=a_j/b_j\). Its reduction at
a prime over \(p\) is exactly \(c_j^{(p^2-1)/4}\).
The square is central in \({\rm Gal}(F/\mathbb Q)\): it lies in \(A\)
and is fixed by \(\tau\), since its factors \(\sigma,\tau\sigma\tau\)
commute. Thus its multipliers do not depend on the representative of
the Frobenius conjugacy class. Chebotarev gives the uniform distribution
on the image \(D\) of \(\sigma\mapsto(a_j/b_j)_j\), conditional on
inertness. By the Kummer pairing this is the character dual of the
subgroup generated by \(c_j/\bar c_j\) in \(C^\times/C^{\times4}\),
evaluated on the ordered generators. In fact the multipliers here act
on \(\beta_j/\bar\beta_j\); restriction from \(F\) onto the Galois
group of their field is surjective. For one twist, if its ratio class
has order \(t\), the alignment density is zero for \(t=1\) and \(1/t\)
for \(t=2,4\). [Serre, Chebotarev density](https://www.numdam.org/item/PMIHES_1981__54__123_0/) · [Milne, *Fields and Galois Theory*, Kummer theory](https://www.jmilne.org/math/CourseNotes/FT.pdf)

On \(D\), write \(\chi_j\) for the coordinate characters. Expand
\(P=\prod_j(1+\chi_j)\). Each subset character has mean zero or one
by translation invariance. The empty subset contributes one, so
\(1\le|\mathbb E P|\le2^n\,{\mathbb P}(\chi_j\ne-1\ \forall j)\).
For sharpness choose \(c_j=\pi_j^2\), where the Gaussian primes
\(\pi_j\) lie over distinct split rational primes. The ratios
\((\pi_j/\bar\pi_j)^2\) give independent classes of order two, by
their valuations at \(\pi_j\). The sign tuples are therefore
equidistributed and the unique failing tuple is all \(+1\).
As a check, rational twists have ratio one and always fail.

If the conditional failure density is \(\delta\), partial summation of
the Chebotarev prime count gives failure weight
\((\delta/4+o(1))\log Y\) for the weights \(\log p/p\) on
\(Y<p\le Y^{3/2}\), including the factor \(1/2\) for inertness.
Consequently a fixed finite menu cannot dispose of its failures by
excluding finitely many primes. This obstruction concerns a particular
global strategy for the elliptic example. Alpöge's original inequality
requires the arithmetic input for the actual globally chosen lifts and
its full analytic budget. The distribution and homomorphism theorems
here are manuscript arguments and have no Lean verification.

At Lean blob **4e77377aba360e26a27f285e10784420b7bb42b3**, the three
public declarations built, passed fresh kernel replay and returned only
propext, Classical.choice and Quot.sound in the transitive audit. The
build used Lean 4.34.1 and Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**.
