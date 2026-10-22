# Canonical maximal two-point Möbius energy for RH-E02

Owners: #410, #405, #397, #391, #388, #373, #369, #366, #357,
#354, #350, #347, #343, #335, and #334 / RH-E02. Canonical target: #15.

Stacked source: draft PR #409 at
`b149ccd28da3fa6e9e43e1feebf0d56b410b84be`, tree
`22a77fe6d5e12f058a104ab78d1958942a4abfa7`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the exact canonicalization implemented in
`GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean`.
The existential quadratic envelopes from #405 are replaced by a single finite
maximal-energy statistic. No new correlation estimate is proved.

## 1. Inherited two-point prefixes

At dyadic scale

\[
X=2^j,\qquad Y=2X=2^{j+1},
\]

retain the finite two-point Möbius prefixes

\[
C_h(N)
=
\sum_{0\le a<N}\mu(a+1)\mu(a+1+h),
\]

for every positive shift

\[
1\le h<Y
\]

and every admissible length

\[
0\le N\le Y-h-1.
\]

The preceding quadratic supplier assigns each shift a nonnegative envelope
\(U_h\) satisfying

\[
|C_h(N)|\le U_h
\]

for every admissible \(N\), together with

\[
\sum_{1\le h<Y}U_h^2\le B^2Y.
\]

That formulation is useful for transporting estimates, but the family
\((U_h)\) is not canonical.

## 2. Exact finite prefix maximum

Define

\[
P_j(h)
=
\max_{0\le N\le Y-h-1}|C_h(N)|.
\]

The range includes \(N=0\), where \(C_h(0)=0\). Consequently the maximum is
always defined and

\[
P_j(h)\ge0.
\]

The Lean source uses `partialSups` at the terminal admissible index, so it does
not need an external nonemptiness witness for a finite `sup'`.

Every admissible prefix satisfies

\[
|C_h(N)|\le P_j(h).
\]

Conversely, a number \(U\) is a valid shift envelope precisely when

\[
U\ge0
\quad\text{and}\quad
P_j(h)\le U.
\]

Thus the source proves the exact characterization

\[
\boxed{
\mathsf{ShiftEnvelope}(j,h,U)
\iff
0\le U\ \wedge\ P_j(h)\le U.
}
\tag{1}
\]

## 3. Canonical maximal quadratic energy

Define

\[
\mathcal M_j
=
\sum_{1\le h<Y}P_j(h)^2.
\]

A maximal-energy budget of size \(B\) is

\[
B\ge0
\]

and

\[
\boxed{
\mathcal M_j\le B^2Y.
}
\tag{2}
\]

This is a concrete finite statistic of the Möbius sequence. It contains no
existential envelope family.

## 4. Exact equivalence with the quadratic envelope

Suppose (2) holds. Choose

\[
U_h=P_j(h).
\]

By (1), each \(U_h\) is a valid shift envelope, and the quadratic budget is
exactly (2). Therefore maximal energy supplies the quadratic envelope with no
loss in constants.

Conversely, suppose a quadratic envelope family \(U_h\) is supplied. Equation
(1) gives

\[
0\le P_j(h)\le U_h.
\]

Hence

\[
P_j(h)^2\le U_h^2
\]

for each admissible shift. Summing gives

\[
\mathcal M_j
\le
\sum_{1\le h<Y}U_h^2
\le B^2Y.
\]

The source therefore proves

\[
\boxed{
\mathsf{MaximalEnergy}(j,B)
\iff
\mathsf{QuadraticEnvelope}(j,B).
}
\tag{3}
\]

No averaging, asymptotic argument, or inequality loss appears in this
identification.

## 5. All-scale criterion

Define

\[
\mathsf{MaximalTwoPointSubpoly}
\]

to mean that for every \(\delta>0\), there exists \(A_\delta\ge0\) such that
for every dyadic scale

\[
\mathcal M_j
\le
A_\delta^2X^{2\delta}Y.
\tag{4}
\]

Equivalently,

\[
\boxed{
\sum_{1\le h<2X}
\left(
\max_{0\le N\le2X-h-1}
\left|
\sum_{0\le a<N}\mu(a+1)\mu(a+1+h)
\right|
\right)^2
\le
2A_\delta^2X^{1+2\delta}.
}
\tag{5}
\]

The source proves the exact all-scale equivalence

\[
\mathsf{MaximalTwoPointSubpoly}
\iff
\mathsf{QuadraticTwoPointSubpoly}.
\]

It then reuses the inherited implications

\[
\mathsf{QuadraticTwoPointSubpoly}
\Longrightarrow
\mathsf{MeanTwoPointSubpoly}
\Longrightarrow
\mathsf{ShiftPacketSubpoly}
\Longrightarrow
\mathrm{RH}.
\]

No maximal-energy estimate is constructed.

## 6. Why this form matters

Equation (5) is the first completely canonical second-moment target in this
supplier chain. It separates two jobs:

1. a maximal inequality controlling every prefix of each shifted correlation;
2. a quadratic average over the complete growing shift range.

Large-sieve and dispersion arguments usually produce interval or terminal
second moments rather than prefix maxima directly. A subsequent adapter can
therefore target a finite Rademacher--Menshov, dyadic-block, or other maximal
inequality and feed its result into (5).

A bound only on

\[
C_h(2X-h-1)
\]

is not enough by itself: an earlier prefix can be larger. Likewise, a theorem
for each fixed shift with uncontrolled constants in \(h\) does not supply the
growing-scale sum in (5).

## 7. Logical status

The canonical maximal energy is exactly equivalent to the existential
quadratic envelope. No converse from the exact signed shift packet is proved.
The packet may be small through cancellation within a shift or between shifts,
while (5) squares absolute maxima and discards those cancellations.

The implication chain is therefore

\[
\mathsf{MaximalEnergy}
\iff
\mathsf{QuadraticEnvelope}
\Longrightarrow
\mathsf{MeanEnvelope}
\Longrightarrow
\mathsf{SignedPacket},
\]

not a chain of equivalences after the quadratic stage.

## 8. Hostile boundaries

The following changes are rejected:

- omitting the zero prefix from the finite maximum without supplying a separate
  nonemptiness argument;
- replacing the maximum over all admissible lengths by only the terminal
  correlation;
- averaging over a fixed finite set of shifts;
- changing the half-open range \(1\le h<Y\);
- replacing the previous-prefix source by a current-prefix source;
- omitting the ordered-pair factor two inherited by the signed packet;
- calling the maximal statistic equivalent to the signed packet;
- inferring the universal all-scale estimate from a finite numerical table.

## 9. Verification boundary

The accompanying exact-integer diagnostic checks:

- all \(3^8=6{,}561\) coefficient streams over \(\{-1,0,1\}\);
- generic dyadic scales \(X=1,2,4\);
- independently generated Möbius coefficients through \(512\);
- actual dyadic scales through \(X=256\);
- every admissible two-point prefix;
- nonnegativity and minimality of each exact finite maximum;
- domination of every prefix by that maximum;
- equality of canonical maximal energy with the quadratic budget obtained by
  choosing the exact maxima;
- domination of canonical energy by arbitrary larger valid envelopes.

The diagnostic completed **1,051,562** exact checks. Its canonical JSON report
has SHA-256

`9b5211e7731bf558100105c51a8eb30c8dd2e143593ef99f7b4ed5afd4f26c98`.

These checks are not Lean parsing, elaboration, proof-term acceptance, a
universal maximal-energy estimate, a transitive axiom/native audit, repository
tests, or independent mathematical review.
