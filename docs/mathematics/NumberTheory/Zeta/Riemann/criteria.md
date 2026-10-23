# Conditional energy criteria for the Riemann hypothesis

## The exact open premise

`PickupCrossPoly` is the literal proposition

$$
\exists C,r\ge0\;\forall T\ge0:\quad
\mathcal X(T)\le C(1+T)^r.
$$

The checked energy identity and diagonal bound make it equivalent to `PickupEnergyPoly`. Cross witnesses $C,r$ give energy witnesses $C+2,\max(r,2)$; energy witnesses also bound the cross sum with the same constant and exponent. No witness of either proposition is supplied.

Polynomial energy pays every strictly positive exponential tilt of the signed pickup. Its Laplace transform is holomorphic on $\Re z>0$, and the actual Dirichlet/Fubini calculation gives

$$
L(z)=\frac1{z(z+1/2)\zeta(z+1/2)}\qquad(\Re z>1/2).
$$

The entire regularized zeta product continues this identity across the shifted zeta pole. A hypothetical nontrivial zero with real part greater than one half contradicts the continued identity. The exact functional-equation reflection then excludes zeros to the left. Trivial-zero and pole exclusions are retained.

Thus `riemannHypothesis_of_pickupCrossPoly` has exactly the open P04 premise. This route requires no pointwise polynomial amplitude return and no classical Mertens-decay hypothesis. It proves a sufficient condition for RH; no converse from RH to the polynomial budget is claimed. The separate matched-defect/amplitude premise P05 also remains open in the upstream research and is outside this energy-only reconstruction.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean`](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 6 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
