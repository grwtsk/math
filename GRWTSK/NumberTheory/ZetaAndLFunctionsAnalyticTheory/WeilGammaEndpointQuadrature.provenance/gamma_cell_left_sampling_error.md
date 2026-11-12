# gamma_cell_left_sampling_error

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
Local result locator: `WGEQ-3` (not a novelty registration).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature.gamma_cell_left_sampling_error`.
Maintained source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).

## Typed scope and quantifiers

For every natural a, original supported Lipschitz L2 source, A,R>=0,
0<u<=v<=R and 0<=delta with v-u<=delta, the difference between the actual
gamma density integral on (u,v] and kernelCellMass(a,u,v)*E_u is bounded
by 2*headConstant(A,R,L)*delta*(v-u).

## Complete primary argument

Apply WGEQ-2 with s=u. At every r in (u,v], r+u<=2*r and
abs(r-u)<=delta. Multiply by the nonnegative original K_a, then use native
shift_mul_parityKernel_le to bound r*K_a(r) by r+1/2<=R+1/2. Thus the
absolute residual density is at most 2*headConstant*delta before integration.
The existing positive-tail kernel integrability and full gamma integrability
justify subtraction of the integrals. Integrate the constant over length
v-u. The private kernel_nonneg helper uses exp(-2*r)<1 for r>0 and a
positive exponential numerator; it adds no extra sign hypothesis.

## Exact provenance and dated comparison

Native `GammaHeadIntegrability.shift_mul_parityKernel_le`,
`gammaCorrection_integrableOn_of_lipschitz`,
`ExactGammaTail.parityKernel_integrableOn_tail`, and the exact
`GammaWeightedQuadrature.kernelCellMass` at the README pin; Mathlib
`Real.volume_real_Ioc_of_le`. These are elementary local consequences,
not imported FLT or direct new paper formalizations.

Source revision, blobs, dependency pins, source authors, direct references,
alternative check and shared limitations: [README](README.md).
Classification: local consequence, not a direct FLT/paper adaptation.

## Consumer, hostile cases and source return

Consumed by `gamma_finite_left_sampling_error`. The LEFT endpoint is
essential: the proof does not apply unchanged to an arbitrary sample s>r.
The case u=0 is excluded because the bare kernel cell mass diverges.
Zero-length cells are admitted and give zero error. The sample is still
an integral, not a certified numerical value.

## Verification

SOURCE_PROOF_CANDIDATE. Lean elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, certified numerical evaluation and independent
analytical review: NOT_RUN. Originality: UNASSESSED; no novelty claimed.
No proof execution dispatched after the canonical skill returned 404.
Publication evidence is recorded separately in issue #1789.
