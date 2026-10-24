# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c49784c41fef328b91623e7992a0df723408cc6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c49784c41fef328b91623e7992a0df723408cc6`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UpperHalfPlane](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/upperhalfplane--dc0d80521eb67d42fe79900e.md) | 28 | `declaration-track:dc0d80521eb67d42fe79900e88e41e066a51053f53fef9bacfbaa06b3ad9b474` |
| 2 | `def` | [coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe--23fb98ba938dc667e3821e01.md) | 38 | `declaration-track:23fb98ba938dc667e3821e015392d033322c364d6ade49f51aa1e19398abf5f7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/instance--6797f76c3bdef94294aa4f32.md) | 40 | `declaration-track:6797f76c3bdef94294aa4f32a2aeaa939d4b9bda3101f7d30685d46082e0acf4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/instance--a0a90bd17f9fa5cf77a4ff24.md) | 42 | `declaration-track:a0a90bd17f9fa5cf77a4ff24489fa4c2a4444764b962bb44ceabdaf4d69c1a66` |
| 5 | `theorem` | [ext](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ext--df20e599732aa2c6acd79a0d.md) | 45 | `result-track:df20e599732aa2c6acd79a0d00cab07a4328f7d9dc88c43433657942685184fd` |
| 6 | `theorem` | [ext_iff'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ext-iff--453dd84404717f575f0ea56b.md) | 47 | `result-track:453dd84404717f575f0ea56b1b34d50a4d42de364e3d38d92ac5f41dec82d9e3` |
| 7 | `instance` | [canLift](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/canlift--1e3196f8a8305d43c55d5396.md) | 49 | `declaration-track:1e3196f8a8305d43c55d5396b811e72d4670332f470e500bd0141651eda5089c` |
| 8 | `def` | [im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/im--4db46f07fe6c01cf73ac85e5.md) | 53 | `declaration-track:4db46f07fe6c01cf73ac85e5cbd020c4408003a240548cfacf8c6372abe45896` |
| 9 | `def` | [re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/re--e0ffc67cf7a98de520f28a83.md) | 57 | `declaration-track:e0ffc67cf7a98de520f28a83ec562c56ee21554c9ddca9a6401368e9ae941569` |
| 10 | `theorem` | [ext'](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ext--c8120bfe9662fc9d41192c99.md) | 61 | `result-track:c8120bfe9662fc9d41192c992321985828bd297d060de48ded0ce6c87c5dc7fa` |
| 11 | `def` | [mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/mk--885cc82e0dc79f974bcdac3b.md) | 66 | `declaration-track:885cc82e0dc79f974bcdac3b97882625b08c7ae362e7a0eecc04864284a0199f` |
| 12 | `theorem` | [coe_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-im--42c98f567314e984b93ddd6e.md) | 70 | `result-track:42c98f567314e984b93ddd6eef99aec3d75bd8e14be81d953aa68ca2a050c1cd` |
| 13 | `theorem` | [coe_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-re--a64de833b7f2c1e0897dbcd7.md) | 74 | `result-track:a64de833b7f2c1e0897dbcd7aecb7240a09810e33dd30f763ced6fa964cee07c` |
| 14 | `theorem` | [mk_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/mk-re--5077cbc77115f29839164df0.md) | 78 | `result-track:5077cbc77115f29839164df01c352afd087cc72bd61d890f81de187e28d9e243` |
| 15 | `theorem` | [mk_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/mk-im--ce668a404815f91eeefb1719.md) | 82 | `result-track:ce668a404815f91eeefb17198a251f4dd741ce5968131e5630ea3883b8699e10` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-mk--69f38f30027ba167634b6752.md) | 86 | `result-track:69f38f30027ba167634b67527b15ac5506318f9d0db15cae89d8f53f9efb318a` |
| 17 | `lemma` | [coe_mk_subtype](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-mk-subtype--f20134837d72dee41e015549.md) | 90 | `result-track:f20134837d72dee41e015549dfbc6fdd4ae0a6b4cb35b177576da2187462b51d` |
| 18 | `theorem` | [mk_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/mk-coe--f5de741e0e85178fcd8f80ea.md) | 95 | `result-track:f5de741e0e85178fcd8f80ea44e04672432472d2f4a1b6377a27fbe85b1d7332` |
| 19 | `theorem` | [re_add_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/re-add-im--e3d7c6224414641eca546c5f.md) | 98 | `result-track:e3d7c6224414641eca546c5fc110b5bc4e4685c3abb71bba8ab716d0c80ab6bd` |
| 20 | `theorem` | [im_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/im-pos--71bb4c3574c340039816f12f.md) | 101 | `result-track:71bb4c3574c340039816f12f8f3f0bdd90cf98dd5518e7c5ca6186f39717d189` |
| 21 | `theorem` | [im_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/im-ne-zero--3a54789c89ee597ac044a82f.md) | 104 | `result-track:3a54789c89ee597ac044a82fa3aa4cb8ba71528434f92ae6c6feff4ccca5b827` |
| 22 | `theorem` | [ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ne-zero--4f4424ebfcabaa3fade71f52.md) | 107 | `result-track:4f4424ebfcabaa3fade71f52766b42c2a15af2e162e170eefd7bd2556098e8ef` |
| 23 | `def` | [I](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/i--a5d5824ab3a9916f3578a49e.md) | 111 | `declaration-track:a5d5824ab3a9916f3578a49eeea4665e72780b157aae5c0dfca812acd518a4e9` |
| 24 | `lemma` | [I_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/i-im--bea0554c56d44f4da303c0c9.md) | 114 | `result-track:bea0554c56d44f4da303c0c9d8d7f834e52cc8114bac0fba7b07d46e18d65978` |
| 25 | `lemma` | [I_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/i-re--e56e9aa52e73ec4ed68d89be.md) | 117 | `result-track:e56e9aa52e73ec4ed68d89be70a53ace69205f65d0655dee0055d0ffb359ab6b` |
| 26 | `lemma` | [coe_I](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-i--b899d4b24dfd9d52073b0f8d.md) | 120 | `result-track:b899d4b24dfd9d52073b0f8d7897fd5e85b7dda0d12b0af400f862d22559a0e2` |
| 27 | `def` | [evalUpperHalfPlaneIm](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/evalupperhalfplaneim--630e972911cebbcee4c5bb39.md) | 130 | `declaration-track:630e972911cebbcee4c5bb39ef007cf867258766414a13e42afc702280dc480a` |
| 28 | `def` | [evalUpperHalfPlaneCoe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/evalupperhalfplanecoe--94b0840f2230261fdef5ab2d.md) | 139 | `declaration-track:94b0840f2230261fdef5ab2d02e038ef0633c9d8fd9bf0105163355c083cd5c1` |
| 29 | `theorem` | [normSq_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/normsq-pos--d7acb729a323b3ac8feaf68f.md) | 150 | `result-track:d7acb729a323b3ac8feaf68f9e7efeef3121df3232b7f646869bbad871795677` |
| 30 | `theorem` | [normSq_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/normsq-ne-zero--0ed19bdf54f91630e72a8d56.md) | 153 | `result-track:0ed19bdf54f91630e72a8d562efb3a58d4f747db904ea3c7c595fffef868501d` |
| 31 | `theorem` | [im_inv_neg_coe_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/im-inv-neg-coe-pos--7f602a1304bfe0557e888b84.md) | 156 | `result-track:7f602a1304bfe0557e888b841842eb43746a3afd422bc27abb10e3006d5a7970` |
| 32 | `lemma` | [ne_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ne-nat--b3ecf8ad4dcbbe2055aedc41.md) | 159 | `result-track:b3ecf8ad4dcbbe2055aedc41ace805a12145650eff3de3f3de11413eb8c4fe96` |
| 33 | `lemma` | [ne_int](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/ne-int--4d1c5d413aed72247a30e3fc.md) | 164 | `result-track:4d1c5d413aed72247a30e3fc1020307c07f0db42ad854f8f68cac0810c127443` |
| 34 | `instance` | [posRealAction](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/posrealaction--ba1582c13ff93180ee1a045a.md) | 171 | `declaration-track:ba1582c13ff93180ee1a045a6e57db73909158b8b5c0dcaaf130dd7bcfa7df95` |
| 35 | `theorem` | [coe_pos_real_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-pos-real-smul--49b7214ac9506aba8a028ecd.md) | 179 | `result-track:49b7214ac9506aba8a028ecd9f55177a99b729afd80ceb6f08a7ec0efd1381fc` |
| 36 | `theorem` | [pos_real_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/pos-real-im--323793661b266bc15134660e.md) | 183 | `result-track:323793661b266bc15134660e85f2a5ab883c11e91b9697c32f25815561040870` |
| 37 | `theorem` | [pos_real_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/pos-real-re--185f2c6da396061abb5e15e5.md) | 187 | `result-track:185f2c6da396061abb5e15e522d035fb9b123c04f495fa6ea7271a6105f295a6` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/instance--71c6541848e53af01c1677a8.md) | 194 | `declaration-track:71c6541848e53af01c1677a8c80bf9bb4dd674d7ce0630fd47f842cb1821fc0a` |
| 39 | `theorem` | [coe_vadd](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/coe-vadd--e1d7e15c78d73878430ecd2b.md) | 202 | `result-track:e1d7e15c78d73878430ecd2bc41e9d1e3c9e21833e31fb5a56682344f23e2cf6` |
| 40 | `theorem` | [vadd_re](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/vadd-re--e02e0904dfbfbb7d318a6b78.md) | 206 | `result-track:e02e0904dfbfbb7d318a6b78886b3ec9d0e0ed27aa55b71029b6b6b959d53e2c` |
| 41 | `theorem` | [vadd_im](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9bbc6f3cefd2c3acf9a861900a75bb09d6665cf806c8358b4fcf013cac53f9d0.lean/declarations/vadd-im--5452ca6cd773ecd11576c317.md) | 210 | `result-track:5452ca6cd773ecd11576c317ab6f82906e0c560ffbbcfd0694ef65b17feb0a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
