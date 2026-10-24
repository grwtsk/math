# Verification target: GRWTSK.Analysis.MeasureTheory.CondexpL1.Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1577fd7a324034074401183366b488ba154c0ee7",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1577fd7a324034074401183366b488ba154c0ee7`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondexpL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpIndL1Fin](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin--9beeca66f0a2d5b4a82bc240.md) | 79 | `declaration-track:9beeca66f0a2d5b4a82bc2401befc3655f89c783313971f575047215ba8e37ae` |
| 2 | `theorem` | [condExpIndL1Fin_ae_eq_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin-ae-eq-condexpindsmul--1948d15031ef8c8ed273cf3a.md) | 85 | `result-track:1948d15031ef8c8ed273cf3a98f6c01713193dcb588f0b6d66be932feeffceb9` |
| 3 | `theorem` | [q](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/q--b86c006d02fd5e9c7edf6773.md) | 97 | `result-track:b86c006d02fd5e9c7edf6773d9a962cef46a9633230510c38bc66e81b82666cc` |
| 4 | `theorem` | [condExpIndL1Fin_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin-add--4353e9a344bc787c911018fd.md) | 101 | `result-track:4353e9a344bc787c911018fda5eaba6805021d27ed28c62627347d038aef4fcd` |
| 5 | `theorem` | [condExpIndL1Fin_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin-smul--89aae9ae22767a310a092c01.md) | 115 | `result-track:89aae9ae22767a310a092c01b13ca43fd0845f9d270936ddc21f449d1c4fb376` |
| 6 | `theorem` | [condExpIndL1Fin_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin-smul--396aff477ecf7259ea967301.md) | 127 | `result-track:396aff477ecf7259ea967301f6f304ed94d96f243b65ea08f735539ab6b08d81` |
| 7 | `theorem` | [norm_condExpIndL1Fin_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/norm-condexpindl1fin-le--5f759f11c56d11c6bff71ed8.md) | 140 | `result-track:5f759f11c56d11c6bff71ed88d4118d30a064476beaf11058a8ca50168bc9a20` |
| 8 | `theorem` | [condExpIndL1Fin_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1fin-disjoint-union--fa0cf8218bb14509f7f96bae.md) | 158 | `result-track:fa0cf8218bb14509f7f96bae2c511257e78b204431893da44c0796420ff4b828` |
| 9 | `def` | [condExpIndL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1--60a055a3589d5378ee6d8d1d.md) | 189 | `declaration-track:60a055a3589d5378ee6d8d1ddd27d9e9f60234da636097234b7e2d7f1de7ab75` |
| 10 | `theorem` | [condExpIndL1_of_measurableSet_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-of-measurableset-of-measure-ne-top--d3d137457b874025c6811dbc.md) | 197 | `result-track:d3d137457b874025c6811dbce55c7cfb49a260f0deefc86f593d16ecc792152a` |
| 11 | `theorem` | [condExpIndL1_of_measure_eq_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-of-measure-eq-top--a8617df73fe8c8197a58d319.md) | 205 | `result-track:a8617df73fe8c8197a58d3191ca2ab4b78596e05dc2b66f33d603c8377341d5d` |
| 12 | `theorem` | [condExpIndL1_of_not_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-of-not-measurableset--b04d890e5b214d8a33d4dcfc.md) | 212 | `result-track:b04d890e5b214d8a33d4dcfc0707e767c3eb326477fe179518ade4499272adfa` |
| 13 | `theorem` | [condExpIndL1_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-add--1c9633cf7f24ef79a66d96fd.md) | 219 | `result-track:1c9633cf7f24ef79a66d96fd0c28b0d739a2ce4454f26a40bc03b4e0451772fa` |
| 14 | `theorem` | [condExpIndL1_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-smul--5387195d5781beb596298436.md) | 230 | `result-track:5387195d5781beb59629843672ef127aeafd868d9afc48a2d629ed2bee46732a` |
| 15 | `theorem` | [condExpIndL1_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-smul--57ef5aa0f6293d4f48d99f7a.md) | 241 | `result-track:57ef5aa0f6293d4f48d99f7a4ea89426e784d46aae97fdb31e1d43523b15f5d9` |
| 16 | `theorem` | [norm_condExpIndL1_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/norm-condexpindl1-le--deb46454138b3b089c4063ad.md) | 252 | `result-track:deb46454138b3b089c4063ad1219bb6884c9570fa841f3b9229d84227a7f6926` |
| 17 | `theorem` | [continuous_condExpIndL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/continuous-condexpindl1--5babb199640b30efed309cab.md) | 265 | `result-track:5babb199640b30efed309cabd94660f26f82f49498797ed71d7d3d193931940e` |
| 18 | `theorem` | [condExpIndL1_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpindl1-disjoint-union--f837252626cc4b41063711ec.md) | 270 | `result-track:f837252626cc4b41063711ecc722286b9fcbbe771ffd3779807f4c4c1a02b0d3` |
| 19 | `def` | [condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind--877dfbefe9763feea082f60a.md) | 288 | `declaration-track:877dfbefe9763feea082f60a37472c3a2d33a55c3206070ac0951ef219da9a29` |
| 20 | `theorem` | [condExpInd_ae_eq_condExpIndSMul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-ae-eq-condexpindsmul--690e2f155b3af5579dac9583.md) | 299 | `result-track:690e2f155b3af5579dac9583b013e9f1406c1280f8e1bf6ccdb26d4242b64d07` |
| 21 | `theorem` | [aestronglyMeasurable_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/aestronglymeasurable-condexpind--c590c88cee0c02dc658139d1.md) | 310 | `result-track:c590c88cee0c02dc658139d1b49f03529b1399f6fe086ceb55c02a4935bb8a46` |
| 22 | `theorem` | [condExpInd_empty](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-empty--0668826267927e19943c4b31.md) | 322 | `result-track:0668826267927e19943c4b315d23f522da7d013d75d47a5305849cae63b8ea61` |
| 23 | `theorem` | [condExpInd_smul'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-smul--aa874d88449d9feabad2d181.md) | 333 | `result-track:aa874d88449d9feabad2d1813ea8e765da8d71a412b6ddc632502ec8eb02d02b` |
| 24 | `theorem` | [norm_condExpInd_apply_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/norm-condexpind-apply-le--17d742de409bc444c3db23bb.md) | 339 | `result-track:17d742de409bc444c3db23bb5b96ced16cc26d2fdea18e7caf312df0be7f35c6` |
| 25 | `theorem` | [norm_condExpInd_le](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/norm-condexpind-le--431d5e68afb8de893eeb8e5a.md) | 344 | `result-track:431d5e68afb8de893eeb8e5aea6a8d0295a38e7522016e8fcea7b72e48cf68bb` |
| 26 | `theorem` | [condExpInd_disjoint_union_apply](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-disjoint-union-apply--cbc1261c4a56334047ce77d1.md) | 349 | `result-track:cbc1261c4a56334047ce77d1475716fd5566756a76ec8b36e27fe30a67f000df` |
| 27 | `theorem` | [condExpInd_disjoint_union](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-disjoint-union--19f2a243d9babd37f18afa59.md) | 357 | `result-track:19f2a243d9babd37f18afa59d39e53c79cbde87167a42fb1e52ffe32d5f465f4` |
| 28 | `theorem` | [dominatedFinMeasAdditive_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/dominatedfinmeasadditive-condexpind--f5d49b616c86a58d359007de.md) | 366 | `result-track:f5d49b616c86a58d359007dec7ed641c14d80753249673530e39168cd073c165` |
| 29 | `theorem` | [setIntegral_condExpInd](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/setintegral-condexpind--c01ab007534ef05b92fffbe4.md) | 376 | `result-track:c01ab007534ef05b92fffbe45e8e8db1dd795018773105223f8aa3fe61c4668b` |
| 30 | `theorem` | [condExpInd_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-of-measurable--23ad662d5071578c43f2a7de.md) | 386 | `result-track:23ad662d5071578c43f2a7de38ac3af5444a9e457faab05e9eb1e3d0ad5d23d6` |
| 31 | `theorem` | [condExpInd_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpind-nonneg--296b822a7ac91f8328605f50.md) | 400 | `result-track:296b822a7ac91f8328605f5094f7dbd3ea465aff3323dad5b223cc964d0786a3` |
| 32 | `def` | [condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm--5ad83cb8a5d21d9358552e16.md) | 420 | `declaration-track:5ad83cb8a5d21d9358552e16eb262b310813b5ab1df23b537fab0845f6f40ed4` |
| 33 | `theorem` | [condExpL1CLM_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm-smul--58397ed8b62dcfcbd8d826a9.md) | 428 | `result-track:58397ed8b62dcfcbd8d826a9748b6e0f63a2bfba81da128fdf9796398918ebab` |
| 34 | `theorem` | [condExpL1CLM_indicatorConstLp](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm-indicatorconstlp--14d7d5d2a6f9f3d139565c2e.md) | 435 | `result-track:14d7d5d2a6f9f3d139565c2e4629d8ff0ad2d0c72e5c50e249ebbaae99cafec8` |
| 35 | `theorem` | [condExpL1CLM_indicatorConst](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm-indicatorconst--8ede699e87c51e6ec8313182.md) | 442 | `result-track:8ede699e87c51e6ec831318293b2a97faf1551539e10d8c6368c3dc9098fbb70` |
| 36 | `theorem` | [setIntegral_condExpL1CLM_of_measure_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/setintegral-condexpl1clm-of-measure-ne-top--93da75c6fea7da1aa20f951d.md) | 450 | `result-track:93da75c6fea7da1aa20f951d98dae1f077ed719e47058789c6b8ad796fd60ae2` |
| 37 | `theorem` | [setIntegral_condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/setintegral-condexpl1clm--f273f12eb540ba775d02985f.md) | 478 | `result-track:f273f12eb540ba775d02985fff94c5a61ac6f9f28f303fb4f2399e0ebb868238` |
| 38 | `theorem` | [aestronglyMeasurable_condExpL1CLM](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/aestronglymeasurable-condexpl1clm--427815a1212b684d8f9aa44d.md) | 512 | `result-track:427815a1212b684d8f9aa44d12e04bdcf29b199a38ec9c9618c7f6d56cb5bedc` |
| 39 | `theorem` | [condExpL1CLM_lpMeas](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm-lpmeas--15795798d80bb0e37f6714b2.md) | 537 | `result-track:15795798d80bb0e37f6714b24ce840b971c2e11b8fb4fb7389f04d239fcfcf3c` |
| 40 | `theorem` | [condExpL1CLM_of_aestronglyMeasurable'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1clm-of-aestronglymeasurable--8b4a7480286d712aacf71dd9.md) | 562 | `result-track:8b4a7480286d712aacf71dd94da0bc548116b9246cf28a8f7e2980f454c8d712` |
| 41 | `def` | [condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1--633f1d8510d612f511c356fc.md) | 571 | `declaration-track:633f1d8510d612f511c356fcf39f3091b39e063c1fca04f74c6c8245a3c2132f` |
| 42 | `theorem` | [condExpL1_undef](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-undef--58ca8bc3c9400d27dfd18b2b.md) | 576 | `result-track:58ca8bc3c9400d27dfd18b2bad0f5cf149dadbbc7757d229997dfa7ece52fe48` |
| 43 | `theorem` | [condExpL1_eq](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-eq--9abffb412b3e3fb6d7b39106.md) | 581 | `result-track:9abffb412b3e3fb6d7b39106162889133662e620a3f5d5fc4af8b115d8285f7d` |
| 44 | `theorem` | [condExpL1_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-zero--27d90dcac853084ee274b74c.md) | 587 | `result-track:27d90dcac853084ee274b74c8c3c01fa27853da1bc942943c1d4fb99f43ad79e` |
| 45 | `theorem` | [condExpL1_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-measure-zero--c41c555b0282db2921362595.md) | 593 | `result-track:c41c555b0282db292136259572b0ec66a34162f60771d469aa6915bc82af09e4` |
| 46 | `theorem` | [aestronglyMeasurable_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/aestronglymeasurable-condexpl1--5682dd3f5fc098b96b88ed61.md) | 598 | `result-track:5682dd3f5fc098b96b88ed6121832ff085d2051c7e5f33a92b214e1a4d581aec` |
| 47 | `theorem` | [condExpL1_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-congr-ae--b499498dd3901e6efce33d15.md) | 615 | `result-track:b499498dd3901e6efce33d15c8b87a8b67f6a4021fc3e7e2978398badc6763dc` |
| 48 | `theorem` | [integrable_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/integrable-condexpl1--ceaf65d7b40dfac37708894b.md) | 621 | `result-track:ceaf65d7b40dfac37708894b9b807cff8fe29fbc2da2f83f0b36e997b4457ee4` |
| 49 | `theorem` | [setIntegral_condExpL1](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/setintegral-condexpl1--7a8edb550d63d4a45b22c910.md) | 629 | `result-track:7a8edb550d63d4a45b22c91097eb33b712dd90645dd5cc9b65dd36033b09159e` |
| 50 | `theorem` | [condExpL1_add](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-add--6b70f7126c81def561b574cf.md) | 637 | `result-track:6b70f7126c81def561b574cfa5efd705d84dba8ee656cc4f02467e23c86d89a4` |
| 51 | `theorem` | [condExpL1_neg](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-neg--2add866c02c531b0e1ebd8be.md) | 643 | `result-track:2add866c02c531b0e1ebd8be9176a459de7dd3a577b9a876634ca2cc6676c454` |
| 52 | `theorem` | [condExpL1_smul](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-smul--6cbdc8b2433f81589c4e65dd.md) | 648 | `result-track:6cbdc8b2433f81589c4e65ddbd67c1e01b5041fb96bfaf4245762687f92f9f19` |
| 53 | `theorem` | [condExpL1_sub](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-sub--d494acd34067792ea6a9c098.md) | 654 | `result-track:d494acd34067792ea6a9c098795239f79ea3cbe099ec03bec2ca13ca829f3201` |
| 54 | `theorem` | [condExpL1_of_aestronglyMeasurable'](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-of-aestronglymeasurable--463a0d70328348bb9cf72290.md) | 660 | `result-track:463a0d70328348bb9cf722902f92fd9fa70deac627bf17cfb82da1f5ed9dc81b` |
| 55 | `theorem` | [condExpL1_mono](../../../../../mathematics/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/declarations/condexpl1-mono--fa97e013dedad54de5f4789a.md) | 670 | `result-track:fa97e013dedad54de5f4789aee827b611fc46cd504c9ba2e5aba3e22e3048bb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
