# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncLEHomology.Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e2c63f869108c94e4fa107d77fd51aa4947761",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e2c63f869108c94e4fa107d77fd51aa4947761`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.TruncGEHomology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.TruncLE` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologySequence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexAbelian` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [quasiIsoAt_truncLE'ToRestriction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/quasiisoat-truncle-torestriction--2f36242910406cd5ac660811.md) | 44 | `result-track:2f36242910406cd5ac6608110b1345975ccb139efaf3321d4fb737931827492d` |
| 2 | `instance` | [truncLE'_hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/truncle-hashomology--cf2eea8f2bad17ad5c8c22d0.md) | 53 | `declaration-track:cf2eea8f2bad17ad5c8c22d0d05c4dd39f361b51412e0bb236f029ca83d0fc5b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/instance--84bfdca8b635188d4b664692.md) | 60 | `declaration-track:84bfdca8b635188d4b6646923e2129f52b0fc0318ba5c44137cf04d0e706ae9c` |
| 4 | `lemma` | [quasiIsoAt_ιTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/quasiisoat-truncle--a80408d41e1fa13434554131.md) | 63 | `result-track:a80408d41e1fa13434554131653a80650514f35cfe2eb2cde4fb955ed7df5e3c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/instance--032680fb5304615e932c0d0b.md) | 68 | `declaration-track:032680fb5304615e932c0d0b0f76a31212d65e99941a7d107bae5703917a568f` |
| 6 | `lemma` | [quasiIso_ιTruncLE_iff_isSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/quasiiso-truncle-iff-issupported--cbda4b6dda0a231cb774f659.md) | 70 | `result-track:cbda4b6dda0a231cb774f65961968f5a744296ea3526270a7d157702de2aadbf` |
| 7 | `lemma` | [acyclic_truncLE_iff_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/acyclic-truncle-iff-issupportedoutside--ed995d47a4f062eb18f0dcd0.md) | 75 | `result-track:ed995d47a4f062eb18f0dcd064801029d8053d6c6f735292c4d22716e69024b3` |
| 8 | `lemma` | [quasiIso_truncLEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/quasiiso-trunclemap-iff--91972cfffb8c71e7c42b6d23.md) | 82 | `result-track:91972cfffb8c71e7c42b6d230de0bc4d1b02507ecd3d92289cd47d141075bce7` |
| 9 | `def` | [shortComplexTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/shortcomplextruncle--89a6dc11747718243754d7fe.md) | 96 | `declaration-track:89a6dc11747718243754d7fe5fa6b6c4aa0d0e7034da7c1a66af83b28e3bb9c2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/instance--f131fc18dcbe876fa1862677.md) | 99 | `declaration-track:f131fc18dcbe876fa1862677704187d8fbb974da24a4ae64f21788e1560fbb40` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/instance--c87632d77abce1b18ef1f7be.md) | 103 | `declaration-track:c87632d77abce1b18ef1f7be5e1dffbeaf9237bdfdfae56e0e03999f19eb262f` |
| 12 | `lemma` | [shortComplexTruncLE_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/shortcomplextruncle-shortexact--14332a5a81d8fecdd6ee17e0.md) | 107 | `result-track:14332a5a81d8fecdd6ee17e0737ad82b11517540a2419e6a6c3df2d4d19535b4` |
| 13 | `lemma` | [mono_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/mono-homologymap-shortcomplextruncle-g--9ff2f2ce528848f89b20d121.md) | 111 | `result-track:9ff2f2ce528848f89b20d12120b94a0546f32fc5a4c5b0c27314af9d678f1edd` |
| 14 | `lemma` | [shortComplexTruncLE_shortExact_δ_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/shortcomplextruncle-shortexact-eq-zero--110dcb8301438ddb0a446c2a.md) | 117 | `result-track:110dcb8301438ddb0a446c2a91c73d59576e267902ba521a5725f06730c60a52` |
| 15 | `instance` | [epi_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/epi-homologymap-shortcomplextruncle-g--d4eebfa1fec1d228e381ac51.md) | 126 | `declaration-track:d4eebfa1fec1d228e381ac51b96d73e20b00b28a413fc1a64a94fcd0987dd200` |
| 16 | `lemma` | [isIso_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/isiso-homologymap-shortcomplextruncle-g--e6df96e4ea7897d37b43ad35.md) | 133 | `result-track:e6df96e4ea7897d37b43ad3525e91a0b977c6b047021f7786891cfd4226b635b` |
| 17 | `lemma` | [quasiIsoAt_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/quasiisoat-shortcomplextruncle-g--0dc9713326c28ad2734878c6.md) | 138 | `result-track:0dc9713326c28ad2734878c6bdc2ccf57cd0ffa5a3e15b37845e5a5439bc1511` |
| 18 | `lemma` | [shortComplexTruncLE_X₃_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant52b6e790d9c02897a0327a0bf7bc91225b31c21d6420af9330e783996e1fc3eb.lean/declarations/shortcomplextruncle-x-issupportedoutside--ec3f78cea46b4889c7c7c76e.md) | 143 | `result-track:ec3f78cea46b4889c7c7c76e05d38d36d6c3ff3de407a81c914fd5ea552ae6fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
