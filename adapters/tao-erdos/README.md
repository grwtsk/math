# Tao Erdős problem adapters

Local attribution: grwtsk contributors.

This isolated Lake package consumes the four Erdős problem modules explicitly
listed in Terence Tao's `analysis` README, pinned at `a19a5bfadc616467562995b75f46035232841943`.
Tao's `erdosproblems` repository is a community database, not a Lean proof
library. Its pinned metadata assists discovery and does not certify solutions.
Public upstream authorship and Apache-2.0 obligations remain in the original
sources and `UPSTREAM-LICENSE`; local consumers are by grwtsk contributors.

| Problem | Consumer and exact boundary |
| --- | --- |
| 379 | Explicit prime/totient family for the binomial prime-power height, plus its ENat limsup=top; not a limit. Upstream credits conversations between Stijn Cambie, Vjeko Kovač and Terence Tao. |
| 613 | Concrete Pikhurko n=5 graph: 16 vertices, 44 edges, and every two-coloring has a color-0 five-star or color-1 triangle. The adapter combines the separately proved vertex count with the Ramsey witness. |
| 707 | Perfect-difference-set cardinality and an obstruction with prime p, N=p²+p+1, perfect differences, and an injective residue-compatible embedding of 1,2,4,8 all explicit. Upstream follows the prime case of Alexeev/ChatGPT/Lean/Mixon Theorem 8; not the general prime-power case. |
| 987 | Iterated exponent/prefix limsup for every fixed tail of an arbitrary circle sequence. Prefixes are zero-indexed, finite sums; no exchange of the two limsups. |

Full declaration names, source blobs, database pin and MSC2020 subjects are in
[catalogue.json](catalogue.json). Source placement follows official headings in
`documentation/taxonomy/msc2020/source-layout-v1.json`; namespace roles remain
separate from provider paths. The canonical paper register records exact scope
and unresolved fidelity and verification obligations.

The toolchain is `leanprover/lean4:v4.29.0-rc8`, with Mathlib
`698d2b68b870f1712040ab0c233d34372d4b56df`. This package stays outside root imports and the root default
build. Do not substitute the root toolchain. `lake build` from this directory is
a requested check, not a successful receipt. Compilation, fresh kernel replay,
transitive axiom audit and statement fidelity are **NOT_RUN**. The rest of the
Analysis textbook contains intentional exercise `sorry`s and is not covered by
these adapters. The four target files have no lexical `sorry`; that is not a
transitive proof audit. Upstream's warning suppression is not local acceptance.
