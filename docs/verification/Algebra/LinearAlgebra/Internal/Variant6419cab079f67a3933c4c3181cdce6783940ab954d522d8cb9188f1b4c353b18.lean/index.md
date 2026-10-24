# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1293004ac5374da86d7d1c09f2a7a2ff167da0f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1293004ac5374da86d7d1c09f2a7a2ff167da0f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean.json)

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
| 1 | `def` | [GradedTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/gradedtensorproduct--0ec39d1d575c1eb9afed2fd6.md) | 81 | `declaration-track:0ec39d1d575c1eb9afed2fd662bf70e5d2fd0682621de8e56da3e8a43b4097ea` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/of--db493909681dce8d42cbde2b.md) | 97 | `declaration-track:db493909681dce8d42cbde2b0bed632f4b0323af6c84f5b2233a51534a538265` |
| 3 | `theorem` | [of_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/of-one--a7dd5641619324cb08160463.md) | 100 | `result-track:a7dd5641619324cb0816046380633154b51f4843fbb589aa9b78f5bd9b80bcc5` |
| 4 | `theorem` | [of_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/of-symm-one--1cad62d83661cbb14f3a8372.md) | 103 | `result-track:1cad62d83661cbb14f3a83720ce3b7ff11468170555842ecf9d2f1c54a9c2de5` |
| 5 | `theorem` | [of_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/of-symm-of--2e8685a9f3e4fa2fdf2aebf2.md) | 106 | `result-track:2e8685a9f3e4fa2fdf2aebf25fd6baf365f37924d44be034ee43fe75ae988ca2` |
| 6 | `theorem` | [symm_of_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/symm-of-of--71045c45489ce20f8ef750fe.md) | 109 | `result-track:71045c45489ce20f8ef750fe49df621ae61c8a35186945832774177ccce4e5a7` |
| 7 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/hom-ext--00e40c27c365c93898b10476.md) | 114 | `result-track:00e40c27c365c93898b10476a10cef797c0b130c73ce591e5851e4c8dcefc404` |
| 8 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul--5d2227e7481bc568f3947a5a.md) | 121 | `declaration-track:5d2227e7481bc568f3947a5aca410eb20bf5df6866b21cab208d576e2f9b10b6` |
| 9 | `def` | [auxEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv--b3bdb6996d0a1f9c7e6eaef7.md) | 132 | `declaration-track:b3bdb6996d0a1f9c7e6eaef7cc840edff4f1d0b4b35cccb23b89df2f4585a1fe` |
| 10 | `theorem` | [auxEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv-tmul--0544b804fc6f8518cd8a82e2.md) | 137 | `result-track:0544b804fc6f8518cd8a82e2d68c68607e4446f2d257c63f5adef306382367e6` |
| 11 | `theorem` | [auxEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv-one--55f7abc9b8aa8fca38be4fdf.md) | 140 | `result-track:55f7abc9b8aa8fca38be4fdfa7311ce3a9ef5dd716e37e4c07366e5b6051eb5f` |
| 12 | `theorem` | [auxEquiv_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv-symm-one--307a89eba8b6a3d182e8fa81.md) | 144 | `result-track:307a89eba8b6a3d182e8fa81000b5420e9ea895701dad44e6f7c6a6d10009bb6` |
| 13 | `def` | [mulHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/mulhom--a997f80f6f82e5b0b8ad4c0d.md) | 151 | `declaration-track:a997f80f6f82e5b0b8ad4c0d7408085c11e731a6faba361c12bf99f69bbe41ca` |
| 14 | `theorem` | [mulHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/mulhom-apply--1884f495ac735b00e5f3a279.md) | 157 | `result-track:1884f495ac735b00e5f3a2791f398f8e7085514999221000fb05ace60d697e78` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/instance--faf8ebb8fe7f27577301eca1.md) | 165 | `declaration-track:faf8ebb8fe7f27577301eca1476a208e1c8991e98420023f0f230527862d1277` |
| 16 | `theorem` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/mul-def--73c32a20779752daed2943c2.md) | 167 | `result-track:73c32a20779752daed2943c275cbc0559c8372b025320f17b20312b79d082543` |
| 17 | `theorem` | [auxEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv-mul--bb2740f7ede68296d189aa55.md) | 170 | `result-track:bb2740f7ede68296d189aa55a17f4907a9a1a11b5286b183b4f33aea1a63f51d` |
| 18 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/instmonoid--363c94dfbb8468258569635a.md) | 174 | `declaration-track:363c94dfbb8468258569635a071f0d19193e9e325181e26191a82221b4021f05` |
| 19 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/instring--190a44ba44e842f70573f135.md) | 183 | `declaration-track:190a44ba44e842f70573f1353ebed0952790ecaa084f7830cc44be901adfde6c` |
| 20 | `theorem` | [tmul_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-coe-mul-coe-tmul--8870c44f5004ca2d7b286680.md) | 190 | `result-track:8870c44f5004ca2d7b28668087b8ebba4b0237d1bec5b91e2e1b3760935c8535` |
| 21 | `theorem` | [tmul_zero_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-zero-coe-mul-coe-tmul--f6df8e340ee2215e81184ba4.md) | 205 | `result-track:f6df8e340ee2215e81184ba4a6f1287797a24c174f4ccc0d5e397061df8fbf7e` |
| 22 | `theorem` | [tmul_coe_mul_zero_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-coe-mul-zero-coe-tmul--45e9b26a7d608c47f11f1f9e.md) | 211 | `result-track:45e9b26a7d608c47f11f1f9e3daf5bbd3f5040b3000e466599cf6ff6087b9a58` |
| 23 | `theorem` | [tmul_one_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-one-mul-coe-tmul--985d18c9678dab0ad84ceed7.md) | 216 | `result-track:985d18c9678dab0ad84ceed76ff026ca5e66c912125c944ca609aaf2ce09aff9` |
| 24 | `theorem` | [tmul_coe_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-coe-mul-one-tmul--a0fa75ee11041c851a5a0c70.md) | 221 | `result-track:a0fa75ee11041c851a5a0c70cfa6040c039eb832132d41acb3ab6985aa378344` |
| 25 | `theorem` | [tmul_one_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-one-mul-one-tmul--21868c174382f893eb49c43f.md) | 226 | `result-track:21868c174382f893eb49c43ff53cf98ee93dda13eaa9e70f164b92fd4de8035c` |
| 26 | `def` | [includeLeftRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/includeleftringhom--b12cf5e695a184f9cccf0caa.md) | 236 | `declaration-track:b12cf5e695a184f9cccf0caadde53daf64104740b5f6e035d9bdab9688f5106b` |
| 27 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/instalgebra--af991e3d5a4c373980c977ac.md) | 251 | `declaration-track:af991e3d5a4c373980c977ac3eb54e6786b6a83905d6d8dd75c735cce21c0404` |
| 28 | `lemma` | [algebraMap_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/algebramap-def--d78bf1fcba79e1f3c39e8b72.md) | 264 | `result-track:d78bf1fcba79e1f3c39e8b72d22cad116b46937c305a0414538ed0854301a041` |
| 29 | `theorem` | [tmul_algebraMap_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-algebramap-mul-coe-tmul--9fd1a81d6c9fa1772936a24d.md) | 266 | `result-track:9fd1a81d6c9fa1772936a24df46b1f6f0eba5d072cddaf3a1942c85ab5c933b0` |
| 30 | `theorem` | [tmul_coe_mul_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/tmul-coe-mul-algebramap-tmul--a70cfb786e9f98c0f975b46a.md) | 271 | `result-track:a70cfb786e9f98c0f975b46a9b73daa41446bb72495380ec8865b62046e6dfbe` |
| 31 | `def` | [includeLeft](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/includeleft--c13aa149ab8602fbc2bf42f4.md) | 278 | `declaration-track:c13aa149ab8602fbc2bf42f45a288cefa654f1f787d51c3f62a83d4becde2176` |
| 32 | `def` | [includeRight](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/includeright--8ad36f734b39e2c48ab086e6.md) | 284 | `declaration-track:8ad36f734b39e2c48ab086e6735b656ad365818db030e6b6ec1f1085af86c210` |
| 33 | `lemma` | [algebraMap_def'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/algebramap-def--4d5356bce02262fbac15ce5d.md) | 298 | `result-track:4d5356bce02262fbac15ce5d9486f859e76766a44780484aa3355cf5245ee687` |
| 34 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/lift--6312e2abcca2161028b82e14.md) | 307 | `declaration-track:6312e2abcca2161028b82e148ef1e16458665867a80aede97173f772665ad0ad` |
| 35 | `theorem` | [lift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/lift-tmul--a0d072e00164821993326cd7.md) | 334 | `result-track:a0d072e00164821993326cd7c425c8fb6ca23ba3e84c4560ad7caf832c0aa6dd` |
| 36 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/liftequiv--86c4cb26ef3ed359612eab7e.md) | 343 | `declaration-track:86c4cb26ef3ed359612eab7e57dd177bd7e4a681a8be51513882551c04f720cc` |
| 37 | `lemma` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/alghom-ext--b2c3ad5e1b79850b3c8f3b1e.md) | 362 | `result-track:b2c3ad5e1b79850b3c8f3b1e05fa9b01768a16894b7e3bbe45a10079006e874e` |
| 38 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/comm--58daab166a7464ae5d5c7264.md) | 369 | `declaration-track:58daab166a7464ae5d5c726429829233c73ed828d586e0437fd35c524c71d44e` |
| 39 | `lemma` | [auxEquiv_comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/auxequiv-comm--a71b78052bc297cd79554a8f.md) | 380 | `result-track:a71b78052bc297cd79554a8f87df2a3a60a8340bc74efc7bf0f14f4670eda705` |
| 40 | `lemma` | [comm_coe_tmul_coe](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/declarations/comm-coe-tmul-coe--37fe103fe5a485fe5e4d332b.md) | 384 | `result-track:37fe103fe5a485fe5e4d332bc46bdf98a4281e9876f1a95a1da557d408916ac8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
