# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderThreeRecursiveCumulant.Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b95a097c49ba15fe7737101ef1fb3b949f5f3c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b95a097c49ba15fe7737101ef1fb3b949f5f3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blocks01_2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blocks01-2--7c3726de46cadef8bd2c0e12.md) | 38 | `declaration-track:7c3726de46cadef8bd2c0e12a35ae86b8683026049639e6f2077af2d77570d11` |
| 2 | `def` | [blocks02_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blocks02-1--17ee9badf620a9dfbba14afc.md) | 42 | `declaration-track:17ee9badf620a9dfbba14afcb1309de9763d15e88a9f000baf98c4540f4f8ff3` |
| 3 | `def` | [blocks12_0](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blocks12-0--5e34e20a7562418773536045.md) | 46 | `declaration-track:5e34e20a7562418773536045a9d2f4500aa1adb51677d6a336768fe5c3c50d74` |
| 4 | `def` | [pairPartition01_2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition01-2--6893f23560ff9789be9e735a.md) | 50 | `declaration-track:6893f23560ff9789be9e735a53af0c2e928d8497b75ea986959bcc450969ec97` |
| 5 | `def` | [pairPartition02_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition02-1--0eba3b19293a2d5bdf26021f.md) | 62 | `declaration-track:0eba3b19293a2d5bdf26021f16c51ac42db7ce761d71a10859d60dcc128a4140` |
| 6 | `def` | [pairPartition12_0](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition12-0--60f8b26b23cf80973f3f479c.md) | 74 | `declaration-track:60f8b26b23cf80973f3f479ccd3f0025c6f665161526c81d75b3eca7919852e6` |
| 7 | `theorem` | [pairPartition01_2_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition01-2-parts--4bb2f7118b680a7cb3c1f096.md) | 86 | `result-track:4bb2f7118b680a7cb3c1f096cdf8ff85fd6a95e268b385e828c02b469a3bf0ba` |
| 8 | `theorem` | [pairPartition02_1_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition02-1-parts--b4e2b2a3d118fc00e1095b09.md) | 91 | `result-track:b4e2b2a3d118fc00e1095b09c7843a0cff9649fa8341634d515209c0ebae951f` |
| 9 | `theorem` | [pairPartition12_0_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/pairpartition12-0-parts--d9268b31c9eb45909f2422e0.md) | 96 | `result-track:d9268b31c9eb45909f2422e0fc6981bfa1c960cacafefa58f4a96124601c92bb` |
| 10 | `def` | [properPartitionsThreeExplicit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/properpartitionsthreeexplicit--08532f6da12414875e596de2.md) | 101 | `declaration-track:08532f6da12414875e596de21b0820e7a5d146dc9a3df335353c2321866ee457` |
| 11 | `theorem` | [properPartitions_three_eq_explicit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/properpartitions-three-eq-explicit--7a8d056c46af9523890c7186.md) | 111 | `result-track:7a8d056c46af9523890c71861f954109b24897560ff77024c604a4a61bb4519e` |
| 12 | `theorem` | [parts_bot_three_eq_triple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/parts-bot-three-eq-triple--ed1f08927ce946911af7fb3e.md) | 118 | `result-track:ed1f08927ce946911af7fb3e6ec388a833486e8fada397faa8180ea28cb3d295` |
| 13 | `theorem` | [blockDirections_pair01](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockdirections-pair01--43c1c95e9b24ee535c83c211.md) | 124 | `result-track:43c1c95e9b24ee535c83c21142a0edc42ff68cc62a057041e71219a89c438407` |
| 14 | `theorem` | [blockDirections_pair02](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockdirections-pair02--5306f1c3e0217979d51d3991.md) | 145 | `result-track:5306f1c3e0217979d51d399133ac9d23c14d1676095ef4b2423fcdf1ae3187a7` |
| 15 | `theorem` | [blockDirections_pair12](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockdirections-pair12--6817735ea99dff78e8b8915b.md) | 166 | `result-track:6817735ea99dff78e8b8915bbe0be68ca99bc0c0857c3066cc3d9f03d6b60515` |
| 16 | `theorem` | [blockCumulantValue_pair01](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockcumulantvalue-pair01--f91ecbb4aac71ce45c0c37fd.md) | 187 | `result-track:f91ecbb4aac71ce45c0c37fdc8afc84f857b2956b6529fae5de969af498a24a3` |
| 17 | `theorem` | [blockCumulantValue_pair02](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockcumulantvalue-pair02--a73ffb256e63069152dd87a6.md) | 200 | `result-track:a73ffb256e63069152dd87a623b7164ad61c38dd0e159f9aa38d7155834aed18` |
| 18 | `theorem` | [blockCumulantValue_pair12](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/blockcumulantvalue-pair12--f8782c110d808f584b7c2594.md) | 213 | `result-track:f8782c110d808f584b7c2594cd3e1e2300b97aafc2592d1b6d1a71f33e9cba4e` |
| 19 | `theorem` | [directionalPartitionWeight_bot_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/directionalpartitionweight-bot-three--301817a9ca1cdda3141c02b2.md) | 226 | `result-track:301817a9ca1cdda3141c02b258db8628b2cefb48335dafbf0e14d798df2f8c96` |
| 20 | `theorem` | [directionalPartitionWeight_pair01_2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/directionalpartitionweight-pair01-2--f061ee7f62318c3898dd10b3.md) | 242 | `result-track:f061ee7f62318c3898dd10b3c921981e7c89e39ab1a25daee063c35067a19fdf` |
| 21 | `theorem` | [directionalPartitionWeight_pair02_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/directionalpartitionweight-pair02-1--2e5ea8612ae3480baab9a129.md) | 256 | `result-track:2e5ea8612ae3480baab9a129f6d7169f80e9d4eaac7222d8296bae0390bf61ed` |
| 22 | `theorem` | [directionalPartitionWeight_pair12_0](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/directionalpartitionweight-pair12-0--ba8554d93266d5e0be0db2ad.md) | 270 | `result-track:ba8554d93266d5e0be0db2ad36c038acb9ae3f9e9e1caf54cedf468f5d5e8887` |
| 23 | `theorem` | [directionalProperContribution_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/directionalpropercontribution-three--c77c70d0ca6226cba33945b2.md) | 284 | `result-track:c77c70d0ca6226cba33945b25302533564252c64c6d611b1ce4cdad21f6e2dc6` |
| 24 | `theorem` | [rawDirectionalMoment_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/rawdirectionalmoment-three--a32b62ec667556a89d452531.md) | 323 | `result-track:a32b62ec667556a89d45253193abfef11e0a3ff575b4e8853d5784243379d965` |
| 25 | `theorem` | [thirdCumulantOperator_eq_rawThird_sub_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/thirdcumulantoperator-eq-rawthird-sub-lower--7e5434b2d63889e005772c8e.md) | 337 | `result-track:7e5434b2d63889e005772c8efb65e9a917c34dea673cce2e3845d345e081824c` |
| 26 | `theorem` | [rawMomentHierarchy_three_eq_cumulants](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/rawmomenthierarchy-three-eq-cumulants--a438034eaaa2cb526e11860d.md) | 538 | `result-track:a438034eaaa2cb526e11860d331081901bc973363027594df531d386b86d8f35` |
| 27 | `theorem` | [recursiveRawProperContribution_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/recursiverawpropercontribution-three--8e871a2023d4b61f87a65dca.md) | 639 | `result-track:8e871a2023d4b61f87a65dca8ea385236a16aed85b34f0dfbeddc608bbc90445` |
| 28 | `theorem` | [recursiveRawCumulantFamily_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/recursiverawcumulantfamily-three--a13e72726b393293abc09b73.md) | 680 | `result-track:a13e72726b393293abc09b7337f7411e42712ed97e6b4c3f9045c9fda88b3d31` |
| 29 | `theorem` | [recursiveRawCumulantFamily_matches_order_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/declarations/recursiverawcumulantfamily-matches-order-three--6d846570d20efb33ce65ac4b.md) | 695 | `result-track:6d846570d20efb33ce65ac4b9e144fa541dda848e512f037564631309f614a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
