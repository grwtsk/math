# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt02.Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad79ddea92e5e84403d4c632e11831ee0c0b0d54",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad79ddea92e5e84403d4c632e11831ee0c0b0d54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-two-lower--2386888c8922de0b2621e998.md) | 21 | `result-track:2386888c8922de0b2621e998e449c78868cf6535a81703cf843ebe32635992a3` |
| 2 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-two-upper--41352e088ccaf29a53bfc1e0.md) | 26 | `result-track:41352e088ccaf29a53bfc1e0d2069178269a3eeef0a5f1c1afeea44758a67d4d` |
| 3 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-three-lower--6317e0874f17b21b48660896.md) | 31 | `result-track:6317e0874f17b21b486608961438f97145e242d535e572d9d21a10df570e43d8` |
| 4 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/stieltjeslowerfour--e3a8d29d07940efe46d534b6.md) | 37 | `declaration-track:e3a8d29d07940efe46d534b67f8593e4131d6a0b2daf66ed13230c59f8b6ee64` |
| 5 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/stieltjeslowerfour-gt-neg-quarter--8a40b34526ba278d2678cebe.md) | 39 | `result-track:8a40b34526ba278d2678cebeda887311ececb428ae83f1cc35580844114d0860` |
| 6 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-3-lower--d1a0fa17b6abeb3319ab7b9b.md) | 48 | `result-track:d1a0fa17b6abeb3319ab7b9b907d6db6e4726b696b49bb028d57b9ec4bd84fd1` |
| 7 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-5-lower--484b0a049ec68448cab2d136.md) | 61 | `result-track:484b0a049ec68448cab2d136061800f0237044115b80873f467578801459ada9` |
| 8 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-7-lower--565a2815ec493e05fef84d81.md) | 74 | `result-track:565a2815ec493e05fef84d8101654a3a0c6563e92b3b7c908b6ea29950ed30e9` |
| 9 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-11-lower--c1d2ffc12e1c20ad700b10b9.md) | 87 | `result-track:c1d2ffc12e1c20ad700b10b9e14d68a7fb4fca7f4c5863933702b72a441c6268` |
| 10 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-13-lower--f4dc06ba96f10de0a52a44c3.md) | 100 | `result-track:f4dc06ba96f10de0a52a44c31844bc12eaf1edffcb8f02aaab449ea765fe6e9a` |
| 11 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-17-lower--7515abf2cd715ef63790d615.md) | 113 | `result-track:7515abf2cd715ef63790d615390ebc8ed6b6c11a0ba9daf225d1aae3a60d4540` |
| 12 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-19-lower--86d17c6562e431c05c827913.md) | 126 | `result-track:86d17c6562e431c05c827913cf860eea92f82c3bbe40b5df6d0a221c540dea68` |
| 13 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-23-lower--2abcb2ab55b62168d47ccc4e.md) | 139 | `result-track:2abcb2ab55b62168d47ccc4e77c04b130becc4e8fdba31fda04db854da2e051f` |
| 14 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-29-lower--fb0efddd7016282f607c508e.md) | 152 | `result-track:fb0efddd7016282f607c508ecd5b9a78775d9e4997f10eb8cda5922814d267c2` |
| 15 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-31-lower--48452302e3b7ce1c9f24b8e9.md) | 165 | `result-track:48452302e3b7ce1c9f24b8e981db63604abea0a1cc301e51460e3ba5028236b1` |
| 16 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-37-lower--6666bd9bc55f571ebf9d7e68.md) | 178 | `result-track:6666bd9bc55f571ebf9d7e682e60ad4b7080d9cce5935a81829539fdc2bf2b40` |
| 17 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-41-lower--53e9e8e2f2a260494c175795.md) | 191 | `result-track:53e9e8e2f2a260494c1757954d74f3eba9464a23cba3194598e2217d5cd41000` |
| 18 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-43-lower--d6a193a52e525179c90a2350.md) | 204 | `result-track:d6a193a52e525179c90a23507f647176041a1cd0c66b27b3e3fca4299919e94d` |
| 19 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-47-lower--5d4312d452d8f75f0f0090d6.md) | 217 | `result-track:5d4312d452d8f75f0f0090d6418bc42ace91625184d56a6f8ca17681c78c8d64` |
| 20 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-53-lower--ce460274af9f6cd5c5cc2966.md) | 230 | `result-track:ce460274af9f6cd5c5cc2966bf9029105c932afdd3496abc7b6dc2e95c6979f8` |
| 21 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-59-lower--81a6f18f1d6c461ac52f369f.md) | 243 | `result-track:81a6f18f1d6c461ac52f369f0097608d75462a4c59d8b8e2cffd5a1e8f6e9402` |
| 22 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-61-lower--bde3f9984d2f197e87b20d06.md) | 256 | `result-track:bde3f9984d2f197e87b20d06b3a2e93da9d3951e91071af722315d4ef3d36aba` |
| 23 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-67-lower--07eb6f239de87771520b8a2b.md) | 269 | `result-track:07eb6f239de87771520b8a2b9432b113bf738815f091fb9468d04388b433c46a` |
| 24 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-71-lower--51176ed8a4586bc12cbc3f89.md) | 282 | `result-track:51176ed8a4586bc12cbc3f89877918bd32ad6a46b4ace5b32e1d04a6bdc98310` |
| 25 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-73-lower--81914fbc5badf278ceb301e5.md) | 295 | `result-track:81914fbc5badf278ceb301e5df98f4a812c0fae16a9f30a079a09026438fad98` |
| 26 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-79-lower--87913d446431e6bcbd064c61.md) | 308 | `result-track:87913d446431e6bcbd064c61f3945bc6fbcee95f70971321a5f4143996d99af3` |
| 27 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-83-lower--84feb296b7edf95aa64aa6bc.md) | 321 | `result-track:84feb296b7edf95aa64aa6bc02dd8a7c57d1494b22a94ff1024de677fa3cbc0e` |
| 28 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-89-lower--fb10037500a08eb3840004c2.md) | 334 | `result-track:fb10037500a08eb3840004c2a2ecaa14c7f0c3ef972c12de1c437de6b215267a` |
| 29 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/log-97-lower--bc0ae537e74dfd8709fe5d6d.md) | 347 | `result-track:bc0ae537e74dfd8709fe5d6dcd45100b584b6846533eda7163b560a47a7a065e` |
| 30 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/primeinventory--ba1dc6890fcf3cde67aaf8ce.md) | 360 | `declaration-track:ba1dc6890fcf3cde67aaf8cee23e594a5e0c27dbca9589f926cb79d739c23e8a` |
| 31 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/certifiedloglower--2a73064a48159057f9c44c39.md) | 362 | `declaration-track:2a73064a48159057f9c44c39adfa63829ebee8b6f67667b3d268fe2bcd5896aa` |
| 32 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/powercoefficient--81665693749a7b9a2f6a1d2e.md) | 365 | `declaration-track:81665693749a7b9a2f6a1d2ea52c8b18003b0e504d70c5d0c23680d7571393b9` |
| 33 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/finiteproperpowermoment--315443304e8208e14219cbad.md) | 367 | `declaration-track:315443304e8208e14219cbad45739c70fa4d0371eb88778ce65d7a34e0c73af7` |
| 34 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/inventory-primes--c6a571ff9f5af5e28903cade.md) | 370 | `result-track:c6a571ff9f5af5e28903cadef2398ee2ae53c0c49878390d806da402f19535e1` |
| 35 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/inventory-log-lower--b65170629bfd23255ca89084.md) | 376 | `result-track:b65170629bfd23255ca890848addcf5f38b0a39c611f9537e6d2e944664dd05e` |
| 36 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/finiteproperpowermoment-gt-nine-quarters--a505b85833f3e1ce32e2c6cc.md) | 407 | `result-track:a505b85833f3e1ce32e2c6cc6a125315170ee3b218ea5f720e9377e007aeb241` |
| 37 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/finiteproperpowermoment-eq-atoms--0c400942de86ee8c9c828889.md) | 426 | `result-track:0c400942de86ee8c9c8288891198004503c28a68ff1a1afa16af0ca8ca268bb9` |
| 38 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt02/Variantf40e363543d96dd57e56ae417fc3fc85c55ebb2f6314b13bedaf3647283203f1.lean/declarations/intercept-positive-of-actual-bridges--9a7c9e7a6fd822e34b700054.md) | 438 | `result-track:9a7c9e7a6fd822e34b7000541faa164e8b52f374c960464a9a7501ad8aea7136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
