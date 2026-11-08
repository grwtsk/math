# Native record-curve local factor at the 7-adic place

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** This increment closes the two visible arithmetic premises of
`LocalEulerPowerSeries.recordSevenPadic_localPowerSeries_of_count` at source-candidate
level.  The explicit record model is proved integral, minimal and good at seven;
its actual Mathlib special-fiber point type is identified with the original
`ZMod 7` source count; and the noncomputably chosen Mathlib minimal model is
shown to be related by a variable change whose scale descends from a
`PadicInt 7` unit.  The existing DVR residue-field port then transports good
reduction and the full point count to the chosen minimal model.

The resulting theorem is local:

\[
\operatorname{recordSevenPadic.localPowerSeries}(\mathbf Z_7)
=
\operatorname{directSeries}(7,13).
\]

It does not establish the published rank, BSD, a global elliptic \(L\)-function
identity, any Möbius cancellation estimate, RH, compilation or kernel
acceptance.

## 1. Explicit integral source

The repository already contains the integral model

\[
W_{\mathbf Z}: y^2+xy=x^3-Ax+B
\]

as `FiniteEulerWindow.recordModel`, with

\[
\Delta(W_{\mathbf Z})
=
\operatorname{Record4239.recordDiscriminant}
\]

and

\[
\operatorname{integralModelCount}(W_{\mathbf Z},p)
=
\operatorname{Record4239.reducedPointCount}(p).
\]

Define

\[
W_{\mathbf Z_7}
=
W_{\mathbf Z}\otimes_{\mathbf Z}\mathbf Z_7.
\]

Coefficientwise base change gives exactly the existing curve
`LocalEulerPowerSeries.recordSevenPadic` over \(\mathbf Q_7\).  This supplies
a concrete `IsIntegral (PadicInt 7)` witness rather than an unrelated chosen
model.

The original exact discriminant test gives

\[
\Delta(W_{\mathbf Z})\bmod 7 = 4\ne0.
\]

Through `PadicInt.toZMod`, the discriminant of \(W_{\mathbf Z_7}\) has nonzero
residue and is therefore a unit of \(\mathbf Z_7\).  The induced fraction-field
valuation satisfies

\[
v_7(\Delta(W_{\mathbf Q_7}))=1
\]

in Mathlib's multiplicative convention.

## 2. The explicit 7-adic equation is already minimal and good

Mathlib's auxiliary discriminant valuation for any integral equation is bounded
above by \(1\).  The explicit record equation attains \(1\).  Therefore the
identity variable change is maximal among integral equations, giving

\[
\operatorname{IsMinimal}_{\mathbf Z_7}(W_{\mathbf Q_7}).
\]

Together with \(v_7(\Delta)=1\), this constructs

\[
\operatorname{HasGoodReduction}_{\mathbf Z_7}(W_{\mathbf Q_7}).
\]

No minimal-model equality is assumed.

## 3. Actual point type versus the original source enumeration

For an integral model \(W/\mathbf Z\) with nonzero discriminant modulo a prime
\(p\), the new source constructs an equivalence

\[
(W\bmod p).toAffine.Point
\simeq
\{\infty\}\sqcup
\{(x,y)\in\mathbf F_p^2:F_W(x,y)=0\}.
\]

The nonsingular proof is reconstructed from the equation using
`Affine.equation_iff_nonsingular_of_Δ_ne_zero`; hence the result uses the actual
Mathlib point type, including infinity.  Taking cardinalities gives

\[
\operatorname{Nat.card}(W\bmod p).toAffine.Point
=
\operatorname{integralModelCount}(W,p).
\]

At \(p=7\), this is the already checked source number

\[
1+\#\{(x,y)\in(\mathbf Z/7\mathbf Z)^2:
y^2+xy=x^3-Ax+B\}=13.
\]

The bridge from the residue field of `PadicInt 7` to `ZMod 7` is the actual ring
equivalence `PadicInt.residueField`.  A separate generic ring-equivalence port
transports Mathlib's affine point type.  Consequently

