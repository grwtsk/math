# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt01.Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f38c34d8cd256def0499403d52835fd3cff341c8",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f38c34d8cd256def0499403d52835fd3cff341c8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Prime.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-two-lower--5b98a1dabca78ca9e9b22dea.md) | 21 | `result-track:5b98a1dabca78ca9e9b22dea4425d3eba3990779906220fee05e5e2e43da524c` |
| 2 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-two-upper--dbb20195f315c5ca01ee8fba.md) | 26 | `result-track:dbb20195f315c5ca01ee8fbae05ad3449fb8f1f39cf0c97432b8ded6db711dd7` |
| 3 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-three-lower--eb72bd2503338dc580263a69.md) | 31 | `result-track:eb72bd2503338dc580263a69686c7980bfc65329953db23f5ca99df5f754e0e5` |
| 4 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/stieltjeslowerfour--b1aab7e02d339c02f248b873.md) | 37 | `declaration-track:b1aab7e02d339c02f248b87311d584586e4670ea0d84e2da46ab39a934192ee4` |
| 5 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/stieltjeslowerfour-gt-neg-quarter--bad0b5b909650b09faeecddc.md) | 39 | `result-track:bad0b5b909650b09faeecddcb3e19fba5eda633402ad6e513720f55d0d71745a` |
| 6 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-3-lower--04c0245fdd016591b36d4e69.md) | 48 | `result-track:04c0245fdd016591b36d4e69a0bdf62f05212c646c21d48b243f9e2ad19d6387` |
| 7 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-5-lower--393a5857ab993504ec850088.md) | 61 | `result-track:393a5857ab993504ec85008807025b5e759be0108595bf37b5fe5ceeb92baac9` |
| 8 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-7-lower--fa4886607aa31dd0d7095f84.md) | 74 | `result-track:fa4886607aa31dd0d7095f84b7b403cb65921c79247cf0d0b4422a741947b024` |
| 9 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-11-lower--da0ece5dce0739439b290d56.md) | 87 | `result-track:da0ece5dce0739439b290d5603266a9ee07e090dd06ad96e4fbc45c9694c5c53` |
| 10 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-13-lower--572f9c50364ec0d78a033193.md) | 100 | `result-track:572f9c50364ec0d78a0331930d1eee7525c3c5cbcb3730da0304e84b61c9f2dd` |
| 11 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-17-lower--1039486182197a08748cfe3e.md) | 113 | `result-track:1039486182197a08748cfe3e039152b31531f48a7142b93a08cf28250f1c930f` |
| 12 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-19-lower--da45e846194d28ea421caf40.md) | 126 | `result-track:da45e846194d28ea421caf40a600140f2ec5c9f105f435db3caa80507a2f08c9` |
| 13 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-23-lower--c8943c36b4e1e11e202be62f.md) | 139 | `result-track:c8943c36b4e1e11e202be62ff7d2af195fcca5f5bdabd4e48cff5dea5870a4c4` |
| 14 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-29-lower--5c43b8e2aef639145b559f1c.md) | 152 | `result-track:5c43b8e2aef639145b559f1c7cfeda0de71de8eb6ccd6a03a03af725d14925b2` |
| 15 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-31-lower--dde5d596028cdbc14ff88d27.md) | 165 | `result-track:dde5d596028cdbc14ff88d27a88595e789197c373f5f0c5cb626ff9401cea346` |
| 16 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-37-lower--6e2b385f22e01001e8389de4.md) | 178 | `result-track:6e2b385f22e01001e8389de4babf25bfac52dc153c71bfeea5586a65c6465ed9` |
| 17 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-41-lower--2ced049782e481c9e5bf63c3.md) | 191 | `result-track:2ced049782e481c9e5bf63c30fddc1f7885f330efb520df9133eeb48b28681a4` |
| 18 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-43-lower--983d03cbde742fa165ee40cc.md) | 204 | `result-track:983d03cbde742fa165ee40ccc1fdb0fd0a2cca6727e9918d0d0939e581777261` |
| 19 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-47-lower--f25c02921032fe7de6acac17.md) | 217 | `result-track:f25c02921032fe7de6acac17ad60a2cb46c84637148274c72f702908fa9da1e3` |
| 20 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-53-lower--835c706f3485a50e1187be9e.md) | 230 | `result-track:835c706f3485a50e1187be9ef84147c21fd330c4913aab03218e21919b666fd1` |
| 21 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-59-lower--0ac831dc2ef498d7bdbc24e3.md) | 243 | `result-track:0ac831dc2ef498d7bdbc24e3bbd78846435d9e0d363068b4d96ef11db062f2ae` |
| 22 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-61-lower--e720e50f30f94ed0f7c5a14f.md) | 256 | `result-track:e720e50f30f94ed0f7c5a14f95472d70d872545ac05de0754c24af0dfb242e7d` |
| 23 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-67-lower--0a309872e3f811f4534bdf6f.md) | 269 | `result-track:0a309872e3f811f4534bdf6f8e82fc2cebdd745ccefb7e9bc83b5f2cda7d6c02` |
| 24 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-71-lower--fc7e37726577d0dfcf145ce7.md) | 282 | `result-track:fc7e37726577d0dfcf145ce7ff20783ea4c18f1ec9bf35c952b56e30c39cdb32` |
| 25 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-73-lower--356f2fc14829c09b4fbb87c0.md) | 295 | `result-track:356f2fc14829c09b4fbb87c0aa8d4c35ec206d036d8a906ea694b298f50c560b` |
| 26 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-79-lower--0a99443b2f676c5d3b540cdd.md) | 308 | `result-track:0a99443b2f676c5d3b540cdd68aa04d946205c610a59e2f5998e1a99b907a952` |
| 27 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-83-lower--bbe127c0e0ff53f6c053e415.md) | 321 | `result-track:bbe127c0e0ff53f6c053e415f04ce4bd000c016f42af26fac8fefb42a93648c5` |
| 28 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-89-lower--7974ae09b69739c2bac2ba2b.md) | 334 | `result-track:7974ae09b69739c2bac2ba2b6ce0d219c0708cff1639f953361bf5fbaba0daf0` |
| 29 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/log-97-lower--1dc5e4fef61021ea4e017831.md) | 347 | `result-track:1dc5e4fef61021ea4e01783184267fcf0d1ce97e057231758898943f91c6d382` |
| 30 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/primeinventory--cb12fc58ed5c2dbe5b3562f9.md) | 360 | `declaration-track:cb12fc58ed5c2dbe5b3562f9e19735d56baafe543f94a49069827912184c2700` |
| 31 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/certifiedloglower--92a2e7ac36b53d08d7a3217f.md) | 362 | `declaration-track:92a2e7ac36b53d08d7a3217f301fb7e90a6da608349c5926cc2935f9926829e4` |
| 32 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/powercoefficient--6f12076c4af2069b55ae0895.md) | 365 | `declaration-track:6f12076c4af2069b55ae0895f1dc7a583296b0f92c19a9624b25e9427ace78e7` |
| 33 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/finiteproperpowermoment--0b49e64678710087f43c39ba.md) | 367 | `declaration-track:0b49e64678710087f43c39ba90ce2f85fdf131c07d892534017e6c323ba0ce93` |
| 34 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/inventory-primes--dfe4cad282a77b04aafad621.md) | 370 | `result-track:dfe4cad282a77b04aafad621b78b2a1d504e6f642850227baedf8ae13de6508b` |
| 35 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/inventory-log-lower--0c29156370d754e7740ac1c9.md) | 376 | `result-track:0c29156370d754e7740ac1c9165250c7d516ab8de4caf12ea11600d3f431ca6f` |
| 36 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/finiteproperpowermoment-gt-nine-quarters--d85396babd2db5bbd900f746.md) | 407 | `result-track:d85396babd2db5bbd900f7468601fb4db07b2db01669f2eb1f62fb0e28ba36c7` |
| 37 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/finiteproperpowermoment-eq-atoms--aca022631e60cc4807df7d73.md) | 426 | `result-track:aca022631e60cc4807df7d73eca96767773523665f98f602ae735f20b26bf94f` |
| 38 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/declarations/intercept-positive-of-actual-bridges--cf81e919e811bfa39f172f58.md) | 438 | `result-track:cf81e919e811bfa39f172f58f51aa9d0155ee9ca537ac129b936773854698930` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
