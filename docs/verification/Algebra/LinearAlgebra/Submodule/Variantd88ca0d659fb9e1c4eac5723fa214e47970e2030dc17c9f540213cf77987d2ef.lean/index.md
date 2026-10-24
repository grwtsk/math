# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap--bd41c292ab8c442bfca6730c.md) | 64 | `declaration-track:bd41c292ab8c442bfca6730c027b858dc1ecaf504df2413bfdcea8b54f5fd678` |
| 2 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-tmul--dad99e37bc7014826e65f782.md) | 67 | `result-track:dad99e37bc7014826e65f7827cfd6194f21f326e453c15ba6c07fee5e2ca9a24` |
| 3 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-map-comp-eq--5e30bbb362cee320c3355658.md) | 69 | `result-track:5e30bbb362cee320c3355658ad933e5edb748a80a1671d2fdc54535894070539` |
| 4 | `theorem` | [coe_mulMap_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/coe-mulmap-comp-eq--e58f40ca11765ed3103eed48.md) | 79 | `result-track:e58f40ca11765ed3103eed483e7e2ebca058e6cd41e36a9c256d7fc9bb2f48be` |
| 5 | `theorem` | [mulMap_op](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-op--3e3d366dcfbdd08947affafc.md) | 85 | `result-track:3e3d366dcfbdd08947affafce94c7d887b57a2d71fcd8b0d90338e38e070a246` |
| 6 | `theorem` | [mulMap_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-comm-of-commute--635fb9b03a6dac3348a8f8ab.md) | 94 | `result-track:635fb9b03a6dac3348a8f8abdb93e43a2724819be9e9373ffcfb9e47fe443052` |
| 7 | `theorem` | [mulMap_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-comp-rtensor--07307fbf298f34c5f7ad5805.md) | 101 | `result-track:07307fbf298f34c5f7ad58057538bd5bef8408e5819ed4d4012065e95c3f9a12` |
| 8 | `theorem` | [mulMap_comp_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-comp-ltensor--e3945f26493f7ac51f80e097.md) | 106 | `result-track:e3945f26493f7ac51f80e09790e98b8dbe67adf7c7a9c8e4d181857461ea4395` |
| 9 | `theorem` | [mulMap_comp_map_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-comp-map-inclusion--0697f8c5ffd3bc1c891e9e97.md) | 111 | `result-track:0697f8c5ffd3bc1c891e9e972ddd84708ccd86d50a004078f3d8d1fdd3488684` |
| 10 | `theorem` | [mulMap_eq_mul'_comp_mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-eq-mul-comp-mapincl--84bb57c1aba2cb9c08b57f95.md) | 115 | `result-track:84bb57c1aba2cb9c08b57f953ec9f76593cd19eae1520757a32c50df4d1fab44` |
| 11 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-range--90f9528810da5231fd8ed1ff.md) | 118 | `result-track:90f9528810da5231fd8ed1ffd2f8d9647cec7f72bdc4c893926658a47441c9a2` |
| 12 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap--4eb26596d74bfebf9e20d038.md) | 128 | `declaration-track:4eb26596d74bfebf9e20d038e1df4a599d571d3b8874c4c96f455d26fd3520be` |
| 13 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/val-mulmap-tmul--02b41e46b2d5fff544c8ee81.md) | 133 | `result-track:02b41e46b2d5fff544c8ee81c5393d84b52a571e6c5d2f22c1169b529fece785` |
| 14 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-surjective--4692e36705ef08c8ce112951.md) | 135 | `result-track:4692e36705ef08c8ce1129516d689bf2fd3fd18444220c97f491bd5e8b8f60dd` |
| 15 | `def` | [lTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone--d44a465cdd08ab290b8dd2b8.md) | 142 | `declaration-track:d44a465cdd08ab290b8dd2b8d2eb4ca0f7fd50dca6f54bc6db54fbebe91a4db8` |
| 16 | `theorem` | [lTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone-tmul--f9b4c94dc155faa6013283d7.md) | 149 | `result-track:f9b4c94dc155faa6013283d7b02292640ae0587161c4b1e40f4543dfff139fc7` |
| 17 | `theorem` | [lTensorOne'_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone-one-tmul--934b6d76cc4edefe27d75eea.md) | 157 | `result-track:934b6d76cc4edefe27d75eea4199fb66d0193d9a5766cef6115d0f6a75158776` |
| 18 | `def` | [lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone--79360b9fe4a1c02bc3d70b38.md) | 164 | `declaration-track:79360b9fe4a1c02bc3d70b3807d53c55ab4bd281213579d14c173127f709a471` |
| 19 | `theorem` | [lTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone-tmul--e30d1f017ed8485e1ccc8944.md) | 174 | `result-track:e30d1f017ed8485e1ccc8944916684c2d8a8af308c8d19b77140dde28c544d76` |
| 20 | `theorem` | [lTensorOne_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone-one-tmul--130f0c7251116856e60b2522.md) | 179 | `result-track:130f0c7251116856e60b25226a2c5868eea2a687411872f6c0c0bde64f7a143a` |
| 21 | `theorem` | [lTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/ltensorone-symm-apply--6579f5f36b5f02b24f2ca4d3.md) | 184 | `result-track:6579f5f36b5f02b24f2ca4d3707c7351024127d6f1850ce21f48d59e0e8a9849` |
| 22 | `theorem` | [mulMap_one_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-one-left-eq--5c0d31fd43ae6f98d9c12288.md) | 186 | `result-track:5c0d31fd43ae6f98d9c12288bcdc08fa33070edcfde9f81587681566f09e0b49` |
| 23 | `def` | [rTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone--a8d1d661a0fb8ecd16584ef2.md) | 193 | `declaration-track:a8d1d661a0fb8ecd16584ef279178ece4f083c5cbd51314254632f95ca951309` |
| 24 | `theorem` | [rTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone-tmul--2979ff50fca3e9da41a7b3f3.md) | 200 | `result-track:2979ff50fca3e9da41a7b3f357a3e544bb9d42d38389334c40e4699904b1d198` |
| 25 | `theorem` | [rTensorOne'_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone-tmul-one--9461f9328ca3bf5409410efa.md) | 209 | `result-track:9461f9328ca3bf5409410efabc1ff0b9f2aae5167866dc35fc2a380cf37614df` |
| 26 | `def` | [rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone--067be71a7bb29d674feb1fed.md) | 216 | `declaration-track:067be71a7bb29d674feb1fed974fcdff84cfd02e3f96e3535e3d3f215236689f` |
| 27 | `theorem` | [rTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone-tmul--5fdb7408610ee919fed29ef9.md) | 226 | `result-track:5fdb7408610ee919fed29ef9b31d4875f7cb7ef4f47cc2086f16c85e9220ce53` |
| 28 | `theorem` | [rTensorOne_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone-tmul-one--8af3b02e42df3deebf14ec2c.md) | 231 | `result-track:8af3b02e42df3deebf14ec2c253e84043be0c7668dd1aaa2bfd43d292d47de71` |
| 29 | `theorem` | [rTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/rtensorone-symm-apply--48301163e9bea0f9b9769aa5.md) | 236 | `result-track:48301163e9bea0f9b9769aa5cc817ec5b72d78589d725bdbe31c1ebf70578121` |
| 30 | `theorem` | [mulMap_one_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-one-right-eq--adb682adae6a497a0c82446b.md) | 238 | `result-track:adb682adae6a497a0c82446b74e111df4db1a1c0fceb52b97b379e75794ec490` |
| 31 | `theorem` | [comm_trans_lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/comm-trans-ltensorone--88a3301b6092fad536fae5d4.md) | 243 | `result-track:88a3301b6092fad536fae5d42ef9e41dc2f2248f7058de78ca9e9aa6d90ff958` |
| 32 | `theorem` | [comm_trans_rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/comm-trans-rtensorone--d09ff7c6fb46b2aebbc238e6.md) | 251 | `result-track:d09ff7c6fb46b2aebbc238e6458a4f2c6889d1f83b8ab2e1bba59ab68ecd2f8d` |
| 33 | `theorem` | [mulLeftMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulleftmap-eq-mulmap-comp--40bcc2fb2d62ae2448b98e2d.md) | 259 | `result-track:40bcc2fb2d62ae2448b98e2d58d4db02db2a084e8e837f899e84a579ee696018` |
| 34 | `theorem` | [mulRightMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulrightmap-eq-mulmap-comp--c071c0358b57db25de87aeb3.md) | 265 | `result-track:c071c0358b57db25de87aeb38d5013c784694e1266277e5130081b49501480b7` |
| 35 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/declarations/mulmap-comm--3f961abc18b14f877abece39.md) | 278 | `result-track:3f961abc18b14f877abece39aaed9331bfcab894e1bd1f4cfeda31d66d4a7641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
