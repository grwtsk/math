# primitiveArithmeticValue_left_enclosure

Authors: grwtsk contributors. Date: 2026-11-12. Edition: 1.
Local result locator: `WGEQ-5` (not a novelty registration).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature.primitiveArithmeticValue_left_enclosure`.
Maintained source: [WeilGammaEndpointQuadrature.lean](../WeilGammaEndpointQuadrature.lean).

## Typed scope and quantifiers

For every primitive NONPRINCIPAL Dirichlet character chi of modulus q,
with NeZero q, natural tail-prefix length n, supported Lipschitz L2 source,
R>0 and R>=2*A, and the full finite cell hypotheses of WGEQ-4, the SAME
primitiveArithmeticValue lies between S-error and
S+error+headConstant*epsilon^2/2+tailUpper(a+2*n,R)*energy(f), where S uses
exact left-sampled energies, the original gammaConstant and tailPrefix,
and the complete twistedPrime expression; error=2*headConstant*delta*(R-epsilon).

## Complete primary argument

The existing primitiveArithmeticValue_twoCutoff_enclosure gives the
same arithmetic expression with the exact gamma integral on (epsilon,R].
WGEQ-4 bounds the replacement of that integral by the left-sampled sum
in both directions. Add those inequalities without changing any arithmetic
term. The lower and upper gamma endpoint budgets keep their original
orientation. This is (E6), a source-exact consequence of the newly derived
outer supplier, not an assumed evaluation-certificate interface.

## Exact provenance and dated comparison

Native `GammaHeadIntegrability.primitiveArithmeticValue_twoCutoff_enclosure`
and `GammaWeightedQuadrature.primitiveArithmeticValue_weighted_enclosure`
at the README baseline. Physical source context: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.17)--(3.20), through the
canonical energy/correlation modules. The character extension and this
quadrature constant are not attributed as theorems of that paper.

Source revision, blobs, dependency pins, source authors, direct references,
alternative check and shared limitations: [README](README.md).
Classification: local consequence, not a direct FLT/paper adaptation.

## Consumer, hostile cases and source return

Direct consumer: numerical enclosure development for the original
primitive arithmetic value, with inner sampling and rounding still separate.
Every Re(conj(chi(n))*correlation(f,log n)) and active prime-power weight is
retained. q is used as a conductor only under primitiveness. Zeta and
imprimitive characters are not silently included: the full zeta pole
identity and imprimitive transfer remain separate. Universal positivity,
RH and GRH remain unproved by this result.

## Verification

SOURCE_PROOF_CANDIDATE. Lean elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, certified numerical evaluation and independent
analytical review: NOT_RUN. Originality: UNASSESSED; no novelty claimed.
No proof execution dispatched after the canonical skill returned 404.
Publication evidence is recorded separately in issue #1789.
