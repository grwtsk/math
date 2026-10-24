# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixAlgebra.Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3320cc4f70dd5baa3cfef67229d1eaa307fefa6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3320cc4f70dd5baa3cfef67229d1eaa307fefa6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean.json)

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
| 1 | `def` | [kroneckerTMulLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmullinearequiv--b9f60b0892cdfc5afc769ce3.md) | 53 | `declaration-track:b9f60b0892cdfc5afc769ce35a243236162d63eeee35361c6b30e5465d75032b` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmullinearequiv-tmul--9b3036b261eb066212161f11.md) | 67 | `result-track:9b3036b261eb066212161f11e6e893d9ed57c2c1ea2cf93ca7df36dc2202977d` |
| 3 | `theorem` | [kroneckerTMulLinearEquiv_symm_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmullinearequiv-symm-kroneckertmul--1ff32a4fc2d381a57c572383.md) | 71 | `result-track:1ff32a4fc2d381a57c5723838986136c980c54c90177de3978b2efa7371bc4f1` |
| 4 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulalgequiv-symm-single-tmul--d2bc2502f5baee35ab8a13b7.md) | 76 | `result-track:d2bc2502f5baee35ab8a13b7c9052c7d468ee8967ed30ab44d4a2d7396ebd42f` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmullinearequiv-one--ce616157580c923595e3265e.md) | 84 | `result-track:ce616157580c923595e3265ea9e5090cb7758344a18adcb27ec097e1c777a7aa` |
| 6 | `theorem` | [kroneckerTMulLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmullinearequiv-mul--df47a9f4af0fcc3065c20834.md) | 90 | `result-track:df47a9f4af0fcc3065c2083414c72c9f1ece8a38ca11ea8ac4fa9c44feaf960d` |
| 7 | `def` | [kroneckerLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerlinearequiv--7ec88b915e8f85b86f09b7b1.md) | 99 | `declaration-track:7ec88b915e8f85b86f09b7b16943504496354fd9fb66711203158ed55515e3b6` |
| 8 | `theorem` | [kroneckerLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerlinearequiv-tmul--451432816a51b3d293b29fc8.md) | 104 | `result-track:451432816a51b3d293b29fc812fec2745ae9e08d999cd2bcd9914623772cd524` |
| 9 | `theorem` | [kroneckerLinearEquiv_symm_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerlinearequiv-symm-kronecker--04a3dd9bb0eb2f8a9d13e233.md) | 107 | `result-track:04a3dd9bb0eb2f8a9d13e2335f874c4d89e94d06dbaf470b458a14a9c24bda09` |
| 10 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tofunbilinear--1aa2414eccefcf6b534eeb0f.md) | 123 | `declaration-track:1aa2414eccefcf6b534eeb0fdb2c5389398251c38fa6e6b828c434e299c79465` |
| 11 | `theorem` | [toFunBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tofunbilinear-apply--9ffed20181edc05ea130cacc.md) | 127 | `result-track:9ffed20181edc05ea130cacc91494703ca836d5d20cc2631df3341ce412e6742` |
| 12 | `def` | [toFunLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tofunlinear--f835556a5ca070688e85e977.md) | 135 | `declaration-track:f835556a5ca070688e85e977115d2e516aff18926741833552b01a140c25db68` |
| 13 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tofunalghom--e26d4b142d12255e46c622af.md) | 142 | `declaration-track:e26d4b142d12255e46c622afc943b2ca0bfdbd096d954ac301eb679f2af67d6b` |
| 14 | `theorem` | [toFunAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tofunalghom-apply--b146971d49b226d322cd0026.md) | 156 | `result-track:b146971d49b226d322cd0026fbea950636c0e42f17ef342544221bc65e4f6d0c` |
| 15 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/invfun--922d04338d9990e5cb02ff05.md) | 164 | `declaration-track:922d04338d9990e5cb02ff0586f5323ab58940ad5954271b6703bb76534b530e` |
| 16 | `theorem` | [invFun_zero](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/invfun-zero--a4cdc110baacbff2b213a4a7.md) | 168 | `result-track:a4cdc110baacbff2b213a4a7f61dcd84d878e509829f44f1df0a5bf6fa932f14` |
| 17 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/invfun-add--e3252ef936cd5a8f01531569.md) | 171 | `result-track:e3252ef936cd5a8f015315695210f11dac08c331a52ba40be298bb479f1f16b0` |
| 18 | `theorem` | [invFun_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/invfun-smul--cdbe5a0bad83a50559d54ab1.md) | 176 | `result-track:cdbe5a0bad83a50559d54ab1f1c3ca965b743d948b7b1e01daaa3ee6e19bc369` |
| 19 | `theorem` | [invFun_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/invfun-algebramap--a248524f8d69bfb4944e5b23.md) | 181 | `result-track:a248524f8d69bfb4944e5b2311867d1913d0af60af855575a2f379a085322e16` |
| 20 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/right-inv--fbd13b5b1fb1c28dd92e51eb.md) | 188 | `result-track:fbd13b5b1fb1c28dd92e51ebd2faebb4e81e019c22824654780009ca02f2e3f3` |
| 21 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/left-inv--340f65668dd8a420e11c133b.md) | 194 | `result-track:340f65668dd8a420e11c133b0a8ad6aa4b9a80fa7608ca34c37af45c8c89d44a` |
| 22 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/equiv--f5c844ef5ea89d708dd89845.md) | 205 | `declaration-track:f5c844ef5ea89d708dd89845e49576015f5e6674f7f3b8958d32a3c01e576b1c` |
| 23 | `def` | [matrixEquivTensor](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/matrixequivtensor--4c3c890a6845c08a447987b2.md) | 217 | `declaration-track:4c3c890a6845c08a447987b2dfedf6f2c176bb8801fc807d5375df7019670be7` |
| 24 | `theorem` | [matrixEquivTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/matrixequivtensor-apply--97318f8ce16d83e0371f0752.md) | 221 | `result-track:97318f8ce16d83e0371f0752329886cdb5962631d145f83c3c99db58141eca6d` |
| 25 | `theorem` | [matrixEquivTensor_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/matrixequivtensor-apply-single--30e08406745c59a9d0af2c16.md) | 227 | `result-track:30e08406745c59a9d0af2c16e3669f7cd1229fc2e665a3462abdbc485b5525d5` |
| 26 | `theorem` | [matrixEquivTensor_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/matrixequivtensor-apply-symm--0aedecb3113387d4cc7f2be2.md) | 233 | `result-track:0aedecb3113387d4cc7f2be244fb07ecbeeecacf704633cb7075010b17e62bc3` |
| 27 | `def` | [kroneckerTMulAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulalgequiv--c3619ef8d7856d22b4798070.md) | 245 | `declaration-track:c3619ef8d7856d22b479807049c6a3ca84fbf7a0fd550a8c989aee7fdf4c2f5b` |
| 28 | `theorem` | [kroneckerTMulAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulalgequiv-apply--4bc05ba8483f65d596d78563.md) | 254 | `result-track:4bc05ba8483f65d596d78563364e356927f8b15d23b55bf78cbb5c33fdf3e9ce` |
| 29 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulalgequiv-symm-apply--1d3f508942546a8c864047c1.md) | 259 | `result-track:1d3f508942546a8c864047c1875387b0e2d8769f57faa4b69e1e7e87e1ecbdcf` |
| 30 | `def` | [kroneckerTMulStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulstaralgequiv--d690bad0301197ac8179d815.md) | 269 | `declaration-track:d690bad0301197ac8179d8151494e273af55a66ac2f4ab649084c121fd8d41b0` |
| 31 | `theorem` | [toAlgEquiv_kroneckerTMulStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/toalgequiv-kroneckertmulstaralgequiv--80e4b82d26bba214455436aa.md) | 276 | `result-track:80e4b82d26bba214455436aa4576f292ba28b9209ac79de554375d7c4a467e13` |
| 32 | `theorem` | [kroneckerTMulStarAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulstaralgequiv-apply--6c790ea5aaad77fb756e4dbb.md) | 280 | `result-track:6c790ea5aaad77fb756e4dbbc4f64ab5d302848c471517f53be1d66b910ef5f3` |
| 33 | `theorem` | [kroneckerTMulStarAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckertmulstaralgequiv-symm-apply--9acc3d6194753ed23bea259e.md) | 285 | `result-track:9acc3d6194753ed23bea259e20611c718b68a0ed571e6fee7dbdd294b569c49b` |
| 34 | `def` | [kroneckerAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckeralgequiv--2658c868db27442b5a69ae52.md) | 294 | `declaration-track:2658c868db27442b5a69ae520795152d62123cfcc08f871e55986e99b120e402` |
| 35 | `theorem` | [toLinearEquiv_kroneckerAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/tolinearequiv-kroneckeralgequiv--c4f1c0db9466a809a7dfd14b.md) | 297 | `result-track:c4f1c0db9466a809a7dfd14bbdf8f47bf12945d571d1dd7edee8cc3e423a5d3e` |
| 36 | `theorem` | [kroneckerAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckeralgequiv-apply--4e9e42ea36219f5fdc155c9d.md) | 300 | `result-track:4e9e42ea36219f5fdc155c9d615016f1dcba899e29bd4f85680c71a804a01140` |
| 37 | `theorem` | [kroneckerAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckeralgequiv-symm-apply--343e2af51c2dfcaf99972af4.md) | 303 | `result-track:343e2af51c2dfcaf99972af4f512614af7e408c915715e6013bda6bc6a519ee7` |
| 38 | `def` | [kroneckerStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerstaralgequiv--69164a4a3de29a352e584aa7.md) | 308 | `declaration-track:69164a4a3de29a352e584aa79d65409bfbf143618eca8433bea08efff49cdf37` |
| 39 | `theorem` | [toAlgEquiv_kroneckerStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/toalgequiv-kroneckerstaralgequiv--c417763835044c1d517339b7.md) | 315 | `result-track:c417763835044c1d517339b74d789871d0184c7ae2ed663e714cd7b12c4be794` |
| 40 | `theorem` | [kroneckerStarAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerstaralgequiv-apply--6a63ba0bf2ff1212498763ee.md) | 318 | `result-track:6a63ba0bf2ff1212498763ee4be4d1adf0aa0d1d6dc91d798e039b2463d88c44` |
| 41 | `theorem` | [kroneckerStarAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean/declarations/kroneckerstaralgequiv-symm-apply--6cd6dfe6c4e83f5a599c172f.md) | 321 | `result-track:6cd6dfe6c4e83f5a599c172fabe1a69ae847e8f6f2f53a104899c688ddba2dd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
