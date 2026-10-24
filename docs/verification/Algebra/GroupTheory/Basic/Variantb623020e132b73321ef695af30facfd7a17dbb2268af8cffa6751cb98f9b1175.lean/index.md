# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dd67a43c119efa656af8dbc0e99c575075b037e",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dd67a43c119efa656af8dbc0e99c575075b037e`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OreLocalization.OreSet` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oreEqv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/oreeqv--8fa5890e800570a287d631f3.md) | 55 | `declaration-track:8fa5890e800570a287d631f38b5cd5f3cd2fc414576af9ded3ec1f3de04e9e14` |
| 2 | `def` | [OreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orelocalization--441b5c55f42700b15a07a1bc.md) | 82 | `declaration-track:441b5c55f42700b15a07a1bc5f3e9063d0b2dfb0b830d4d9e799e41c16f4856d` |
| 3 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/macro-rules--4d79b23261941cdd6eb1de05.md) | 94 | `declaration-track:4d79b23261941cdd6eb1de055431e799422e2538d9a08d1be4de0911b9de07be` |
| 4 | `def` | [oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv--df0fe30f3560342a9dd7f6ec.md) | 104 | `declaration-track:df0fe30f3560342a9dd7f6ec36362bc8e0d409878ac2a2693197e0f268035afc` |
| 5 | `theorem` | [ind](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/ind--dc35d23f77108d2763c452aa.md) | 114 | `result-track:dc35d23f77108d2763c452aa0a85f0032ba514e64c826a8acb628259ba598263` |
| 6 | `theorem` | [oreDiv_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-eq-iff--d3f593d8c5cc11a942bf2884.md) | 121 | `result-track:d3f593d8c5cc11a942bf2884c9f4ec488d19b378e7910056b02b2fef333018a2` |
| 7 | `theorem` | [expand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/expand--332d5c56d79798e7cf2d4c25.md) | 128 | `result-track:332d5c56d79798e7cf2d4c25a536bfb960d33fa82e26b4906eb062d6c8b7e1ff` |
| 8 | `theorem` | [expand'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/expand--49436b0ae6b6bd8ae3c94cd9.md) | 135 | `result-track:49436b0ae6b6bd8ae3c94cd9e77661e40acfd5ea2917ebbf6a5085294fbacf01` |
| 9 | `theorem` | [eq_of_num_factor_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/eq-of-num-factor-eq--b145e7093163b92a9c193e45.md) | 142 | `result-track:b145e7093163b92a9c193e4537897b6e17a7bb7e801c384c56175c4ae2f1e9a6` |
| 10 | `def` | [liftExpand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/liftexpand--0c2f10b9361fccab269c2fae.md) | 161 | `declaration-track:0c2f10b9361fccab269c2faed3101f18b5ff8178f895e0704a48200c56dc0806` |
| 11 | `theorem` | [liftExpand_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/liftexpand-of--49c9c28cb1e0175b3fa1b1e0.md) | 174 | `result-track:49c9c28cb1e0175b3fa1b1e0af2c658d6a588f5331e5a6a4209bfca473e7e403` |
| 12 | `def` | [lift₂Expand](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/lift-expand--fddc62f6477825537a315fb0.md) | 182 | `declaration-track:fddc62f6477825537a315fb01a47297c165e2ac7345474c3db83f5421fd1eeaa` |
| 13 | `theorem` | [lift₂Expand_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/lift-expand-of--03954492c152d17d6b9af75e.md) | 198 | `result-track:03954492c152d17d6b9af75e0d568e7fa1ab6de83a58dca7a9c0c98b1571695e` |
| 14 | `def` | [smul'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul--51148ffa38706e05c1e8083c.md) | 207 | `declaration-track:51148ffa38706e05c1e8083c929f0e9c22097f67ce3297e9a2a667ec85728f96` |
| 15 | `theorem` | [smul'_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-char--0857dbc346e977147f837ff3.md) | 211 | `result-track:0857dbc346e977147f837ff340c86f7e87516c53e8bfbb86e39f1e2599cd3201` |
| 16 | `def` | [smul''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul--0e53124c926b828ae89675c9.md) | 235 | `declaration-track:0e53124c926b828ae89675c9e55b2a803fcf1d1df80a4ab76d272d0c619178e5` |
| 17 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul--fc31a2ebe8f6fb80d3fd4288.md) | 258 | `declaration-track:fc31a2ebe8f6fb80d3fd42886dc0f56deb26266a46afba558c1135c672767b3c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--66d2c4db50b25b00fcaff933.md) | 281 | `declaration-track:66d2c4db50b25b00fcaff933f6c357dd6c133785bac6da0471f16d468f5da097` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--a55235e1ef5db4cb731f3721.md) | 285 | `declaration-track:a55235e1ef5db4cb731f3721893be8f7f73febc9a48fb3549481f2b327d93c58` |
| 20 | `theorem` | [oreDiv_smul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-smul-orediv--05f4f434556f18b7ac22011d.md) | 289 | `result-track:05f4f434556f18b7ac22011d3cf5165e483fccae248d39eaeb255105c3dd4c89` |
| 21 | `theorem` | [oreDiv_mul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-mul-orediv--02a7b564eb649e53c26f36e6.md) | 294 | `result-track:02a7b564eb649e53c26f36e68fbf0f3ca4954ced682edc67c01252cc5abe051a` |
| 22 | `theorem` | [oreDiv_smul_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-smul-char--8f12740ae9282690f0e203f0.md) | 302 | `result-track:8f12740ae9282690f0e203f0f61ce4247e5127ca97b6932910e5894f949eaf91` |
| 23 | `theorem` | [oreDiv_mul_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-mul-char--189e1030f6bf1ebc32fbd161.md) | 310 | `result-track:189e1030f6bf1ebc32fbd161f0ee8818c0d59c7cf6cd5e32b88e819ddc31ea01` |
| 24 | `def` | [oreDivSMulChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/oredivsmulchar--7c37ec6984e078edfbc30a68.md) | 318 | `declaration-track:7c37ec6984e078edfbc30a689e3aa6200fcd6650fb31f258a0f467db15585d0d` |
| 25 | `def` | [oreDivMulChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/oredivmulchar--f1145dbda3dec404fa6e5587.md) | 326 | `declaration-track:f1145dbda3dec404fa6e558775938f05861a0ef8df686ba4f803e9fa3ac1a6d3` |
| 26 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one--5f18cab02c26ee99a264f959.md) | 332 | `declaration-track:5f18cab02c26ee99a264f95912ea9aa4e66bc761563cb88e1def82ee2ffaaeb0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--8347fa6b89e7ead1ca249ac5.md) | 335 | `declaration-track:8347fa6b89e7ead1ca249ac58fdc56a9c09b7c8aede0eadb33acd05307f8ca01` |
| 28 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one-def--3a8905e3174316710a8ae50d.md) | 339 | `result-track:3a8905e3174316710a8ae50d6a9f40b25e9958f77e4e5ef6a3fdb5db6bbb643b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--215c05bcd0c73931497d46d7.md) | 343 | `declaration-track:215c05bcd0c73931497d46d7a162f03ca7280285995ef56293f4d42c3dae42d6` |
| 30 | `theorem` | [div_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/div-eq-one--c1803a761395459ecf77d970.md) | 347 | `result-track:c1803a761395459ecf77d970b51a7fc06d318725061c2ce96d52624f1fae45a0` |
| 31 | `theorem` | [div_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/div-eq-one--6fdecda542efedc75154797f.md) | 352 | `result-track:6fdecda542efedc75154797fa5d3a88f5d82fb8e85623028c478da281a522f33` |
| 32 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one-smul--5cb1642ad63f1b4ea7bcb35d.md) | 356 | `result-track:5cb1642ad63f1b4ea7bcb35d298bd5cc1264b33f4266a2df94516b562eca4449` |
| 33 | `theorem` | [one_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one-mul--c16d9f33066355233b4222e0.md) | 361 | `result-track:c16d9f33066355233b4222e0e1624f2598673dd443a3f9b2a80a2848e60ba547` |
| 34 | `theorem` | [mul_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-one--119188b18885551a5f3f3bf9.md) | 365 | `result-track:119188b18885551a5f3f3bf9a8cb09989218356d4f3f0e7b38499bc587c7b8a1` |
| 35 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-smul--8aa758caa9452e6befebacfc.md) | 370 | `result-track:8aa758caa9452e6befebacfc8c52e46c839105ba32562ba61efda9e407b37979` |
| 36 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-assoc--47effad8f6b5e22f539fd49f.md) | 385 | `result-track:47effad8f6b5e22f539fd49f87152e555a2da74e0fb59e2e3ad92c906433824b` |
| 37 | `def` | [npow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/npow--7f0c13895b8d34dbd0541f75.md) | 390 | `declaration-track:7f0c13895b8d34dbd0541f7563c52b887f819edca481affaa71618b15e6bf61b` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--20c70f9ecbabec3c2d97d195.md) | 394 | `declaration-track:20c70f9ecbabec3c2d97d195f2bb32af25363bde84e2897de70dc7b6808d5a57` |
| 39 | `instance` | [instMulActionOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instmulactionorelocalization--fac07aa061ae31476631d283.md) | 401 | `declaration-track:fac07aa061ae31476631d283602dc51727a5a039b08f7e8fc3a6780c70b0d529` |
| 40 | `theorem` | [mul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-inv--3f86350822c2b166b1d8a6bf.md) | 406 | `result-track:3f86350822c2b166b1d8a6bf2d2232dd83b7b0f628b16dd5c8d12e4770246022` |
| 41 | `theorem` | [one_div_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one-div-smul--20b712dce35808419d54d9b6.md) | 410 | `result-track:20b712dce35808419d54d9b6ef47fe8642ca8ca830134606526b9f04b84f8f72` |
| 42 | `theorem` | [one_div_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/one-div-mul--d2be9bc31cfa6c0f65e5417b.md) | 414 | `result-track:d2be9bc31cfa6c0f65e5417b19b6b5d52472a705fad77791b79b336090c31a6f` |
| 43 | `theorem` | [smul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-cancel--85ff16c90d7afec08213c364.md) | 418 | `result-track:85ff16c90d7afec08213c36410f624e81bfccfac6cfa6a2aef1b00e9fd2f0583` |
| 44 | `theorem` | [mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-cancel--0579c2e4643fbd310b703c22.md) | 422 | `result-track:0579c2e4643fbd310b703c2284f9909db087cd340f0718d75f504909827e95e2` |
| 45 | `theorem` | [smul_cancel'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-cancel--7a99263b62865aeeac4626d3.md) | 426 | `result-track:7a99263b62865aeeac4626d364b36ddaed428579e3c1f81549b481732e216fcf` |
| 46 | `theorem` | [mul_cancel'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-cancel--42b7c357733b4abd8db6e93d.md) | 431 | `result-track:42b7c357733b4abd8db6e93d757bd8758c8ae8733b78402932972e05012700a3` |
| 47 | `theorem` | [smul_div_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-div-one--69ff02c03f8b1d0b7d785f2b.md) | 436 | `result-track:69ff02c03f8b1d0b7d785f2b442f0b5cdcf2df447201ad5ca1cc746764ffb276` |
| 48 | `theorem` | [mul_div_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/mul-div-one--28278aef07919420a9821352.md) | 440 | `result-track:28278aef07919420a9821352c5087d16eb9a03de5232cfa384f84cb58c1c47dd` |
| 49 | `def` | [numeratorUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/numeratorunit--9b0f92d46b45636f5853febb.md) | 446 | `declaration-track:9b0f92d46b45636f5853febbbee50f45c8198ecc37928de91019154d0549a2fc` |
| 50 | `def` | [numeratorHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/numeratorhom--65445900dc0e57ac3ee45511.md) | 456 | `declaration-track:65445900dc0e57ac3ee4551188e5c1a836293f290b67240b56f8de246eee0b7d` |
| 51 | `theorem` | [numeratorHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/numeratorhom-apply--8f2bbfac40eda0d5cea89829.md) | 462 | `result-track:8f2bbfac40eda0d5cea89829ef29100550ecb3356fba3a940443ab9ae39c8c4e` |
| 52 | `theorem` | [numerator_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/numerator-isunit--8f187c34ee5c9bb3f19ba010.md) | 466 | `result-track:8f187c34ee5c9bb3f19ba01084d37e47329bcaa4039bfc298fa64e4e0e2425e1` |
| 53 | `def` | [universalMulHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/universalmulhom--f12cdf6c554106020e9b42a4.md) | 478 | `declaration-track:f12cdf6c554106020e9b42a43d7b930e1aaaed976ce45253746117b5af8acc7a` |
| 54 | `theorem` | [universalMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/universalmulhom-apply--ed82acc4bdbb7590ab734ad8.md) | 503 | `result-track:ed82acc4bdbb7590ab734ad81c96c53cea9a6a9c0c571638cc4b73fcfd024aef` |
| 55 | `theorem` | [universalMulHom_commutes](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/universalmulhom-commutes--bc7d0879f14a88ce9c9542e3.md) | 508 | `result-track:bc7d0879f14a88ce9c9542e302f60e1ad5b449ee07d334559a2f5d7f425976c3` |
| 56 | `theorem` | [universalMulHom_unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/universalmulhom-unique--91bee638ffa0f5df872d7081.md) | 513 | `result-track:91bee638ffa0f5df872d7081467a4a74a6fac7d519cf38be32e36fbe2e08d16a` |
| 57 | `def` | [hsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/hsmul--189a60995e2cff83f23e3724.md) | 533 | `declaration-track:189a60995e2cff83f23e3724463ca8d8028a1a2cc34c01be6345266989082a3b` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--36704ea4291cd1b41c4063c9.md) | 545 | `declaration-track:36704ea4291cd1b41c4063c949102f2ae5d70467ee250c4e2c8fd979c4d02cb1` |
| 59 | `theorem` | [smul_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-orediv--1bf590baa13431250c41fa99.md) | 549 | `result-track:1bf590baa13431250c41fa9912c2bf51ad0afdd36d81c86473b01f1d8e2404a1` |
| 60 | `theorem` | [oreDiv_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-one-smul--2d395e85977792d930b9fe64.md) | 553 | `result-track:2d395e85977792d930b9fe6414e36c4252592d6db97de0af0697d79d649dfd96` |
| 61 | `theorem` | [smul_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-one-smul--8df70b3c2990bddcdaaa281c.md) | 558 | `result-track:8df70b3c2990bddcdaaa281c07ca8cb3d5fa8391d362d7c4fcfbfd99980dd3e8` |
| 62 | `theorem` | [smul_one_oreDiv_one_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-one-orediv-one-smul--f6865ae87ba87b6bba5e96b1.md) | 563 | `result-track:f6865ae87ba87b6bba5e96b1fe92edbd41d6ed3a2f44c11cb6b0a30875629cf5` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--60d38dc4000231d916a7a6f4.md) | 568 | `declaration-track:60d38dc4000231d916a7a6f4ec328c9a5686bd8165012deb9f77348f7fd5a93a` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--57bbffc51725aef6873e782e.md) | 575 | `declaration-track:57bbffc51725aef6873e782e9b419e6ab3ec9198a53771e56c6a6eeadd9e664b` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--a4b52bff34b6b533cb0f3dde.md) | 580 | `declaration-track:a4b52bff34b6b533cb0f3ddecce77d3fccbe399ec76c554b788b05189a6f11fd` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--a636b2ee4240705305938cee.md) | 585 | `declaration-track:a636b2ee4240705305938cee064e00028b55e96e6fd259517821ed9433f28ab3` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--4378f7ae6fc33e19ccb891aa.md) | 594 | `declaration-track:4378f7ae6fc33e19ccb891aa3cae1f35da9a85a87822a5523994af36c983ffea` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--fb4369ac46f6b73b8a55140c.md) | 600 | `declaration-track:fb4369ac46f6b73b8a55140cd7f04c007a157c97c836d5862b691705719d1efa` |
| 69 | `theorem` | [smul_oreDiv_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/smul-orediv-one--e6d15e99884b3832361d59cf.md) | 607 | `result-track:e6d15e99884b3832361d59cfee195b67db2461ff85e3e03d132776eaacf748e4` |
| 70 | `theorem` | [oreDiv_mul_oreDiv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/orediv-mul-orediv-comm--0d6f35050e740520e7902f69.md) | 617 | `result-track:0d6f35050e740520e7902f69e4626c7603db2701a3f66409c3717dc656d959d0` |
| 71 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--c6ce723c8c3ec689b3d62761.md) | 622 | `declaration-track:c6ce723c8c3ec689b3d627614b1b600f7fa43e0979a92126b681b40c29bd4949` |
| 72 | `def` | [zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/zero--6b6ee070d688ade47f7d2f88.md) | 638 | `declaration-track:6b6ee070d688ade47f7d2f889060fb4cca5b20619cdfe98deecc73a211a772de` |
| 73 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/instance--d594ec2f8abd8ee2988ca775.md) | 640 | `declaration-track:d594ec2f8abd8ee2988ca775a8a228bf579e0c0c44ae08dfa5d00eaab49c7610` |
| 74 | `theorem` | [zero_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb623020e132b73321ef695af30facfd7a17dbb2268af8cffa6751cb98f9b1175.lean/declarations/zero-def--595400fb247a5f280b6d7f86.md) | 643 | `result-track:595400fb247a5f280b6d7f86b99e4dd3d26e4f39a7688c60c085d79c85988808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
