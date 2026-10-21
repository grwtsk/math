# Primitive linear-box foundation for the Heath–Brown estimate

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / FINITE_LATTICE_THEOREM_OPEN**

Owner: `grwtsk/math#427`  
Parent: `grwtsk/math#414`  
Predecessor: `grwtsk/math#417`, draft PR #418  
Exact predecessor head: `7f2fa130aecc053b8dac007e7eaab088736ebbe7`

## Attribution and scope

The surrounding exceptional-set argument is from Christian Bernert, Tim
Browning, Jared Duker Lichtman, and Joni Teräväinen, *Bounds on the
exceptional set in the abc conjecture*, arXiv:2410.12234v2 (2026),
Proposition 4.1. The finite primitive lattice estimate invoked there is
attributed to D. R. Heath-Brown, *Diophantine approximation with square-free
numbers*, Math. Z. 187 (1984), Lemma 3.

Draft PR #418 already supplies positive natural numbers

\[
a',b',c',x,y,z
\]

with

\[
a'x+b'y=c'z,
\qquad
\gcd(\gcd(a',b'),c')=1,
\qquad
\gcd(\gcd(x,y),z)=1,
\]

and, in fact, stronger pairwise coprimality for each triple. This packet does
not recreate that source. It constructs the exact generic finite count and
integral kernel to which a source-faithful Heath–Brown proof must apply.

## Exact finite count

For positive coefficients and independent positive bounds

\[
a,b,c,X,Y,Z,
\]

with \(\gcd(a,b,c)=1\), define the duplicate-free finite set

\[
S(a,b,c;X,Y,Z)
=
\left\{
(x,y,z):
\begin{array}{l}
1\le x\le X,\;1\le y\le Y,\;1\le z\le Z,\\
\gcd(x,y,z)=1,\\
ax+by=cz
\end{array}
\right\}.
\]

The implementation uses nested `Finset.Icc` products and a filter. Membership
is proved equivalent to the displayed predicate, and the count is the literal
`Finset.card`. No list multiplicity or sampled enumeration is involved.

The source also records the exact target normalization

\[
H=\max(aX,bY,cZ)
\]

and proves \(H>0\). The finite inequality to be proved later is represented as

\[
\#S(a,b,c;X,Y,Z)
\le
K\left(1+\frac{XYZ}{H}\right),
\]

with real division. `HasAbsolutePrimitiveLinearBoxBound` requires one
nonnegative constant \(K\) uniform over every data record. It is only a target
proposition. No witness is constructed by naming it.

Natural-number division is explicitly rejected: for example,
\(1/2=0\) in `Nat`, whereas the required real quotient is positive.

## Integral coefficient kernel

The equation is encoded by the additive homomorphism

\[
L_{a,b,c}:\mathbb Z^3\to\mathbb Z,
\qquad
L(x,y,z)=ax+by-cz.
\]

Its kernel is the integral lattice containing every counted natural point.
Two structural facts are proved without geometry of numbers.

### Saturation

For a nonzero integer \(n\),

\[
nq\in\ker L\quad\Longrightarrow\quad q\in\ker L.
\]

This follows directly from

\[
L(nq)=nL(q)
\]

and torsion-freeness of \(\mathbb Z\). The result does not require coefficient
gcd one.

### Primitive normal and surjectivity

When

\[
\gcd(\gcd(a,b),c)=1,
\]

nested Bézout coefficients give an explicit point \(w\in\mathbb Z^3\) with

\[
L(w)=1.
\]

Scaling \(w\) then proves that \(L\) is surjective. This is the exact
primitive-normal statement at the algebraic level. It does not yet prove a
rank-two covolume formula or a finite lattice-point estimate.

## Adapter from Proposition 4.1 coordinates

For selected coordinate sets \(I,I',I''\), draft PR #418 defines

\[
x=\prod_{i\in I}a_i^{i+1},\qquad
 y=\prod_{i\in I'}b_i^{i+1},\qquad
 z=\prod_{i\in I''}c_i^{i+1}.
\]

For strict paper-dyadic coordinates

\[
A_i<a_i\le2A_i,
\]

the new adapter retains the exact separate bounds

\[
x\le\prod_{i\in I}(2A_i)^{i+1},
\]

and analogously for \(y,z\). No cube replacement or hidden distortion factor
is introduced. These three products become the anisotropic bounds \(X,Y,Z\)
in the generic count.

The adapter proves that the selected point belongs to the finite primitive
solution set and that its integer cast lies in the same coefficient kernel.
`PaperAdmissible` and strict box membership discharge positivity and both gcd
premises through the existing `PrimitivePositiveGeometryLinearization`.

## Controls

The source controls retain the following boundaries.

- The only primitive positive solution of \(x+y=z\) in
  \([1,2]^3\) is \((1,1,2)\).
- Coefficient gcd one does not make every equation solution primitive:
  \((2,2,4)\) solves \(x+y=z\) but has joint gcd two.
- \((1,1,2)\) and \((2,2,4)\) lie on the same rational ray, so primitive-ray
  control is a substantive part of the target estimate.
- The kernel is saturated under a nonzero scale.
- The primitive normal \((2,3,-5)\) has an explicit Bézout preimage of one,
  and the corresponding coefficient map is surjective.
- A lopsided box with \((X,Y,Z)=(100,1,101)\) retains scale height 101.
- Real division cannot be replaced by truncating natural division.
- A named bound at constant zero fails even in the one-point fixture.

## What remains open

This packet deliberately stops before the decisive theorem. The following are
still required for #427:

1. prove the rank-two lattice/covolume description at the selected
   normalization;
2. derive a reduced-basis or successive-minima estimate for the lopsided box;
3. relate the covolume after anisotropic scaling to
   \(\max(aX,bY,cZ)\);
4. control primitive points along a short lattice direction;
5. obtain one explicit absolute constant independent of all coefficients and
   box sizes;
6. prove coordinate-permutation versions or a fully symmetric theorem;
7. integrate the finite theorem with the exact selected-variable bounds;
8. continue to divisor-fibre lifting, summation, and Proposition 4.1.

Mathlib's lattice covolume and geometry-of-numbers substrate may be reused, but
an asymptotic counting theorem without an effective finite remainder cannot
supply the target inequality.

## Nonclaims

This packet does not prove Heath–Brown's lemma, Proposition 4.1, the Fourier
estimate, the `3/5+ε` exceptional-set theorem, or the abc conjecture. It does
not count all lattice points as primitive, hide a coefficient-dependent
constant, replace a lopsided box by a cube, or treat a source manifest as an
execution receipt.

No Lean or Lake process ran. Exact-head elaboration, generated declaration
reconciliation, transitive axiom/native review, hostile replay, and immutable
source-bound acceptance remain required.
