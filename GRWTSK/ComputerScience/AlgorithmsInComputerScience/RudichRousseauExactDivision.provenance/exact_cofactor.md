# `GRWTSK.IntegerFactorization.Division.exact_cofactor`

Local attribution: grwtsk contributors.

[Local declaration](../RudichRousseauExactDivision.lean). A proper divisor d of n with 1 < d < n yields exactly q = n/d and the zero remainder bank. If q were at most one, n = dq would be at most d. Division by a number greater than one makes q strictly smaller than n. This is the arithmetic and cost interface for a cofactor caller. For an inexact split, the positive remainder must be retained.

The upstream source is Isaac Rudich and Louis-Martin Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, repository revision `c91cc3f4947caca8977e81a5d14244f73b5ae2b1`. The authors designed and audited the challenge statement and credit Claude (Anthropic) with the proof ideas and Lean code. The provider code is Apache-2.0.

- [FactoringAux/Copied/PlibCore.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Copied/PlibCore.lean) — `comp_ok`, Git blob `8f06ba66b5f0fd79317078b6dca2e7e8a8fefdd0`.
- [FactoringAux/Copied/PlibMul.lean](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Copied/PlibMul.lean) — `run_divmodSeg`, Git blob `c63fd6ea0522297c3abc421565c01872c67470dc`.

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source correspondence was inspected. Lean 4.35.0 elaborated the isolated local source without diagnostics at Git blob `f6afe34b635fbabcc41e39e0ef8c544aed42a517` (SHA-256 `585ec9b6fcf0370c23d551f7a0cfe102cb746bda121c272cf72db425235450c3`). The local compiled object has SHA-256 `05c9be2bef97b27d0b4cceab6c61c8905ab2ddaa64c8b900aed682de6b4f5c08`. A transitive axiom check over six named results found only `propext`, `Classical.choice`, and `Quot.sound`. All thirteen execution guards passed. Eight exercised the source program’s quotient, remainder and cleared scratch bank, two exercised the input layout, and three executed the compiled register program and checked both output banks, erased scratch, and the declared step bound. The three compiled cases were 1/1, 3/2, and 6/2. Independent mathematical review, fresh kernel replay and Comparator are **NOT_RUN**.
