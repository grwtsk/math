# Verification target: GRWTSK.Analysis.Complex.SymmetricPairRational

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd524f65deb16d3af9c5fe6dab40bfdcb6a4be08",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/SymmetricPairRational.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd524f65deb16d3af9c5fe6dab40bfdcb6a4be08`.

Source path: `GRWTSK/Analysis/Complex/SymmetricPairRational.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/SymmetricPairRational.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairApproximation`](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Rat.Cast.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Gaussian](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/gaussian--7f0d3148ad899c1d14873460.md) | 22 | `declaration-track:7f0d3148ad899c1d148734601e447c44d473d1e7262457cf6695133f096beb51` |
| 2 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/value--1499985811d17aee1de83e70.md) | 28 | `declaration-track:1499985811d17aee1de83e705021764efba7f891ed6da707c8bf3602a0093253` |
| 3 | `def` | [normSq](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/normsq--1bbc87b7e2cb0a25154e202e.md) | 29 | `declaration-track:1bbc87b7e2cb0a25154e202e3ca5f7509d1409b0bc10596c721b48c8314c1053` |
| 4 | `lemma` | [normSq_cast](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/normsq-cast--c18096e0c1136470cc7f6838.md) | 31 | `result-track:c18096e0c1136470cc7f6838212c63bcf73d7156404a08ba36296d29a1df939a` |
| 5 | `structure` | [Data](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/data--15b0b8421be01a6e261bf597.md) | 39 | `declaration-track:15b0b8421be01a6e261bf597d1fb88765432716949390a7c2dcb8a32ce837679` |
| 6 | `def` | [upperBudget](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/upperbudget--00ce7726edb82993b01f2a4a.md) | 50 | `declaration-track:00ce7726edb82993b01f2a4a896477ad9f87d3a3badc3cd1346bdceb7640b521` |
| 7 | `def` | [lowerEnergy](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/lowerenergy--7ea52857b659b3d669e1bd8e.md) | 51 | `declaration-track:7ea52857b659b3d669e1bd8efb5c5e327c72ddfb9436dd415734927c6cd14e8f` |
| 8 | `def` | [Pass](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/pass--fd31c9a5faa74335f26917f2.md) | 53 | `declaration-track:fd31c9a5faa74335f26917f272b28860c3bbcdcf26f11f33a7279b1452472a15` |
| 9 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/check--195aaecd7102959ade5f4971.md) | 58 | `declaration-track:195aaecd7102959ade5f497181e18f887022ff0901989ecd5c1923de34a1b1f5` |
| 10 | `lemma` | [check_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/check-iff--7ec3784935e6fcbe523dca9e.md) | 62 | `result-track:7ec3784935e6fcbe523dca9ea9d89d5b7a88bf0067ce0f01d853c774335b3561` |
| 11 | `def` | [model](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/model--0b950fd7e8e44bc99bfc9b27.md) | 64 | `declaration-track:0b950fd7e8e44bc99bfc9b2722fda5ddfb7bd0c4e2a02c695ac2dfba59ad15bd` |
| 12 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/valid--0a9bed4ab79d9427ac17121e.md) | 68 | `declaration-track:0a9bed4ab79d9427ac17121e531796644fee56df3cf13be3ac7fbeb1d10300ea` |
| 13 | `lemma` | [model_channels](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/model-channels--006b6983ff66975b832736e2.md) | 73 | `result-track:006b6983ff66975b832736e2c1b66a7e52729f46102d27163436313d5ee4fd27` |
| 14 | `lemma` | [displacement_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/displacement-ne-zero--a650fda88b1fe21e96ed9dd7.md) | 81 | `result-track:a650fda88b1fe21e96ed9dd70ae633629905fffdfda7fbcb96c045e55350c98c` |
| 15 | `def` | [enclosure](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/enclosure--400dc9208cbbb34a7053f89f.md) | 90 | `declaration-track:400dc9208cbbb34a7053f89f9f15e308f66b5160121db6ebee2e7ba317eff08a` |
| 16 | `theorem` | [strict_model_margin](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/strict-model-margin--aba96c0dd06034f06e7b1b70.md) | 100 | `result-track:aba96c0dd06034f06e7b1b70605644b81c218b9b7141b335f050b4767c1ff229` |
| 17 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/sound--e4f88b284c812f2b9376e352.md) | 119 | `result-track:e4f88b284c812f2b9376e352ff05a51f0ae3ae8fa01fcf790730ac8d30d0fe90` |
| 18 | `theorem` | [pass_of_larger_radii](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/declarations/pass-of-larger-radii--2785f1eb736136a64816bec1.md) | 126 | `result-track:2785f1eb736136a64816bec1a54229c46b384057e855af0a6cb4f540f95aab14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
