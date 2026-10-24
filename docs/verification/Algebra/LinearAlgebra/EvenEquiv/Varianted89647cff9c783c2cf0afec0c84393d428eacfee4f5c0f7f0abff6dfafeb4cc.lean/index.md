# Verification target: GRWTSK.Algebra.LinearAlgebra.EvenEquiv.Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cc4482530230175625789181ddae569cc068480",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cc4482530230175625789181ddae569cc068480`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LiftLets` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q'](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/q--4465d3775e399b570812b836.md) | 51 | `declaration-track:4465d3775e399b570812b8360b61cc8d7761cda8ed5f69129c83e6321d8ca079` |
| 2 | `theorem` | [Q'_apply](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/q-apply--d06814fd1417b4518439e86d.md) | 56 | `result-track:d06814fd1417b4518439e86db21b69a61a9c7d6c2bf0bbadcb13796e06281c47` |
| 3 | `def` | [e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/e0--1ded61beca0f35f75250567d.md) | 62 | `declaration-track:1ded61beca0f35f75250567d2458a8def94afea99ac2635b2642da3df0141004` |
| 4 | `def` | [v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/v--ec1085ca0f943bb5039ee575.md) | 67 | `declaration-track:ec1085ca0f943bb5039ee575f6dedb751798442d1c0b56dacc883b6067f04bfd` |
| 5 | `theorem` | [ι_eq_v_add_smul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/eq-v-add-smul-e0--16d90a711167845dc5195d4e.md) | 71 | `result-track:16d90a711167845dc5195d4eed2a74b055e7af7e427377c9a87330a7d15bbaed` |
| 6 | `theorem` | [e0_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/e0-mul-e0--1dda681b6ce30b7771f135e6.md) | 76 | `result-track:1dda681b6ce30b7771f135e61318707e66db6aa7c426f4a1f9bac64976feeeee` |
| 7 | `theorem` | [v_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/v-sq-scalar--396c5eafdb1f3b1372b037ea.md) | 80 | `result-track:396c5eafdb1f3b1372b037eac546909ad12fb85705e760173f5d22bc21e0c5f6` |
| 8 | `theorem` | [neg_e0_mul_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/neg-e0-mul-v--bb3f55373e74ff56cc498d3a.md) | 84 | `result-track:bb3f55373e74ff56cc498d3a85f5107d53071032a67b864464dda951e72d608c` |
| 9 | `theorem` | [neg_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/neg-v-mul-e0--0f918d53da546236d855fa48.md) | 91 | `result-track:0f918d53da546236d855fa48428733a9f3337efd739a2a1af0b679fa907b27c1` |
| 10 | `theorem` | [e0_mul_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/e0-mul-v-mul-e0--abf8e22dd86e79371baa2e95.md) | 97 | `result-track:abf8e22dd86e79371baa2e9549cd614c80d814f1f7216c562991c6092f6867ff` |
| 11 | `theorem` | [reverse_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/reverse-v--6008d4b8bf999b7d345f5070.md) | 102 | `result-track:6008d4b8bf999b7d345f50709d246e485939ea274bc043cdee158e60d68fa06f` |
| 12 | `theorem` | [involute_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/involute-v--3662059b1406cb63f89795a3.md) | 107 | `result-track:3662059b1406cb63f89795a36236d26544b31f62470e6bf807e2481c923fc3a3` |
| 13 | `theorem` | [reverse_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/reverse-e0--57293462ac03dc832ab07b1b.md) | 112 | `result-track:57293462ac03dc832ab07b1ba62a2ce9f810b85283cb198568c4e757108e2bf5` |
| 14 | `theorem` | [involute_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/involute-e0--bb009fe70df95eb2bd344838.md) | 117 | `result-track:bb009fe70df95eb2bd344838785850a7b91fb7a6093743d3d0b4f6776c28859a` |
| 15 | `def` | [toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/toeven--f8b293399f49870873b634c5.md) | 126 | `declaration-track:f8b293399f49870873b634c5b893aa2b8a5b4f06aeb2a5ec5b4cb19ec75b3ac9` |
| 16 | `theorem` | [toEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/toeven--f6922cb32742be8504a480d7.md) | 140 | `result-track:f6922cb32742be8504a480d7fa29ab5086cfb02d3fadf0b4a77afb34957d85ce` |
| 17 | `def` | [ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/ofeven--054e2fbe2cb1df2f108e3315.md) | 148 | `declaration-track:054e2fbe2cb1df2f108e3315c0b2a3f5b8b1cfd12047eab9fa33adc4bf8d85f9` |
| 18 | `theorem` | [ofEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/ofeven--b4eb46eddf3a461796a063c9.md) | 177 | `result-track:b4eb46eddf3a461796a063c9fc47d5dd356b2dbe53a26d673eba006ad0ef87e6` |
| 19 | `theorem` | [toEven_comp_ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/toeven-comp-ofeven--8a68754451586dad6a8be5e5.md) | 188 | `result-track:8a68754451586dad6a8be5e5fafe5af848a523e45ad4041e565e4fc3b2e463a7` |
| 20 | `theorem` | [ofEven_comp_toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/ofeven-comp-toeven--c3a200cbe9a4f24dd51232df.md) | 221 | `result-track:c3a200cbe9a4f24dd51232dfdd6b75d4dc0f480efa896d92f4277743d7760dc2` |
| 21 | `def` | [equivEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/equiveven--40576ab3bbe3c48a88fdc954.md) | 237 | `declaration-track:40576ab3bbe3c48a88fdc954ea100b1809a55d2eed5e1f976f0820d85c67feed` |
| 22 | `theorem` | [coe_toEven_reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/coe-toeven-reverse-involute--52ec572c166606259bdecd97.md) | 243 | `result-track:52ec572c166606259bdecd9767a5521facd70e160f3d31aa0dc023257419ec69` |
| 23 | `def` | [evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/eventoneg--25106a223e74f96cbf14ebb2.md) | 261 | `declaration-track:25106a223e74f96cbf14ebb20a7c2b694b995cef69cd94fb781393eded2a965e` |
| 24 | `theorem` | [evenToNeg_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/eventoneg--0e469cd0d4a4a38d79278df2.md) | 278 | `result-track:0e469cd0d4a4a38d79278df2b98e8c5377e17405f0b165eb0d83f36126806039` |
| 25 | `theorem` | [evenToNeg_comp_evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/eventoneg-comp-eventoneg--513bf6a93ecc050dd6b4b25d.md) | 284 | `result-track:513bf6a93ecc050dd6b4b25d19355096a15c779a853f2cd2269d9f637fad00bd` |
| 26 | `def` | [evenEquivEvenNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Varianted89647cff9c783c2cf0afec0c84393d428eacfee4f5c0f7f0abff6dfafeb4cc.lean/declarations/evenequivevenneg--fabc78514f0b47a5aedc5ac5.md) | 296 | `declaration-track:fabc78514f0b47a5aedc5ac5b951856fc8eb5959f2b4d286b89ff2021b7312d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
