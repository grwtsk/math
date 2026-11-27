# `GRWTSK.IntegerFactorization.Division.inputWire_bound`

Local attribution: grwtsk contributors.

[Local declaration](../RudichRousseauDivisionOnStacks.lean). The finite heap uses 19 header and scalar cells, followed by five lanes per bit. The width is the only initial cell value that can exceed one. Reading the unary lengths of these cells and counting every separator bounds the transfer length by (19+5w)(w+2). Both numerical operands occur as individual binary digits, so this bound depends on width.

The upstream source is Isaac Rudich and Louis-Martin Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, repository revision `c91cc3f4947caca8977e81a5d14244f73b5ae2b1`. The authors designed and audited the challenge statement and credit Claude (Anthropic) with the proof ideas and Lean code. The provider code is Apache-2.0.

- [FactoringAux/Simulate/Ops.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Simulate/Ops.lean) — `enc_length_le`, Git blob `2a50d0f3210e48eab3cd995fa7ae3d281a6dd197`.

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source correspondence was inspected. The local source at Git blob `d7902e4b269051829e8500d3b34c857df391c2b5` (SHA-256 `fa4edfc5d38ee29b82f879f6cbf48d81c6537c705ebcbdfb705acaace4e73cdd`) elaborated without diagnostics. Its compiled object has SHA-256 `1ce13173f7223d699e4ac126eb54af9a15a66a4b3e2451fe4521ca43bde7efa0`. The six named result roots had only `propext`, `Classical.choice`, and `Quot.sound` in their transitive axiom lists. All eight wire checks passed, including a truncated block, read order, complete input-heap round trip, zero initial outputs and the input length bound. Independent mathematical review, fresh kernel replay and Comparator are **NOT_RUN**.
