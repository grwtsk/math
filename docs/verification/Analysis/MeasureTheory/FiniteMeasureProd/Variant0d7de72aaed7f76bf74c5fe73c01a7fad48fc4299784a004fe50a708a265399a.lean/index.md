# Verification target: GRWTSK.Analysis.MeasureTheory.FiniteMeasureProd.Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c3d00cd89758d13535c2aa16c7305dd2686d5b1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c3d00cd89758d13535c2aa16c7305dd2686d5b1`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod--d487761112a223706753cc73.md) | 42 | `declaration-track:d487761112a223706753cc73a5c28662026d0f845c091a340011a23e496d7819` |
| 2 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/tomeasure-prod--da0faef7a808ef6afb949ef8.md) | 47 | `result-track:da0faef7a808ef6afb949ef8f4314a754fcfadb078ad4affac9edd3f9de5536b` |
| 3 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-apply--0a23d5ee172e2b0e2bff98bb.md) | 49 | `result-track:0a23d5ee172e2b0e2bff98bb045412081460e012d9c87ffdb73db4b622cb9746` |
| 4 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-apply-symm--0e9cca09aab15b7d56a05c96.md) | 53 | `result-track:0e9cca09aab15b7d56a05c96ea07b641c9b8f18ff17189cd92ddd8ef859b3dc7` |
| 5 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-prod--f202bc704aea0e0fa41d5351.md) | 57 | `result-track:f202bc704aea0e0fa41d53510fcb2f2a944058be2339d87f3ca3d7fd4df58f44` |
| 6 | `lemma` | [mass_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/mass-prod--09cec2968d68a4906a7a294d.md) | 59 | `result-track:09cec2968d68a4906a7a294d3acba57eccc8aa91958012f078bda3c8e79a4e5b` |
| 7 | `lemma` | [zero_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/zero-prod--8e1ac647176d2d6842f5c869.md) | 64 | `result-track:8e1ac647176d2d6842f5c869d93362e247e882e7e32fbe60f5a6a373ac3f3384` |
| 8 | `lemma` | [prod_zero](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-zero--29190b8db5607ea02c002c6a.md) | 67 | `result-track:29190b8db5607ea02c002c6a04427018fdcb4cfe1f7768b20544e3f16850b13a` |
| 9 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-fst-prod--f50c9f1aad8248cbb22f337f.md) | 70 | `result-track:f50c9f1aad8248cbb22f337f90f311a96f02156fd18b337b7fabcd9c065af017` |
| 10 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-snd-prod--c5baad3527f913a6810c1340.md) | 71 | `result-track:c5baad3527f913a6810c134060cf1186fa17d09f00b16996ff64255fe8eb466d` |
| 11 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-prod-map--9a6db3a8e3a368b9cea5318a.md) | 73 | `result-track:9a6db3a8e3a368b9cea5318a49ac7fe8db1231c870efcc9b6c9d37a784b19415` |
| 12 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-swap--6d3bf6334e0c739041c45df0.md) | 80 | `result-track:6d3bf6334e0c739041c45df0ed632e6cd511f9e28dc33891f907e076c5f6789c` |
| 13 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod--da1e3ab6feec8f591391a3e0.md) | 95 | `declaration-track:da1e3ab6feec8f591391a3e040bcc97c076ec72883d5ca2bffd064b8801e977f` |
| 14 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/tomeasure-prod--252d985018560086e9403bed.md) | 101 | `result-track:252d985018560086e9403bed3cd0f52a45ec67c77b4b8ea39cffe56273077240` |
| 15 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-apply--2cbd654585c9007d0e94194f.md) | 103 | `result-track:2cbd654585c9007d0e94194f7f07d51a8a8e85100bc0088246d7c6f8aeaa6a4a` |
| 16 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-apply-symm--b99f1abdeb66e9d325f9e1f0.md) | 107 | `result-track:b99f1abdeb66e9d325f9e1f0988e9706cd1b40079817e94ecad985e2ae51239d` |
| 17 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-prod--fd139f8545e4fa3a28c264a9.md) | 111 | `result-track:fd139f8545e4fa3a28c264a941dbae7a94ab8f42203e6e7d383aa5ba024c2cd7` |
| 18 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-fst-prod--b4f8e82bf6590bd0631f060a.md) | 114 | `result-track:b4f8e82bf6590bd0631f060ac36a82aa050602247aa4a041dedc966467daed61` |
| 19 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-snd-prod--ff3e297799ee8aabada57b4c.md) | 120 | `result-track:ff3e297799ee8aabada57b4c5475af202d2b4385d566a98c965b8aebefbfa7aa` |
| 20 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/map-prod-map--302b1f6a21cf4d727a111ba8.md) | 125 | `result-track:302b1f6a21cf4d727a111ba89c60bb620c4bfafb1fb720434409039cd8b87897` |
| 21 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant0d7de72aaed7f76bf74c5fe73c01a7fad48fc4299784a004fe50a708a265399a.lean/declarations/prod-swap--3aca04e45ef262cd1f6016dd.md) | 133 | `result-track:3aca04e45ef262cd1f6016dd85ae162d78154a292160e0c3ef3850eebc8e391b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
