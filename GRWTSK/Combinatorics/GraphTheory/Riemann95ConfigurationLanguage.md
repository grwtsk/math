# Configuration language of the 95-state Riemann machine

Local source attribution is grwtsk contributors.

## Source correspondence

[Riemann95ConfigurationLanguage.lean](Riemann95ConfigurationLanguage.lean) is in
`GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ConfigurationLanguage`.
It imports Google DeepMind's Cryptids revision
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC (2026),
Apache-2.0. The module uses the native `Cfg`, `step`, `init`, `machine`,
and `nSteps` declarations. The machine reads the published 190-cell table,
whose Git blob is `d6f841a883bcf826d1fbdbd1c66497e072231c55` and whose
SHA-256 is `7e9731ed1b7c63d4e67c0f8d646f8498d9645f26e237a8604d4b7f91a6ab398d`.
[Upstream license](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/LICENSE) ·
[Machine configuration and step](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean#L157-L176) ·
[95-state definition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean) ·
[Table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt)

The local theorem `exists_accepts_iff_shunia` composes the graph-to-evaluation
equivalence with `ConjectureMachines.Riemann95.halts_candidate_iff_counterexample`.
The upstream theorem uses the blank initializer in control 0 and the original
arithmetic argument `M + 2`. The local word quantifier ranges over the symbol
reads of the same computation, with a terminal configuration after the final
read. The upstream proof is an imported theorem and the language equivalence
is a local consequence. The upstream `Cryptids/Riemann95.lean` blob is
`3fd86d0b954485707b620846f36ccd98d5ba970f`.
[Upstream halting theorem](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L18-L23)

## Reconstruction and tests

For every pair of native configurations and every read word,
`wordPath_iff_follow` equates a source graph path to the native step executor
that checks each scanned symbol. The proof removes the initial transition and
applies induction to the suffix. `native_steps_iff_exists_word` equates a
successful native (n)-step run to the existence of a word path of length (n).
`read_path_iff_exists_instructions` recovers the writes and moves from the
same table cells. `prime_path_iff` and `prime_instruction_path_iff` carry
both directions of these paths to the ordered ordinary-prime relabeling.
The input and output retain the tape, including both half tapes.
`prime_accepts_iff` also transports the blank start and the native terminal
test. The HS-95 graph and certificate gate are the intended consumers.
[Existing labeled-path interface](../../DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean) ·
[Ordered prime enumeration](../../NumberTheory/SpecificationAndPrimeEnumeration.lean)

The graph sandwich uses certificates restricted to literal source edges
as its lower relation, the literal edges as its middle relation, and the
control-table test as its upper relation. Certifying every outgoing source
edge at a reachable configuration suffices for lower and middle prefix
language equality. Both the control graph and the one-state full shift
admit the word `[0,1]`, which fails on the blank-start native tape. Two
configurations with control 0 and scanned symbol 0 can also have different
scanned symbols after the first move because their left neighbors differ.

A full 95-step return is a closed word of length 95 on the native
configuration graph. The append lemma repeats genuine closed paths at
the same basepoint. At control 1 on the indicated local blank tape,
95 consecutive zero reads return to control 1 and leave 95 written ones
on the left half tape. This tests control-loop soundness without a claim
that this starting configuration is on the global blank-start orbit.

## Remaining premises

```text
Native step and blank initialization -> exact full-configuration language
                                    -> prime-addressed language and terminal test
Reachable-edge certificate coverage -> certified prefix language equality
HS runtime state codec + one-step agreement -> runtime language equality
Full-state equality after the word -> source periodic return
```

The native configurations use a head-relative tape. A claim about an
augmented runtime state must state how it treats an absolute head coordinate,
timing, and certificate data. A finite presentation of the whole native
language requires its own proof. The control-only example refutes the stated
table projection.

## Isolated build

Use the Cryptids adaptation pins Lean 4.35.0-rc4, Cryptids
`3647718b5df22e1a61462dec0376bd204526285a`, and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`. Register this module and the
existing `ExactSoficLanguageCover`, `DynamicPartitionRecovery`, and
`FactorizationFiber` modules as roots using relative per-file links from
an isolated package. `SpecificationAndPrimeEnumeration` is already a root
of the base package. Check with
`lake build +GRWTSK.Combinatorics.GraphTheory.Riemann95ConfigurationLanguage`.
The local verification package used these roots while the shared Cryptids
package manifest had a concurrent handoff edit.
[Base isolated package](../../../docs/adaptations/environments/cryptids/lakefile.toml)

## Verification

The isolated target built successfully on the stated pins. Kernel replay
with `leanchecker GRWTSK.Combinatorics.GraphTheory.Riemann95ConfigurationLanguage`
passed from the compiled imports. Transitive axiom inspection of 48 authored
public declarations found only `propext`, `Classical.choice`, and `Quot.sound`.
A fresh replay of the entire import closure and independent review were
`NOT_RUN`.

The checked Lean source SHA-256 is
`476b97e4a92ebab2290bca897110c4b7d3122d51ec226286f62198f0ea8e69b9`.
