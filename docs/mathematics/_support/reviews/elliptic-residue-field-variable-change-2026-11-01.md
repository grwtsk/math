# Residue-field transport for arbitrary DVR Weierstrass variable changes

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** The preceding integral source proves affine-fiber transport for every
`WeierstrassCurve.VariableChange ℤ`, using the fact that the only integer units are
`±1`.  The native local-factor seam is more general: a minimal-model change over a
DVR can have any DVR unit as its scale.  This increment proves the geometric and
counting transport at that generality and isolates the exact remaining premise.

The source is a Lean proof candidate. Compilation, expected-type checking,
fresh-kernel replay, native execution and transitive axiom auditing are `NOT_RUN`.

## 1. Exact field-level coordinate map

Let `F` be a field, let

\[
W=(a_1,a_2,a_3,a_4,a_6)
\]

be a Weierstrass curve over `F`, and let

\[
C=(u,r,s,t)
\]

be a genuine Mathlib `WeierstrassCurve.VariableChange F`.  Mathlib defines
`C • W` using the standard admissible coordinate substitution

\[
X=u^2x+r,\qquad Y=u^3y+u^2sx+t.
\]

Because `u` is a unit, the inverse coordinates are

\[
x=u^{-2}(X-r),\qquad
y=u^{-3}\bigl(Y-s(X-r)-t\bigr).
\]

The source defines these as `forwardX`, `forwardY`, `backwardX` and
`backwardY`.

Write the affine residual as

\[
R_W(X,Y)
=
Y^2+a_1XY+a_3Y-
  (X^3+a_2X^2+a_4X+a_6).
\]

Direct substitution of Mathlib's five transformed coefficients gives the exact
degree-six covariance

\[
\boxed{
R_{C\cdot W}\!\left(
u^{-2}(X-r),
u^{-3}(Y-s(X-r)-t)
\right)
=
u^{-6}R_W(X,Y).
}
\tag{1}
\]

Here `u` is the scale; the displayed `ν` is only typographical notation for
that same unit. No characteristic restriction and no division by `2` or `3` is
used.  The factor `u^{-6}` is nonzero, so (1) proves the equivalence of the
actual Mathlib affine equations.

The coordinate maps are mutual inverses.  Therefore

\[
\boxed{
\operatorname{AffineEquationFiber}(W)
\simeq
\operatorname{AffineEquationFiber}(C\cdot W).
}
\tag{2}
\]

Declarations:

```text
affineResidual_variableChange
affineEquation_variableChange_iff
backwardX_forwardX
forwardX_backwardX
backwardY_forward
forwardY_backward
variableChangeAffineEquiv
```

## 2. Mathlib affine points, including infinity

If `W` is elliptic, Mathlib's `W.toAffine.Point` consists of the point at
infinity and the nonsingular affine points.  The existing theorem
`Affine.equation_iff_nonsingular` turns the equation equivalence into a map on
the actual point type:

\[
\boxed{
W(\!F\!)_{\mathrm{aff},\infty}
\simeq
(C\cdot W)(\!F\!)_{\mathrm{aff},\infty}.
}
\tag{3}
\]

The point at infinity maps to itself; an affine point maps by the inverse
coordinate formulas above.  The source proves both inverse laws rather than
deducing equality of cardinalities from a supplied numeral.

Consequently,

\[
\boxed{
\operatorname{Nat.card} W(\!F\!)
=
\operatorname{Nat.card} (C\cdot W)(\!F\!).
}
\tag{4}
\]

Declarations:

```text
variableChangePointEquiv
variableChangePoint_natCard_eq
```

## 3. Special fibers of a DVR model

Let `R` be a DVR and let `κ` be its residue field.  If

\[
C:\operatorname{VariableChange}(R),
\qquad
W:\operatorname{WeierstrassCurve}(R),
\]

then Mathlib maps the unit `C.u` to a unit of `κ`, and its exact compatibility
theorem gives

\[
\boxed{
(C\bmod\mathfrak m)\cdot(W\bmod\mathfrak m)
=
(C\cdot W)\bmod\mathfrak m.
}
\tag{5}
\]

Combining (2) or (3) with (5) yields an actual equivalence of the two special
fibers.  Under good reduction this includes infinity and preserves the full
finite point count:

\[
\boxed{
\#(W\bmod\mathfrak m)(\kappa)
=
\#((C\cdot W)\bmod\mathfrak m)(\kappa).
}
\tag{6}
\]

This closes the geometric part for arbitrary DVR units; it is not restricted to
the integral signs `±1`.

Declarations:

