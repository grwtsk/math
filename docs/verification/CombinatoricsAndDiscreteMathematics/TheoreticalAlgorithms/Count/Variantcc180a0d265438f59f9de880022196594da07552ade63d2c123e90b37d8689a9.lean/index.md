# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24121a3f8658ee3ee23d9044263efd9f57d97918",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24121a3f8658ee3ee23d9044263efd9f57d97918`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_singleton'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/count-singleton--e6959c689298caa192600ef9.md) | 36 | `result-track:e6959c689298caa192600ef95a20cb0dc84d14b521c0f32ce7ca0f2d8ab606b8` |
| 2 | `theorem` | [count_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/count-concat--1da1fea798c6e65ebbeda359.md) | 39 | `result-track:1da1fea798c6e65ebbeda359adeb03c11d55af7884b2d05c140f72aeded77545` |
| 3 | `def` | [idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/idxtosigmacount--3be0c0fcb00314734b3ef62d.md) | 57 | `declaration-track:3be0c0fcb00314734b3ef62df08bccc5463324c678655f8a20bf8b6ef11c9324` |
| 4 | `theorem` | [fst_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/fst-idxtosigmacount--73d756182904460633b2c334.md) | 61 | `result-track:73d756182904460633b2c3341fc3de0dec59516fe1922f2d9b5dba7fa399d0c9` |
| 5 | `theorem` | [snd_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/snd-idxtosigmacount--ac52e24c8b2a49a7164ae7fc.md) | 65 | `result-track:ac52e24c8b2a49a7164ae7fc971b200b1adad8a617c4bfb5d0b046c126c33056` |
| 6 | `theorem` | [coe_snd_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/coe-snd-idxtosigmacount--2aef3e669f2813514d384e1b.md) | 69 | `result-track:2aef3e669f2813514d384e1b5da7a8eb0fe11e4a1ea51d82fd234acbcb43b48c` |
| 7 | `def` | [sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/sigmacounttoidx--112724ff0eaba6d5ccdaf1e8.md) | 79 | `declaration-track:112724ff0eaba6d5ccdaf1e85e1cb36619bb242101288f79cd72d3e18d5367d4` |
| 8 | `theorem` | [coe_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/coe-sigmacounttoidx--26f2b5921978dd406943decc.md) | 83 | `result-track:26f2b5921978dd406943deccec098a055ebb9461539a0eb22c0688332bbcc2de` |
| 9 | `theorem` | [sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/sigmacounttoidx-idxtosigmacount--ae63905fa8c9c136f21782b6.md) | 87 | `result-track:ae63905fa8c9c136f21782b60b64a14ddb13dc7999ea6d5917bba3ff58643708` |
| 10 | `theorem` | [leftInverse_sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/leftinverse-sigmacounttoidx-idxtosigmacount--bc52251af052aa4bd17e69c2.md) | 90 | `result-track:bc52251af052aa4bd17e69c2310ec6a7b69b1bbb74301aa2bc0367931de92751` |
| 11 | `theorem` | [rightInverse_idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/rightinverse-idxtosigmacount-sigmacounttoidx--e30867f91f5eed9bdfca3bd4.md) | 93 | `result-track:e30867f91f5eed9bdfca3bd456bbf8acd82c99640304f3c59d84b46c241a1204` |
| 12 | `theorem` | [injective_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/injective-idxtosigmacount--00b65c582e5de9ca21c0c2f9.md) | 96 | `result-track:00b65c582e5de9ca21c0c2f9cb8f1ce3d6ddf7e8353091f872489b7370683e28` |
| 13 | `theorem` | [surjective_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/surjective-sigmacounttoidx--cc55216f57ebfa3d5c79d537.md) | 99 | `result-track:cc55216f57ebfa3d5c79d53730467a394895e40af074d73275cc7af6f3978045` |
| 14 | `theorem` | [idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/idxtosigmacount-sigmacounttoidx--2b322f836bf8c92a5342b036.md) | 103 | `result-track:2b322f836bf8c92a5342b03678731d63819379290815c0d6746e42b851dd5347` |
| 15 | `theorem` | [leftInverse_idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/leftinverse-idxtosigmacount-sigmacounttoidx--d81de672977df05a38ab3072.md) | 107 | `result-track:d81de672977df05a38ab30723a4789cbb3d226cd7d8375b3c2fe2ceaa1e0aec6` |
| 16 | `theorem` | [rightInverse_sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/rightinverse-sigmacounttoidx-idxtosigmacount--53c8492bd3804a388cae9c65.md) | 110 | `result-track:53c8492bd3804a388cae9c6528f84ed35b5f7f95e9a731a4f0f83e788cbfbcae` |
| 17 | `theorem` | [injective_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/injective-sigmacounttoidx--0474ff6e8a0d2d1e55a936c2.md) | 113 | `result-track:0474ff6e8a0d2d1e55a936c2ef88cfd67b49f80bf2ef17147d612233402dfd1f` |
| 18 | `theorem` | [surjective_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantcc180a0d265438f59f9de880022196594da07552ade63d2c123e90b37d8689a9.lean/declarations/surjective-idxtosigmacount--4d8fdfa77c9ee8735da3f1fb.md) | 116 | `result-track:4d8fdfa77c9ee8735da3f1fb17fe334cbdd2d61f718f0b810992948f8fd4d874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
