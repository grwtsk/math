# Putnam–Kakeya exact three-sector routing of the Möbius endpoint

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Disposition: complete elementary analytical proof at exact finite source scope; Lean source proof candidate, compilation / expected types / kernel / transitive axiom audit NOT_RUN.

## Existing source and first-stage result

This increment **extends without editing**:
- \`MoebiusEndpointPutnamEnergyCounting.endpointGapSetCross\`, the unchanged original selected additive-gap packet.
- \`MoebiusEndpointPutnamSparseGapAllRate.putnam_sparse_gap_all_rate\`, which proves the explicit bound \`|endpointGapSetCross (putnamRateGapSet epsilon T) T| <= (32/epsilon^2) exp(epsilon T)\` for epsilon>0, T>=0.
- \`MoebiusFareyFaryKakeyaIncidence.originalPhysicalPairMass\`, an ACTUAL physical d-dimensional Lebesgue pair volume of separately indexed original straight-tube shadings; \`sourceDiagonal\`, \`sourceKernel\`, original signed source and all ordered orientations are unchanged.
- \`SignedIncidenceCongestion.abs_thresholdCross_le_weighted_rows\`, which pays for selected physical overlaps at a positive volume threshold.
- \`PickupEndpointQuadrature.endpointSum_error\`, the existing quarter-unit absolute chord price.

New Lean candidate:
\`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaRoutedBudget.lean\`, Git blob \`3aa811df6e7eb23fd4d2db0200a40c421d841781\`.

## The precise route

Fix a finite set A of positive integer additive distances, a nonnegative-time horizon T, an ORIGINAL endpoint-indexed physical straight-tube family F of ambient dimension d, and a physical volume threshold eta>0. Put

  b_mn = vol_d(shading_m intersect shading_n) >= 0,
  b^far_mn = 0 if dist(m,n) in A, else b_mn.

The first assignment (Putnam) includes all original ordered pairs with distinct endpoints and dist(m,n) in A. The second assignment (Kakeya) includes ONLY the originally labelled pairs outside A with b_mn>=eta. Because eta>0, a pair already assigned to Putnam has b^far_mn=0<eta, and cannot be selected again. The symmetry of distance and physical pair intersection ensures both orientations are present.

The exact final source is decomposed as

  pickupCross(T) = endpointGapSetCross(A,T)
                 + physicalOutsideGapCross(A,F,eta)
                 + originalSignedRemainder(A,F,eta).

The remainder is DEFINED as the actual original complete pickupCross minus both explicitly selected original signed packets; it is not assumed positive or small. The Lean candidate proves the algebraic identity; it does not yet certify a separately expanded weak-overlap filter identity for that remainder.

The integrated original Young estimate and the geometry-derived nonnegative pair volume give

  |physicalOutsideGapCross(A,F,eta)|
    <= (1/eta) sum_m d_m sum_{n != m, dist(m,n) notin A} b_mn.

No near-gap physical pairs are included in this row cost; masking before thresholding avoids paying twice.

Therefore, from the already proved Putnam finite-distance estimate \`|X_A| <= 4|A| T^2\` and the existing \`|endpointSum-pickupCross|<=1/4\`, the new candidate is

  endpointSum(T)
    <= 4|A| T^2
       + (1/eta) sum_m d_m sum_{n != m, dist(m,n) notin A} b_mn
       + originalSignedRemainder(A,F,eta) + 1/4.              (R1)

For any epsilon>0, selecting \`A=putnamRateGapSet epsilon T\` uses the ORIGINAL source theorem to replace the first term with

  (32/epsilon^2) exp(epsilon T).                               (R2)

This is a concrete **method-pivot identity**: count first where additive distance is sparse; move to actual measured Kakeya overlap for long-distance pairs with significant shared shading; leave weak-overlap long-gap arithmetic in the signed remainder. At no point is the original signed kernel replaced by the positive physical mass.

## Comparison with Farey/Fáry and Kakeya

Farey determinant-one adjacency can serve as a source-labelled candidate graph, but the proved 0/1 to 1/(n+1) spokes show that it has no uniform source-degree bound. Fáry's straight-line planar drawing theorem provides no universal upper bound on the volume of thickened vertex-neighborhood intersections; arbitrarily many line segments can meet at a planar star center. Hence the exact pair-volume threshold, direction/separation/scale restrictions and the paid row cost are indispensable.

The Wang–Zahl three-dimensional Kakeya set theorem (arXiv:2502.17655) and Guth–Wang–Zahl streamlined proof (arXiv:2601.14411) are background. They are not imported as row-wise bounds, do not automatically apply in arbitrary dimension d, and do not control the original Möbius remainder. The existing GRWTSK \`FiniteStraightTubePhysicalPairBudget\` and \`FiniteStraightTubeProjectivePairBudget\` correctly preserve their own hypothesis and physical volume scope.

## Completion and hostile boundaries

- If A is empty, only the measured thresholded geometric packet is selected; unselected source remains.
- If all physical shadings are disjoint, the geometric packet is empty, so the signed remainder retains the entire non-Putnam source.
- If A contains all positive distances among the finite original indices, the geometric outside-gap packet is empty and the source falls back to Putnam counting; the Putnam cost can then be huge.
- If all tubes coincide, physical rows are dense; the geometric cost is not small.
- At every eta>0, masked A-gap masses equal zero and cannot satisfy the threshold. At eta<=0 the routing guarantee fails: the positive threshold premise must not be silently dropped.
- Positive union-volume or moment identities do not imply a small energy-weighted row volume without a separate source-compatible theorem.
- The remaining signed sector can grow. The combined right-hand side is NOT known to satisfy an all-positive-rate bound on a fixed affinely frequent set; no RH result follows.

A true completion supplier must construct the indexed physical geometry from the original source (not choose favorable tubes arbitrarily) and prove, at a fixed d, with explicit eta(T), all-positive-rate upper control of BOTH the measured long-distance row price and the remaining signed arithmetic, on one fixed scale set with controlled coverage. Only then is the existing canonical RH return available. The same physical overlap theorem can be investigated as an independent supplier for Navier–Stokes Fourier triad tails or finite Hodge contact transport only after the corresponding operator/source maps are established.

## Mathematical tests and verification status

A separate deterministic standard-library Python \`fractions.Fraction\` diagnostic exercised 2,200 seeded finite families at sizes 1..11, arbitrary signed pair values satisfying Young, symmetric nonnegative physical masses, random positive eta, and arbitrary gap subsets A. It checked the three-sector exclusive/exhaustive partition, signed remainder equality, Putnam energy counting, outside-gap physical row bound and final complete comparison. **13,200 exact rational assertions PASS** (seed 20261102). This is a diagnostic, not a Lean elaboration or kernel receipt.

New Lean parsing, compilation, expected theorem types, fresh kernel checking, and transitive axiom/sorry/unsafe audit are all **NOT_RUN**. No native/remote verifier, CI bypass or runner is authorized by this source publication. The static verification target pins the source blob and target theorem list. No changes were made to the existing root imports, dependency versions, original source code or historical verification receipts.

Noncircularity: the remaining signed \`originalSignedRemainder\` is never set to the value needed for RH; it is an exact, independently defined difference of ORIGINAL arithmetic source packets. A bound on it remains an explicit new theorem to be proved.
