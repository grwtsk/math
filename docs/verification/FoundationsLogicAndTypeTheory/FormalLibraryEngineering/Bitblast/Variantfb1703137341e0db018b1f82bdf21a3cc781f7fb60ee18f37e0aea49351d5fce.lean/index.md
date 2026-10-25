# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fab15a02790acd7f60cb349c253d6f69c0ad4a22",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fab15a02790acd7f60cb349c253d6f69c0ad4a22`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.BitVec.Folds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [testBit_limit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/testbit-limit--e03047765c7b18128f7972fa.md) | 34 | `result-track:e03047765c7b18128f7972fae495ab9cd3317aedad3ae314b53a3563f4d75269` |
| 2 | `theorem` | [mod_two_pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/mod-two-pow-succ--450c7ee9d6231b1f15c3ac77.md) | 56 | `result-track:450c7ee9d6231b1f15c3ac77874e3acadee6ce95735d41449fb66efd12ede1dd` |
| 3 | `theorem` | [mod_two_pow_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/mod-two-pow-lt--5015f2a237c46e59f1569964.md) | 76 | `result-track:5015f2a237c46e59f1569964fafc8637b5b67e5a806a256c9398d76b030aa85c` |
| 4 | `def` | [carry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/carry--c45674b455deb415e99143e0.md) | 81 | `declaration-track:c45674b455deb415e99143e0bb12586ff4daf130fa8540dae2c65b4e23f37a47` |
| 5 | `theorem` | [carry_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/carry-zero--23dbbc3c82e7a1a52c4fba5e.md) | 83 | `result-track:23dbbc3c82e7a1a52c4fba5e4a039d4332ba9c8e39de243e7e858d3f051cc346` |
| 6 | `def` | [adcb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/adcb--b6d44deea7bc93370d1278a5.md) | 87 | `declaration-track:b6d44deea7bc93370d1278a5bf1578f15c81a5d55d48994789d9da03aabed0cc` |
| 7 | `def` | [adc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/adc--f99ed90ce3ca76ea74ab7486.md) | 90 | `declaration-track:f99ed90ce3ca76ea74ab748670624de7c029955721c1142d4773ea8689a09bd6` |
| 8 | `theorem` | [adc_overflow_limit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/adc-overflow-limit--597b6c2aed844e2cf9d53df5.md) | 93 | `result-track:597b6c2aed844e2cf9d53df5a78527aaccc9cc6629c51453bef7ef97c32e023f` |
| 9 | `theorem` | [carry_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/carry-succ--72dc16744fbdcf3cc31a1785.md) | 101 | `result-track:72dc16744fbdcf3cc31a1785fa022f4280c6cc8424973ce1761ed1ad4dffa332` |
| 10 | `theorem` | [adc_value_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/adc-value-step--50641248b51eda60e641c49f.md) | 115 | `result-track:50641248b51eda60e641c49f27a03efe21832dd355229f2595e54f8703b4c8cf` |
| 11 | `theorem` | [adc_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/adc-correct--cf430019a06292dd7215d605.md) | 136 | `result-track:cf430019a06292dd7215d6052d25973f910690ad997b7c29dcdd69dcffe6049c` |
| 12 | `theorem` | [add_as_adc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantfb1703137341e0db018b1f82bdf21a3cc781f7fb60ee18f37e0aea49351d5fce.lean/declarations/add-as-adc--0a569c063ea315fe6b34269d.md) | 158 | `result-track:0a569c063ea315fe6b34269df48c12d93b6e5e4d07653cfe3dab263ab9d8578c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
