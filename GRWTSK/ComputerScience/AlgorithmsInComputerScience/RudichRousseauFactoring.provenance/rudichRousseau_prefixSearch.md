# `GRWTSK.IntegerFactorization.Counting.rudichRousseau_prefixSearch`

Local attribution: grwtsk contributors.

Direct specialization to the shared cardinality of the filtered divisor set. Both parameters count the remaining low bits and the fixed most-significant prefix. The original width bound and positive-input premise survive unchanged. A consumer can replace the count with any extensionally equal supplier. Fresh replay of the proof of prefix extraction is outstanding.

The source is Rudich and Rousseau, *Deterministic Factoring in Time N^o(1)*, Hexagon 2610.00600v1, and `Factoring.Aux.search_eq_minFac` at Git blob `fb0c8fb777056fe92604cd9eb956c13a329c3336`. The authors specified and audited the statement. They credit Claude Opus 5.5 with the proof ideas and Lean code. The provider code is Apache-2.0. [Exact upstream source](https://github.com/IsaacRudich/SubexponentialDeterministicFactoring/blob/c91cc3f4947caca8977e81a5d14244f73b5ae2b1/FactoringAux/Search.lean) · [Local declaration](../RudichRousseauFactoring.lean) · [Evidence and analytic comparison](../IntegerFactoringCounting.md)

The isolated package uses Lean 4.35.0 and Mathlib `56a005855ea17e0b0958f73ec801ae140b0a1679`. Source identity and correspondence were inspected. Local elaboration, build, fresh kernel replay, transitive axiom audit and Comparator are **NOT_RUN**. Independent mathematical review is outstanding.
