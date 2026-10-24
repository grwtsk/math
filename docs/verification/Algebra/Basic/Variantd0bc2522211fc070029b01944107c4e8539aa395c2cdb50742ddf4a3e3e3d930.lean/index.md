# Verification target: GRWTSK.Algebra.Basic.Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bbdcd156ad997001ba42e2c17c88758308b3382",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bbdcd156ad997001ba42e2c17c88758308b3382`.

Source path: `GRWTSK/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Tauto` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/add-div--1b95178327797b9b9f0a0ec0.md) | 36 | `result-track:1b95178327797b9b9f0a0ec0bdafa99d9ed3f4f75daf16112b839887ddce8771` |
| 2 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/same-add-div--192a1100d476fbc88763420b.md) | 38 | `result-track:192a1100d476fbc88763420ba78d9e17df93f27de58c247170d1704567bf2489` |
| 3 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-add-same--f348e5c47fc27a344617239d.md) | 40 | `result-track:f348e5c47fc27a344617239dc3376e4ebe55873a5a55a684242c33dd2443f907` |
| 4 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/one-add-div--cc9c9f4faac99e1e5fa801ef.md) | 42 | `result-track:cc9c9f4faac99e1e5fa801ef9e709f061c9beb62225c6ead8af83975d5ebfb3e` |
| 5 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-add-one--a1ec33563c9267844f2e15f6.md) | 45 | `result-track:a1ec33563c9267844f2e15f61e163e655e2d253c8a1aa5ddf6442d693d1a9a7d` |
| 6 | `theorem` | [inv_add_inv'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/inv-add-inv--a6555fcbafc34110d17db995.md) | 49 | `result-track:a6555fcbafc34110d17db995c0a637b68bc15df792a208240e17f6ee1733faaa` |
| 7 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--ed3beefa4754ba0f18c7a622.md) | 53 | `result-track:ed3beefa4754ba0f18c7a62220162edd04d892e44adbaf23f4aed14590e38cda` |
| 8 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/add-div-eq-mul-add-div--ceafa0a81eab43dd7b543722.md) | 57 | `result-track:ceafa0a81eab43dd7b543722568bee707e997558eb939e818d7ab9ab862512a8` |
| 9 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/add-div--1f1d28100dd1e8f24adf46ba.md) | 60 | `result-track:1f1d28100dd1e8f24adf46ba54327e27e52f00e9ef4770cff06d70b9319c73f7` |
| 10 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-add--c6c3d2e8dd49e9c05eda547b.md) | 63 | `result-track:c6c3d2e8dd49e9c05eda547b566a335b2b8e357fe56e77095170a7c950003259` |
| 11 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/commute-div-add-div--d00ae170b84f819b5314b91d.md) | 66 | `result-track:d00ae170b84f819b5314b91d6951bccf8c107d511adc3a72168f9899e2e15dd4` |
| 12 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/commute-one-div-add-one-div--74d2c1b69fad0c61888608a0.md) | 70 | `result-track:74d2c1b69fad0c61888608a06a6f9f4c27a71687490da8da94c2199df055d6f2` |
| 13 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/commute-inv-add-inv--16f1ce67fd8dd9f4262f9043.md) | 74 | `result-track:16f1ce67fd8dd9f4262f9043fcf769416bab83ef8a2bfc786cce1c06d468fd7a` |
| 14 | `lemma` | [add_self_div_two](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/add-self-div-two--65f2fd91b54942173b6d99f4.md) | 80 | `result-track:65f2fd91b54942173b6d99f4ea3c471ede94eb04d826463b55e8454b3a6a4598` |
| 15 | `lemma` | [add_halves](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/add-halves--02c5b601605d17e4314a6cfe.md) | 83 | `result-track:02c5b601605d17e4314a6cfe8708b742bc727ea0885e95c21fe4d349482e25af` |
| 16 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-neg-self--6bae35e0999eda93ee76b4a9.md) | 92 | `result-track:6bae35e0999eda93ee76b4a9a4770f6a7fd6a174c4305460138d5b23deb7c15d` |
| 17 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/neg-div-self--2528f69e3cf0c53b18823fdc.md) | 95 | `result-track:2528f69e3cf0c53b18823fdca504ac463bc736c0726a47c0167867f42b4f265c` |
| 18 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-sub-div-same--1d61dd0ff64762a71f16388d.md) | 97 | `result-track:1d61dd0ff64762a71f16388d62bd5ca830984ef7b220c40e6bc1df04a1305cbf` |
| 19 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/same-sub-div--0c3c8a58985ad14809e3d067.md) | 100 | `result-track:0c3c8a58985ad14809e3d06777bb7f08f265396ce25d33b60fe46e624061d6d2` |
| 20 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/one-sub-div--dde4af7f2a8e08882b032c5c.md) | 103 | `result-track:dde4af7f2a8e08882b032c5cefa54458195a0a1a02bc5aeea092bb306fb06c96` |
| 21 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-sub-same--38aca3e7a371ba2204b63c7c.md) | 106 | `result-track:38aca3e7a371ba2204b63c7c37cf8abb0fa7ba3d2a558e2eacbbfe9ead3b975b` |
| 22 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-sub-one--40223e76bd9a8b6f649b9ac1.md) | 109 | `result-track:40223e76bd9a8b6f649b9ac1ada103f486a9f988a1dd7a494d67b0097bd48360` |
| 23 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/sub-div--d67e34becf1ef8770a8c812c.md) | 112 | `result-track:d67e34becf1ef8770a8c812ceb763654ae57d95910e0a31214d6eed24e74570b` |
| 24 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/inv-sub-inv--bac447b9f2cf0822ca567dfa.md) | 116 | `result-track:bac447b9f2cf0822ca567dfaaccc97923756814d94056e38b77fe7c7251d0259` |
| 25 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--854b4bff52540f2991aba21a.md) | 119 | `result-track:854b4bff52540f2991aba21a48fe533af9d621d5f390a0f459d30332a27c6b0a` |
| 26 | `theorem` | [inv_eq_self₀](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/inv-eq-self--e7a639ed276567a26ff90a3a.md) | 123 | `result-track:e7a639ed276567a26ff90a3a00d2aebd7120a1c48554812ae67e031e86408867` |
| 27 | `theorem` | [self_eq_inv₀](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/self-eq-inv--ecf03108a8fe7e93443388c8.md) | 128 | `result-track:ecf03108a8fe7e93443388c81c5e00aef18cfa96773592e6cc75cbbfe8e00b9a` |
| 28 | `theorem` | [isSelfInv_iff_eq_neg_one_or_eq_zero_or_eq_one](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/isselfinv-iff-eq-neg-one-or-eq-zero-or-eq-one--0db824d1d19300c9df148c93.md) | 131 | `result-track:0db824d1d19300c9df148c9355a3d9b237f39acdf2335eedd0b4fc9902c59d86` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--a681b772d84de74331966307.md) | 135 | `declaration-track:a681b772d84de74331966307071532b22cfb9c67ea9dc867bb6ec39679c68d05` |
| 30 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/commute-div-sub-div--b1110575a253e9c42b6d640c.md) | 138 | `result-track:b1110575a253e9c42b6d640c4d51eadee916d851359d942422dd000fe1d7cbc0` |
| 31 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/commute-inv-sub-inv--c6d4423909197550eeaa54a2.md) | 142 | `result-track:c6d4423909197550eeaa54a22d793f4acda975aa816c86e97126ebb892fe5a5d` |
| 32 | `lemma` | [sub_half](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/sub-half--5651b9fb606930b85514209e.md) | 148 | `result-track:5651b9fb606930b85514209e8424a08b09ec29f9cd0fb6938089f3d892a21c71` |
| 33 | `lemma` | [half_sub](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/half-sub--2f87f91ee4e67d52d7345848.md) | 149 | `result-track:2f87f91ee4e67d52d7345848b9590cb8ea792df65e172990ea116b4f779c1b2a` |
| 34 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-add-div--634238c3c3c61fdb279c1a06.md) | 157 | `result-track:634238c3c3c61fdb279c1a06d5e456956a6ef7552879466e83be9a360cd0f770` |
| 35 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/one-div-add-one-div--cc9a931b86baffbea830650b.md) | 161 | `result-track:cc9a931b86baffbea830650b0f5171da8030aac4f62d9c75bcda5ed2bd6fad3f` |
| 36 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/inv-add-inv--1f268257a9d6abe43726aca5.md) | 164 | `result-track:1f268257a9d6abe43726aca5f66910393bf0dbca4fc2c183a41d73d2e3a9ef2f` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--f64ac6134e7ab56e0b26edea.md) | 173 | `declaration-track:f64ac6134e7ab56e0b26edead4414251d7ca1a50ae40c01ff145508a2561f2c6` |
| 38 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-sub-div--803b9996fc033df47264cc1c.md) | 186 | `result-track:803b9996fc033df47264cc1c6638bacd1dbc9f44cdf1a07b1ec44ddaba7c37c5` |
| 39 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/inv-sub-inv--b035f5cc19c175f3186f015a.md) | 190 | `result-track:b035f5cc19c175f3186f015a4997c32c153d29a8222a45b0451324dc65a925ed` |
| 40 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/sub-div--e9dc0314fa02528ba5e2832e.md) | 193 | `result-track:e9dc0314fa02528ba5e2832ee216da196e419b6697070d1fcb0fcf013e635cb5` |
| 41 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/div-sub--7a866d8af0992cdfbc4859fc.md) | 196 | `result-track:7a866d8af0992cdfbc4859fc50f62a4c72bb6af3e2eee0ef6023f6f51ea5d10f` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--07f2496f869a1c0e30b4c58e.md) | 200 | `declaration-track:07f2496f869a1c0e30b4c58e076097c08937dd9cd478a4695a9362c968cd0588` |
| 43 | `abbrev` | [DivisionRing.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/divisionring-ofisunitoreqzero--979a62f3354ecd47f4392cd5.md) | 211 | `declaration-track:979a62f3354ecd47f4392cd501dbd37ea810757781d5c37a7ec09dac0e20fae8` |
| 44 | `abbrev` | [Field.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/field-ofisunitoreqzero--0162131be9f720aa6cfd8613.md) | 222 | `declaration-track:0162131be9f720aa6cfd8613bf8504b07c6c2f97c91a60f40b0a6e5d9d754171` |
| 45 | `abbrev` | [divisionSemiring](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/divisionsemiring--b46381e27c6dc54fb886a8b6.md) | 236 | `declaration-track:b46381e27c6dc54fb886a8b6aa873bdad35c793fc199dc89e952b7865bb17792` |
| 46 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/divisionring--1a677caebbb110a0c2233d53.md) | 250 | `declaration-track:1a677caebbb110a0c2233d533c0ed97793bfc39698743b74cfde57a2454b426e` |
| 47 | `abbrev` | [semifield](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/semifield--07276dc5becd6071a69ad0f3.md) | 268 | `declaration-track:07276dc5becd6071a69ad0f3380d0389f36dd3b6192021fda4eb9fa8bbdec57e` |
| 48 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/field--3845ef226c0795138b63ca68.md) | 280 | `declaration-track:3845ef226c0795138b63ca680fe415060a516fbffce61868c785edefb2f1ebaf` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--16b774c9518e9a89ed0a3cc3.md) | 300 | `declaration-track:16b774c9518e9a89ed0a3cc363e4a0a014ea0eb5475f7accd86b017c1ba7f115` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--e9399be96491f3edfe93d898.md) | 301 | `declaration-track:e9399be96491f3edfe93d8983283ff9bd77c67b3827bb493b6447136c1888148` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--45dd79df04a59dafe975556f.md) | 302 | `declaration-track:45dd79df04a59dafe975556fb91ef6790f8127d76e35625616d67869734cc7fa` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--d99f4b3abde0cc6fa50fb838.md) | 303 | `declaration-track:d99f4b3abde0cc6fa50fb83806a7db4d8a67c69f1b71c6bd5bc020120d998ee0` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--4ed90a9f6746cbed5563b5b2.md) | 304 | `declaration-track:4ed90a9f6746cbed5563b5b2292a0a12a6fc2797c29a4fb3c8c092474487c562` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--61a2017c6c5aace1d98b9bef.md) | 305 | `declaration-track:61a2017c6c5aace1d98b9befff22fbef8d8d9d174757fd281ff4216110df16a3` |
| 55 | `lemma` | [toDual_ratCast](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/todual-ratcast--da73035a19a8127d428fe9f6.md) | 309 | `result-track:da73035a19a8127d428fe9f6565f559c888774258d2f5e1e5e3e889dfb8c2b99` |
| 56 | `lemma` | [ofDual_ratCast](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/ofdual-ratcast--a1bd48a3115ae5e1872433b3.md) | 311 | `result-track:a1bd48a3115ae5e1872433b3c4a7de80f547f6c1f0105ba46e39c7793f48c86d` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--d4d6df777b3ad738aef1f1e0.md) | 317 | `declaration-track:d4d6df777b3ad738aef1f1e0a0b0e297269719af5154a60f7f9e85de3d923833` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--8a1e755b29e3ff050981a19f.md) | 318 | `declaration-track:8a1e755b29e3ff050981a19ffc495ad1797919250cbd230c01e2dc75c5b84116` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--434431118775a2aa8ff3211b.md) | 319 | `declaration-track:434431118775a2aa8ff3211b2ad5a2b43031b22ce029c514c105a8ba342990e3` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--830c45f4f56919ed542dd968.md) | 320 | `declaration-track:830c45f4f56919ed542dd9685574bb996e832753118595a6fbd816b17cc2683e` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/instance--47b7f28c12f5ffd04b9db856.md) | 321 | `declaration-track:47b7f28c12f5ffd04b9db856e049187c84a0fe1039b411fef3fcfac0a7c1abd3` |
| 62 | `lemma` | [toLex_ratCast](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/tolex-ratcast--e542ee1f1ce1cab45d8eb3c3.md) | 325 | `result-track:e542ee1f1ce1cab45d8eb3c3546fe820e53747fbbba79296ff6e4934e202a029` |
| 63 | `lemma` | [ofLex_ratCast](../../../../mathematics/Algebra/Basic/Variantd0bc2522211fc070029b01944107c4e8539aa395c2cdb50742ddf4a3e3e3d930.lean/declarations/oflex-ratcast--9f1742693befd27af631a08c.md) | 327 | `result-track:9f1742693befd27af631a08c7139adacbb112dac8fb1462d43905164a626f0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
