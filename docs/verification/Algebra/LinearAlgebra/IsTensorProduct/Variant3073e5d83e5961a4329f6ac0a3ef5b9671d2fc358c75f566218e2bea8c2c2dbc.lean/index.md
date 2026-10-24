# Verification target: GRWTSK.Algebra.LinearAlgebra.IsTensorProduct.Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0987335067045550de2d8a3f6a68c6d1b1fa87fd",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0987335067045550de2d8a3f6a68c6d1b1fa87fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct--fac7a45d3c69cb846934923d.md) | 53 | `declaration-track:fac7a45d3c69cb846934923d937f66911a6983a4c8114ddff0124308adad3a0f` |
| 2 | `theorem` | [TensorProduct.isTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/tensorproduct-istensorproduct--e173d21a2210ded5fed2b83d.md) | 58 | `result-track:e173d21a2210ded5fed2b83d38524490efab3a00d3bc5dc61f6a9fea9a9e7bea` |
| 3 | `def` | [IsTensorProduct.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-equiv--26b95571a3f07912d49298ac.md) | 69 | `declaration-track:26b95571a3f07912d49298ac7797bf08f23f6a1a28da45ed7b8476641476fcb3` |
| 4 | `theorem` | [IsTensorProduct.equiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-equiv-tolinearmap--8f24612985e614f1d064edae.md) | 73 | `result-track:8f24612985e614f1d064edae694b693194813ad7fea05ef208566a911410f2f1` |
| 5 | `theorem` | [IsTensorProduct.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-equiv-symm-apply--dbd0d2176d1cb1dfb436cf3d.md) | 78 | `result-track:dbd0d2176d1cb1dfb436cf3d0cf38f8b2742472f512d90a5537ce212073eddb9` |
| 6 | `def` | [IsTensorProduct.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-lift--520d1a3200ac2dd5490cb9dc.md) | 86 | `declaration-track:520d1a3200ac2dd5490cb9dcdf0dcdaf9a69c9e37fe97909bcf9895f301756b2` |
| 7 | `theorem` | [IsTensorProduct.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-lift-eq--4a9761df6fb21ef6a4f5f8a2.md) | 90 | `result-track:4a9761df6fb21ef6a4f5f8a238d77ff647f5ab771085503f87f06ec01b05136c` |
| 8 | `def` | [IsTensorProduct.map](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-map--e81b00b6e5e2830b65818eeb.md) | 96 | `declaration-track:e81b00b6e5e2830b65818eebd1000440cfeae4581753d5d13b678bb1424e0afa` |
| 9 | `theorem` | [IsTensorProduct.map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-map-eq--fffbcf911dd4216e6f77ea42.md) | 100 | `result-track:fffbcf911dd4216e6f77ea428887967c1fd70ab949c6f5b97953692538ee1c89` |
| 10 | `theorem` | [IsTensorProduct.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-inductionon--6b4a3db8de22d3cdf798e227.md) | 106 | `result-track:6b4a3db8de22d3cdf798e227577e37f67b76fb67c737c2355528562d2bb103d0` |
| 11 | `lemma` | [IsTensorProduct.of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/istensorproduct-of-equiv--c1b9ac624ce82b29bd3dd8d7.md) | 121 | `result-track:c1b9ac624ce82b29bd3dd8d72523ae626c51b7f6953d3c4bbd380812f73c7102` |
| 12 | `def` | [IsBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange--a9af2e7be8528dcb32e2ecbd.md) | 140 | `declaration-track:a9af2e7be8528dcb32e2ecbde32dd94ec143718e37c88a55213a78c7a98be47f` |
| 13 | `def` | [IsBaseChange.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-lift--48e0c5b1378b76c6be05f9b3.md) | 156 | `declaration-track:48e0c5b1378b76c6be05f9b3be0a01e5f20eb0260f79c1e8959072266bd7a4c3` |
| 14 | `theorem` | [IsBaseChange.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-lift-eq--84a8e7e1f7de9de4f2beff0c.md) | 170 | `result-track:84a8e7e1f7de9de4f2beff0cfcd2639eef550a0ccd48dd8de3f4962d646cb003` |
| 15 | `theorem` | [IsBaseChange.lift_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-lift-comp--3412ea4e882ca30c8ac149da.md) | 174 | `result-track:3412ea4e882ca30c8ac149da34fec3f725499c7e953b56c361f7b319e176a891` |
| 16 | `theorem` | [IsBaseChange.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-inductionon--00a3e828cfd2918d7f7a1d15.md) | 183 | `result-track:00a3e828cfd2918d7f7a1d153a985647d234cb46590fd7b8f34c4f2a7f23bb23` |
| 17 | `theorem` | [IsBaseChange.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-alghom-ext--d5cf2be2e74ed4f168e34f58.md) | 188 | `result-track:d5cf2be2e74ed4f168e34f585f47890cc713dc52a2e5a176b17ef83233a66a67` |
| 18 | `theorem` | [IsBaseChange.algHom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-alghom-ext--a1198f7c1afa3fbe75414a9a.md) | 198 | `result-track:a1198f7c1afa3fbe75414a9ae56e8a5857d3684a73462f2524f222ce85ef1271` |
| 19 | `theorem` | [TensorProduct.isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/tensorproduct-isbasechange--7b715f8ea5d54227eb14f9d4.md) | 206 | `result-track:7b715f8ea5d54227eb14f9d4f3c2c65c4aa16056890454a909aab84cebf3c64e` |
| 20 | `def` | [IsBaseChange.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-equiv--48c690321fbdec4173ca9682.md) | 218 | `declaration-track:48c690321fbdec4173ca968201014ee1ab6fb7319b4771faa1589d184d23a447` |
| 21 | `theorem` | [IsBaseChange.equiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-equiv-tmul--6ed8c5bee1d397d9bca51a16.md) | 232 | `result-track:6ed8c5bee1d397d9bca51a169bc580758657b66aec675bdf774507d8f0564f77` |
| 22 | `theorem` | [IsBaseChange.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-equiv-symm-apply--aacf2a08b2cef63380525364.md) | 235 | `result-track:aacf2a08b2cef63380525364321d8a2ad72ddb243e625187219fa7c22ff2295c` |
| 23 | `lemma` | [IsBaseChange.of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-of-equiv--9520b4407001860359ff0439.md) | 238 | `result-track:9520b4407001860359ff043943108b8479abf9b30ba77c83fdd2d66340b92e30` |
| 24 | `lemma` | [isBaseChange_tensorProduct_map](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-tensorproduct-map--d6b486b0b158431bc57660c2.md) | 254 | `result-track:d6b486b0b158431bc57660c20eab3037d64da6d2fd1f1755d11e876c7517674e` |
| 25 | `theorem` | [IsBaseChange.of_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-of-lift-unique--661bd1f14eca1122bbda742e.md) | 267 | `result-track:661bd1f14eca1122bbda742ecda2f3b249cc971e5226c3284ec0ee9d43d2f302` |
| 26 | `theorem` | [IsBaseChange.iff_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-iff-lift-unique--63b1efa03567e0ce5029be14.md) | 300 | `result-track:63b1efa03567e0ce5029be1459a0f09372a3cfe0f512b9d04ec356caa027ab37` |
| 27 | `theorem` | [IsBaseChange.ofEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-ofequiv--0ce80e5ab0b953f23ce1cd08.md) | 311 | `result-track:0ce80e5ab0b953f23ce1cd08fa203506b639d8b2e3240bb2ab9ca5f4552667c3` |
| 28 | `theorem` | [IsBaseChange.comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-comp--084dff831f6fdcafb9e6aaeb.md) | 332 | `result-track:084dff831f6fdcafb9e6aaeb7ac0ab04b88b7b73671e077aa67c572fd50bed43` |
| 29 | `lemma` | [IsBaseChange.of_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-of-comp--4ca521b98c2104e74626a0c7.md) | 358 | `result-track:4ca521b98c2104e74626a0c7bb9bf5108f338e014c6495d814496c2cb58ee837` |
| 30 | `lemma` | [IsBaseChange.comp_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/isbasechange-comp-iff--50aa962be7fd4235c68d7a8b.md) | 380 | `result-track:50aa962be7fd4235c68d7a8b4d634c34577fef714bc8f0b72fdb6951f8d02226` |
| 31 | `class` | [Algebra.IsPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout--b979e0e70556c99b9441bb35.md) | 399 | `declaration-track:b979e0e70556c99b9441bb3587bb39348a3907b9353c598ea4b107586d9e3a87` |
| 32 | `def` | [Algebra.IsPushout.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-equiv--2357e43e1b9304befcc68337.md) | 404 | `declaration-track:2357e43e1b9304befcc68337044683699f8a7978bf6c04b097c709bafd88d3a6` |
| 33 | `lemma` | [Algebra.IsPushout.equiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-equiv-tmul--ad1980a54beb7b317572b0ca.md) | 418 | `result-track:ad1980a54beb7b317572b0ca7befa7c6693301d7b5afc4c3676f4fde3e73d3a0` |
| 34 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-equiv-symm-algebramap-left--40d2e5293783c0cc78937dae.md) | 422 | `result-track:40d2e5293783c0cc78937daec7a6dd31132837ab75e0300c63da61370857e595` |
| 35 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-equiv-symm-algebramap-right--73ff363db13c31ee55ea7418.md) | 426 | `result-track:73ff363db13c31ee55ea7418ba81d6011b29f1b4294023c63e4c9c66b4a96dba` |
| 36 | `theorem` | [Algebra.IsPushout.symm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-symm--68177aa8bca6a6606ad33998.md) | 433 | `result-track:68177aa8bca6a6606ad339987577e33d10d089ffdb98a2090e325fa4aaf7175e` |
| 37 | `theorem` | [Algebra.IsPushout.comm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-comm--f7e26c42457b2aa14e82018e.md) | 442 | `result-track:f7e26c42457b2aa14e82018e2454ae25e31ee6b3600d3a37824a739a98eba877` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/instance--6796c26bf4f4c16d3bc21629.md) | 445 | `declaration-track:6796c26bf4f4c16d3bc216290a8a57df1e77579f7aacd5d24d3fc30f28d0246e` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/instance--415e309b3c24e2ab413769af.md) | 448 | `declaration-track:415e309b3c24e2ab413769af7fe3c7370f97ef2a24f6410573c028d245196952` |
| 40 | `instance` | [TensorProduct.isPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/tensorproduct-ispushout--5f2922d96b1094660566c4fe.md) | 454 | `declaration-track:5f2922d96b1094660566c4fe317e868cc17fd6f4dc3e6e8849584a65b4eab856` |
| 41 | `instance` | [TensorProduct.isPushout'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/tensorproduct-ispushout--4c0b5c16010f26fe0d66a278.md) | 458 | `declaration-track:4c0b5c16010f26fe0d66a2787cf4591e79721f2422042828e616096b11481ef3` |
| 42 | `def` | [Algebra.pushoutDesc](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-pushoutdesc--edb83cf93d35304b51e272e9.md) | 466 | `declaration-track:edb83cf93d35304b51e272e95d5e495d3692df12d69520b83470ed8bb222f6c5` |
| 43 | `theorem` | [Algebra.pushoutDesc_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-pushoutdesc-left--cffa47b48bcc1fee549476a5.md) | 473 | `result-track:cffa47b48bcc1fee549476a5eb8615c9a6192b961b0e8e2a3719672f6992ba6b` |
| 44 | `theorem` | [Algebra.lift_algHom_comp_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-lift-alghom-comp-left--56dd4bf22d1d4ca518c69c52.md) | 478 | `result-track:56dd4bf22d1d4ca518c69c52de5d877e8a6818054cc84556e50dd7ec575a161d` |
| 45 | `theorem` | [Algebra.pushoutDesc_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-pushoutdesc-right--cc891a4caa062c403fdded15.md) | 484 | `result-track:cc891a4caa062c403fdded1580dc212946c53dacba46f5a5a332df373612858c` |
| 46 | `theorem` | [Algebra.lift_algHom_comp_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-lift-alghom-comp-right--dce45b6036aec147eaf30520.md) | 489 | `result-track:dce45b6036aec147eaf30520215810fef350ca82008347319d1369a2dbec3d04` |
| 47 | `theorem` | [Algebra.IsPushout.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-alghom-ext--c5fbbd258080afca005853f3.md) | 495 | `result-track:c5fbbd258080afca005853f33fbd0cf5f2a16316143a4e4d3e205aecaa7e9046` |
| 48 | `lemma` | [Algebra.IsPushout.comp_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Variant3073e5d83e5961a4329f6ac0a3ef5b9671d2fc358c75f566218e2bea8c2c2dbc.lean/declarations/algebra-ispushout-comp-iff--7e5dbe2e7de6653267529789.md) | 523 | `result-track:7e5dbe2e7de6653267529789c40115446c21cafd2f7c3a200cde54268a1cee5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
