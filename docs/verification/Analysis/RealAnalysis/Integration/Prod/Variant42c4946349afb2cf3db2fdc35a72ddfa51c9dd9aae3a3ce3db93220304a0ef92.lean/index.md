# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Prod.Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a3796d08fabcd44df8cc04ae3c111210a6b6c88",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a3796d08fabcd44df8cc04ae3c111210a6b6c88`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod--6cf3c7f2c6bfcba39c0c0b43.md) | 47 | `declaration-track:6cf3c7f2c6bfcba39c0c0b433ab3bc44ffd00b5eed8b9d3a37f88629588d0195` |
| 2 | `lemma` | [zero_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/zero-prod--94069bbd81d49155f1ed6209.md) | 54 | `result-track:94069bbd81d49155f1ed620920b5732256c62f537d642f25293ed9918a1940ac` |
| 3 | `lemma` | [prod_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-zero--a751737a54d2c28a92e00343.md) | 57 | `result-track:a751737a54d2c28a92e003438ff56460fe68352cdeea8d70b19ec05f9e21e060` |
| 4 | `lemma` | [prod_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-of-not-issfinitekernel-left--2231342da4f19632419925b3.md) | 60 | `result-track:2231342da4f19632419925b3f56fa01cc4ff1a13121c461764ed9ddffa4c45d7` |
| 5 | `lemma` | [prod_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-of-not-issfinitekernel-right--29506850f621736fd4e3c5f1.md) | 65 | `result-track:29506850f621736fd4e3c5f128177f7b99cf5a19fb6587c8492019a731c3aed1` |
| 6 | `theorem` | [prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-apply--38489844043a0840a6c2b430.md) | 74 | `result-track:38489844043a0840a6c2b430ecb9cc09f8ce5a652a25767367a9def58a75ae31` |
| 7 | `lemma` | [prod_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-apply--a06ac5bf2f71b6a373abc6db.md) | 79 | `result-track:a06ac5bf2f71b6a373abc6db3c7465bbbc7004d0d6d2c1fa766824f810755553` |
| 8 | `lemma` | [prod_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-const--dde3f50b4821503c1f2d5924.md) | 85 | `result-track:dde3f50b4821503c1f2d59240579033550c1789d0c09a05443057169677f0919` |
| 9 | `theorem` | [lintegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-prod--0fdb788d122acff9b5a555e1.md) | 90 | `result-track:0fdb788d122acff9b5a555e18e019b1a4a3bbd1d0227f275f27378ecaaebcd1b` |
| 10 | `theorem` | [lintegral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-prod-symm--113e3ba3cd5d0bbf40b7a0e3.md) | 95 | `result-track:113e3ba3cd5d0bbf40b7a0e333c3c8f1c0d4c38fa0c42deb8df5f5095974bfeb` |
| 11 | `theorem` | [lintegral_deterministic_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-deterministic-prod--70c309439eecd9621be31cf4.md) | 100 | `result-track:70c309439eecd9621be31cf4da367ed24d1eb7357757ae96328a09500d0f0494` |
| 12 | `theorem` | [lintegral_prod_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-prod-deterministic--9662b10a04259140a05d21eb.md) | 105 | `result-track:9662b10a04259140a05d21ebc174a8dc3fb7e91d2a710634ddc20be8ac7694f0` |
| 13 | `theorem` | [lintegral_id_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-id-prod--d7836ed87b0c8ac378b9738d.md) | 110 | `result-track:d7836ed87b0c8ac378b9738d252e0bea83a8bfe5f8c86d70ec8980590dfe8d7b` |
| 14 | `theorem` | [lintegral_prod_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/lintegral-prod-id--03ad5cb29fa6ebff2365168c.md) | 115 | `result-track:03ad5cb29fa6ebff2365168c76340ae02bc029361a88f665006105acb8b09b47` |
| 15 | `theorem` | [deterministic_prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/deterministic-prod-apply--ae41f1c9c494e66ea8cbb5b2.md) | 120 | `result-track:ae41f1c9c494e66ea8cbb5b20b8f1b5b53062895112e9f82aab609811f68ec3a` |
| 16 | `theorem` | [id_prod_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/id-prod-apply--47c6312e9191bc9fe4d95371.md) | 126 | `result-track:47c6312e9191bc9fe4d9537100c582b0c65d0747914f81d15f5f3b729add59d9` |
| 17 | `instance` | [IsMarkovKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/ismarkovkernel-prod--cca066883aa0c62f59816226.md) | 130 | `declaration-track:cca066883aa0c62f598162268b50882c0c356e952b8d80e9a72ef0a8a936e56d` |
| 18 | `instance` | [IsZeroOrMarkovKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/iszeroormarkovkernel-prod--eaab6b98ad0395c78060d186.md) | 133 | `declaration-track:eaab6b98ad0395c78060d186ed488dd2a186b69d53dcc8fedd85115ebe87aa32` |
| 19 | `instance` | [IsFiniteKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/isfinitekernel-prod--231d05371fcf156a9f6204a4.md) | 141 | `declaration-track:231d05371fcf156a9f6204a497b7b1aea544f46d929186c789e4f5aa2fc7b4fa` |
| 20 | `instance` | [IsSFiniteKernel.prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/issfinitekernel-prod--0a7e81a25a47d7f4b726ce5b.md) | 144 | `declaration-track:0a7e81a25a47d7f4b726ce5bc0d44203cdf3ee4110781d8f877b1175a0d2dd3f` |
| 21 | `lemma` | [fst_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/fst-prod--e74dadc741aa4af0fc42c21c.md) | 147 | `result-track:e74dadc741aa4af0fc42c21c5aded4d042b494512a30ca76acd74ef3afa0faec` |
| 22 | `lemma` | [snd_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/snd-prod--e3c9adfd4a5cb8501bd0a736.md) | 151 | `result-track:e3c9adfd4a5cb8501bd0a7366f7888deaaa4b5dbe1aff1e906b6bf10db488f00` |
| 23 | `lemma` | [comap_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/comap-prod--7996ce58102882e536c59dd7.md) | 155 | `result-track:7996ce58102882e536c59dd73fb19818c2aaefc7af804d068768f8af24125b37` |
| 24 | `lemma` | [map_prod_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/map-prod-map--fee96ee8bede53e9cb7be3b2.md) | 161 | `result-track:fee96ee8bede53e9cb7be3b2d861142d8beff1fb80a5d7615ca1b5192a3d57a5` |
| 25 | `lemma` | [map_prod_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/map-prod-eq--136e6254a44369fdaabd0636.md) | 168 | `result-track:136e6254a44369fdaabd06363b391b1e6797db10d923cbede9274069ba23900f` |
| 26 | `lemma` | [comap_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/comap-prod-swap--133dac17483d2761fb236eb8.md) | 172 | `result-track:133dac17483d2761fb236eb8e1e6ca2cd84f819dd06e5624d2b06315ea7e5252` |
| 27 | `lemma` | [map_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/map-prod-swap--1ae095bb0ea88d3985c4d61b.md) | 185 | `result-track:1ae095bb0ea88d3985c4d61be2a16c9126097b1a30e92b19ba516507c6dce699` |
| 28 | `lemma` | [swap_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/swap-prod--9f47f89dcdb539ba6db88dfe.md) | 195 | `result-track:9f47f89dcdb539ba6db88dfedfd2156e8894d9f25b78c95c920f38b87d1d4ba2` |
| 29 | `lemma` | [deterministic_prod_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/deterministic-prod-deterministic--0405527763bd3608def8c13d.md) | 199 | `result-track:0405527763bd3608def8c13dcacb951257aaee31466b8ecafa3b5891c2540c3e` |
| 30 | `lemma` | [id_prod_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/id-prod-eq--7ca97eb16c43087b41704edd.md) | 205 | `result-track:7ca97eb16c43087b41704edde93be43eadd5b24b659a43a28e47f1fb1eb1a86c` |
| 31 | `theorem` | [comp_eq_snd_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/comp-eq-snd-compprod--0f68f6782039db84714cd991.md) | 210 | `result-track:0f68f6782039db84714cd99142a36c9ec3b9c045a74a832384ed78e2d6b5a0e9` |
| 32 | `lemma` | [snd_compProd_prodMkLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/snd-compprod-prodmkleft--4318dd60f5289508b6041fcd.md) | 218 | `result-track:4318dd60f5289508b6041fcd4a58c21115ae4949ed42fbf0cf32157753043a15` |
| 33 | `lemma` | [compProd_prodMkLeft_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/compprod-prodmkleft-eq-comp--228a20a41876c17d4a964689.md) | 226 | `result-track:228a20a41876c17d4a96468998bd73e70344331466000a7cf05114931aeeef55` |
| 34 | `lemma` | [prodAssoc_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prodassoc-prod--a81350950e7bf9e50ceaf298.md) | 238 | `result-track:a81350950e7bf9e50ceaf298486032479924b6d18b18c77c13759c50162d0268` |
| 35 | `lemma` | [prod_const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/prod-const-comp--9ad1b543cbc9fc106437aa7d.md) | 245 | `result-track:9ad1b543cbc9fc106437aa7dc617e3017e224a740803ad98e4ea891a08b69b91` |
| 36 | `lemma` | [const_prod_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/declarations/const-prod-comp--e42771541216f7614087ed2b.md) | 252 | `result-track:e42771541216f7614087ed2bdca81b176681697379040f577421501810a093f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
