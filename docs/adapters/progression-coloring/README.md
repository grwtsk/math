# Quantitative progression coloring

[Adapter index](../README.md) · [Documentation index](../../index.md)

Local attribution: grwtsk contributors.

This opt-in subject package ports the proof sources for Erdős Problem #138 from
OpenAI, *Quantitative Superexponential Bounds for van der Waerden Numbers*
(September 23, 2026), commit `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`.
OpenAI retains upstream authorship and the Apache 2.0 license in [LICENSE](LICENSE).

The 115 imported source modules preserve every definition, theorem hypothesis and proof
body under a reversible enclosing-namespace and module-import renaming. Model
imports `Mathlib.Order.Lattice.Nat` for the natural-number infimum instead of the
aggregate `Mathlib` module. Basic explicitly imports `Mathlib.Tactic.NormNum`
for its existing `norm_num` proof. No new conjecture is introduced by this port.

The positive-interval theorem remains
`GRWTSK.Combinatorics.OpenAIMath.Erdos138.erdos_138`: the kth root of the two-color
van der Waerden number tends to infinity. It asserts no ratio-growth variant.
The interval-equivalence and infimum-equality bridges have explicit proofs in
the [subject bridge module](../../../GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/Erdos138.lean).
Together with the imported modules, this local bridge makes 116 linked Lean
modules in the [package source tree](GRWTSK/). The
[ported progression-coloring theorems](../../../GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/CombinatoricsExtremalCombinatoricsRamseyTheoryProgressionColoringTheorems.lean)
provide the proof source for this edition; the separately maintained
[OAI import surface](../../../GRWTSK/Combinatorics/QuantitativeVanDerWaerden.lean)
belongs to the [original OpenAI adapter](../openai-math/README.md).

Compilation, fresh source-bound kernel replay, exact-statement consumer and
transitive axiom audit are **NOT_RUN** for these bytes. Source correspondence
alone does not establish theorem acceptance. This package is separate from
the root build and the original opt-in OpenAI adapter package.

The [package configuration](lakefile.toml), [dependency manifest](lake-manifest.json),
and [toolchain](lean-toolchain) specify this package’s isolated build inputs.
