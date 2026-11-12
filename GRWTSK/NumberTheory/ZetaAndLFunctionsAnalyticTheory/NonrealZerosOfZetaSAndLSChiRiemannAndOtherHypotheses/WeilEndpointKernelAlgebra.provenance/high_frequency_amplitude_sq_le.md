# high_frequency_amplitude_sq_le — individual source provenance

Local attribution: grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6828793541.

## Declaration and exact statement

Source: [WeilEndpointKernelAlgebra.lean](../WeilEndpointKernelAlgebra.lean).
Declaration:
`GRWTSK.NumberTheory.WeilEndpointKernelAlgebra.high_frequency_amplitude_sq_le`.
For real d,tau, assume d^2<=9/64 and tau^2>=9/16. Then

    1849(2d*tau)^2 <=1296(tau^2+1/4-d^2)^2.

Both numerical hypotheses are retained. This statement is not a hypothesis
asserting that a spectral model or the actual arithmetic form is positive.

## Complete argument and analytic consumer

Use high_frequency_gap_identity. The first product on its right is
nonnegative since tau^2-9/16>=0 and
1296tau^2-441/16>=1296(9/16)-441/16>0. The second product is nonnegative
since 9/64-d^2>=0 and 9988tau^2+567/2>0. The last term is a nonnegative
multiple of a square. Their sum is therefore nonnegative, giving the result.

By strip_denominator_re_pos, A=tau^2+1/4-d^2>0. Division and square roots
then yield |2d*tau|/A<=36/43, exactly the amplitude bound in Case II of
WSEP-v1-1 in [WeilStripEndpointPositivity.md](../WeilStripEndpointPositivity.md).
Combined there with |sinh(dL)|<=3sinh(L/2)/4, it supplies the coefficient
28305/29584<31/32. These transcendental steps are part of the written proof,
not additional declarations asserted by this Lean module.

## Source and paper correspondence

This declaration is a local algebraic consequence of the explicitly displayed
identity, not a direct formalization of OpenAI's zero-free theorem, Anthropic's
rank--trace theorem, or a new general Schur theorem. Its precise mathematical
consumer is the local signed endpoint kernel estimate and hence the restricted
prime-power inequality WSEP-v1-4, not universal Weil positivity.

OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*,
30 September 2026, Theorem 1.1, is the separately identified external input to
that later arithmetic application. Inspected upstream revision:
4eaee87548250b2682affda7d05d947c05554bae; TeX blob
268c4e3206d460c617d3d2129742a72b831b3def. Its existing local adaptation remains
SOURCE_IMPORTED_UNBUILT, and this algebra module does not import it.
Prior-art comparison date: 2026-11-12. Originality UNASSESSED.

## Pins, evidence and unresolved return

Initial canonical inspection: af9b7a05afbf79d4def070fa96f9091b2f177160.
Refreshed publication base: 6f7d2e3b6d15f0d2c49aaba984af27c48786943c.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.

Status: SOURCE_PROOF_CANDIDATE. Written nonnegative-term proof supplied.
Elaboration, dependency build, fresh kernel replay, transitive axiom audit,
independent analytical review and repository-wide validation: NOT_RUN.
No numerical certificate or executed Lean result is claimed. The source has
no sorry, admit or new research axiom; this observation is not a transitive
audit. No root import or pin change is required for candidate publication.

Remaining formal bridges: the full complex-kernel estimate, smooth-core to
bounded-variation source extension, the complete signed explicit formula and
the external strip supplier at the local environment. Even their completion
would leave the endpoint mixed and all-test arithmetic sign obligations open.
