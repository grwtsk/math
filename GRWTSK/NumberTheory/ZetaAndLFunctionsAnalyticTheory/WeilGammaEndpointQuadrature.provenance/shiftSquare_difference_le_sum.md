# shiftSquare_difference_le_sum

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
Local result locator: `WGEQ-1` (not a novelty registration).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature.shiftSquare_difference_le_sum`.
Maintained source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).

## Typed scope and quantifiers

For every f:R->C, L:NNReal, global LipschitzWith L f, nonnegative real
shifts r,s and every real t, the absolute difference of the two squared
increment norms is at most L^2*(r+s)*abs(r-s). No support or L2 hypothesis
is needed for this pointwise statement.

## Complete primary argument

Use the original increments z=f(t+r)-f(t) and w=f(t+s)-f(t).
Their norms are bounded separately by L*r and L*s; subtracting cancels
f(t), so norm(z-w)<=L*abs(r-s). Factor norm(z)^2-norm(w)^2, apply the
reverse triangle inequality to the first factor and the separate norm
bounds to the second. This proves (E1) in README without a shared 2*L*R
ceiling. Polarization gives the alternative hostile check described there.

## Exact provenance and dated comparison

Native `GammaWeightedQuadrature.shiftSquare_difference_le` at the pinned
baseline keeps a shared R ceiling. This is a local strengthening of that
modulus, not a copy of an upstream FLT declaration. Standard norm-square
factorization and reverse triangle inequality; exact mathematical novelty
is not asserted.

Source revision, blobs, dependency pins, source authors, direct references,
alternative check and shared limitations: [README](README.md).
Classification: local consequence, not a direct FLT/paper adaptation.

## Consumer, hostile cases and source return

Consumed by `shiftEnergy_difference_le_sum`. The r+s factor tends to
zero with both shifts. Negative shifts are not covered by this statement;
they would require absolute values of the individual shifts. r=s and
L=0 give zero on both sides. No assertion about any zero of an L-function.

## Verification

SOURCE_PROOF_CANDIDATE. Lean elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, certified numerical evaluation and independent
analytical review: NOT_RUN. Originality: UNASSESSED; no novelty claimed.
No proof execution dispatched after the canonical skill returned 404.
Publication evidence is recorded separately in issue #1789.
