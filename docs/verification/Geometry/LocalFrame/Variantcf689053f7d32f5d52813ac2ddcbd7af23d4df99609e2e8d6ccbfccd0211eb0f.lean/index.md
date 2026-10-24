# Verification target: GRWTSK.Geometry.LocalFrame.Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "249a23c9c37f4b144266620bcd7ea9f8eb27b350",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/index.md) · [Full source](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `249a23c9c37f4b144266620bcd7ea9f8eb27b350`.

Source path: `GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLocalFrameOn](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/islocalframeon--9b1644afe3cbd2b2d4e05f9e.md) | 138 | `declaration-track:9b1644afe3cbd2b2d4e05f9e076cd12f929bc90f477cabcca624bdbd9c02961f` |
| 2 | `lemma` | [congr](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/congr--51413b6c39c7b53a803bfb90.md) | 146 | `result-track:51413b6c39c7b53a803bfb90704867276a8895749dce3530a9b0c6734ccc9d97` |
| 3 | `lemma` | [mono](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mono--a81d9cd3b180641310f10077.md) | 158 | `result-track:a81d9cd3b180641310f100777be3727ec7fa932658d3ccd2cf7f874303faf9b8` |
| 4 | `lemma` | [contMDiffAt](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffat--7bdd117537f9012e02964d27.md) | 167 | `result-track:7bdd117537f9012e02964d279924462b716ed70d7fc13a1f75f3f76134427e78` |
| 5 | `def` | [toBasisAt](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/tobasisat--9a13e24a272339f32e171cd3.md) | 172 | `declaration-track:9a13e24a272339f32e171cd31c60b06a6ff6c1fbeb14551bfdb81893e5f9c7cf` |
| 6 | `lemma` | [toBasisAt_coe](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/tobasisat-coe--3823a4c1fa25df70762f7939.md) | 176 | `result-track:3823a4c1fa25df70762f7939ba63ac0ef5b478e73c9dfc6981591ff063abd502` |
| 7 | `def` | [fintypeOfFiniteDimensional](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/fintypeoffinitedimensional--d0b0dcec06a55900368a4d9c.md) | 183 | `declaration-track:d0b0dcec06a55900368a4d9c8bef57bf943b898f5294d66650c78e1895d74264` |
| 8 | `def` | [coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff--eb3e5ca92638f981eaeb62c4.md) | 194 | `declaration-track:eb3e5ca92638f981eaeb62c4f9cf0f689ddc2772604bc484b6fe57a94ae3a469` |
| 9 | `lemma` | [coeff_apply_of_notMem](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff-apply-of-notmem--e7e358f4524f5fd4483bce8c.md) | 200 | `result-track:e7e358f4524f5fd4483bce8c9a0d6390953ea0dfdfb9a46b88d69afb3eef198a` |
| 10 | `lemma` | [coeff_apply_of_mem](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff-apply-of-mem--6223512f9f48fbd4335d9af7.md) | 205 | `result-track:6223512f9f48fbd4335d9af7cb6e52ad4e36f2f08cc4b5a8bce04cf455e52aee` |
| 11 | `lemma` | [coeff_sum_eq](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff-sum-eq--1c80f003d532b855f8590192.md) | 209 | `result-track:1c80f003d532b855f85901929902f56e06ecb6e1f6d126bebab09f1a64839b19` |
| 12 | `lemma` | [eq_of_coeff_eq](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/eq-of-coeff-eq--fec7bcabef477ff77de960c5.md) | 213 | `result-track:fec7bcabef477ff77de960c5e5ffff0de2a9f3ae649fb9256393f9db971bfb4e` |
| 13 | `lemma` | [eventually_eq_sum_coeff_smul](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/eventually-eq-sum-coeff-smul--f7135d229f9e873795afd73d.md) | 225 | `result-track:f7135d229f9e873795afd73dfc13ef0fd52e36b0b57fb4dfd3e4cffea457771e` |
| 14 | `lemma` | [coeff_congr](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff-congr--cc204389041d470bc29b7f10.md) | 233 | `result-track:cc204389041d470bc29b7f1056dc6de97ee7580d436cde942bc6d0958ea4338f` |
| 15 | `lemma` | [coeff_eq_of_eq](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/coeff-eq-of-eq--39c482e697a026d4e618d951.md) | 239 | `result-track:39c482e697a026d4e618d951a0aeac77e138eecd03713435b5c00a76c2e2ee59` |
| 16 | `lemma` | [eq_iff_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/eq-iff-coeff--ca13e13217dbe546af15e855.md) | 249 | `result-track:ca13e13217dbe546af15e855b1635fef9c216eba13bd9a5ec9828182dba058f3` |
| 17 | `lemma` | [contMDiffOn_of_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-of-coeff--9cd7f2c6afdcfb02c7355a08.md) | 259 | `result-track:9cd7f2c6afdcfb02c7355a08885ad8c263762c7baac10264a61fcea1f158767a` |
| 18 | `lemma` | [contMDiffAt_of_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffat-of-coeff--b9948a2aa8f2f49df15d8d10.md) | 274 | `result-track:b9948a2aa8f2f49df15d8d1012195c666d9510b3f7311305c80c5e70fda565cb` |
| 19 | `lemma` | [contMDiffAt_of_coeff_aux](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffat-of-coeff-aux--c2c5c44778ce96261a923a92.md) | 284 | `result-track:c2c5c44778ce96261a923a92a7f9da90b545f4715d20f6b1e2a1f5af66925929` |
| 20 | `lemma` | [mdifferentiableOn_of_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableon-of-coeff--bfb3598ea6f007f9f613e9bc.md) | 296 | `result-track:bfb3598ea6f007f9f613e9bcef6ce02377e7b5159f0433ee003931be6de2e498` |
| 21 | `lemma` | [mdifferentiableAt_of_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableat-of-coeff--e37f0fb0f804336cc3aae10c.md) | 311 | `result-track:e37f0fb0f804336cc3aae10c018b1a4417bc7a473f7346fe1fbbaf4af3fce208` |
| 22 | `lemma` | [mdifferentiableAt_of_coeff_aux](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableat-of-coeff-aux--ca726fa44b297c9141a01d5a.md) | 322 | `result-track:ca726fa44b297c9141a01d5a88dc322bcdad8bf951d3f238c8e88a6f8446aca4` |
| 23 | `def` | [basisAt](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/basisat--007562bed5b34e742fcf3501.md) | 341 | `declaration-track:007562bed5b34e742fcf3501c3dfbb9da486131b86bf1384a74a4f307f7582bd` |
| 24 | `def` | [localFrame](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframe--98f7e40e69074da4fac3da78.md) | 349 | `declaration-track:98f7e40e69074da4fac3da7820c36881f778faea0cbf7700802a7add28ef4fbe` |
| 25 | `lemma` | [localFrame_apply_of_mem_baseSet](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframe-apply-of-mem-baseset--cf672a18a1e72c800ea58123.md) | 353 | `result-track:cf672a18a1e72c800ea58123bfebb1e68effb4fe18af622dc4ebb1f64e3733c5` |
| 26 | `lemma` | [localFrame_apply_of_notMem](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframe-apply-of-notmem--0fadc2150baa362e8f43a7d5.md) | 357 | `result-track:0fadc2150baa362e8f43a7d563148faf7ccffb895375035a7c120c0ecd299086` |
| 27 | `lemma` | [contMDiffOn_localFrame_baseSet](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-localframe-baseset--72ed96265e69f6151b789920.md) | 362 | `result-track:72ed96265e69f6151b78992028aa717f1fe757f8f2ae13f15035fd98035aec15` |
| 28 | `lemma` | [isLocalFrameOn_localFrame_baseSet](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/islocalframeon-localframe-baseset--4ac1b7a685e75cf7f05109ec.md) | 370 | `result-track:4ac1b7a685e75cf7f05109ecf63ecf942cd4b0e0da5055c295856519282978c6` |
| 29 | `lemma` | [_root_.GRWTSK.Geometry.IsLocalFrameOn.Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.contMDiffAt_localFrame_of_mem](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/root-grwtsk-geometry-islocalframeon-varianta99b2545f22b71aacfaecf7a6488d--921cdce63a1b6b68a13daa73.md) | 381 | `result-track:921cdce63a1b6b68a13daa73c62dc7102e47addeace9de7e14199ef93c182f90` |
| 30 | `def` | [localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframecoeff--ca08a903bebb426d0eb220f4.md) | 391 | `declaration-track:ca08a903bebb426d0eb220f45f13a51d26c8a27f5ea072f87de0520e7a2963de` |
| 31 | `lemma` | [localFrameCoeff_apply_of_notMem_baseSet](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframecoeff-apply-of-notmem-baseset--c7e2ac84f72114d8ea435003.md) | 401 | `result-track:c7e2ac84f72114d8ea43500386467f956f5dd3666e71b7ab95190301bc7a4e11` |
| 32 | `lemma` | [localFrameCoeff_apply_of_mem_baseSet](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframecoeff-apply-of-mem-baseset--2f5a73f624d01c1ed2662a34.md) | 411 | `result-track:2f5a73f624d01c1ed2662a345dcd1f37ff573c8968edc1fc413a1216dc9b4ff9` |
| 33 | `lemma` | [eq_sum_localFrameCoeff_smul](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/eq-sum-localframecoeff-smul--40e0f0e21432ff52fff98a7a.md) | 424 | `result-track:40e0f0e21432ff52fff98a7aa1def09971fc68677776737e88a26bbaa8276b08` |
| 34 | `lemma` | [eventually_eq_localFrame_sum_coeff_smul](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/eventually-eq-localframe-sum-coeff-smul--cbac41190b269ee2b4147e9d.md) | 435 | `result-track:cbac41190b269ee2b4147e9d8fdd867480d87123668d18d20327a50583be3ec7` |
| 35 | `lemma` | [localFrameCoeff_congr](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframecoeff-congr--a3a7759df929c0907d3e6c60.md) | 441 | `result-track:a3a7759df929c0907d3e6c60593da6c381622f84fa5c3b0dd3855a970098c544` |
| 36 | `lemma` | [localFrameCoeff_eq_coeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/localframecoeff-eq-coeff--4882ebcb1a0e5cceeeb4ef68.md) | 453 | `result-track:4882ebcb1a0e5cceeeb4ef682b027fcc9657223bc12cd4db8411c79b1c774d33` |
| 37 | `lemma` | [contMDiffAt_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffat-localframecoeff--e13fa71bacd1b18e4d130fd2.md) | 475 | `result-track:e13fa71bacd1b18e4d130fd2ba1f4694e6808999bd68c02c67a90246164fe788` |
| 38 | `lemma` | [contMDiffOn_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-localframecoeff--54f1208c93d9694fb243dc84.md) | 504 | `result-track:54f1208c93d9694fb243dc843d26c389000ca01ca9cded74910c6693407f45d2` |
| 39 | `lemma` | [contMDiffOn_baseSet_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-baseset-localframecoeff--9cecc577435f0cededd78384.md) | 515 | `result-track:9cecc577435f0cededd7838498ea4bc4185300268b827cc67c954918c486ee1e` |
| 40 | `lemma` | [contMDiffAt_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffat-iff-localframecoeff--6a5fafac39911371c5d77523.md) | 524 | `result-track:6a5fafac39911371c5d7752335b345cd2f2eb19a79d2b726a278eb3b57125d40` |
| 41 | `lemma` | [contMDiffOn_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-iff-localframecoeff--b9396619c06d1c4433657c85.md) | 535 | `result-track:b9396619c06d1c4433657c85097aa2cb5e31a517851099fd02d4da12d9429413` |
| 42 | `lemma` | [contMDiffOn_baseSet_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/contmdiffon-baseset-iff-localframecoeff--33c830303c42efb2fcd99117.md) | 546 | `result-track:33c830303c42efb2fcd99117d0cc518ab223654dab722347c5d1db0e3bd74897` |
| 43 | `lemma` | [mdifferentiableAt_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableat-localframecoeff--9dcf8233897e3947e0bdc75b.md) | 559 | `result-track:9dcf8233897e3947e0bdc75b9a30594fb405268057b161e78b7883af99159c31` |
| 44 | `lemma` | [mdifferentiableOn_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableon-localframecoeff--2d1b8b68f365c369bf563551.md) | 589 | `result-track:2d1b8b68f365c369bf563551792e41f7b4d38cf4165f007aabd760dca099018d` |
| 45 | `lemma` | [mdifferentiableOn_baseSet_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableon-baseset-localframecoeff--ad746b456cc88644955e7c20.md) | 599 | `result-track:ad746b456cc88644955e7c20560c4b2478606ce58e40fa560e71e39f46bef364` |
| 46 | `lemma` | [mdifferentiableAt_iff_localFrameCoeff](../../../../mathematics/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/declarations/mdifferentiableat-iff-localframecoeff--b6a17723d8abd29e92cbf793.md) | 608 | `result-track:b6a17723d8abd29e92cbf79312554b3840a9fb37abd62a8df6a0883feb5d0916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
