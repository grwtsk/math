# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "239453269e74946cb315ca33a44d789328d6dc4c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `239453269e74946cb315ca33a44d789328d6dc4c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/generallineargroup--fcdbc6362de80836bdbe5b72.md) | 43 | `declaration-track:fcdbc6362de80836bdbe5b729d5e290858af15dac5ef4a39ed554b591798a910` |
| 2 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/instcoefun--9c7dbe086cd33bd662344612.md) | 59 | `declaration-track:9c7dbe086cd33bd662344612843f5443d3f0f06a3b823a4b46962954c50a80c2` |
| 3 | `def` | [det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/det--06d7c327f7dba9eb23dfea2f.md) | 66 | `declaration-track:06d7c327f7dba9eb23dfea2f80514446a0a156482a45f4769b055208bd478c1c` |
| 4 | `def` | [toLin](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/tolin--821b1acac697b88b5f6a03fe.md) | 78 | `declaration-track:821b1acac697b88b5f6a03fe9266815943b9d50b7a730a90c506893accbe7618` |
| 5 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/mk--675f92d0cd01e27c08be82b6.md) | 83 | `declaration-track:675f92d0cd01e27c08be82b6bda6bcc0cc7ec9dd72e9dcb8952f5b0f361ec33b` |
| 6 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/mk--8a8e69318e897f2f639f978c.md) | 88 | `declaration-track:8a8e69318e897f2f639f978c96e8324b88d71f8adcc304668d1dd6f0dcfacf15` |
| 7 | `def` | [mkOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/mkofdetnezero--1a8d5d7ab4af25c55e6b9e0f.md) | 93 | `declaration-track:1a8d5d7ab4af25c55e6b9e0f6879e827a99a80e410e26ade41120c8650d08a03` |
| 8 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/ext-iff--d7c5049963fea1ad843cdf8d.md) | 97 | `result-track:d7c5049963fea1ad843cdf8df7ce9fd39ad5b02400d3fac36a09cd4c61c4ef4b` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/ext--e3e130ab44dec10a53ffbca8.md) | 102 | `result-track:e3e130ab44dec10a53ffbca8d5f7bd7ef26a063b5d3ac43245e88f123efbf1fb` |
| 10 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-mul--730a4d88b4d4b6b9d99bd224.md) | 111 | `result-track:730a4d88b4d4b6b9d99bd22418a6427f0d0c63356f80421103391ff0b929aa63` |
| 11 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-one--21d491510072767ca753b9d5.md) | 116 | `result-track:21d491510072767ca753b9d5cf4e3e494522480fa08ded34edd096c51b305737` |
| 12 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-inv--5d617fcbc9c106444f329def.md) | 120 | `result-track:5d617fcbc9c106444f329def6379b8f2e5d849674c24903541c09c3259b73ffc` |
| 13 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/tolinear--362c8371fb8879694518b3fb.md) | 127 | `declaration-track:362c8371fb8879694518b3fb6c9edfc54d46d2e04257efe68e29f7f5e81ab1ed` |
| 14 | `theorem` | [coe_toLinear](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-tolinear--c15fdec05ae84f51b0278119.md) | 136 | `result-track:c15fdec05ae84f51b0278119f7d697e6f8fe627d9a223a5226934932018e413a` |
| 15 | `theorem` | [toLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/tolinear-apply--44330867bab86db534c261ea.md) | 142 | `result-track:44330867bab86db534c261eaf65f11511b312c488a6333f12b11664a2383f820` |
| 16 | `def` | [coeToGL](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coetogl--5da54b51faab3a0eae9e995e.md) | 158 | `declaration-track:5da54b51faab3a0eae9e995efd5e97392b9dc276844ad8086c9d259e343fb41f` |
| 17 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/hascoetogenerallineargroup--f2422bc0133abca67b918fb3.md) | 163 | `declaration-track:f2422bc0133abca67b918fb342582183194a4f4c577984cc955e3481fb2a6860` |
| 18 | `theorem` | [coeToGL_det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coetogl-det--711b5ea8630072786cae63a0.md) | 168 | `result-track:711b5ea8630072786cae63a0e5f1d547e26c0f781829636c6dd31b92fefbb00f` |
| 19 | `def` | [GLPos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/glpos--4f72bac4900d62a80508af52.md) | 186 | `declaration-track:4f72bac4900d62a80508af5278a47d6370f9667e05c167366d3565f4442736cd` |
| 20 | `theorem` | [mem_glpos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/mem-glpos--2487646704ca1be113c93362.md) | 194 | `result-track:2487646704ca1be113c933620a5ea7e3fb1c9b3ec3bd74db30d149c8e19a0e2e` |
| 21 | `theorem` | [GLPos.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/glpos-det-ne-zero--66cb8bcf2ddb3bfd9b48e54b.md) | 199 | `result-track:66cb8bcf2ddb3bfd9b48e54bb835c7dff7cdbfe7ab7830b7b3e325febebc2903` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/instance--fd5eed3af2b58e691e0599bd.md) | 213 | `declaration-track:fd5eed3af2b58e691e0599bdb1d7674f2ac63209c545cc5ddc9b7f509a62d58f` |
| 23 | `theorem` | [GLPos.coe_neg_GL](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/glpos-coe-neg-gl--4f3362fb6855f5864c93c930.md) | 221 | `result-track:4f3362fb6855f5864c93c9304b710044099e33eea513f7a9f8f995db30d99086` |
| 24 | `theorem` | [GLPos.coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/glpos-coe-neg--db6b62a031ed2475169f281b.md) | 227 | `result-track:db6b62a031ed2475169f281bdd51eb0099a799e5fcea5c9e966641d099137e57` |
| 25 | `theorem` | [GLPos.coe_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/glpos-coe-neg-apply--990b276bb2e896390975db76.md) | 233 | `result-track:990b276bb2e896390975db768f0873349e3b071de32c194354e6a6f768ddabbf` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/instance--f2adbcd6b52a0ccaf85f0e03.md) | 239 | `declaration-track:f2adbcd6b52a0ccaf85f0e0359976518134231e51e77b107167db2c23a141ee5` |
| 27 | `def` | [toGLPos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/toglpos--5c53aa63fa8ac003ba4e02ee.md) | 249 | `declaration-track:5c53aa63fa8ac003ba4e02eef09ea19c48c2454ce1cd703b3c4513fddea60915` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/instance--eeb18da3a11440e975de8c7c.md) | 256 | `declaration-track:eeb18da3a11440e975de8c7c0fe8bab41b022cf01bc47089032b37f892842050` |
| 29 | `theorem` | [toGLPos_injective](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/toglpos-injective--18f07bf78a6b49ee6d30eb4c.md) | 261 | `result-track:18f07bf78a6b49ee6d30eb4cb4b699dd0770779ada090dbf94af7f4ec93a16b3` |
| 30 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-glpos-coe-gl-coe-matrix--6cd89e91db902eeca593b66d.md) | 274 | `result-track:6cd89e91db902eeca593b66d23c944117ecacccad2118550962b4743e4e42dd2` |
| 31 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-to-glpos-to-gl-det--270b84d35870c4ebb7a5e33f.md) | 281 | `result-track:270b84d35870c4ebb7a5e33fdeabe7d3949f29ec65c585f5590061cf5f19d49b` |
| 32 | `theorem` | [coe_GLPos_neg](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/coe-glpos-neg--e447c152ac1b39c6f3c99dd5.md) | 290 | `result-track:e447c152ac1b39c6f3c99dd546787c1ce5b136c8d9abb25bdda526cbfec0ff03` |
| 33 | `def` | [planeConformalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/declarations/planeconformalmatrix--4ac9b1c95124517836b256b5.md) | 302 | `declaration-track:4ac9b1c95124517836b256b5a2b90dc38294a13239a51455310d82451092693e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
