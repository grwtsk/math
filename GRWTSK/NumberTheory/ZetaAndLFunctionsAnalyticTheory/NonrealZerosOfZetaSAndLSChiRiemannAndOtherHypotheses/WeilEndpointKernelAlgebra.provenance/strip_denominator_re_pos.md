# strip_denominator_re_pos — individual source provenance

Local attribution: grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6828793541.

## Declaration and exact statement

Source: [WeilEndpointKernelAlgebra.lean](../WeilEndpointKernelAlgebra.lean).
Declaration:
`GRWTSK.NumberTheory.WeilEndpointKernelAlgebra.strip_denominator_re_pos`.
For real d and tau, if d^2<=9/64, then tau^2+1/4-d^2>0.
All variables and the numerical strip bound are explicit. No zero of any
L-function is asserted by this declaration.

## Complete argument and consumer

Since tau^2>=0 and 1/4-9/64=7/64>0, the expression is at least 7/64.
This is the real part A of s(1-s), for s=1/2+d+i tau. Its positivity justifies
the denominator and the amplitude divisions in WSEP-v1-1, equations (4)-(10),
of [WeilStripEndpointPositivity.md](../WeilStripEndpointPositivity.md).
It is not a positivity theorem for a Weil form or its infinite complement.

## Source and paper correspondence

This is local elementary real algebra, not imported Lean and not a direct
formalization of a theorem of OpenAI or Anthropic. Its owning written result
is WSEP-v1-1 in the adjacent note. OpenAI, *The Quasi-Riemann Hypothesis:
A Zero-Free Half-Plane Re(s)>7/8*, 30 September 2026, Theorem 1.1, is an
external input to the later ARITHMETIC application, not to this declaration.
The inspected paper source is openai/math at
4eaee87548250b2682affda7d05d947c05554bae,
preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/build/paper.tex,
blob 268c4e3206d460c617d3d2129742a72b831b3def.
The existing canonical adaptation remains SOURCE_IMPORTED_UNBUILT; this module
does not import or re-export it. No novel algebraic mechanism is claimed.

## Pins and evidence

Initial canonical inspection: af9b7a05afbf79d4def070fa96f9091b2f177160.
Refreshed publication base: 6f7d2e3b6d15f0d2c49aaba984af27c48786943c.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.

Status: SOURCE_PROOF_CANDIDATE. Written argument supplied. Elaboration,
dependency build, fresh kernel replay, transitive axiom audit, independent
analytical review and repository-wide validation: NOT_RUN. No numerical
certificate is claimed; originality UNASSESSED. The source uses no sorry,
admit or new research axiom. This source observation is not an axiom audit.

Remaining formal consumer: complex denominator identification, the hyperbolic
and trigonometric bounds, the literal full Weil pairing and its form-domain
extension. None is hidden as a newly fulfilled hypothesis of this theorem.
