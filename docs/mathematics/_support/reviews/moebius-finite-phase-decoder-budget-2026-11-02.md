# Quantitative finite-phase decoder error budget on original Möbius source
Date: 2026-11-02. Repository: grwtsk/math.

## Mathematical advance
New Lean source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFinitePhaseDecoderBudget.lean
Immutable proposed-source blob: f9442fbba1b5c617ccaf6234d403d9b4212cf316.
Dependency: existing MoebiusFiniteTorsionResolutionReturn.lean, unchanged blob 77b6af2581e21edc4e8a471fe42de3032c6f25cc.

The original arithmetic index, the actual mu(n), response Gram K_T(m,n), both ordered off-diagonal orientations, diagonal exclusion, and endpoint support are unchanged. For a phase-only decoded coefficient a_n and original-minus-readout signed error e_n=mu(n)-a_n, the exact pair identity is

    mu(m)*mu(n)-a_m*a_n = e_m*a_n+a_m*e_n+e_m*e_n.

The last error-error term is retained, not assumed small. Given independently source-checked radii |e_n| <= eta_n at EVERY original index in endpointIndex(T), the complete original signed decoding defect obeys

    |signedLoss(T)| <= B(T)
    B(T) = sum_(m!=n, original endpoint support)
      (eta_m*|a_n|+|a_m|*eta_n+eta_m*eta_n)*|K_T(m,n)|.

Each summand is nonnegative under the source-certified radii. This certificate depends on actual decoded scalars, verified error radii and the original Gram; neither finite phase size, M23, Rank32 nor a Reed-Solomon coder automatically supplies small radii. No arbitrary signed remainder is replaced by zero. The resulting source-comparison bounds are

    pickupCross(T) <= observedCross(T) + B(T)
    endpointSum(T) <= observedCross(T) + B(T) + 1/4  (T>=0).

The quarter-unit curvature allowance is the independent existing source approximation, not a control of B(T). A uniform error radius eta on two source atoms sharing one phase must obey |mu(a)-mu(b)| <= 2 eta. Therefore collisions of different source signs cannot be decoded with arbitrarily small error.

A possibly noninjective phase or geometric gauge transport f preserves the original source automatically, but the decoded scalar, nonnegative error envelope and coefficient certificate transport only when a supplied decoder read satisfies read(f(phase(a)))=decode(phase(a)) on every original source atom.

The old endpoint/curve upper certificate and new observed decoder certificate combine by MINIMUM into phaseHybridUpper. The original source is below that hybrid when the genuine prime proof and source-index error radii are supplied, and the hybrid is never larger than the previous endpoint/curve upper certificate.

## Canonical RH return
The new conditional theorem riemannHypothesis_of_phase_observation_and_error consumes an unchanged affinely frequent set G, two EVERY-positive-exponent SubexponentialOn premises (complete observed signed cross and complete nonnegative B), plus actual error-radius certification on the original support for T in G. The theorem invokes the PREEXISTING riemannHypothesis_of_endpoint_good_scales without changing its target. Neither all-rate growth premise is discharged here. Dense original squarefree long-gap cancellation remains OPEN. The earlier reflected-source Landau route is distinct.

## Native acceptance and provenance
Source proof candidate. Compilation NOT_RUN, expected theorem types NOT_RUN, fresh independent kernel NOT_RUN, transitive axiom/sorry/unsafe/private/opaque audit NOT_RUN. Source text scanned for authored sorry, research axiom, unsafe declarations only. Math pin read: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. lean/lake/elan unavailable in the current container; no remote execution, runner, workflow, scheduler, root import or toolchain pin changed.

A separate nonrigorous 60-digit mpmath diagnostic tested the actual integrated causal response Gram with exact trial-division integer Möbius coefficients, original indices 1..36, six deterministic phase families, 216 horizons, fixed random seed 20261102. 93,888 pointwise/double-sum/reframe assertions PASS. The script was transient and is not presented as an independently replayable proof receipt, numerical enclosure, Lean compilation or kernel acceptance.

Passive verification target must build the leaf and its complete transitive imported closure, check theorem signatures, check every coefficient and orientation in B(T), inspect sourceKernel rewrite and rate constant assembly, fresh kernel replay, and transitive axioms including generated/private/opaque declarations. Reject sorryAx, unproved new arithmetic axioms, aliasing, source-index change, modulus changes, dropped mixed terms, point-count/torsion conflation, or a finite-test-to-RH inference. Mutable receipts belong in grwtsk/noeaaeue, not this mathematical source.
