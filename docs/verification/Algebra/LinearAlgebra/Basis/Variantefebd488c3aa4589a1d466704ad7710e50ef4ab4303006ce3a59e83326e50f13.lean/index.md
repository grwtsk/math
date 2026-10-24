# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38e864d6fd53b999e7533a3e7edadc68f8dece7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38e864d6fd53b999e7533a3e7edadc68f8dece7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean.json)

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
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix--621886a095c9ae774019b576.md) | 59 | `declaration-track:621886a095c9ae774019b576c8c4e8f28bda736870b1d0d3c58c1f99c603a3f4` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-apply--876f79b9d1147dbe48475a97.md) | 63 | `result-track:876f79b9d1147dbe48475a97178c40f1ed7cc529e03063dcf433c06d1c75624e` |
| 3 | `theorem` | [toMatrix_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-transpose-apply--81291d583e9b2cee413d2e49.md) | 66 | `result-track:81291d583e9b2cee413d2e493c8ff62c835ff077aa0d97994267037d188e153f` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-eq-tomatrix-constr--0a5fe4fcbfa7170cab2b38a2.md) | 69 | `result-track:0a5fe4fcbfa7170cab2b38a22c5efb0e0f5fdcf6c46e41abe3b272afb782539e` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/coepibasisfun-tomatrix-eq-transpose--ed7e7066ee34b49aeb1f4081.md) | 75 | `result-track:ed7e7066ee34b49aeb1f4081bac07dec4bf68ae3cbd34e18b514622bbeb1b638` |
| 6 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-self--03edaa21c00f3f749f312509.md) | 81 | `result-track:03edaa21c00f3f749f312509229f3649b184e60e15b36a3200d6534b183cb7d1` |
| 7 | `theorem` | [toMatrix_update](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-update--6470230a5bbde38ac560e5ba.md) | 86 | `result-track:6470230a5bbde38ac560e5bac6e9ff6e37e5d8dfda269a770f5d9b015e28df15` |
| 8 | `theorem` | [toMatrix_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-unitssmul--ffaf1fd483b628390d26cadd.md) | 96 | `result-track:ffaf1fd483b628390d26cadd6fe8b59d52275dd10c9fb5aa4cb49e5f1f3d9566` |
| 9 | `theorem` | [toMatrix_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-isunitsmul--887b4b2f6ed5ce8f3b5a26fa.md) | 104 | `result-track:887b4b2f6ed5ce8f3b5a26fad4f3d53c2457784f6259038a1436034338b64fe7` |
| 10 | `theorem` | [toMatrix_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-smul-left--ab586b7514c4867946ea10d4.md) | 108 | `result-track:ab586b7514c4867946ea10d433961ac68d5ba9ee1736440cc3f74a59bc7a8406` |
| 11 | `theorem` | [sum_toMatrix_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/sum-tomatrix-smul-self--0459c57b6705bca94ad06511.md) | 112 | `result-track:0459c57b6705bca94ad0651165321509bfc248e51ba1fa9babf2b15c80575469` |
| 12 | `theorem` | [toMatrix_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-smul--283b333711541de1c5db554a.md) | 115 | `result-track:283b333711541de1c5db554a0da4941cabe49acf8a2b96b6806894111109cc67` |
| 13 | `theorem` | [toMatrix_map_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-map-vecmul--b482f0d3446ca432fe05dbd5.md) | 122 | `result-track:b482f0d3446ca432fe05dbd5e7a1006745a7dec56937751b804021f88ad35cdd` |
| 14 | `theorem` | [toLin_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tolin-tomatrix--7ee7ed54b323a256c60710ee.md) | 129 | `result-track:7ee7ed54b323a256c60710eeb2a0e7287fbbc2108e58105378fa8f8dad941a5f` |
| 15 | `def` | [toMatrixEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrixequiv--bef2992bbef67d764a7ca7f4.md) | 135 | `declaration-track:bef2992bbef67d764a7ca7f4dc2107887d2975ae93be27443bc22c682b1a73b4` |
| 16 | `theorem` | [restrictScalars_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/restrictscalars-tomatrix--d01b7149af123f390edc65ce.md) | 158 | `result-track:d01b7149af123f390edc65ceeff82b81a3fd56ab770441a9bd81e173521630b0` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/linearmap-tomatrix-id-eq-basis-tomatrix--626dbfc412a6f9f15fea1092.md) | 181 | `result-track:626dbfc412a6f9f15fea109210131fc9218cb9bc437f345aa6d7355a67eced16` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix--11a127587acd9b0b63dc2660.md) | 189 | `result-track:11a127587acd9b0b63dc266061e66005448c2fe98d4c5f963ff12fe965f74c50` |
| 19 | `theorem` | [basis_toMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/basis-tomatrix-mul--847468ae60a27c7e1dc9b661.md) | 195 | `result-track:847468ae60a27c7e1dc9b661cadfb366027a14e09705df491421021ba5dcd1f3` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix--6974926b1574f371f0813997.md) | 204 | `result-track:6974926b1574f371f0813997aedb28a962accbb074bedab3cf77e27d237a825d` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--1124572e65891150910792ab.md) | 209 | `result-track:1124572e65891150910792ab2005697aaaaee3414dfe510bc20a563398edcb3b` |
| 22 | `theorem` | [mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/mul-basis-tomatrix--08fb0aefe372b1952766a041.md) | 215 | `result-track:08fb0aefe372b1952766a041ff045c17aabdcf5535e107f838f23d7900eb779a` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/basis-tomatrix-basisfun-mul--785e3b7547d6d7d07fbf82ba.md) | 222 | `result-track:785e3b7547d6d7d07fbf82ba8d8f08a10ec1fc1b698825b73ca61bc5649e739c` |
| 24 | `theorem` | [toMatrix_reindex'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-reindex--96a5ca3a5cb6deb0c3a04e00.md) | 233 | `result-track:96a5ca3a5cb6deb0c3a04e00ab2155b3d6b8c799323298b819c8729ca4fb6b2d` |
| 25 | `lemma` | [toMatrix_mulVec_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-mulvec-repr--ffc6cdd5166df1b7a9e2f841.md) | 241 | `result-track:ffc6cdd5166df1b7a9e2f841ac53bd266efab54efe9714ab974d2fe04b96e795` |
| 26 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-mul-tomatrix--c3884c23c7327d5497e71307.md) | 253 | `result-track:c3884c23c7327d5497e7130713f3a1aaf3d3296a1cdb795c1425cc013161c2d7` |
| 27 | `theorem` | [toMatrix_mul_toMatrix_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-mul-tomatrix-flip--08aeed854ee5cb91d80019e3.md) | 262 | `result-track:08aeed854ee5cb91d80019e31123dd36d4b3d46b3a90e5081de136e3986d411f` |
| 28 | `def` | [invertibleToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/invertibletomatrix--ed0af4daf1d08698a8a6efac.md) | 267 | `declaration-track:ed0af4daf1d08698a8a6efac562089266cc6fb72d724405fd2e39a33641200ee` |
| 29 | `theorem` | [toMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-reindex--54e9386d7fd3efcd7d08536d.md) | 272 | `result-track:54e9386d7fd3efcd7d08536da3321b1e271557a03e2231e66adf6cf53f79c097` |
| 30 | `theorem` | [toMatrix_map](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/tomatrix-map--64155aafb99f5837b27c41c9.md) | 278 | `result-track:64155aafb99f5837b27c41c98ddec83dafb78a4992e81d536829fddaa9b2ae3c` |
| 31 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToMatrix.Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.LinearMap.toMatrix_eq_basisToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/declarations/root-grwtsk-algebra-linearalgebra-tomatrix-variant9a9387c79c5dea1e27602e--fdc2a085cd7821b71f61c54a.md) | 283 | `result-track:fdc2a085cd7821b71f61c54a82a5f80077c121240b373d9fcbc83c119a78f083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
