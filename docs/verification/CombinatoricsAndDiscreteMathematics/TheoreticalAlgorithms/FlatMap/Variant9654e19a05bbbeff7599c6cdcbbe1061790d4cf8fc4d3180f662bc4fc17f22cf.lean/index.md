# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlatMap.Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "689a6bf3049d1fd93b2529686d1726cfd4833e26",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `689a6bf3049d1fd93b2529686d1726cfd4833e26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FilterMap` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-step-flattenafter--a582e335ff8cf0c790df0679.md) | 21 | `result-track:a582e335ff8cf0c790df0679d52c71b0cbf6f9e1910ec2c69326de6226a1adc6` |
| 2 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outeryield-flatmapm--bbf93c8449b20afba78b46a2.md) | 43 | `result-track:bbf93c8449b20afba78b46a2c96f2f0d7357b7c6175d177644ee34cc0ba150d0` |
| 3 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outerskip-flatmapm--e828d4549f7026a45f4baa8d.md) | 50 | `result-track:e828d4549f7026a45f4baa8d164065c806bd80e0c9b846d784e14b44f25e793f` |
| 4 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outerdone-flatmapm--fe38b6385644eec629448f60.md) | 57 | `result-track:fe38b6385644eec629448f60f49fa7dceb62c343c25bdabcbe29c371a74043ea` |
| 5 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-inneryield-flatmapm--9ce4e5cb2347f29b51d38147.md) | 64 | `result-track:9ce4e5cb2347f29b51d381473e4eefc466d9cc3be59b2078a9771448b8ce0271` |
| 6 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-innerskip-flatmapm--1abb40cb7f4ba3a134a12f68.md) | 71 | `result-track:1abb40cb7f4ba3a134a12f68386ec6c3355728a094584e763dac1951d72ca3c4` |
| 7 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-innerdone-flatmapm--1449354c5bd06bf3841c801c.md) | 78 | `result-track:1449354c5bd06bf3841c801cd9bedae55f0e843160b7d57210057077b4374da9` |
| 8 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outeryield-flatmap--fd9744e4ce4e7d0345bead83.md) | 85 | `result-track:fd9744e4ce4e7d0345bead83d607111f12b0c089948e6c3e8b758bfcaf86650f` |
| 9 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outerskip-flatmap--dc8ac271c4b6aeb5f71ce23e.md) | 92 | `result-track:dc8ac271c4b6aeb5f71ce23eb5eb490b439022f87e3d5822ff6f50d5bb3d6cd3` |
| 10 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-outerdone-flatmap--21aa89560f1b0304dc2748b0.md) | 99 | `result-track:21aa89560f1b0304dc2748b0679e05feb98053e1b232b388ab75e61152186c97` |
| 11 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-inneryield-flatmap--2f13d6e79cd72d6b026ced08.md) | 106 | `result-track:2f13d6e79cd72d6b026ced0846167f59523a9088c3f3eaab605916ba65e7b53d` |
| 12 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-innerskip-flatmap--96c4f2840e4b85098742ca44.md) | 113 | `result-track:96c4f2840e4b85098742ca44aa399fbb2019b49faa146d31547c6d8c39fa81f0` |
| 13 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/flatten-isplausiblestep-innerdone-flatmap--fad0b623195502559523ae01.md) | 120 | `result-track:fad0b623195502559523ae01de480382854d2bfa472fbb829996993e62edd0ed` |
| 14 | `theorem` | [IterM.step_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-step-flatmapafterm--03eb8ff5bc8b22380d4889c4.md) | 129 | `result-track:03eb8ff5bc8b22380d4889c4421d83314320a4a4b82391a6e22bac9f54e27e9c` |
| 15 | `theorem` | [IterM.step_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-step-flatmapm--4f74463a3708db6eaab11928.md) | 157 | `result-track:4f74463a3708db6eaab119286bc009f77752cab91174e5ca7735871880dbac8a` |
| 16 | `theorem` | [IterM.step_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-step-flatmapafter--2e6891cdcb3a2c1a7ddcbd06.md) | 171 | `result-track:2e6891cdcb3a2c1a7ddcbd065c3243ca1d465a913e8ffb9507dc9aefe7ba1ad4` |
| 17 | `theorem` | [IterM.step_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-step-flatmap--f887c27f737cfafce6b440e1.md) | 194 | `result-track:f887c27f737cfafce6b440e133008e9ba42004c13ff04cc0bd9beece0909bca1` |
| 18 | `theorem` | [IterM.toList_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-tolist-flattenafter--0c86f683b348c4e7231caf2d.md) | 205 | `result-track:0c86f683b348c4e7231caf2d076d4170af28c7bc267bc2cab32ccaf99095b752` |
| 19 | `theorem` | [IterM.toArray_flattenAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-toarray-flattenafter--f2d26f5f2a46397728e2c7e1.md) | 239 | `result-track:f2d26f5f2a46397728e2c7e1ffc0282a1d552c66ca58ac81b75ef4e269cd9100` |
| 20 | `theorem` | [IterM.toList_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-tolist-flatmapafterm--282015717456ce68e988ca22.md) | 261 | `result-track:282015717456ce68e988ca2273c7e303ddc5f914bb07263f5cac264b5aaf8a4a` |
| 21 | `theorem` | [IterM.toArray_flatMapAfterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-toarray-flatmapafterm--99f56234abc2ce92a600db76.md) | 273 | `result-track:99f56234abc2ce92a600db76ddd1ebad1019cd8aef2ede2739909a6a8630a7eb` |
| 22 | `theorem` | [IterM.toList_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-tolist-flatmapm--ece54fe781aaee0e369082cf.md) | 285 | `result-track:ece54fe781aaee0e369082cf92102894e357610bc0370ecce3ccc7c5b3967afe` |
| 23 | `theorem` | [IterM.toArray_flatMapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-toarray-flatmapm--77575505060d803c662d3951.md) | 293 | `result-track:77575505060d803c662d3951b593a4b59af1bfae728689b9bd6a2bcb1c3a10fd` |
| 24 | `theorem` | [IterM.toList_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-tolist-flatmapafter--800a6d40b11c91629675044f.md) | 301 | `result-track:800a6d40b11c91629675044f73d75a36359f2ab38a6b76df3faea4241779f9c6` |
| 25 | `theorem` | [IterM.toArray_flatMapAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-toarray-flatmapafter--0676cf1fd6446fda76d9026c.md) | 313 | `result-track:0676cf1fd6446fda76d9026ce9dde219be3b09b90cd7d76d974f0de4a08f63f4` |
| 26 | `theorem` | [IterM.toList_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-tolist-flatmap--fbf9840483bdf2a7c3fbb67e.md) | 325 | `result-track:fbf9840483bdf2a7c3fbb67ecd639cc38e0db677029957077365bba7522c1ca0` |
| 27 | `theorem` | [IterM.toArray_flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/declarations/iterm-toarray-flatmap--c495d641a076728107d47920.md) | 334 | `result-track:c495d641a076728107d47920c387655373b7c5bc754208ba0f2e0692679aaed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
