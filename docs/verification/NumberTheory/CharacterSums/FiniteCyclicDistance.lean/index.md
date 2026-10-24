# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicDistance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7afc88eac8ba7c8f23acee83df6811dc4d61659",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7afc88eac8ba7c8f23acee83df6811dc4d61659`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicDistance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCyclicCircularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecycliccirculardistance--101886f388876b9c17fb1677.md) | 24 | `declaration-track:101886f388876b9c17fb16779d71811a97b8299aa57f7ae6ec67544296579bc4` |
| 2 | `theorem` | [finiteCyclicCircularDistance_eq_zero_iff](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecycliccirculardistance-eq-zero-iff--469869695a1df68a2330316c.md) | 30 | `result-track:469869695a1df68a2330316cad9985d29898a05167025c4e7ebec9c796a206df` |
| 3 | `theorem` | [finiteCyclicCircularDistance_neg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecycliccirculardistance-neg--2dc1944bfc2e9b6fc7ba3389.md) | 49 | `result-track:2dc1944bfc2e9b6fc7ba338999dcc6dfb9aaa476918c26f7333189e8e28247a4` |
| 4 | `theorem` | [finiteCyclicCircularDistance_two_mul_le](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecycliccirculardistance-two-mul-le--89df2f1a33883c4edb5d2f1a.md) | 57 | `result-track:89df2f1a33883c4edb5d2f1aa33ce76e5dca74163d8a7100120cba5de69d2009` |
| 5 | `def` | [finiteCyclicMultiplier](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier--138825955cae99d099675605.md) | 76 | `declaration-track:138825955cae99d0996756056c10d1b46feef3933991210fc5ff2596959df75c` |
| 6 | `theorem` | [finiteCyclicMultiplier_eq_zero_iff](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-eq-zero-iff--16fbad784c5b2745d1414a81.md) | 82 | `result-track:16fbad784c5b2745d1414a81e0fe9ae52aae01032023962bfa19c4e64910da1d` |
| 7 | `theorem` | [finiteCyclicMultiplier_ne_zero](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-ne-zero--916800e8b8a61356a24f0ab8.md) | 96 | `result-track:916800e8b8a61356a24f0ab883f5ab53630e91f704c4a5b90f018ad81708ffc3` |
| 8 | `theorem` | [finiteCyclic_stdAddChar_sub_one_norm_neg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclic-stdaddchar-sub-one-norm-neg--8b1e6fe8c3e6a32e8d8ef307.md) | 103 | `result-track:8b1e6fe8c3e6a32e8d8ef3071b8ed8d202725267a1b01e9dcf9958d87fbd7cfd` |
| 9 | `theorem` | [finiteCyclic_stdAddChar_sub_one_norm_eq_valSine](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclic-stdaddchar-sub-one-norm-eq-valsine--c58ca4932f1990cf6e5d057c.md) | 123 | `result-track:c58ca4932f1990cf6e5d057c54b7146bff0ef07eb3abdefbc915454c71f597c1` |
| 10 | `theorem` | [finiteCyclicMultiplier_norm_eq_sineDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-norm-eq-sinedistance--2414f1596ca3eff0df979396.md) | 146 | `result-track:2414f1596ca3eff0df979396518180d6d9e44b750731d5f12251ab4849d4bdf8` |
| 11 | `def` | [finiteCyclicJordanLowerScale](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicjordanlowerscale--74d1968915852cb19be85d1a.md) | 163 | `declaration-track:74d1968915852cb19be85d1a7b6bec46871bd0add4340b7a880dff6460101020` |
| 12 | `theorem` | [finiteCyclicMultiplier_norm_lowerBound](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-norm-lowerbound--7b72209ccf79f036019c7af1.md) | 170 | `result-track:7b72209ccf79f036019c7af12aaed15b94784cba68c5476484d4040b55e9a542` |
| 13 | `theorem` | [finiteCyclicMultiplier_inv_norm_le_distance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-inv-norm-le-distance--2aca6b71cceef2884cd022e2.md) | 222 | `result-track:2aca6b71cceef2884cd022e28c59072adad9b95dc522aaa0b625b6b516f448ea` |
| 14 | `theorem` | [finiteCyclicMultiplier_inv_norm_le_cutoff](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/declarations/finitecyclicmultiplier-inv-norm-le-cutoff--25cf35f289f1a492bb01a2b8.md) | 255 | `result-track:25cf35f289f1a492bb01a2b8d50c17e67e4ca1870451edf93fe5425637ef6b95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
