# `GRWTSK.IntegerFactorization.Counting.rudichRousseau_composite_split`

Local attribution: grwtsk contributors.

Local consequence of the provider defining its output as Nat.minFac. For composite n at least two, its least factor is prime, divides n, and is strictly less than n by Mathlib’s least-factor primality characterization. Exact natural division recovers n on multiplication. On prime inputs strictness fails. The provider-specific operational cost is supplied by the separate solution theorem.

The source is Rudich and Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, and `Factoring.factor` at Git blob `df133f0b54fcce81ffcc11f03ba6fb45e5416f50`. The authors specified and audited the statement. They credit Claude Opus 5.5 with the proof ideas and Lean code. The provider code is Apache-2.0. [Exact upstream source](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Definitions.lean) · [Local declaration](../RudichRousseauFactoring.lean) · [Evidence and analytic comparison](../IntegerFactoringCounting.md)

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source identity and correspondence were inspected. Local elaboration, build, fresh kernel replay, transitive axiom audit and Comparator are **NOT_RUN**. Independent mathematical review is outstanding.