\[
\operatorname{Nat.card}
(W_{\mathbf Q_7}.\operatorname{reduction}_{\mathbf Z_7}).toAffine.Point
=13.
\]

Independent integer diagnostics reproduced the residue discriminant \(4\) and
the twelve affine solutions, hence total count \(13\).  These diagnostics are
not Lean acceptance.

## 4. Why the chosen minimal-model scale is a DVR unit

Let

\[
C_{\min}
=
(\operatorname{exists\_isMinimal}_{\mathbf Z_7}
 W_{\mathbf Q_7}).\operatorname{choose},
\qquad
W_{\min}=C_{\min}\cdot W_{\mathbf Q_7}.
\]

The chosen model is minimal by construction.  Its inverse variable change sends
it back to the explicit integral model.  Since every integral discriminant
valuation is at most \(1\) and the explicit model has value \(1\), maximality of
\(W_{\min}\) forces

\[
v_7(\Delta(W_{\min}))=1.
\]

The variable-change law is

\[
\Delta(W_{\min})
=
C_{\min}.u^{-12}\Delta(W_{\mathbf Q_7}).
\]

Applying the valuation gives

\[
v_7(C_{\min}.u^{-1})^{12}=1.
\]

A positive power in a linearly ordered group with zero can equal \(1\) only
when the base equals \(1\); hence

\[
v_7(C_{\min}.u)=1.
\]

Mathlib's
`IsDiscreteValuationRing.associated_of_valuation_eq`
then produces \(u_0\in\mathbf Z_7^\times\) with

\[
\operatorname{algebraMap}(u_0)=C_{\min}.u.
\]

This is exactly the premise required by the previously published
fraction-field descent consumer.  Good reduction and the full reduction point
count therefore transport from the explicit model to Mathlib's chosen minimal
model.

## 5. Closed native local factor

The earlier source had the conditional theorem

```text
recordSevenPadic_localPowerSeries_of_count
```

with premises

```text
(recordSevenPadic.minimal (PadicInt 7)).HasGoodReduction (PadicInt 7)
```

and

```text
Nat.card
  ((recordSevenPadic.minimal (PadicInt 7)).reduction (PadicInt 7)).toAffine.Point
  = Record4239.reducedPointCount 7.
```

Both are supplied by the present source.  Therefore

\[
\boxed{
\operatorname{recordSevenPadic.localPowerSeries}(\mathbf Z_7)
=
\operatorname{directSeries}
\bigl(7,\operatorname{Record4239.reducedPointCount}(7)\bigr)
}
\]

and the published count theorem yields

\[
\boxed{
\operatorname{recordSevenPadic.localPowerSeries}(\mathbf Z_7)
=
\operatorname{directSeries}(7,13).
}
\]

Likewise the native polynomial is

\[
\boxed{
1+5X+7X^2,
}
\]

because the source Frobenius trace is \(7+1-13=-5\).  Every coefficient of the
native local power series is the previously formalized recurrence coefficient
`directCoeff 7 13 n`.

## 6. Relation to the RH programme

This closes a model-choice seam in the elliptic local-factor subsystem.  The
concurrently published Möbius--elliptic comparison retains the exact identity

\[
\operatorname{pickupCross}
=
\operatorname{matchedEllipticPacket}
+
\operatorname{fullSignedResidual}.
\]

The present theorem makes the elliptic local data independent of the chosen
7-adic integral/minimal presentation.  It does not estimate the rough sector,
the mixed sector, or the complete signed source-minus-elliptic kernel defect.

The current RH route still requires a one-sided all-positive-rate estimate for
the complete original endpoint quantity on an adequately covering scale set.
The new short-gap Putnam result pays a sparse sector but leaves the dense
long-gap arithmetic supplier open.  No RH conclusion is claimed here.

## 7. Formal evidence boundary

The new Lean modules are `SOURCE_PROOF_CANDIDATE`s.

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- independent mod-7 diagnostic: `DONE`;
- compilation: `NOT_RUN`;
- exact expected-type checking: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`.

A lexical preflight found no `sorry`, `admit`, `native_decide`, or axiom
declaration.  This does not establish elaboration or kernel acceptance.