```text
residueCurve_variableChange
residueVariableChangeAffineEquiv
residueVariableChangePointEquiv
residueVariableChangePoint_natCard_eq
```

## 4. Descent from the fraction field

Let `K` be the fraction field of `R`.  Suppose two integral Weierstrass
equations over `K` satisfy

\[
C_K\cdot W=W'
\]

and suppose the scale of `C_K` is the image of an actual unit
`u : Rˣ`.  Pinned Mathlib proves that the whole variable change descends:

\[
\exists C_R:\operatorname{VariableChange}(R),
\qquad C_R\otimes_R K=C_K.
\]

The new source adds the consumer-facing consequence

\[
\boxed{
C_R\cdot\operatorname{integralModel}_R(W)
=
\operatorname{integralModel}_R(W').
}
\tag{7}
\]

The proof base-changes both sides to `K`, uses Mathlib's
`map_variableChange`, the defining integral-model equalities and the original
relation `C_K • W = W'`, then applies injectivity of the fraction-field
algebra map.

When `W` and `W'` are minimal and `W` has good reduction, equations (3), (5)
and (7) give

\[
\boxed{
\operatorname{Nat.card}(W.\operatorname{reduction}_R).toAffine.Point
=
\operatorname{Nat.card}(W'.\operatorname{reduction}_R).toAffine.Point,
}
\tag{8}
\]

and also transport good reduction from `W` to `W'`.

Declarations:

```text
integralModels_eq_of_descended_change
exists_integralModel_change_of_unit_scale
reductionPointEquiv_of_integralModel_change
reductionPoint_natCard_eq_of_integralModel_change
hasGoodReduction_of_integralModel_change
reductionPoint_natCard_eq_of_unit_scale
hasGoodReduction_of_unit_scale
```

## 5. Impact on the native 7-adic source

The native local-power-series source has one explicit remaining model seam.
For the record curve at `PadicInt 7`, its chosen minimal model has a point count
used by Mathlib's genuine `localPolynomial` and `localPowerSeries`.

After this increment, the special-fiber transport no longer needs a new
coordinate calculation.  It is enough to provide:

1. the fraction-field change from the explicit integral record model to the
   chosen minimal model;
2. a `PadicInt 7` unit whose image is the change's scale;
3. the already source-specific identification of the explicit residue model
   with the published `ZMod 7` model and count `13`.

Items 1 and 2 are the remaining minimal-model uniqueness/unit-descent problem.
Item 3 is a residue-field/base-change comparison.  Once supplied, (8) gives the
exact `hcount` consumed by
`recordSevenPadic_localPowerSeries_of_count`.

The result does not identify global elliptic `L`-functions or zero sets.  It is
a local special-fiber theorem.

## 6. Comparison with the integral proof

The predecessor integral proof decomposes every integer variable change into a
translation and the sign change `u=-1`.  That route is complete over `ℤ` but
cannot cover a general DVR unit.

The present proof is genuinely different at the key point: it proves the
single degree-six covariance identity (1) over an arbitrary field and obtains
the complete coordinate equivalence directly.  The two arguments share
Mathlib's coefficient formulas, but neither treats a finite point-count
coincidence as the fiber map.

A hostile boundary is essential.  A fraction-field scaling that does **not**
descend to a unit of `R` can reduce to zero and its coordinate map need not be
invertible on the special fiber.  Therefore the unit-scale hypothesis in the
descent theorem cannot be discarded.  Proving only integrality of the target
coefficients is insufficient.

## 7. RH boundary

The concurrent Möbius-to-elliptic comparison retains the exact signed
source-minus-trace-kernel defect.  The present theorem makes that elliptic trace
packet invariant under all residue-field coordinate presentations arising from
DVR variable changes.  It does not estimate the defect or the rough/mixed
Möbius sectors.

The RH endpoint route still requires a one-sided all-positive-rate estimate for
the complete original signed endpoint quantity on adequately covering scales.
No such estimate is asserted here.

## 8. Verification status

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- Lean compilation: `NOT_RUN`;
- expected declaration types: `NOT_RUN`;
- fresh kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- general residue-field fiber equivalence: `SOURCE_PROOF_CANDIDATE`;
- unit-scale fraction-field descent consumer: `SOURCE_PROOF_CANDIDATE`;
- minimal-model unit-scale existence for the record curve: `UNPROVED`;
- explicit record residue/count identification: `UNPROVED`;
- native 7-adic point-count bridge: `UNPROVED`;
- global elliptic `L`-function comparison: `NOT_PROVED`;
- Möbius endpoint all-rate estimate: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
