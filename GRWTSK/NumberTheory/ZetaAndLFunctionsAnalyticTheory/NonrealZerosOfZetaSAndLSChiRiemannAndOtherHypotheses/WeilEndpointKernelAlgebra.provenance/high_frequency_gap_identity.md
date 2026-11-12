# high_frequency_gap_identity — individual source provenance

Local attribution: grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6828793541.

## Declaration and exact statement

Source: [WeilEndpointKernelAlgebra.lean](../WeilEndpointKernelAlgebra.lean).
Declaration:
`GRWTSK.NumberTheory.WeilEndpointKernelAlgebra.high_frequency_gap_identity`.
For every real d,tau, put A=tau^2+1/4-d^2 and B=2d*tau. The exact identity is

    1296 A^2-1849 B^2
      =(tau^2-9/16)(1296tau^2-441/16)
       +(9/64-d^2)(9988tau^2+567/2)
       +1296(9/64-d^2)^2.

This equality has no strip or frequency hypotheses; those are needed to infer
the sign of the three summands, in the separate inequality declaration.

## Complete argument and consumer

Set U=tau^2 and Z=9/64-d^2. Expanding the left side gives

    1296 U^2-(12105/16)U+3969/256
       +Z(9988 U+567/2)+1296 Z^2.

The first three terms factor as (U-9/16)(1296U-441/16), proving the identity.
Under d^2<=9/64 and tau^2>=9/16, every term in the displayed factorization is
nonnegative. The direct formal consumer is high_frequency_amplitude_sq_le;
the analytic consumer is WSEP-v1-1, Case II, equation (8), in
[WeilStripEndpointPositivity.md](../WeilStripEndpointPositivity.md).
The Lean body uses ring; its execution has NOT been observed here.

## Source and paper correspondence

This is locally derived polynomial algebra, not an adapted paper theorem or
an imported external Lean body. It records an exact ingredient in the local
written kernel proof. OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free
Half-Plane Re(s)>7/8*, 30 September 2026, Theorem 1.1, is used only in that
proof's subsequent arithmetic application. Inspected upstream revision:
4eaee87548250b2682affda7d05d947c05554bae; paper TeX blob
268c4e3206d460c617d3d2129742a72b831b3def. The existing canonical seven-eighths
adaptation is SOURCE_IMPORTED_UNBUILT and is not a dependency of this module.
There is no paper-to-declaration equivalence claim between that theorem and
this elementary identity. Prior-art comparison: 2026-11-12; novelty UNASSESSED.

## Pins and evidence

Initial canonical inspection: af9b7a05afbf79d4def070fa96f9091b2f177160.
Refreshed publication base: 6f7d2e3b6d15f0d2c49aaba984af27c48786943c.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.

Status: SOURCE_PROOF_CANDIDATE. Written expansion/factorization supplied.
Elaboration, dependency build, fresh kernel replay, transitive axiom audit,
independent analytical review and repository-wide validation: NOT_RUN.
No certified computation or passing tactic result is claimed. No sorry,
admit or new research axiom is introduced in the source.

The full complex kernel estimate, the arithmetic source identity and the
all-test Weil sign are not concluded by this identity. The complete kernel
proof is written in the adjacent note; the all-test sign remains unresolved.
