# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d7c1a821892237d0fe9262da98a64bf8da116a0",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d7c1a821892237d0fe9262da98a64bf8da116a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual--d22a0e007aa9109ed1880191.md) | 61 | `declaration-track:d22a0e007aa9109ed1880191c8c88d7fd2de357f8f1adf2cfff771a33d474d9f` |
| 2 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-apply--8aa830d424befbd81acd506c.md) | 64 | `result-track:8aa830d424befbd81acd506c900ef29b486ed787c8758187f952aeb38fb04215` |
| 3 | `theorem` | [toDual_linearCombination_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-linearcombination-left--cd660b0d2a0dba2c8910853d.md) | 69 | `result-track:cd660b0d2a0dba2c8910853d010aab4e584bd2939c3e438d12f28514a282983f` |
| 4 | `theorem` | [toDual_linearCombination_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-linearcombination-right--34e89cd93ce326cda6e3ce3a.md) | 79 | `result-track:34e89cd93ce326cda6e3ce3af86b019a3a12eec4e6aef038e1ed2c612b09935b` |
| 5 | `theorem` | [toDual_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-apply-left--a683b4a2660b8fee80441984.md) | 87 | `result-track:a683b4a2660b8fee804419845138ef019215c7e6ff7fb167ad38666732cb4534` |
| 6 | `theorem` | [toDual_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-apply-right--8b0d291391f9eaba22d377b1.md) | 90 | `result-track:8b0d291391f9eaba22d377b1ef14859cd2888d2fe73e6f5c88d8b381a6f4dc07` |
| 7 | `theorem` | [coe_toDual_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coe-todual-self--5a4839b68a7eb9d62f61c45b.md) | 93 | `result-track:5a4839b68a7eb9d62f61c45b34aa4d65d88f01ddaf55a7a59e6b7f365e6cedeb` |
| 8 | `def` | [toDualFlip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todualflip--78957c9a26dbbc9be756c9a3.md) | 98 | `declaration-track:78957c9a26dbbc9be756c9a393f297ef8432cf08b2b5e633b894beae6a5dc4cd` |
| 9 | `theorem` | [toDualFlip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todualflip-apply--52cac4d74ae15eb1c767ec75.md) | 101 | `result-track:52cac4d74ae15eb1c767ec75b69990454ee0fa46ebf558293a1ac7d7d4834c3d` |
| 10 | `theorem` | [toDual_eq_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-eq-repr--103bf8a4655195678bf3339a.md) | 104 | `result-track:103bf8a4655195678bf3339a2e0e775d3d1bb662e38dec9abc7a477ebaee0efe` |
| 11 | `theorem` | [toDual_eq_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-eq-equivfun--7c06aa6bb97fcc714d8ed304.md) | 107 | `result-track:7c06aa6bb97fcc714d8ed30445adcad1917f006a51b295192e29a36d6087c87d` |
| 12 | `theorem` | [toDual_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-injective--11cded5475e49aac69b4fcca.md) | 110 | `result-track:11cded5475e49aac69b4fcca4d354cc0bd3cd2f4339bde40e0fdf8ad49202903` |
| 13 | `theorem` | [toDual_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-inj--b3bce387adabd32449e35fa9.md) | 113 | `result-track:b3bce387adabd32449e35fa9fe0e9e2d4181037d65605acb4fae812689f64c4f` |
| 14 | `theorem` | [toDual_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-ker--d6bc4c40ac8d4cdf763a04fd.md) | 116 | `result-track:d6bc4c40ac8d4cdf763a04fd45ee8e686fb6b6b827ebd707b770fd9da60f4a52` |
| 15 | `theorem` | [toDual_range](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-range--9401abbaba4814215c3e45a8.md) | 119 | `result-track:9401abbaba4814215c3e45a8ae1d0d620976fabde498eb65a7cebd1ea461ce55` |
| 16 | `theorem` | [sum_dual_apply_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/sum-dual-apply-smul-coord--0d0e8f50694ac2c95b04f4d9.md) | 128 | `result-track:0d0e8f50694ac2c95b04f4d9ca345bf9a4270980b20658cc264ca74c3b5cfd38` |
| 17 | `def` | [toDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todualequiv--b17e2bfe6f96d8767bfe41f7.md) | 139 | `declaration-track:b17e2bfe6f96d8767bfe41f778e4038e48c5eb4b8a064b36083e97ccae99d641` |
| 18 | `theorem` | [toDualEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todualequiv-apply--90f36e991954793225d067d9.md) | 144 | `result-track:90f36e991954793225d067d9e33c4daa6918272789a3b3756fc7a97b83f23caf` |
| 19 | `def` | [dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis--759269e92e7839543d388f02.md) | 148 | `declaration-track:759269e92e7839543d388f02628d5dc554b803fdc1bc225b35796f94feb85e7d` |
| 20 | `theorem` | [dualBasis_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis-apply-self--d20ff216a68ec883bbe68783.md) | 152 | `result-track:d20ff216a68ec883bbe68783a06ec13f722472ffbb6beff5115b4829a378a079` |
| 21 | `theorem` | [linearCombination_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/linearcombination-dualbasis--045cea16618e46994ffd8d2e.md) | 157 | `result-track:045cea16618e46994ffd8d2e5cb49a9e7de1ae4405683918e7d0c83c0c834070` |
| 22 | `theorem` | [dualBasis_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis-repr--ff4b0bbfc515df2f2ea45090.md) | 166 | `result-track:ff4b0bbfc515df2f2ea45090f86da3e23a9f5eaf4c027dc6e8f8117770c0f0a0` |
| 23 | `theorem` | [dualBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis-apply--ff6de356a732029d09ada98a.md) | 169 | `result-track:ff6de356a732029d09ada98a96cd820fe878bec247af5a507b0f2ec159b8f131` |
| 24 | `theorem` | [coe_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coe-dualbasis--dc8fc4922cda2c81330401fc.md) | 173 | `result-track:dc8fc4922cda2c81330401fcb2bf8ad03eaf679e8b0c3915907bff4e396b1302` |
| 25 | `theorem` | [toDual_toDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/todual-todual--db0bd509bd64f8cbfc3b1f8c.md) | 178 | `result-track:db0bd509bd64f8cbfc3b1f8c20c2dfe326800bf7f22602cd5901e98760448565` |
| 26 | `theorem` | [dualBasis_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis-equivfun--a0ea737574526319d2374db7.md) | 185 | `result-track:a0ea737574526319d2374db739203c2d9b3d17c2fc3681ab0639bfb3b90f87e9` |
| 27 | `theorem` | [eval_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/eval-injective--4e4fe06f51e2a2a7d6bb6fbb.md) | 188 | `result-track:4e4fe06f51e2a2a7d6bb6fbb8d773294777d668d0fdaf5eb09c1764df75705a6` |
| 28 | `theorem` | [eval_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/eval-ker--e26925fca4236ce5abec7b50.md) | 193 | `result-track:e26925fca4236ce5abec7b50d64c37f0a9a93cfa7c9ebe22d74d0be18c6bff1d` |
| 29 | `theorem` | [eval_range](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/eval-range--30b1fd371b3bcc7ba31ff1eb.md) | 196 | `result-track:30b1fd371b3bcc7ba31ff1ebf27dc18f6ed5c403a5a93283872dd66d4da7323b` |
| 30 | `lemma` | [dualBasis_coord_toDualEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dualbasis-coord-todualequiv-apply--eee6799a0379d25fc56cde37.md) | 202 | `result-track:eee6799a0379d25fc56cde37fb1375bebaaafc13a1436ad2862a2e1a5165ac41` |
| 31 | `lemma` | [coord_toDualEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coord-todualequiv-symm-apply--879a018fcb49d2e5a12885eb.md) | 206 | `result-track:879a018fcb49d2e5a12885eba3272265234dbf84487d8aa269437f743df770c8` |
| 32 | `theorem` | [linearCombination_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/linearcombination-coord--7079976d6390923dbb5f126c.md) | 214 | `result-track:7079976d6390923dbb5f126cd018783873d5b563af8f128e798581ce4bfb53f1` |
| 33 | `def` | [evalUseFiniteInstance](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/evalusefiniteinstance--1ca8de8ef5b1bd8c2bc4c66e.md) | 232 | `declaration-track:1ca8de8ef5b1bd8c2bc4c66e9d557b5afba96a466960c2539bdf303a9125da5f` |
| 34 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/elab--6d7105504db0127274c00442.md) | 235 | `declaration-track:6d7105504db0127274c00442c3d00e72425fda4d392d579035a3b98b1fbe597d` |
| 35 | `structure` | [Module.DualBases](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/module-dualbases--2ee372facc72b4db4d46f55f.md) | 238 | `declaration-track:2ee372facc72b4db4d46f55f215b577f9664a3d064a6e7ab4862499ae73f66cd` |
| 36 | `def` | [coeffs](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coeffs--4b8bd26eeb82b8aa7d68c7e7.md) | 255 | `declaration-track:4b8bd26eeb82b8aa7d68c7e7b6fccd1e925fb62e4b9a8f0441165d08e291362d` |
| 37 | `theorem` | [coeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coeffs-apply--da36c5de4c5777eca2abb54e.md) | 261 | `result-track:da36c5de4c5777eca2abb54e9ca52612a37e13972c2188d3d870737405d00019` |
| 38 | `def` | [lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/lc--d56cfdf4f02684b088891a7d.md) | 266 | `declaration-track:d56cfdf4f02684b088891a7d9694055e305609d4db10f25148c7fccb181b6268` |
| 39 | `theorem` | [lc_def](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/lc-def--12f7e85fc0da90e25671fb1a.md) | 269 | `result-track:12f7e85fc0da90e25671fb1aa7237c7803a97950e407f6ac5861624dbf36bb73` |
| 40 | `theorem` | [dual_lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/dual-lc--a3b9db3484c011552396f426.md) | 277 | `result-track:a3b9db3484c011552396f426db867fb2e6b4709ec08d5faa655017a83708049f` |
| 41 | `theorem` | [coeffs_lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coeffs-lc--456b349f4e58f3b2f7146ac3.md) | 285 | `result-track:456b349f4e58f3b2f7146ac3f6550e2d2cbc1706c07a7f1d8bc6884b58577603` |
| 42 | `theorem` | [lc_coeffs](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/lc-coeffs--b2128964ca1978c2e673fda6.md) | 291 | `result-track:b2128964ca1978c2e673fda6970a85a27127b5ae90340115054a4254b8c4ef15` |
| 43 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/basis--356c8955d97b09fbf11174a4.md) | 295 | `declaration-track:356c8955d97b09fbf11174a481ec86bc229a0aa44d9196760b00ffe2c715638c` |
| 44 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coe-basis--3a9a29326a957540613d1da1.md) | 309 | `result-track:3a9a29326a957540613d1da12599ad542681dd4cae0338940c400fb87a8e02ec` |
| 45 | `theorem` | [mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/mem-of-mem-span--01ccfc52ca09dc190c04bc96.md) | 317 | `result-track:01ccfc52ca09dc190c04bc962ae80fbec97e58a365879716f3e40ef73aca2e2f` |
| 46 | `theorem` | [coe_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/declarations/coe-dualbasis--ee0cd4face4f09ea3213653d.md) | 324 | `result-track:ee0cd4face4f09ea3213653d73238ac33a158d82da38b22cf802ccb76fbc2c9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
