# gamma_finite_left_sampling_error

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
Local result locator: `WGEQ-4` (not a novelty registration).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature.gamma_finite_left_sampling_error`.
Maintained source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).

## Typed scope and quantifiers

For any finite index set, positive cells (u_i,v_i] with u_i<=v_i<=R,
pairwise disjoint and covering exactly (epsilon,R], 0<epsilon<=R,
nonnegative mesh ceiling delta and each width<=delta, the original outer
gamma integral minus its exact-weight left-sampled sum has absolute value
at most 2*headConstant(A,R,L)*delta*(R-epsilon). All source hypotheses of
WGEQ-3 are retained.

## Complete primary argument

Finite integral additivity splits the true gamma integral over the
stated covering. Apply WGEQ-3 to each residual and sum absolute errors.
Separately apply the same additivity to the constant function 1 to prove,
rather than assume, sum_i(v_i-u_i)=R-epsilon. Factor the common coefficient.
This proves (E5); no infinite sum or limiting interchange is used.

## Exact provenance and dated comparison

Native `GammaWeightedQuadrature.gamma_finite_sampling_error` supplies
the comparison finite-additivity pattern, but its bound contains the kernel
mass. WGEQ-3 supplies the new residual bound. Mathlib integral_biUnion_finset,
setIntegral_const and Real.volume_real_Ioc_of_le are the native integration
suppliers. No direct external theorem has been imported.

Source revision, blobs, dependency pins, source authors, direct references,
alternative check and shared limitations: [README](README.md).
Classification: local consequence, not a direct FLT/paper adaptation.

## Consumer, hostile cases and source return

Consumed by `primitiveArithmeticValue_left_enclosure`. For fixed
A,R,L,delta, the bound is at most 2*headConstant*delta*R, independent of
epsilon. No geometric-cell ratio is required. It is not uniform in R or
L. Gaps/overlaps violate explicit covering/disjointness hypotheses, and
epsilon=R is harmless only with a valid covering. There is no positivity
claim, even for the finite sum.

## Verification

SOURCE_PROOF_CANDIDATE. Lean elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, certified numerical evaluation and independent
analytical review: NOT_RUN. Originality: UNASSESSED; no novelty claimed.
No proof execution dispatched after the canonical skill returned 404.
Publication evidence is recorded separately in issue #1789.
