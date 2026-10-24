# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixAlgebra.Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c97e0bf0185fc2c5c408d92f32d8a7681b39375",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c97e0bf0185fc2c5c408d92f32d8a7681b39375`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean.json)

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
| 1 | `def` | [kroneckerTMulLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmullinearequiv--dcab097259c41f84c8cd421c.md) | 45 | `declaration-track:dcab097259c41f84c8cd421cb9d75cc5d0f24ecddc6d0d464eb544788558bb08` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmullinearequiv-tmul--7693a5d1ea2edd299b6b3c9a.md) | 59 | `result-track:7693a5d1ea2edd299b6b3c9a7cb0f6bbe9b8496d38a4919d83999d1bd96b9afa` |
| 3 | `theorem` | [kroneckerTMulLinearEquiv_symm_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmullinearequiv-symm-kroneckertmul--0970f527e55a6b43e966b679.md) | 63 | `result-track:0970f527e55a6b43e966b679054daf91f00d44ef094aab8e739de1aa215a35fe` |
| 4 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulalgequiv-symm-single-tmul--3886e22489a92bdfc6750f78.md) | 68 | `result-track:3886e22489a92bdfc6750f78b62b35d01cbe58ad9ff33812ad959d6ef9c8533d` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmullinearequiv-one--7e2f47c37ed4fea90990832e.md) | 76 | `result-track:7e2f47c37ed4fea90990832e46ab9432eb1fd03656772b4f8266f3c52e17647f` |
| 6 | `theorem` | [kroneckerTMulLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmullinearequiv-mul--52bf938e5b1f579c5db7cac5.md) | 82 | `result-track:52bf938e5b1f579c5db7cac5ffa129921caa78bfa8a38e466b34b583523a6674` |
| 7 | `def` | [kroneckerLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerlinearequiv--cbd7b7b1c806b1422f60ffe9.md) | 91 | `declaration-track:cbd7b7b1c806b1422f60ffe9ec9c56c699a3d7997ee12194150469223998fc70` |
| 8 | `theorem` | [kroneckerLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerlinearequiv-tmul--aa3f24b4237ba15a45e9810f.md) | 96 | `result-track:aa3f24b4237ba15a45e9810f7777b367a7200594709c329e861632273070d9b9` |
| 9 | `theorem` | [kroneckerLinearEquiv_symm_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerlinearequiv-symm-kronecker--8c9b8de76d05a35544332a81.md) | 99 | `result-track:8c9b8de76d05a35544332a81e68352beaa33061ec17ec0eea76f8d65ed899e15` |
| 10 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tofunbilinear--0735120c3a0e545ca027e4a2.md) | 115 | `declaration-track:0735120c3a0e545ca027e4a2f79ad81c58805d2183be5c3b46ac0ba7548052fe` |
| 11 | `theorem` | [toFunBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tofunbilinear-apply--528a602717e95c766aa64bf8.md) | 119 | `result-track:528a602717e95c766aa64bf84513f9e70f5ef25eca3484f3537fe8ef8b88d4ab` |
| 12 | `def` | [toFunLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tofunlinear--4ff9fe8a340a52f990b1eb8d.md) | 127 | `declaration-track:4ff9fe8a340a52f990b1eb8d0c34e037fc02859b3e02973b6b61b75862fff0e3` |
| 13 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tofunalghom--ac0dc35a6934b589ef5c5832.md) | 134 | `declaration-track:ac0dc35a6934b589ef5c583255e48ddb041a5801ed117c2b3cc97b05f1a50dd0` |
| 14 | `theorem` | [toFunAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tofunalghom-apply--ba540baddba78185eea7a132.md) | 148 | `result-track:ba540baddba78185eea7a132e6b63358817032f301f98295e2d6250c5b6d6440` |
| 15 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/invfun--5ca66a88812adfe1bfeb88a3.md) | 156 | `declaration-track:5ca66a88812adfe1bfeb88a3128dc53dd725fbee75b81232ac76211be3661cf3` |
| 16 | `theorem` | [invFun_zero](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/invfun-zero--773f695decc71002ed297d09.md) | 160 | `result-track:773f695decc71002ed297d09cfceb37d3b0e14195f07824ed73da05a18fa7ce9` |
| 17 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/invfun-add--cd723dea12044abc05215e75.md) | 163 | `result-track:cd723dea12044abc05215e7593414c14698ae78e703932b0f37ca4aeabdce64d` |
| 18 | `theorem` | [invFun_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/invfun-smul--65bc28cef691044a4cb6e88f.md) | 168 | `result-track:65bc28cef691044a4cb6e88fb7e969e1977e9502b7452c9f97b5231350ff4928` |
| 19 | `theorem` | [invFun_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/invfun-algebramap--28293424bb5dadf7cd0c7fda.md) | 173 | `result-track:28293424bb5dadf7cd0c7fda824f9844914cba2836b3a45e76a841f7403c7c0f` |
| 20 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/right-inv--ac6c7dae91304c8e1c09bd8f.md) | 180 | `result-track:ac6c7dae91304c8e1c09bd8f568d1d8f9e7ca64689575ed61c5e1e17ba3dacbd` |
| 21 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/left-inv--1364c674732dd4ef11e4b81d.md) | 186 | `result-track:1364c674732dd4ef11e4b81db69567822feabaaf81f11640cdebce2a884171bf` |
| 22 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/equiv--8e338067c49c5ea8f2092e33.md) | 197 | `declaration-track:8e338067c49c5ea8f2092e33699ca3a9bbf8c4deb5e07d047ffd3946341994c2` |
| 23 | `def` | [matrixEquivTensor](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/matrixequivtensor--b67fdcb1f56197ce6303301a.md) | 209 | `declaration-track:b67fdcb1f56197ce6303301a96aedf50ad55ea3b813c50231476773e7b5c724a` |
| 24 | `theorem` | [matrixEquivTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/matrixequivtensor-apply--679f6a0c053490cb63fb3433.md) | 213 | `result-track:679f6a0c053490cb63fb3433715314ba6b55afb1a0e4d7df93a0f4678105c4f6` |
| 25 | `theorem` | [matrixEquivTensor_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/matrixequivtensor-apply-single--b8d54b2ece66581add2646e1.md) | 219 | `result-track:b8d54b2ece66581add2646e1d572a3cc32e5d9e608c097fe174c6361607a0821` |
| 26 | `theorem` | [matrixEquivTensor_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/matrixequivtensor-apply-symm--daedee6e2a70e77b46a066e2.md) | 225 | `result-track:daedee6e2a70e77b46a066e285d30fcef3a9a29d3ecf9475573368d1fbaf2b8e` |
| 27 | `def` | [kroneckerTMulAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulalgequiv--0fd4f1ebc5584737260e019a.md) | 237 | `declaration-track:0fd4f1ebc5584737260e019a765b5008f65ee303aa9cde0a97862a9b0f021b22` |
| 28 | `theorem` | [kroneckerTMulAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulalgequiv-apply--fa56934a8ddc5a1ece1c17df.md) | 246 | `result-track:fa56934a8ddc5a1ece1c17dfc0399977c7080435432eb5a5e4d4a28a5c770775` |
| 29 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulalgequiv-symm-apply--7bc310805c3800889805e228.md) | 251 | `result-track:7bc310805c3800889805e22885a230e2696971edeb4b85350ef06f85e2436a7e` |
| 30 | `def` | [kroneckerTMulStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulstaralgequiv--8a0c78b7ed8d681c57dc5336.md) | 261 | `declaration-track:8a0c78b7ed8d681c57dc5336b5c1c05c7fe3bf4e0765fac254d2755d59eb4faa` |
| 31 | `theorem` | [toAlgEquiv_kroneckerTMulStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/toalgequiv-kroneckertmulstaralgequiv--791d1733e7652484d04fcc91.md) | 268 | `result-track:791d1733e7652484d04fcc91aa6efdd54366617affc1c76f4eac329ac5aebd2d` |
| 32 | `theorem` | [kroneckerTMulStarAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulstaralgequiv-apply--15b7e43f6153262eddb08f90.md) | 272 | `result-track:15b7e43f6153262eddb08f9010c321cc3d15c532fbfff204bec3466f46411d2a` |
| 33 | `theorem` | [kroneckerTMulStarAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckertmulstaralgequiv-symm-apply--40b0797458aaddb910c3336c.md) | 277 | `result-track:40b0797458aaddb910c3336cb03445c2e8d47ca1aab46488ec2b0ad9cf2aa6c9` |
| 34 | `def` | [kroneckerAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckeralgequiv--3c528d8e8e60e8b554fc6a93.md) | 286 | `declaration-track:3c528d8e8e60e8b554fc6a9361b28249bafc539ffa776937c18e72f4997aba06` |
| 35 | `theorem` | [toLinearEquiv_kroneckerAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/tolinearequiv-kroneckeralgequiv--9e381b002ee6ed5b16266fd2.md) | 289 | `result-track:9e381b002ee6ed5b16266fd2903b7ea0fca51a4bf97f57749a78d0a9340871d0` |
| 36 | `theorem` | [kroneckerAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckeralgequiv-apply--4ac8dfbb90565598482d7421.md) | 292 | `result-track:4ac8dfbb90565598482d7421bf0f47d61534dd7bb01e25b2fa039440bb1d15a8` |
| 37 | `theorem` | [kroneckerAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckeralgequiv-symm-apply--6bcf86aedf937fafacbc0e0d.md) | 295 | `result-track:6bcf86aedf937fafacbc0e0d09cad73e375226b1febd0cc3c12a11bb0d6b23c9` |
| 38 | `def` | [kroneckerStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerstaralgequiv--b524dc2702bdebd86a6a1153.md) | 300 | `declaration-track:b524dc2702bdebd86a6a11536992cb3c593eb638600d6049c4c9b2e3fa8b8b1d` |
| 39 | `theorem` | [toAlgEquiv_kroneckerStarAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/toalgequiv-kroneckerstaralgequiv--fd6c203b680f1eb3ba850b49.md) | 307 | `result-track:fd6c203b680f1eb3ba850b4925c4b6e480a7f21a62365d1851a7f0cd9d7cd706` |
| 40 | `theorem` | [kroneckerStarAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerstaralgequiv-apply--73536bbec85f50f512f39a1e.md) | 310 | `result-track:73536bbec85f50f512f39a1e0de37c98e856cc933a85194b354a9755d80e8c85` |
| 41 | `theorem` | [kroneckerStarAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean/declarations/kroneckerstaralgequiv-symm-apply--6de9a5b65d35ee7d69c76cb4.md) | 313 | `result-track:6de9a5b65d35ee7d69c76cb44118cbead5d395f3c367d184ca2e18fc8e8bf9f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
