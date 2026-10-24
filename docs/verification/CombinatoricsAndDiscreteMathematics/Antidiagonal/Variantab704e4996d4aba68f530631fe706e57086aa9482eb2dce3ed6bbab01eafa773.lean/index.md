# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fc54006f78ba11608a189592f49ee85c77f725a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fc54006f78ba11608a189592f49ee85c77f725a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Powerset` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal--60182312a712443c046f4909.md) | 27 | `declaration-track:60182312a712443c046f4909c72df09fa6d36d068c8a3197da9804501ef46383` |
| 2 | `theorem` | [antidiagonal_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-coe--9a7b62ff7f4602720ba8c011.md) | 31 | `result-track:9a7b62ff7f4602720ba8c01118a89840413a7194611db49cd08d1eab22ba4279` |
| 3 | `theorem` | [antidiagonal_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-coe--6a70edb1714a0c8777710c28.md) | 35 | `result-track:6a70edb1714a0c8777710c28c9c7334447c17eafee9eb6c53f8c5a7523d9f3a5` |
| 4 | `theorem` | [mem_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/mem-antidiagonal--218cf3e9fea4b378bdcd7259.md) | 41 | `result-track:218cf3e9fea4b378bdcd7259eb038de4aed648c0f9fe248bd9391dd419170ed4` |
| 5 | `theorem` | [antidiagonal_map_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-map-fst--9b8b2acae7e7f4d62b677cb1.md) | 53 | `result-track:9b8b2acae7e7f4d62b677cb1b9bb1cbc87c032863909687c58e6ce4574fbdc92` |
| 6 | `theorem` | [antidiagonal_map_snd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-map-snd--92962d14a4dfa4782a408d3a.md) | 57 | `result-track:92962d14a4dfa4782a408d3a8b2d9c487822a55eed529433546ff2c921a68634` |
| 7 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-zero--c345af7183a23c841db80e0b.md) | 61 | `result-track:c345af7183a23c841db80e0b43a4b9fb8a8979a31619149919512b6eba94df19` |
| 8 | `theorem` | [antidiagonal_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-cons--4dfe28c1b0e21c96ad468bb0.md) | 65 | `result-track:4dfe28c1b0e21c96ad468bb052d60b422993907fa822bdb7f0afdc9f9856d480` |
| 9 | `theorem` | [antidiagonal_eq_map_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/antidiagonal-eq-map-powerset--64f9cfcdb73558289efffe75.md) | 78 | `result-track:64f9cfcdb73558289efffe7576cc716171cfa20751f3d1e6bee26b5206cc13f3` |
| 10 | `theorem` | [card_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean/declarations/card-antidiagonal--e080a63f801b865fc095f6cc.md) | 90 | `result-track:e080a63f801b865fc095f6ccc872dc6147edd41c123317dac41b407c5cad076f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
