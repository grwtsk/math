# Farey, Fáry, Putnam and Kakeya: a paid signed-incidence interface

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Status: complete finite mathematical arguments at the specified scope; Lean source proof candidates; compilation / expected declaration types / fresh kernel / transitive axiom audit NOT_RUN. No Millennium problem conclusion.

## Source identities and closest prior work

- Original signed Möbius source: \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean\`, with \`endpointIndex\`, \`pickupResponseGram\`, \`pickupDiagonal\`, and the actual \`pickupCross\`. The signed endpoint comparison is the existing \`PickupEndpointQuadrature.endpointSum_error\`; no coefficient, endpoint window, cutoff or factor is replaced.
- Original Putnam sector: \`MoebiusEndpointPutnamSparseGapYoung.lean\` proves integrated source Young, and \`MoebiusEndpointPutnamSparseGapAllRate.lean\` uses at most two neighbors per positive additive distance. Its selected short-gap bound is *not* the still-open dense long-gap source.
- Original d-dimensional geometric sources: \`GRWTSK/MeasureAndIntegration/FiniteStraightTubeShadingCells.lean\`, \`GRWTSK/Combinatorics/GraphTheory/FiniteStraightTubePhysicalMoments.lean\`, \`FiniteStraightTubePhysicalPairBudget.lean\` and \`FiniteStraightTubeProjectivePairBudget.lean\`. They distinguish true physical pair volumes from coarse-grid co-hits and require explicit analytic hypotheses for volume estimates. All indexed shadings and their multiplicities remain present.
- New generic finite candidate: \`GRWTSK/Combinatorics/GraphTheory/SignedIncidenceCongestion.lean\`, Git blob \`6d98c3fb36e05bd4ca150e03ae747bdf9bc93cfc\`.
- New source consumer: \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFareyFaryKakeyaIncidence.lean\`, Git blob \`5e55acad7ac04a4250aeecbac59447ce5e54a843\`.

## 1. Exact finite signed-energy theorem

For any finite source inventory S, kernel k_ij, diagonal energies d_i and symmetric pair relation R, assume the existing two-point Young bound

  2 |k_ij| <= d_i + d_j  (i,j in S).

Define the COMPLETE ORDERED packet X_R = sum_i sum_{j != i, R(i,j)} k_ij and deg_R(i) as the number of selected source neighbors. Then

  |X_R| <= sum_{i in S} deg_R(i) d_i.                          (A)

Proof: take the absolute value AFTER assembling the signed packet. The absolute double sum is at most half the sum over selected ordered edges of (d_i+d_j). The first half is sum_i deg_R(i) d_i; symmetry and reindexing make the second half identical. This keeps both orientations and avoids a cardinality-times-global-diagonal replacement. No sign or PSD property is assigned to k_ij.

This is an elementary weighted refinement of the existing Putnam double count, not a claimed new general incidence theorem in mathematical literature.

## 2. Actual physical Kakeya threshold

Let d >= 0 be the ambient Euclidean dimension and let an original indexed finite straight-tube family have genuinely measurable shadings U_i. Define the real pair mass

  b_ij = volume_d(U_i intersection U_j) >= 0.

The geometry is optional and need not encode the Möbius signs; its ORIGINAL arithmetic source indices must be preserved. For eta > 0 select the symmetric relation R_eta(i,j) iff i != j and eta <= b_ij.

For each i, positivity gives

  eta * deg_R_eta(i) <= sum_{j != i} b_ij.

Substituting this into (A) gives the fully paid inequality

  |X_R_eta| <= eta^(-1) sum_i d_i sum_{j != i} b_ij.        (B)

This is a row-resolved physical intersection estimate, not a false claim that the Kakeya union-volume lower bound automatically controls maximum overlap degree. The threshold eta is essential: a tiny but nonzero pair volume cannot be assigned one full neighbor without paying its scale.

In the Lean candidate, \`OriginalTubeFamily d T\` indexes the existing genuine \`Family d Index\` by the subtype of ORIGINAL endpoint indices. \`originalPhysicalPairMass\` uses actual \`Measure (Space d)\` Lebesgue pair-intersection mass, not arbitrary colored squares or two distinct marks of a coarse cell. Nothing silently asserts correspondence between the nonnegative geometric \`Family.weight\` and signed Möbius coefficients.

## 3. Return to the unchanged RH endpoint observable

Let X(T) be the COMPLETE signed ordered Möbius response cross-energy and E(T) the previous exact endpoint chord sum. For arbitrary R let X_R(T) be the SAME original Gram with pairs restricted to R and define the full signed complement L_R(T) := X(T)-X_R(T). This is a definition, NOT a bound or adjustable remainder.

The prior endpoint theorem gives |E(T)-X(T)| <= 1/4 for T >= 0. Hence

  E(T) <= sum_i d_i deg_R(i) + L_R(T) + 1/4,               (C)

and for the physically thresholded relation,

  E(T) <= eta^(-1) sum_i d_i sum_{j != i} b_ij
          + L_R_eta(T) + 1/4.                            (D)

These are source-exact one-sided comparisons. The *complete* signed missing sector L_R_eta(T), including both orientations of every excluded pair, remains visible. The theorem consumes the earlier actual source Young inequality, not an invented arithmetic Gram.

For an RH application, a separately constructed choice of d, indexed tube family, eta(T), and one fixed adequately covering scale set G must show for EVERY positive exponent epsilon a one-sided bound on the FULL right-hand side of (D) of order C_epsilon exp(epsilon T). Only then may the existing \`riemannHypothesis_of_endpoint_good_scales\` conditional return be used, after source-bound verification. The present construction supplies **neither** that all-rate geometric-plus-residual estimate **nor** a favorable universal tube assignment. The RH arithmetic supplier is still OPEN.

## 4. Farey and Fáry intersections: precise meeting and obstruction

**Farey (number theory).** Define the integer cross determinant of two rational coordinate pairs as ad-bc. The new source proves the literal identities

  det((0,1),(1,n+1)) = -1  (every n >= 0),

and proves that all endpoints (1,n+1) are distinct. Thus determinant-one adjacency itself has arbitrarily large finite spoke families around 0/1. It cannot bound maximum graph degree or Kakeya tube congestion.

**Fáry (planar graph geometry).** Fáry's theorem is a distinct statement: a simple planar graph admits a straight-line crossing-free drawing. This gives an existence theorem for a planar *drawing*, not a uniform minimum separation, a bound on endpoint valence, a bound on positively thickened edge overlap, or a source-to-tube analytic map. Indeed a planar star can have arbitrary central degree. If a Fáry embedding is subsequently thickened by radius delta, the new pair relation must use TRUE geometric intersections, and every near-junction and near-crossing allowance is paid. A claimed topological contact is not a signed Möbius pair until an explicit integer-index map supplies it.

**Strong connection.** A Farey determinant index can label an explicitly certified finite planar/contact graph. A Fáry realization can produce straight segments, and a dimension-indexed positive-radius tube model can convert those segments into actual shadings. Applying (B) still requires quantified pair volumes; (C) still requires exact original signed arithmetic pair coverage and payment for the unmatched source. This makes the geometry a genuine candidate supplier rather than an analogy.

## 5. Contemporary Kakeya comparison

Hong Wang and Joshua Zahl (2025), *Volume estimates for unions of convex sets, and the Kakeya set conjecture in three dimensions*, arXiv:2502.17655, establish the Kakeya set conjecture for R^3 using convex concentration hypotheses. Larry Guth, Hong Wang and Joshua Zahl (2026), *A streamlined proof of the Kakeya set conjecture in R^3*, arXiv:2601.14411, present a streamlined argument. These results are BACKGROUND and NOT imported theorems in this source candidate.

The relevant Kakeya output, subject to its precise convex Wolff hypotheses, is a lower bound on union volume. It does not automatically supply the upper bound on EVERY weighted row sum in (B), especially when source energies d_i are nonuniform. It also applies to R^3 and not automatically to R^4, a harmonic fiber bundle, or the 3-torus Fourier modes.

The existing GRWTSK physical pair-bound/volume consumers correctly separate these tasks. An actual route to a better supplier should prove or admit a source-checked pairwise overlap estimate, retain projective angular separation and longitudinal shading density, and deduce a weighted row-mass inequality with explicit delta, eta, scale, and epsilon losses.

## 6. Hostile checks and pivot criteria

1. **Dense saturation.** Let k_ij=1 for distinct i,j, d_i=1, and R all ordered distinct pairs. Then |X_R|=|S|(|S|-1)=sum_i deg_R(i)d_i. Therefore no universal improvement to subexponential signed growth follows from Young plus degree information alone.
2. **Empty/disjoint shadings.** When actual U_i are pairwise disjoint, b_ij=0, the selected threshold packet is zero, and the complement is the ENTIRE original signed source. A spurious geometric success does not yield RH.
3. **Identical shadings.** When all source tubes have the same positive shading and eta is below its volume, the selected graph is dense and the row cost scales like |S|-1. No Kakeya gain appears.
4. **Coarse-grid false positives.** \`FiniteStraightTubeCoarseCellObstruction.lean\` already shows that different physical tube points meeting the same large cell need not intersect. The new source uses true Lebesgue pair intersection instead.
5. **Fáry versus Farey.** Determinant-one spokes and planar stars permit unbounded valence. Crossing-free segments become overlapping positive-radius tubes near shared endpoints. Neither is a uniform degree proof.
6. **Cross-dimensional error.** No three-dimensional geometric theorem is used in arbitrary dimension without an adapter; the actual d occurs in the \`Space d\` measure.
7. **Sign control.** Only the selected packet is absolutely bounded; the omitted full signed source can dominate. A positive geometric second moment by itself is not arithmetic cancellation.

The Putnam pivot is to move between (i) additive gap sparsity, (ii) true physical incidence geometry, and (iii) exact signed complement control, selecting the sharpest source-faithful supplier in each regime rather than forcing one geometric representation globally. A fixed finite family of methods could later cover controlled scales if each supplies the required all-positive-rate bounds and every remainder is retained.

## 7. Verification / diagnostic / novelty disposition

Primary mathematical proof: elementary finite Young double counting, row-mass threshold counting, and exact original endpoint decomposition; inspected independently as an algebraic argument. Not a new proof of Fáry or Kakeya. Analytic novelty over existing work is primarily the explicit **source-labelled weighted row** bridge and the retained source complement; the underlying combinatorial inequalities are standard.

Independent exact rational diagnostic: 2,700 seeded finite test families, sizes 1..9, arbitrary signed source pair values respecting the Young bound and nonnegative symmetric pair masses, random rational eta; plus 13 dense equality fixtures. 8,113 assertions passed using standard-library Python \`fractions.Fraction\`, fixed seed 20261101. This corroborates, but does not certify, Lean elaboration or the infinite arithmetic theorem.

New Lean source parsing: NOT_RUN.
Lake build: NOT_RUN.
Expected declaration types: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Full transitive axioms/unsafe/sorry audit: NOT_RUN.
Exact induced RH supplier: NOT_PROVED.
Native verifier/CI/remote execution: NOT_DISPATCHED.

Required future checks at the published pinned commit: \`lake build --wfail GRWTSK.Combinatorics.GraphTheory.SignedIncidenceCongestion\` and \`lake build --wfail GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFareyFaryKakeyaIncidence\`, followed by actual supported fresh-kernel invocation and \`#print axioms\` for every new declaration and its transitive imports. Do not import these candidates into the root umbrella before certification. Keep executable receipts in grwtsk/noeaaeue.
