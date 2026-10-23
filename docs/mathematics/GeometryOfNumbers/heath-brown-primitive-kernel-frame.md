# Primitive kernel frame and anisotropic covolume normalization

Issue: `grwtsk/math#427`  
Stacked draft: PR `#429`  
Mathematical application: Proposition 4.1 of Bernert–Browning–Duker Lichtman–Teräväinen, *Bounds on the exceptional set in the abc conjecture*, arXiv:2410.12234v2 (2026).  
Finite primitive lattice estimate: D. R. Heath-Brown, *Diophantine approximation with square-free numbers*, Math. Z. 187 (1984), Lemma 3.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / FINITE_LATTICE_THEOREM_OPEN**.

## 1. Source equation

The preceding stack supplies positive natural coefficients and variables

\[
a,b,c,x,y,z>0,
\qquad ax+by=cz,
\]

with

\[
\gcd(\gcd(a,b),c)=1,
\qquad
\gcd(\gcd(x,y),z)=1.
\]

The current finite-count module places the variables in the literal anisotropic box

\[
1\le x\le X,
\qquad
1\le y\le Y,
\qquad
1\le z\le Z.
\]

Its target normalization is

\[
H=\max(aX,bY,cZ),
\qquad
1+\frac{XYZ}{H}.
\]

The quotient is over the reals. Natural-number truncating division is not used.

## 2. Explicit integer kernel frame

Let

\[
g=\gcd(a,b),
\qquad
A=\frac ag,
\qquad
B=\frac bg.
\]

Then \(\gcd(A,B)=1\). Choose the canonical Bézout coefficients represented by Mathlib's `Nat.gcdA` and `Nat.gcdB`, so that

\[
As+Bt=1.
\]

Define

\[
u=(B,-A,0),
\qquad
v=(cs,ct,g).
\]

For the coefficient normal

\[
n=(a,b,-c),
\]

both vectors lie in the integral kernel:

\[
n\cdot u=0,
\qquad
n\cdot v=0.
\]

Their oriented parallelogram is exact:

\[
u\times v=(-a,-b,c)=-n.
\]

No asymptotic or choice of a reduced basis enters this identity.

The earlier nested-Bézout witness \(w\) satisfies

\[
n\cdot w=1.
\]

Therefore the matrix with rows \(u,v,w\) has determinant

\[
\det\begin{pmatrix}u\\v\\w\end{pmatrix}=-1.
\]

The frame completion is unimodular. There is no hidden finite index between this completed frame and \(\mathbb Z^3\).

The current increment records this as a pure `UnimodularKernelFrame` certificate. It does not yet convert the first two rows into Mathlib's full `ZLattice` covolume API.

## 3. Anisotropic scaling

Scale coordinates by the actual box lengths:

\[
D(x,y,z)=\left(\frac{x}{X},\frac{y}{Y},\frac{z}{Z}\right).
\]

The scaled kernel vectors satisfy

\[
D(u)\times D(v)
=
\left(
-\frac{a}{YZ},
-\frac{b}{ZX},
\frac{c}{XY}
\right).
\]

Thus the squared area of their parallelogram is

\[
\operatorname{Area}^2
=
\frac{(aX)^2+(bY)^2+(cZ)^2}{(XYZ)^2}.
\]

This formula retains all three box lengths independently. Replacing the box by a cube changes the cross-product coordinates and is not an exact normalization.

Since

\[
H^2
\le
(aX)^2+(bY)^2+(cZ)^2,
\]

we obtain the exact lower bound

\[
\boxed{
\frac{H}{XYZ}
\le
\operatorname{Area}.
}
\]

Equivalently,

\[
\frac{1}{\operatorname{Area}}
\le
\frac{XYZ}{H}.
\]

The source formalizes the nonnegative square-root area and the first inequality. The reciprocal form remains a straightforward positive-denominator consumer if needed by the final counting proof.

## 4. What has been closed

The following algebraic obligations are now represented at source level:

1. a duplicate-free finite primitive solution count;
2. positivity of the coefficient-height denominator;
3. the primitive integral coefficient functional;
4. kernel saturation under nonzero integer scaling;
5. an explicit complement mapping to one;
6. two explicit kernel vectors;
7. exact cross-product orientation;
8. determinant `-1` of the completed frame;
9. exact anisotropic cross-product coordinates;
10. exact squared-area identity;
11. the lower covolume normalization by `max(aX,bY,cZ)/(XYZ)`;
12. the adapter retaining every selected dyadic monomial factor from the abc box.

## 5. Remaining Heath–Brown theorem

The finite estimate

\[
\#\{(x,y,z)\}
\ll
1+\frac{XYZ}{\max(aX,bY,cZ)}
\]

has not been proved.

The remaining mathematical work includes:

- identify the two-vector span with the relevant rank-two `ZLattice` at exact scope;
- connect the explicit area to the selected covolume convention;
- prove a finite reduced-basis, successive-minima, or equivalent primitive-point estimate;
- control primitive rays rather than all multiples in the plane;
- provide one absolute constant independent of all coefficients and scales;
- record the required coordinate-order cases without cube replacement;
- transport the estimate through the selected-monomial adapter;
- prove divisor-fibre lifting and the complementary-coordinate summation used in Proposition 4.1.

Mathlib's Blichfeldt and Minkowski infrastructure provides general existence theorems, but no current theorem in this packet supplies the exact finite primitive lopsided-box count with the required effective constant.

## 6. Hostile boundaries

The implementation retains the following separations.

- Coefficient gcd one does not imply variable primitivity.
- A primitive point and a nonprimitive multiple can lie on the same kernel ray.
- A determinant-one completion does not itself count points in a bounded region.
- A nonzero scaled area does not supply an absolute finite count.
- A cube denominator cannot replace the three anisotropic denominators.
- A named proposition `HasAbsolutePrimitiveLinearBoxBound` is not a witness.
- An asymptotic lattice count cannot be used as an exact finite inequality without an effective remainder theorem.
- The frame and area identities do not prove Proposition 4.1 or the abc exceptional-set theorem.

## 7. Verification boundary

The files are source drafts. No Lean/Lake/native execution, parser run, elaboration, generated-declaration extraction, proof-term acceptance, transitive axiom audit, unsafe/native audit, repository test, or immutable external replay occurred.

The passive verification target binds the source identities, selected declaration names, hostile controls, and remaining obligations. It is not an execution receipt.
