# `GRWTSK.IntegerFactorization.Division.stackCost_poly`

Local attribution: grwtsk contributors.

[Local declaration](../RudichRousseauDivisionOnStacks.lean). Write S for the quadratic source bound, R = 26(w+1+S)S for the register bound and M = w+1+R. The simulator uses at most Λ = lits(program)+M+1+19+5w cells and at most A = 200(Λ(M+1)+Λ+M+1)+200 transitions per register step. The two transfers and halt give at most 2(19+5w)(w+2)+1 + RA + 2Λ(M+1)+2 transitions. This expression is a polynomial of degree at most 12 in w. In Lean the conclusion is the existence of constants c and d bounding the transition allowance by c(w+1)^d, using the provider’s closure lemmas. The actual machine is fixed, making its literal bound constant.

The upstream source is Isaac Rudich and Louis-Martin Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, repository revision `c91cc3f4947caca8977e81a5d14244f73b5ae2b1`. The authors designed and audited the challenge statement and credit Claude (Anthropic) with the proof ideas and Lean code. The provider code is Apache-2.0.

- [FactoringAux/Copied/MachineLemmas.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Copied/MachineLemmas.lean) — `Poly.const`, `Poly.id`, `Poly.add`, `Poly.mul`, Git blob `ae97f4af9f183d7a78d47155acecd035920d1502`.

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source correspondence was inspected. The local source at Git blob `d7902e4b269051829e8500d3b34c857df391c2b5` (SHA-256 `fa4edfc5d38ee29b82f879f6cbf48d81c6537c705ebcbdfb705acaace4e73cdd`) elaborated without diagnostics. Its compiled object has SHA-256 `1ce13173f7223d699e4ac126eb54af9a15a66a4b3e2451fe4521ca43bde7efa0`. The six named result roots had only `propext`, `Classical.choice`, and `Quot.sound` in their transitive axiom lists. All eight wire checks passed, including a truncated block, read order, complete input-heap round trip, zero initial outputs and the input length bound. Independent mathematical review, fresh kernel replay and Comparator are **NOT_RUN**.
