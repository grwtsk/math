# shiftEnergy_difference_le_sum

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
Local result locator: `WGEQ-2` (not a novelty registration).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature.shiftEnergy_difference_le_sum`.
Maintained source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).

## Typed scope and quantifiers

For every globally L-Lipschitz f:R->C with MemLp f 2 volume and zero
outside [-A,A], A,R>=0, and r,s in [0,R], the original energy difference
is at most (2*A+R)*L^2*(r+s)*abs(r-s).

## Complete primary argument

Both increment functions vanish outside [-A-R,A], using the existing
pointwise support theorem. The two squared norms are genuinely integrable
by native L2 translation lemmas. Restrict their difference to that common
support and integrate WGEQ-1; its Lebesgue measure is exactly 2*A+R.
This proves (E2), not an assumed regularity property of an abstract energy.

## Exact provenance and dated comparison

Native `GammaWeightedQuadrature.shiftEnergy_difference_le` and
`GammaHeadIntegrability.shiftDifference_zero_outside` at the pinned
baseline; Mathlib `Real.volume_real_Icc_of_le` at the native pin.
This is local support-sensitive integration, not a direct paper adaptation.
The individual source identities and authors are in README.

Source revision, blobs, dependency pins, source authors, direct references,
alternative check and shared limitations: [README](README.md).
Classification: local consequence, not a direct FLT/paper adaptation.

## Consumer, hostile cases and source return

Consumed by `gamma_cell_left_sampling_error`. Boundary points have no
additional Lebesgue mass. Zero extension is the actual whole-line f; a
jumping extension is not admitted by the global Lipschitz hypothesis.
This constant depends on R and L, and is not a frequency-uniform bound.

## Verification

SOURCE_PROOF_CANDIDATE. Lean elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, certified numerical evaluation and independent
analytical review: NOT_RUN. Originality: UNASSESSED; no novelty claimed.
No proof execution dispatched after the canonical skill returned 404.
Publication evidence is recorded separately in issue #1789.
