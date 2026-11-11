# Program 4: normalized return, multiplicity, and residual certificates

Local attribution: grwtsk contributors. Comparison date: 2026-11-11.
Coordination: [math #1800](https://github.com/grwtsk/math/issues/1800).
Owning mathematical subjects: complete normed rings and arithmetic determinant return.
MSC2020: 46H05, 47A10, 65J10; 11M26, 11M41, 30C15.

## Exact source identities

Inspected math base: `5f66eb82a40921253664f53602851091ccd01d94`.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- `GRWTSK/FunctionalAnalysis/TwoSidedResidualInverse.lean`: SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`, Git blob `deaa49131a022a49d5d21bf3b3022040b2e1b6c7`.
- Adjacent `ResonanceDeterminantCertification.lean`: SHA-256 `8cd5928826ff5dfb0542cb695c57735176a3e025779cb1335b3302f9924694e4`, Git blob `2537ff1e0c5796e402332d35882b8ffa9814ec54`.
- Program 8 `FunctionsOfAComplexVariable/NormalizedLogDerivativeRigidity.lean`, blob `27d9465ecbe0fe2aa155828195227603332de3ae`: reused anchored logarithmic-derivative identity and entire-function continuation.
- Program 6 `NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZeroCountCertificates.lean`, blob `231a71d3cb40cce0efe517acf5f102f33fcb13ed`: reused its actual `FiniteDivisor` and `IdentifiesZeros`, without treating weights as analytic orders automatically.
- Original Program 4 `ResonanceDeterminantReturn.lean`, blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`: reused exact return, analytic-order transport and literal RH/per-character consumers.
- Program 5 `QuadraticClusterReality.lean`, blob `ca2bc01f0e1bd026977ee5ede0fb49c54f5c952f`: inspected for collision/multiplicity compatibility, not imported or claimed checked.
- Program 3 `SchurNegativeIndex.lean`, blob `6c43a1df0cbeac5ba22aa73e7db1caf5ff1f8e33`: inspected; its exact solution-map premise is not discharged by this module without an actual operator/domain adapter.

Program source: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10, section 19.5 RP-OC-04, printed p.42 / PDF p.51. Supplied PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. This is a design source, not a proof of the arithmetic construction. No PDF bytes are redistributed.

## Primary-source comparison

[SpecificLimits/Normed.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecificLimits/Normed.lean), mathlib contributors, blob `b033d8917bbd2c274f2bb55e6b07c46c9204db5b`: `geom_series_mul_neg`, `mul_neg_geom_series`, `tsum_geometric_le_of_norm_lt_one` and the complete-space geometric-series instance.

[Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), Chris Birkbeck, blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`: `logDeriv_apply`, product differentiation and logarithmic-derivative rigidity.

[SpecialFunctions/ExpDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ExpDeriv.lean), Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, blob `4f23138d60cf767cc436cb60b942fd6c2e3409ea`: `AnalyticAt.cexp` and `HasDerivAt.cexp`. Upstream authorship and Apache-2.0 licensing are retained for imported results.

The new statements are standard local consequences and source adapters, not a new Neumann theorem, identity principle, arithmetic determinant construction or GRH proof. No novelty claim; independent novelty assessment UNASSESSED. Every theorem has an individual record in its adjacent `.provenance/` directory. No direct reproduction of a paper's arithmetic theorem is claimed.

## Backward path and complete written arguments

Let a=I-K in a complete normed ring and r be a proposed inverse. If both E_l=1-ra and E_r=1-ar have norm below one, their geometric series converge. Then l=sum(E_l^n)r satisfies la=1, and t=r sum(E_r^n) satisfies at=1. Associativity gives l=l(at)=(la)t=t. Thus a is genuinely a unit. When norm(1)=1, norm(l)<=norm(r)/(1-norm(E_l)); also l-r=E_l*l gives the posterior error bound. No normality or finite-dimensional assumption is used.

For an approximation a0 and norm(a-a0)<=epsilon, expansion gives
`norm(1-ra)<=norm(1-ra0)+norm(r)*epsilon` and
`norm(1-ar)<=norm(1-a0*r)+epsilon*norm(r)`.
Both complete budgets must be below one. The norm-bound theorem produces the inverse, not just a proposition with an opaque invertibility label. The norm is the given submultiplicative ring norm; entrywise matrix errors require a separate conversion.

For entire D,h,F, direct differentiation gives logDeriv(exp(h)F)=h-prime+logDeriv(F) on the zero-free comparison region. If D has this logarithmic derivative there, and one nonzero anchor agrees, Program 8 identifies D=exp(h)F globally. The comparison region is open, preconnected and nonempty; neither D nor F is assumed globally zero-free. This accounts for normalization rather than matching only a divisor.

The finite-divisor bridge keeps the same support and weights. Exact return gives the zero equivalence; openness supplies germ equality, so the nonvanishing analytic factor preserves actual analytic order. A premise identifying the weights with D's analytic orders is essential. No winding computation, contour quadrature or count saturation is inferred. Real-coordinate counting requires the separately correct spectral-coordinate map; no claim about Re(s)=1/2 is inferred from Im(s)=0.

The arithmetic consumers combine exact return with the explicit premise `IsUnit(I-K(s)) -> D(s) != 0`. A source zero off the line contradicts nonvanishing from both residuals. The zeta consumer concludes the unchanged root `RiemannHypothesis`; the Dirichlet consumer retains the actual analytically continued `LFunction` and the open-strip hypotheses. They do not supply arithmetic K, determinant theory, universal residuals or source coverage.

## Hostile checks and limitations

The existing determinant-one shear has unbounded inverse entries: determinant separation cannot replace residual estimates. A unilateral shift has a one-sided inverse but not a two-sided inverse; both residuals or an independent range argument are needed. The latter is a written comparison, not a new formal theorem here. For scalar a=0,r=1 both residuals equal one and a is not invertible, so the strict threshold is necessary. Constant multiples have the same logarithmic derivative but different normalization; the anchor cannot be removed. Equal zero locations alone do not preserve multiplicities. The existing off-critical polynomial has an exact finite-matrix determinant realization, so source identification is indispensable.

Unresolved: an arithmetic family independent of prescribed target zeros; trace ideal and determinant convention; exact normalized arithmetic trace identity with conductor, gamma/parity, every prime power and applicable poles; primitive-principal and boundary/source correspondence; full-operator approximation estimates and coverage of every required parameter. No Weil-form term is changed or dropped. Closed unbounded operators need a separate domain/resolvent adapter to this bounded Banach-ring statement. No complete no-pollution/contour theorem is claimed.

## Reproduction and evidence

```sh
lake build GRWTSK.FunctionalAnalysis.TwoSidedResidualInverse GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantCertification
```

After authorized elaboration, audit the transitive axioms of `exists_inverse_bound_of_approximation`, `exactReturnOn_univ_of_logDeriv`, `finiteDivisor_source_return`, and both arithmetic consumers. These commands are specifications, NOT receipts. No root import or dependency pin was changed.

SOURCE_PROOF_CANDIDATE. Lean elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Static checks only: 18 theorem declarations, no placeholder/new-axiom tokens outside comments, and exact source SHA-256/Git-blob checks. Current canonical Noe skill returned 404 at `0126ba445446dea25047a89884df1adf6b10251a`; no dependent proof execution occurred.

Research provenance/reproduction home: [program-4 residual certification](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/tree/main/artifacts/reproducibility/program-4-residual-certification/2026-11-11/). It references canonical Lean bytes rather than mirroring them. Publication observations and remaining validation obligations belong in issue #1800 and the research record.
