# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinMax.Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e3d5ba0caa77cc94932f9196f0b5157f75a320e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e3d5ba0caa77cc94932f9196f0b5157f75a320e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [min_eq_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-eq-min--462cf7aff0097541e1faa2e3.md) | 27 | `result-track:462cf7aff0097541e1faa2e3c57616937d53f2fe0fa5aab08c7337016fa97cd0` |
| 2 | `theorem` | [zero_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/zero-min--de92ea389021cbf0bb41e602.md) | 29 | `result-track:de92ea389021cbf0bb41e6026b69dd8646475e205885228f43aa44ac3632a919` |
| 3 | `theorem` | [min_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-zero--98820fb45d12aed66f4cd39f.md) | 32 | `result-track:98820fb45d12aed66f4cd39fd576b0b09a84c3519515f88bcc49d365220639a2` |
| 4 | `theorem` | [add_min_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/add-min-add-right--4f2346c5c64f83a90c99cf69.md) | 35 | `result-track:4f2346c5c64f83a90c99cf6993c0cf4056bd24d8204e24eb874eeb2b487ceaf5` |
| 5 | `theorem` | [add_min_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/add-min-add-left--2fcd969dafb1fba38a4c0d7c.md) | 40 | `result-track:2fcd969dafb1fba38a4c0d7c952124a8b5aca6482a2f3291280b6360161f8997` |
| 6 | `theorem` | [mul_min_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/mul-min-mul-right--e3129b70840b5efe41c7c8c3.md) | 45 | `result-track:e3129b70840b5efe41c7c8c36c35c4ff38750fef37105c92cdc9ef4ded4c74a7` |
| 7 | `theorem` | [mul_min_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/mul-min-mul-left--19ba64035a84154b6840bee7.md) | 54 | `result-track:19ba64035a84154b6840bee76a0586e26faf79a763a26ed9f2d7b4e8be3cf013` |
| 8 | `theorem` | [min_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-comm--c8500c54bac9dd4388458f05.md) | 57 | `result-track:c8500c54bac9dd4388458f05947a6a927f2c40db6939ed22f8594ecf1f6024d7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/instance--a70e8950a2cf97ac72f5e637.md) | 62 | `declaration-track:a70e8950a2cf97ac72f5e63711f72856e0d7c228323212e778de39f73391b97f` |
| 10 | `theorem` | [min_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-le-right--49d2afb6b16ce83c4faf9685.md) | 64 | `result-track:49d2afb6b16ce83c4faf9685ce97262a17692913d2ba9910d4fb11dd87091569` |
| 11 | `theorem` | [min_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-le-left--9342722c57812afbb60ff84c.md) | 66 | `result-track:9342722c57812afbb60ff84c608b06083099d79798ec13da85621eed8820f11e` |
| 12 | `theorem` | [min_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-eq-left--12e016728b1f5ba3e6b7cb7c.md) | 69 | `result-track:12e016728b1f5ba3e6b7cb7c07f19514b72852c87ea7baae4c999b471fdaa754` |
| 13 | `theorem` | [min_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/min-eq-right--f8317c209dd84b454a4a2c84.md) | 70 | `result-track:f8317c209dd84b454a4a2c8464f57054b7e24cd848d671155fa3aa1aac5bd6e2` |
| 14 | `theorem` | [le_min_of_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/le-min-of-le-of-le--7d26199a0e1e00281be44f7e.md) | 73 | `result-track:7d26199a0e1e00281be44f7e6279ae59f01c0567905846adc7222d7841483b15` |
| 15 | `theorem` | [le_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/le-min--97e233e646791df61551ac8a.md) | 78 | `result-track:97e233e646791df61551ac8a2d8da14eaf741c1b595aeadcea90756b9cb20ced` |
| 16 | `theorem` | [lt_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/lt-min--1c8936516bf8d72c5293eaa9.md) | 82 | `result-track:1c8936516bf8d72c5293eaa90d3461df198929edd513ff6142206c1e1b732bf9` |
| 17 | `theorem` | [max_eq_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-eq-max--43203e1f212e715656676b95.md) | 86 | `result-track:43203e1f212e715656676b954a95a87b6105dc6c567e147301c2b6e52c67118c` |
| 18 | `theorem` | [zero_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/zero-max--b52885dd4989b19a23955288.md) | 88 | `result-track:b52885dd4989b19a2395528835698c4dded710d1c9588678e93bd0226317d173` |
| 19 | `theorem` | [max_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-zero--9e88d20184afe0f5136a436d.md) | 91 | `result-track:9e88d20184afe0f5136a436d6773a67d2ff94d4d70a0c69f7e01726f62f9c658` |
| 20 | `theorem` | [add_max_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/add-max-add-right--2426ef2905187c4a391f3c4f.md) | 94 | `result-track:2426ef2905187c4a391f3c4f27f7d78711ff3564a5febca7f3d4b467832f7a1c` |
| 21 | `theorem` | [add_max_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/add-max-add-left--3ac10bd7bc319ba38ed4b12b.md) | 99 | `result-track:3ac10bd7bc319ba38ed4b12bcbafeeae7be96851c6406dafbb303d2baebe8a81` |
| 22 | `theorem` | [mul_max_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/mul-max-mul-right--5977622174c3e7cc70a2661f.md) | 104 | `result-track:5977622174c3e7cc70a2661fe1343e4fd554845e0958ef29804e51c25c2b688e` |
| 23 | `theorem` | [mul_max_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/mul-max-mul-left--5658fe5769b08750a61c7952.md) | 113 | `result-track:5658fe5769b08750a61c7952759c65d84fccc1625bed179517ad572c88da7d2a` |
| 24 | `theorem` | [max_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-comm--6b25d91bec7709cbe96f42ad.md) | 116 | `result-track:6b25d91bec7709cbe96f42ad600fa1ea6b62df9206262249b6d795b323e1f679` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/instance--12b7c4fda9eacf4c4c71b0e6.md) | 121 | `declaration-track:12b7c4fda9eacf4c4c71b0e61c1ea461d83371ad9e78e9e129e34fc1936bed7e` |
| 26 | `theorem` | [le_max_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/le-max-left--bd06cff83b1bc618df88f243.md) | 123 | `result-track:bd06cff83b1bc618df88f243de145158c625fde28b910c0f0403dd8a44df5c12` |
| 27 | `theorem` | [le_max_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/le-max-right--32224749693d9133ee1e0c0c.md) | 125 | `result-track:32224749693d9133ee1e0c0ca6f16975535709968c7055bf81eb990f550edd71` |
| 28 | `theorem` | [max_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-eq-right--a8d180309a49d2107b0a8a90.md) | 128 | `result-track:a8d180309a49d2107b0a8a903b0c88a5e33717afbb1de6c13a8dc5ae1b12ee1f` |
| 29 | `theorem` | [max_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-eq-left--6cdf1fec3d4fb9c7aeb7c6a8.md) | 130 | `result-track:6cdf1fec3d4fb9c7aeb7c6a84f02f19fb2b57df68258ca60bb397204aa76c38c` |
| 30 | `theorem` | [max_le_of_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-le-of-le-of-le--37fa81855d147f623e6269ff.md) | 133 | `result-track:37fa81855d147f623e6269ffb503b2d97ecf737c2c48b43aa01b74d2b2eebf1e` |
| 31 | `theorem` | [max_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-le--3190fad2480a6c5eaac1f0ec.md) | 138 | `result-track:3190fad2480a6c5eaac1f0ecd1eca811974d2b5d66414faeb15031d98bbfe5e6` |
| 32 | `theorem` | [max_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variant540f2246a7f022bddd83e6a1ae7bc028ee276cd5fbb3025bb4f4d8ec260d2a56.lean/declarations/max-lt--7878beb576adb16e5112b801.md) | 142 | `result-track:7878beb576adb16e5112b80145b934f4f9bcd5c3f8376b689acf7562db1d5f7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
