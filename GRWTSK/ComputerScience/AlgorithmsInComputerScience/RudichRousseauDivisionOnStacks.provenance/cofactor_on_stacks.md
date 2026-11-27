# `GRWTSK.IntegerFactorization.Division.cofactor_on_stacks`

Local attribution: grwtsk contributors.

[Local declaration](../RudichRousseauDivisionOnStacks.lean). For a proper divisor greater than one the observable quotient and remainder pair has form (q,0), with dq = n and 1 < q < n. The concrete finite machine and its polynomial transition bound are identical for every width and operand pair. This closes the quotient primitive on the declared heap encoding. Connecting a minFac output and serializing a complete sequence of prime/exponent rows requires machine-level assembly.

The upstream source is Isaac Rudich and Louis-Martin Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, repository revision `c91cc3f4947caca8977e81a5d14244f73b5ae2b1`. The authors designed and audited the challenge statement and credit Claude (Anthropic) with the proof ideas and Lean code. The provider code is Apache-2.0.

- [FactoringAux/Copied/PlibMul.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Copied/PlibMul.lean) — `run_divmodSeg`, Git blob `c63fd6ea0522297c3abc421565c01872c67470dc`.
- [FactoringAux/Simulate/Correct.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Simulate/Correct.lean) — `sim_ok`, Git blob `23e51e0c8cb93c05e14f95190dc21747a1aa5e0d`.
- [FactoringAux/SProg/Machine.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/SProg/Machine.lean) — `outputsInTime`, Git blob `37b16cfa6374e816e31de761a2d98acc9381e35d`.

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source correspondence was inspected. The local source at Git blob `d7902e4b269051829e8500d3b34c857df391c2b5` (SHA-256 `fa4edfc5d38ee29b82f879f6cbf48d81c6537c705ebcbdfb705acaace4e73cdd`) elaborated without diagnostics. Its compiled object has SHA-256 `1ce13173f7223d699e4ac126eb54af9a15a66a4b3e2451fe4521ca43bde7efa0`. The six named result roots had only `propext`, `Classical.choice`, and `Quot.sound` in their transitive axiom lists. All eight wire checks passed, including a truncated block, read order, complete input-heap round trip, zero initial outputs and the input length bound. Independent mathematical review, fresh kernel replay and Comparator are **NOT_RUN**.
