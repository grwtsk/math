# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c210c9e40148a29029e7f1668ed843f576322921",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c210c9e40148a29029e7f1668ed843f576322921`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.SmallSets` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TendstoIxxClass](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendstoixxclass--10b00782611784d72c245fb6.md) | 95 | `declaration-track:10b00782611784d72c245fb651e64ed38ca0de17d24d3742cbf7d7ecf47bea87` |
| 2 | `theorem` | [tendstoIxxClass_principal](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendstoixxclass-principal--2c81c0e1cf1fc65abfca899c.md) | 102 | `result-track:2c81c0e1cf1fc65abfca899cc5941e4ee085cd2648df92828de2965de38d5cb4` |
| 3 | `theorem` | [tendstoIxxClass_inf](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendstoixxclass-inf--22f8d13d10a08ea9af8e8dba.md) | 108 | `result-track:22f8d13d10a08ea9af8e8dba8642a3223f7746c4f762f488a444419b8d871ab5` |
| 4 | `theorem` | [tendstoIxxClass_of_subset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendstoixxclass-of-subset--8e533ec0ce75cded683defe8.md) | 112 | `result-track:8e533ec0ce75cded683defe8a3be3d31431247c58f7e10dc9ed5efd4472dd224` |
| 5 | `theorem` | [HasBasis.tendstoIxxClass](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/hasbasis-tendstoixxclass--719783faaf79c36ff2646fb3.md) | 116 | `result-track:719783faaf79c36ff2646fb3847e41362626b1f49753fcfd35501d870d603e3b` |
| 6 | `theorem` | [Tendsto.Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc--8986f3def436833f47f581fb.md) | 123 | `result-track:8986f3def436833f47f581fbbb63da1d08dedde2c5c2b496faee5caa985d793f` |
| 7 | `theorem` | [Tendsto.Ioc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc--907729a7db6ed4400fee72af.md) | 128 | `result-track:907729a7db6ed4400fee72af6a42d08bda73c2aac70c5605aa72a63d46c87017` |
| 8 | `theorem` | [Tendsto.Ico](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico--48c5a7d7a9d822ae541387e8.md) | 133 | `result-track:48c5a7d7a9d822ae541387e8ca735a79debf5116983e913bf22b843a3a474476` |
| 9 | `theorem` | [Tendsto.Ioo](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo--797ca9696f7aa9d1c6fd64da.md) | 138 | `result-track:797ca9696f7aa9d1c6fd64da5c425daf6e9764868451ab38c5ed6bc0a766f300` |
| 10 | `instance` | [tendsto_Icc_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc-attop-attop--9a0dd1b833bb4bb1da1a3673.md) | 144 | `declaration-track:9a0dd1b833bb4bb1da1a3673db76c1c6b7d55b27d0d04cbc23891d31efeb87a6` |
| 11 | `instance` | [tendsto_Ico_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-attop-attop--9d83a8f149bf1d5f427b54df.md) | 148 | `declaration-track:9d83a8f149bf1d5f427b54df28de81f78ccfb0ac3d71aa7be85bb9abf401248c` |
| 12 | `instance` | [tendsto_Ioc_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-attop-attop--6b390051be81f1e47b079e47.md) | 151 | `declaration-track:6b390051be81f1e47b079e47bdb95d10ebcfbbf58cbfe709696d7bf493aba06c` |
| 13 | `instance` | [tendsto_Ioo_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-attop-attop--9bcbdb9e51d7d03412740e5c.md) | 154 | `declaration-track:9bcbdb9e51d7d03412740e5c8af3a0da6ae7f85d155a911bec185e886bee44f5` |
| 14 | `instance` | [tendsto_Icc_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc-atbot-atbot--614224ebe99c9ce0d58a0e57.md) | 157 | `declaration-track:614224ebe99c9ce0d58a0e57af124fc9876e3848f72868b04d36e11df4880a6b` |
| 15 | `instance` | [tendsto_Ico_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-atbot-atbot--85c3d21555ebb145d63deaf4.md) | 161 | `declaration-track:85c3d21555ebb145d63deaf48cb0c4979c869261684fd67b8e42ccd2e9d52d96` |
| 16 | `instance` | [tendsto_Ioc_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-atbot-atbot--68070ceacc8209641ef5d350.md) | 164 | `declaration-track:68070ceacc8209641ef5d3504cd2d4b2af13b7f59961a33c129265877632bac8` |
| 17 | `instance` | [tendsto_Ioo_atBot_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-atbot-atbot--13da97e66aaabcb981597e2f.md) | 167 | `declaration-track:13da97e66aaabcb981597e2fe3b7c5e169280c7428357be0d606bf56cb0deb31` |
| 18 | `instance` | [OrdConnected.tendsto_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/ordconnected-tendsto-icc--eb1aaa68ea67d3bd0fb416ae.md) | 170 | `declaration-track:eb1aaa68ea67d3bd0fb416aeb3b4baa4398feb2386944a591aeec3ab747e35c4` |
| 19 | `instance` | [tendsto_Ico_Ici_Ici](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-ici-ici--f2fc5e66ca90014d47a86cc0.md) | 174 | `declaration-track:f2fc5e66ca90014d47a86cc059e089c325676ada5e2ca791c0a479625060f9e0` |
| 20 | `instance` | [tendsto_Ico_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-ioi-ioi--05cc3316dbc01216a5d885df.md) | 177 | `declaration-track:05cc3316dbc01216a5d885df7610452233395e7e651ebf402bdc564dbf5b385e` |
| 21 | `instance` | [tendsto_Ico_Iic_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-iic-iio--35285d55268cec9bf8ed12db.md) | 180 | `declaration-track:35285d55268cec9bf8ed12dba0da2e4919d2e67e1040b0b9853a00399d1b116a` |
| 22 | `instance` | [tendsto_Ico_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-iio-iio--c57017e98f7a09bc270e88ad.md) | 183 | `declaration-track:c57017e98f7a09bc270e88ad0166c0ac6a6e25001a3ff9c3b219c197203f59c0` |
| 23 | `instance` | [tendsto_Ioc_Ici_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-ici-ioi--8bda700210df13ad783aea8b.md) | 186 | `declaration-track:8bda700210df13ad783aea8befc618227dae520dfd0aa57e40a2a7a413858203` |
| 24 | `instance` | [tendsto_Ioc_Iic_Iic](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-iic-iic--55d74497be2b2d4340e46d0f.md) | 189 | `declaration-track:55d74497be2b2d4340e46d0f25148e9e9f914861199bc35c6cab910b12eab4ea` |
| 25 | `instance` | [tendsto_Ioc_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-iio-iio--54a19714d488d6b21ec06639.md) | 192 | `declaration-track:54a19714d488d6b21ec0663981ac5a1c33e5f95d6731094c34a7e307028b39ac` |
| 26 | `instance` | [tendsto_Ioc_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-ioi-ioi--81a34a5d7d332b94fe52c761.md) | 195 | `declaration-track:81a34a5d7d332b94fe52c761586400a1e12d01abec99faab41effb7f03329bfa` |
| 27 | `instance` | [tendsto_Ioo_Ici_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-ici-ioi--2bdd04950a53db53ed1ed9da.md) | 198 | `declaration-track:2bdd04950a53db53ed1ed9da9091d91416dfe885f0f44840beb248b84d3e5b79` |
| 28 | `instance` | [tendsto_Ioo_Iic_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-iic-iio--f6d153e21643a05ad1bcf152.md) | 201 | `declaration-track:f6d153e21643a05ad1bcf15200395d97920468f169e2d6ea51b25324a96643e4` |
| 29 | `instance` | [tendsto_Ioo_Ioi_Ioi](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-ioi-ioi--6767de9d1750ad041a77c609.md) | 204 | `declaration-track:6767de9d1750ad041a77c6096a9203b6791baae55ec394036982f513c3c65ea1` |
| 30 | `instance` | [tendsto_Ioo_Iio_Iio](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-iio-iio--384bd34d7d8cb12d8e6c619c.md) | 207 | `declaration-track:384bd34d7d8cb12d8e6c619cab58049f811d58f62c62da2c3f6bc7741105ffc1` |
| 31 | `instance` | [tendsto_Icc_Icc_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc-icc-icc--83ba7563ae7cc321a003cc1f.md) | 210 | `declaration-track:83ba7563ae7cc321a003cc1f6c7a1e1aa8a5cd2431988bcbfeef20da7cd4ffff` |
| 32 | `instance` | [tendsto_Ioc_Icc_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-icc-icc--0bacea9f9509088ad3782425.md) | 213 | `declaration-track:0bacea9f9509088ad3782425bd0eaef1be96dfafabf20c400ff07c52d30d5f2f` |
| 33 | `instance` | [tendsto_Icc_pure_pure](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc-pure-pure--04a52968ea5130121d9c7167.md) | 222 | `declaration-track:04a52968ea5130121d9c716780d0df84017d902444988cb7f71e14e488fa5643` |
| 34 | `instance` | [tendsto_Ico_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ico-pure-bot--c637a41e8aee260461beeda4.md) | 226 | `declaration-track:c637a41e8aee260461beeda4591aa618d890225797c0e0bd66367d1c0b495daa` |
| 35 | `instance` | [tendsto_Ioc_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-pure-bot--966bf522fb71852d82c35930.md) | 229 | `declaration-track:966bf522fb71852d82c3593011cbc9a131c687e8dce27fa31548c115885a9e9e` |
| 36 | `instance` | [tendsto_Ioo_pure_bot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioo-pure-bot--9f7b11a9fefc590cc640e557.md) | 232 | `declaration-track:9f7b11a9fefc590cc640e557938bb97835dbfb1a95721883dc035f2e943129ce` |
| 37 | `instance` | [tendsto_Icc_uIcc_uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-icc-uicc-uicc--2ac7800966bb97c6c594f2f5.md) | 243 | `declaration-track:2ac7800966bb97c6c594f2f54e284a927fede694078daad86f48cd3338785154` |
| 38 | `instance` | [tendsto_Ioc_uIcc_uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-ioc-uicc-uicc--898a7c8880259e29fa5f0c55.md) | 246 | `declaration-track:898a7c8880259e29fa5f0c55453b71f33f33ef0765e462b16946274cdded8afd` |
| 39 | `instance` | [tendsto_uIcc_of_Icc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-uicc-of-icc--6db54e07734e172eb21a2785.md) | 249 | `declaration-track:6db54e07734e172eb21a2785c336bcc3afc0189d6826232d1ced85f3d38084eb` |
| 40 | `theorem` | [Tendsto.uIcc](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant653ecca77d7b7ef5816bb5ce15543ba13517b61fe782db9064822c648ac24fed.lean/declarations/tendsto-uicc--ae1732de13cbed4bdf509ffa.md) | 261 | `result-track:ae1732de13cbed4bdf509ffa9c4be7f0f532eebb0fcb4d7b47f870aed09ceac9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
