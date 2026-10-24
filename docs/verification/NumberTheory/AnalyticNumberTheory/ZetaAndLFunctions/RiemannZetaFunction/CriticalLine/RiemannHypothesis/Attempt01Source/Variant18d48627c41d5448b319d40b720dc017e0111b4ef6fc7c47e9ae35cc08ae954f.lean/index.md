# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01Source.Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68e638db9249137a8c512d59036f074c4062b8a7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68e638db9249137a8c512d59036f074c4062b8a7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCenteredHalfZetaReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredHalfUpperDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actualcenteredhalfupperdefect--be92c6e001b87de261b6007f.md) | 21 | `declaration-track:be92c6e001b87de261b6007f40352d4f8d50ca156f893c893cf5e8678b8f2090` |
| 2 | `def` | [actualCriticalColumnTraceMain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actualcriticalcolumntracemain--a0ad2da0e2f206a9ee04d517.md) | 25 | `declaration-track:a0ad2da0e2f206a9ee04d5174bb6736e10b792323ce61126654d7adf057a231a` |
| 3 | `theorem` | [exp_lower_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/exp-lower-cutoff--f69f219725ccae170bc68406.md) | 29 | `result-track:f69f219725ccae170bc68406ddcf75acc1164d31c231d7fac3222d3f9fffe1c2` |
| 4 | `theorem` | [actual_half_upper_quotient_exp_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actual-half-upper-quotient-exp-lower--a49799dbc4c5b7e79b8c45df.md) | 41 | `result-track:a49799dbc4c5b7e79b8c45dfa2db14e31608844595dbe72bc284bb7129747a13` |
| 5 | `theorem` | [sqrt_upper_gap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/sqrt-upper-gap--7a126550d27f8a0fe31b2b04.md) | 66 | `result-track:7a126550d27f8a0fe31b2b042e215a85ca34f9a3dc26720c5a43609568fb6796` |
| 6 | `theorem` | [sqrt_cutoff_le_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/sqrt-cutoff-le-scale--75569f4e8d976047b6b51f5c.md) | 86 | `result-track:75569f4e8d976047b6b51f5c9d2c25ce4c687f897bac6583a82b5c6e18bd8084` |
| 7 | `theorem` | [inv_sqrt_upper_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/inv-sqrt-upper-le--f7dade4d1cfba17ffa70ac7d.md) | 94 | `result-track:f7dade4d1cfba17ffa70ac7da5d15c133fb37a276d7c2d68ea715d55986dd1e6` |
| 8 | `theorem` | [actualCenteredHalfUpperDefect_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actualcenteredhalfupperdefect-abs-le--2944b7cce0ab9d3c370824bc.md) | 108 | `result-track:2944b7cce0ab9d3c370824bca9d4569922ab405315fedf542c074ab8eacdeb8e` |
| 9 | `theorem` | [actualCenteredHalfUpperDefect_tendsto_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actualcenteredhalfupperdefect-tendsto-zero--2a1da7e8aefeb93a6b3349cd.md) | 128 | `result-track:2a1da7e8aefeb93a6b3349cdc58b0aa0b62d214694733ec8e04db15ea211e0fd` |
| 10 | `theorem` | [actualAdjointColumnPrimitive_sub_criticalMain_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant18d48627c41d5448b319d40b720dc017e0111b4ef6fc7c47e9ae35cc08ae954f.lean/declarations/actualadjointcolumnprimitive-sub-criticalmain-eq--e4ff586d85a0b0acc3e297ff.md) | 139 | `result-track:e4ff586d85a0b0acc3e297ff4d873d4b5250e76baaf6224f355347b12fcfe5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
