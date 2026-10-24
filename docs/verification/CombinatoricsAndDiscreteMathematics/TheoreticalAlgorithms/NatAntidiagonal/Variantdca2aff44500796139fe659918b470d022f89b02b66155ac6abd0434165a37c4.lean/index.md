# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd91d85ac7dfe0a528421caa7782738a8926eee",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd91d85ac7dfe0a528421caa7782738a8926eee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.MapFold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/antidiagonal--0a2644ed0957b2be689cc941.md) | 30 | `declaration-track:0a2644ed0957b2be689cc941315d34b71d4474b8cbb1e21cb595671ad7f7aff0` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/mem-antidiagonal--6a739ab78aafb235f97bc67f.md) | 35 | `result-track:6a739ab78aafb235f97bc67f8a343ce1e523da2b7e84b9774b79783abb63b15b` |
| 3 | `theorem` | [card_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/card-antidiagonal--f187554487fb451228200d73.md) | 40 | `result-track:f187554487fb451228200d735024fa30aef65b88af77826c434e6e0edbafae9f` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/antidiagonal-zero--78a2b4033d11e6ae0fb88649.md) | 45 | `result-track:78a2b4033d11e6ae0fb8864932aa64503c6d600522430fb52134d3b667de3a2c` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/nodup-antidiagonal--d743425ca78702d78028e5cf.md) | 50 | `result-track:d743425ca78702d78028e5cf55518c66848c98339ce0de2eaff9464890d775c4` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/antidiagonal-succ--79c84cf3e71038346b34c4b8.md) | 54 | `result-track:79c84cf3e71038346b34c4b8c189c0b38b8a73c09e976f76efd147ea44b09857` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/antidiagonal-succ--ac26fee3d6df42837e6ae2b3.md) | 58 | `result-track:ac26fee3d6df42837e6ae2b3de8873ad4f0506ef3b8348fdc01eefce5e1c01c2` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/antidiagonal-succ-succ--58b104d2d92c8ccdedb37f39.md) | 63 | `result-track:58b104d2d92c8ccdedb37f39723f9307b6925849dd89a1f4a153233c17cbb049` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantdca2aff44500796139fe659918b470d022f89b02b66155ac6abd0434165a37c4.lean/declarations/map-swap-antidiagonal--6a52b34539a8450d126e2212.md) | 69 | `result-track:6a52b34539a8450d126e2212af71da9ab284fc99dc1b0ee88c2b9ec880decb9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
