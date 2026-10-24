# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39c83148e51445c26b26f084ea1a9c01e5bb3046",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39c83148e51445c26b26f084ea1a9c01e5bb3046`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnitDisc](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/unitdisc--62506860ea0bf572b8038efa.md) | 34 | `declaration-track:62506860ea0bf572b8038efa943da13d88476716f0e8cbf79992ed7d585fd837` |
| 2 | `def` | [coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe--fd4f1c0b46d0ecf34f551129.md) | 43 | `declaration-track:fd4f1c0b46d0ecf34f551129b79929b3eda11cb3567957262683fb7bf5d76a30` |
| 3 | `instance` | [instCommSemigroup](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instcommsemigroup--1e99a2cbf8c94cb38978880e.md) | 45 | `declaration-track:1e99a2cbf8c94cb38978880e6e7d580499c360a438917b7442f4ac51b0de7680` |
| 4 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsemigroupwithzero--24027e44ca48df54fefcc6ce.md) | 46 | `declaration-track:24027e44ca48df54fefcc6ce19e3de2b6d614480ef41a4eaa471f6d9e84975fc` |
| 5 | `instance` | [instIsCancelMulZero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instiscancelmulzero--3b47525357ebe46e92aebb32.md) | 47 | `declaration-track:3b47525357ebe46e92aebb32a95ae39aeeed270fd58390fd31bd81cdb953e55a` |
| 6 | `instance` | [instHasDistribNeg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/insthasdistribneg--f03e7dc3380db263c897dd51.md) | 48 | `declaration-track:f03e7dc3380db263c897dd51794691be39a94827e59f07de85df60abf119928c` |
| 7 | `instance` | [instCoe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instcoe--2783a1c375d4ff8bc2669dc2.md) | 49 | `declaration-track:2783a1c375d4ff8bc2669dc21ae75a461200746fd1423bb2d03537e55ed8f8fa` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-injective--9aa8e76230be62288636fec2.md) | 51 | `result-track:9aa8e76230be62288636fec227696ee1a7613c26a88f10a4786591eec34d2abd` |
| 9 | `theorem` | [coe_inj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-inj--a24d0ab5359d88ae0b453c9b.md) | 55 | `result-track:a24d0ab5359d88ae0b453c9be7579fbcc0cd52ebff8d1ca45d88c4b555037b28` |
| 10 | `theorem` | [norm_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/norm-lt-one--04a513ca366ebb1d2d6041bd.md) | 57 | `result-track:04a513ca366ebb1d2d6041bde67a5840d28270c3fb225dfe05dfa4e622e2abae` |
| 11 | `theorem` | [norm_ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/norm-ne-one--b08175a4aa0f16d9565bac79.md) | 60 | `result-track:b08175a4aa0f16d9565bac7957f519349b86db85efd67ba64352bef9f5d512f2` |
| 12 | `theorem` | [normSq_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/normsq-lt-one--8d2cdfa914060456bf014f95.md) | 66 | `result-track:8d2cdfa914060456bf014f95f8dda61c4e9bd606a4f00846d75dc05ea047cf37` |
| 13 | `theorem` | [coe_ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-ne-one--feb877f858bc9a0c3da0d409.md) | 70 | `result-track:feb877f858bc9a0c3da0d409345371e79ac35b629396a6ee2cffd9a60a5f85a9` |
| 14 | `theorem` | [coe_ne_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-ne-neg-one--51f4b35dc86dffa42178f1b2.md) | 73 | `result-track:51f4b35dc86dffa42178f1b2c9f21514ccfaf6270fccc855797e66bddb5e6046` |
| 15 | `theorem` | [one_add_coe_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/one-add-coe-ne-zero--55712e9712c00b17a62aad46.md) | 76 | `result-track:55712e9712c00b17a62aad462828aca1946f102513dced34ba1c45542e2a73cf` |
| 16 | `theorem` | [coe_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-mul--04ff562492bb49b67e0be351.md) | 80 | `result-track:04ff562492bb49b67e0be351ed544bcd0e5e87c935c2f4c6b13c1b03570b6f62` |
| 17 | `def` | [mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/mk--5eaaabe2ab38165274139078.md) | 85 | `declaration-track:5eaaabe2ab38165274139078b58b5b81c8915ce3eb0b9613e8de200a960cb53b` |
| 18 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-mk--bd912c3d7083243890f81d8f.md) | 89 | `result-track:bd912c3d7083243890f81d8f0ee5a02f6cacc8b267857fc23ffb2ecdfb51d009` |
| 19 | `theorem` | [mk_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/mk-coe--23882ddb2fa35f9504c5c7d3.md) | 93 | `result-track:23882ddb2fa35f9504c5c7d3044caa09ec5848f90b181db3b146d72ab1d3c55f` |
| 20 | `theorem` | [mk_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/mk-neg--70807e65147d7370965b6bd5.md) | 97 | `result-track:70807e65147d7370965b6bd50f240d284ccb578c7f8c3b0a96dab2715733b85f` |
| 21 | `theorem` | [coe_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-zero--cf889ccd148b2a6ec10ca744.md) | 101 | `result-track:cf889ccd148b2a6ec10ca744ecc4dcf83405ded7ad43e6d557f26cadd11ac49b` |
| 22 | `theorem` | [coe_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-eq-zero--096ae8c986764d480b29f9f9.md) | 105 | `result-track:096ae8c986764d480b29f9f9d64d45eb9c91e9c4e70c604026451675a89241b9` |
| 23 | `theorem` | [mk_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/mk-zero--870ed8d8135fc5819937fd4c.md) | 108 | `result-track:870ed8d8135fc5819937fd4c6953144168ffbb914ee9047f7a20e96a83328fb1` |
| 24 | `theorem` | [mk_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/mk-eq-zero--1fe98b7989d3c761c2ea9caa.md) | 109 | `result-track:1fe98b7989d3c761c2ea9caaf6ad98331741550d37e16b5ce21848fc9e72c158` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instance--7ebc7a31dde842410c82f12a.md) | 111 | `declaration-track:7ebc7a31dde842410c82f12ac1f1604f39a54e306bca35ed0d08b7748e8c7d04` |
| 26 | `instance` | [circleAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/circleaction--c7c832384f3226f3d4861d45.md) | 114 | `declaration-track:c7c832384f3226f3d4861d453bba6529637e23b499e85d05186aefa268bdbfe2` |
| 27 | `instance` | [isScalarTower_circle_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/isscalartower-circle-circle--e67f9692230f242dc5ec89cf.md) | 117 | `declaration-track:e67f9692230f242dc5ec89cfb1b1214c1f7d950f2737333346d226d884f6ac2a` |
| 28 | `instance` | [isScalarTower_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/isscalartower-circle--65fb8230af6289f0d3d99744.md) | 120 | `declaration-track:65fb8230af6289f0d3d997449f0363286d6aa771b8da9f417d4896dc0bbef595` |
| 29 | `instance` | [instSMulCommClass_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-circle--6c9bd63bc680b8549fced7c3.md) | 123 | `declaration-track:6c9bd63bc680b8549fced7c3764d24b8b2461c6bea85e6e0ed7fe64f6ecb3867` |
| 30 | `instance` | [instSMulCommClass_circle'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-circle--2e2a1d5dc2d6eef89fa93901.md) | 126 | `declaration-track:2e2a1d5dc2d6eef89fa93901c1bd04eb0baa1355e043399ef1692eda501132c2` |
| 31 | `theorem` | [coe_smul_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-smul-circle--2b91531081bb3b5f2752dbd3.md) | 130 | `result-track:2b91531081bb3b5f2752dbd37057c329e43b88a49c6c1c1489ac5ba0c3c29011` |
| 32 | `instance` | [closedBallAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/closedballaction--e23a56e73a7462ec7139c49b.md) | 133 | `declaration-track:e23a56e73a7462ec7139c49be04b525290246ea9983f331ff769c3b0eee9191a` |
| 33 | `instance` | [isScalarTower_closedBall_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/isscalartower-closedball-closedball--d066d62d8949e99369959eab.md) | 136 | `declaration-track:d066d62d8949e99369959eab53ea08a69c0d998abd21a12c8c1d209d4591f825` |
| 34 | `instance` | [isScalarTower_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/isscalartower-closedball--fe41d009666ad54256e9acf0.md) | 140 | `declaration-track:fe41d009666ad54256e9acf0510234f62f0b8319051cc72893173f47fcfe17f9` |
| 35 | `instance` | [instSMulCommClass_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-closedball--5c7a435423fd5b79ff8c6254.md) | 143 | `declaration-track:5c7a435423fd5b79ff8c6254f299824fd960ca318dbf342dab3c6d0e0fe74fc7` |
| 36 | `instance` | [instSMulCommClass_closedBall'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-closedball--f621c4ca7199f1daadc0ad2d.md) | 146 | `declaration-track:f621c4ca7199f1daadc0ad2d2047b5a65b6bd2e70acea357cb7c34625eebbfba` |
| 37 | `instance` | [instSMulCommClass_circle_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-circle-closedball--b9e7da9c963ed5f504dbf121.md) | 149 | `declaration-track:b9e7da9c963ed5f504dbf121802cb7a14c0d1f80cff61d21271bb22cda84ac73` |
| 38 | `instance` | [instSMulCommClass_closedBall_circle](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/instsmulcommclass-closedball-circle--1469c29796e42336e4e88f9f.md) | 152 | `declaration-track:1469c29796e42336e4e88f9fe4eb3d5ca466ce1679648a6aeab5dfe64b47c42b` |
| 39 | `theorem` | [coe_smul_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-smul-closedball--46fd379da2c90866262e0bbc.md) | 156 | `result-track:46fd379da2c90866262e0bbc43d24b1c5d1d4b2b720b02edd794ab7130c41df4` |
| 40 | `def` | [re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/re--2675adb4c905c4add3e361e8.md) | 160 | `declaration-track:2675adb4c905c4add3e361e89ce83d7dab46a04d078365dff7f8d95fe669efdf` |
| 41 | `def` | [im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/im--9b94c34d99b4884eb1cae36c.md) | 164 | `declaration-track:9b94c34d99b4884eb1cae36c8cffdd2af40ad103b95a5644d6f4d2af6db3a192` |
| 42 | `theorem` | [re_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/re-coe--c85b09c49b9275631582f15c.md) | 168 | `result-track:c85b09c49b9275631582f15cd89b4aeb77a6cb1fb7fd7139dbfa1821a95623f6` |
| 43 | `theorem` | [im_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/im-coe--b3208cb1af4dcc553a985663.md) | 172 | `result-track:b3208cb1af4dcc553a985663b9d9c641d57e3a52065e1d18f18bb36bece40047` |
| 44 | `theorem` | [re_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/re-neg--06e0b4070b0bdf8c7251aac4.md) | 176 | `result-track:06e0b4070b0bdf8c7251aac487398750f0a1e4171e7a80caa402cb6acf1bf037` |
| 45 | `theorem` | [im_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/im-neg--bd3957d09ca241bf2d440618.md) | 180 | `result-track:bd3957d09ca241bf2d4406180a740b68847ec9008626bcaa90277a3d0d5cc640` |
| 46 | `def` | [conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/conj--aea17d243938fe40d74471ee.md) | 184 | `declaration-track:aea17d243938fe40d74471ee779127c3d3e7c9cc7e014195e836bd37dee07e02` |
| 47 | `theorem` | [coe_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/coe-conj--803d8f9bc0131b03da634254.md) | 188 | `result-track:803d8f9bc0131b03da634254416b557aa39eed14c4e6f4f115281e560065a8c4` |
| 48 | `theorem` | [conj_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/conj-zero--75ebe51ef6c067c65553e56c.md) | 192 | `result-track:75ebe51ef6c067c65553e56c139cda8530d69e5938996bd5890d73dd3597216e` |
| 49 | `theorem` | [conj_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/conj-conj--a3ce27e8e9c0609cd45d0967.md) | 196 | `result-track:a3ce27e8e9c0609cd45d0967044fa88a7bfedee778d5de914afbef3257221a16` |
| 50 | `theorem` | [conj_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/conj-neg--68b3fbd4ac5a1863afb65930.md) | 200 | `result-track:68b3fbd4ac5a1863afb65930203745deae57309d2e58a92e942e3c7f740d7cae` |
| 51 | `theorem` | [re_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/re-conj--57de4e8478a0c6519dd40ac8.md) | 204 | `result-track:57de4e8478a0c6519dd40ac8fc0a3f12224000b8db2c69556acea01ad044e5fc` |
| 52 | `theorem` | [im_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/im-conj--9a38b202e52665d8bc9118ae.md) | 208 | `result-track:9a38b202e52665d8bc9118ae1d9a59be86c6dbbc23cbe830d1ead21f8a9a68ad` |
| 53 | `theorem` | [conj_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant2909ca7377ae826f94b8a13f91b6cf67893174e0a6319c7199307a34e6db16c0.lean/declarations/conj-mul--59255147b98a9b36f6ade3a0.md) | 212 | `result-track:59255147b98a9b36f6ade3a07bd13261db995f82c86131183c61829886c194a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
