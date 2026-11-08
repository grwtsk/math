# Sharp finite signed-row variance and exact Gibbs law: source comparison

Research date: 2026-11-02. Local mathematical direction: **grwtsk contributors**. Source comparison and Lean proof-candidate drafting: OpenAI ChatGPT. Imported Mathlib and GRWTSK mathematical sources retain their original attribution/licenses.

## Exact source and purpose

The ORIGINAL arithmetic source is \`GRWTSK.RiemannHypothesis.CCC.pickupCross T\`, the complete ordered off-diagonal response Gram with literal \`ArithmeticFunction.moebius m * ArithmeticFunction.moebius n\`, the original \`endpointIndex T\` and every original signed physical readout defect. This note is about optimizing the probability law of a **finite importance sampler of already fixed arithmetic data**, not generating the Möbius coefficients, improving the original arithmetic cancellation, or proving RH.

Existing sources reused verbatim:

- \`GRWTSK/Combinatorics/ShapePhysicalBitPairSampling.lean\`, source blob \`b15bfdf183afd5f44379937a83b57c0e4c7a8407\`: \`PositiveWindowLaw T w\`, original-window finite pair expectation and original signed importance correction.
- \`GRWTSK/Combinatorics/ShapePhysicalBitRowConditioning.lean\`, blob \`d6acb07ffd34b23089556f86dabcf87f6b552b07\`: \`originalRowSum T m\`, exact row-conditioned variance and signed physical defect return.
- \`GRWTSK/Combinatorics/ShapePhysicalBitOptimizedRowLaw.lean\`, blob \`41d9e5d9bd105182c759ffba522f052aedf22cd9\`: positive normalized regularized row law, explicit weight floor and finite second-moment upper bound.
- \`GRWTSK/Combinatorics/GraphTheory/FiniteAdmissibleSampler.lean\`, blob \`e74a253e66c1ee9ab5b6d97440e1fdeee49a54be\`: genuine finite Gibbs weights, nonnegative costs, admissible-arc support and normalization, with no assumed stochasticity axiom.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitGramReturn.lean\`, blob \`67cbc92ee2dec824d0a5c2930f0f45671dad61a9\`: complete \`pickupCross = observedPacket + signedReadoutDefect\` for every physical stream.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean\`, blob \`2606536c56bdcb33d120aeddfbcbeef793e31ba1\`: distinct original \`endpointSum\`, true quarter-unit approximation for \`T>=0\`, and the conditional affine-good-scale RH return.

## New source 13: exact variational variance floor

[ShapePhysicalBitSharpRowVariance.lean](https://github.com/grwtsk/math/blob/2057623c233fa64a6805826a6ffe263aa6a0e475/GRWTSK/Combinatorics/ShapePhysicalBitSharpRowVariance.lean) is a 206-line source proof candidate. Final source commit \`2057623c233fa64a6805826a6ffe263aa6a0e475\`, exact blob \`0b0955ec456da5231d8dbf8ff393ab9964bfcb7b\`. It repairs an initial unnecessary cross-branch theorem reference, replacing it with a definitionally equal original-index row sum; no root imports changed.

Let \(W_T=\operatorname{endpointIndex}(T)\), \(R_m=\operatorname{originalRowSum}(T,m)\), \(A=\sum_{m\in W_T}|R_m|\), and \(X=\sum_{m\in W_T}R_m=\operatorname{pickupCross}(T)\). For **every strictly positive normalized** \`PositiveWindowLaw T w\`, introduce the *nonnegative mismatch*
\[
D(w)=\sum_{m\in W_T}\frac{(|R_m|-Aw_m)^2}{w_m}\ge0.
\]
The full literal finite variance identity written in the source is
\[
\sum_{m\in W_T}\frac{R_m^2}{w_m}=A^2+D(w), \qquad
\operatorname{Var}_w(R_m/w_m)=A^2-X^2+D(w).
\]
The first follows by expanding each square and summing: the \(-2A\sum|R_m|\) term equals \(-2A^2\), the \(A^2\sum w_m\) term equals \(A^2\), and the row squares equal their absolute-value squares. The second reuses \`conditionedOriginalVariance_eq_rowSecondMoment_sub_sq\`. The source candidate also proves \(A^2-X^2\ge0\) from \(|X|\le A\).

This identifies a **sharp floor within the class of one-index, source-row importance samplers**:
\[
\operatorname{Var}_w(R/w) \ge A^2-X^2.
\]
When the strictly positive law happens to be exactly \(w_m=|R_m|/A\) at every source slot, its mismatch vanishes. If \(A>0\) but some \(R_m=0\), this strictly positive formula cannot hold on *every* source index; smoothing is therefore important. For the existing \(\varepsilon>0\) regularization, the new source-level quantitative candidate is
\[
0\le D(w_\varepsilon)\le \varepsilon |W_T| A,\qquad
\operatorname{Var}_{w_\varepsilon}(R/w_\varepsilon)
\le A^2-X^2+\varepsilon |W_T| A.
\]
No new arithmetic bound on \(A\), \(X\), \(\operatorname{endpointSum}\) or the source-signed pair terms is postulated.

**Scope:** the floor holds only for the explicitly specified \`R_m / w_m\` importance estimator class, not all unbiased estimators. A deterministic exact summation could instead compute \(X\) and has no sampling variance; this is not a computational-speed guarantee. Constructing the source-informed law may already require a full \(O(|W_T|^2)\) signed pair sum.

## New source 14: a genuine Gibbs realization of the same finite law

[ShapePhysicalBitGibbsRealization.lean](https://github.com/grwtsk/math/blob/654decf2dcd01e391241f767ae21aefdaa0e0c4f/GRWTSK/Combinatorics/ShapePhysicalBitGibbsRealization.lean) is a 182-line source proof candidate. Final commit \`654decf2dcd01e391241f767ae21aefdaa0e0c4f\`, exact blob \`3c55401b01114fdbffd3e27ca0757618c9cfeebc\`.

With \(N=|W_T|>0\) and \(\varepsilon>0\), the existing regularized weights are *actually positive and normalized*, hence each \(0<w_\varepsilon(j)\le1\). The new \`rowGibbsSampler\` uses exactly \`Sampler (OriginalWindowIndex T)\` from the existing Gibbs module, with every arc admitted, inverse-temperature \(\beta=1\), and nonnegative cost
\[
c(i,j)=-\log w_\varepsilon(j)\ge0.
\]
The actual Gibbs exponential is \(\exp[-\beta c(i,j)]=w_\varepsilon(j)\), its row partition is precisely \(1\), and \(\operatorname{Sampler.probability}(i,j)=w_\varepsilon(j)\). The source candidates \`rowGibbsSampler_weight\`, \`rowGibbsSampler_partition\`, \`rowGibbsSampler_probability\`, \`rowGibbsSampler_fullSupport\`, and \`windowGibbsWeight_rowGibbsSampler\` supply the exact normalization and original-index equality, including zero weights OUTSIDE the original source window.

The cost construction is *source-informed*, not a stochastic or physical mechanism producing the original Möbius signs. Independence concerns index draws under a chosen explicit law; no arithmetic-sign independence or concentration of cusp samples follows. It does close a typed representational gap: the previously normalized row weights now have a candidate realized \`FiniteAdmissibleSampler.Sampler\`, with costs and all axioms of the existing structure supplied rather than assumed.

## Independent hostile boundary

Take an abstract four-index symmetric positive-semidefinite Gram matrix whose entries are all \(1\), with signed coefficients \((1,1,1,-1)\) and excluded diagonal. Its ordered off-diagonal signed row sums are \(R=(1,1,1,-3)\), so \(A=6\) but \(X=0\). Even at optimal absolute-row weights the one-index importance sampling variance floor is \(A^2-X^2=36\). The matrix is an **abstract PSD finite fixture, not the literal arithmetic response Gram at a specified horizon**. It refutes the inference "a PSD Gram or exact gauge/sampler representation forces small importance variance" and shows that strong final signed cancellation can coexist with large sampling variance.

Exact-rational diagnostics: 720 deterministic random finite row/law fixtures at \(N=1,\ldots,9\), with positive rational laws and \(\varepsilon>0\), verified \(\sum R^2/w=A^2+D(w)\), the centered variance decomposition, nonnegativity, normalization and \(D(w_\varepsilon)\le\varepsilon N A\). These are noncertifying mathematical regression checks, not kernel proof, nor observations about actual \(\mu(n)\) growth.

## Static proof prevalidation, status and missing arithmetic result

Pinned repo environment: Lean \`v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. Both final source blobs were fetched from current \`main\`. Pinned Mathlib \`Real.log_nonpos\` requires \(0\le x\); the Gibbs proof was revised to pass \`hp.le\`, with a separate explicit exponential/logarithm argument. We also verified the existing \`Finset.sum_mul\` lemma's orientation: the old centered-row proof's sum rewrite can match its RHS and was not altered on speculation.

The source candidates contain no authored \`sorry\`, \`admit\`, \`axiom\`, or \`native_decide\` declarations in a **static text scan**. No local Lean/Lake/Elan is installed, the container cannot resolve GitHub for package installation, and no remote runner was dispatched. Therefore pinned Lean parsing, complete dependency build, fresh kernel replay, theorem-type checking and transitive axiom/opaque/native audit remain **NOT_RUN**.

The useful next arithmetic target is still independent: a genuinely source-derived one-sided, every-positive-rate estimate for \`PickupEndpointQuadrature.endpointSum\` or the full signed \`pickupCross\` on one fixed affinely frequent scale set. Bounding \(A=\sum|R_m|\) subexponentially would be a stronger sufficient input, not an estimate established by this sampling formalization. Neither the sharp variance identity nor the Gibbs realization proves RH.

**Publication status:** source proof candidates committed on existing \`grwtsk/math/main\`; no alteration of the original two-bit codec, source \`ArithmeticFunction.moebius\`, source windows, off-diagonal orientations, signed readout defect, root imports, or pinned Mathlib.
