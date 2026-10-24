# Verification target: GRWTSK.Algebra.LinearAlgebra.Block.Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e76935818d9641173894b307b04362f9b8e9cf43",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e76935818d9641173894b307b04362f9b8e9cf43`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean.json)

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
| 1 | `def` | [BlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular--6c4826ff4dc9d0518b67cd88.md) | 71 | `declaration-track:6c4826ff4dc9d0518b67cd88ee8e2d2d7c711126eff42095c6004cc8cf2d9808` |
| 2 | `abbrev` | [IsUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/isuppertriangular--ce85057ef81a7425dcd8a7ac.md) | 75 | `declaration-track:ce85057ef81a7425dcd8a7ac6d2b7223fec0ef92dba6373ff57d9546ad624b89` |
| 3 | `abbrev` | [IsLowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/islowertriangular--e8e8eda56b27bbdb1180ac8e.md) | 79 | `declaration-track:e8e8eda56b27bbdb1180ac8eeea827a30b090b09fbe4fb83b3a0e360623a5b1d` |
| 4 | `def` | [IsIndecomposable](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/isindecomposable--25d78ea66be3f3cfd50c081c.md) | 83 | `declaration-track:25d78ea66be3f3cfd50c081c9abc1f4d308cbbdd7382b8a374b1cb0b46d5b1ef` |
| 5 | `theorem` | [BlockTriangular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-submatrix--2b9eadb3f63826b13b26cc61.md) | 87 | `result-track:2b9eadb3f63826b13b26cc61ae93ee36bd9f262eafc2a8c6b502eeea39cd4b4f` |
| 6 | `theorem` | [blockTriangular_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-reindex-iff--7b38e7fd3e417753d6b34e89.md) | 90 | `result-track:7b38e7fd3e417753d6b34e89bfb009cac677e030f8c15cfacaa80d9f390bc3ab` |
| 7 | `theorem` | [BlockTriangular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-transpose--bf0fc9f2d01959baef5a457b.md) | 98 | `result-track:bf0fc9f2d01959baef5a457bcbf57bfd1598a6f0579333b0e406bd4a5a3ace5d` |
| 8 | `theorem` | [blockTriangular_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-transpose-iff--424e228bb7eaeba84d93597a.md) | 103 | `result-track:424e228bb7eaeba84d93597a6467495e870d605e201fdde519b9301aa6c4c447` |
| 9 | `theorem` | [blockTriangular_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-zero--777009e2d0012f3cebfac163.md) | 108 | `result-track:777009e2d0012f3cebfac16338ce8a8b4655334d56df4008d22cc4033257d0c7` |
| 10 | `instance` | [decidableBlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/decidableblocktriangular--92d5821c8216436e22c7217d.md) | 110 | `declaration-track:92d5821c8216436e22c7217d696e5c7de76734859c77dda173e6f4f28bc69170` |
| 11 | `theorem` | [BlockTriangular.neg](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-neg--8c49f794ac3c13a220329e2f.md) | 117 | `result-track:8c49f794ac3c13a220329e2ffec902c40cd564f9b23db8c776a7bd80f3724c1b` |
| 12 | `theorem` | [BlockTriangular.add](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-add--32a6a0e2724bee962a0d220f.md) | 121 | `result-track:32a6a0e2724bee962a0d220f3cebb65af5f263c144f9283b806da3b5eee169bd` |
| 13 | `theorem` | [BlockTriangular.sub](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-sub--71adeba594afb88e82fb60c9.md) | 124 | `result-track:71adeba594afb88e82fb60c9bb00e5351d6622d1fee1b51c3e3554958f4b79d6` |
| 14 | `lemma` | [BlockTriangular.add_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-add-iff-right--64e47936293114fc8727015c.md) | 128 | `result-track:64e47936293114fc8727015c721f4bc0722e033d268110588d75bc1e7cdc948a` |
| 15 | `lemma` | [BlockTriangular.add_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-add-iff-left--bf4794aaf3522ba5c61c6f0c.md) | 131 | `result-track:bf4794aaf3522ba5c61c6f0c602401b7546bb3a133aa3bb7944c4521ac88ecf8` |
| 16 | `lemma` | [BlockTriangular.sub_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-sub-iff-right--3ef09886d22cd39c12c48dd8.md) | 134 | `result-track:3ef09886d22cd39c12c48dd8a8c458400c201f65cd64d2ae53097d78c7b9dc19` |
| 17 | `lemma` | [BlockTriangular.sub_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-sub-iff-left--608b8390a8388ed18209bf22.md) | 137 | `result-track:608b8390a8388ed18209bf222c7821e5f000f43702f731a9771d2b1434ff5a89` |
| 18 | `lemma` | [BlockTriangular.map](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-map--d57d5bb86e5db8d5db7deed8.md) | 140 | `result-track:d57d5bb86e5db8d5db7deed887dff985e39b4f52eaa5e0ffbae011683102a3e5` |
| 19 | `lemma` | [BlockTriangular.comp](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-comp--9d5e13e4473e8fa77a0c7aa0.md) | 144 | `result-track:9d5e13e4473e8fa77a0c7aa0510587de504d1c01a164f097cf03dd5f9ace5846` |
| 20 | `theorem` | [blockTriangular_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-diagonal--2c6117e8c12502e4e8db6025.md) | 158 | `result-track:2c6117e8c12502e4e8db602590d57224d677243fbf33b09af512295fc60dd462` |
| 21 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-blockdiagonal--b4e755a6d60da637ea4b6d8e.md) | 161 | `result-track:b4e755a6d60da637ea4b6d8e79eee01b15e4069fd6b8f3e63e3a18d5a0471d43` |
| 22 | `theorem` | [blockTriangular_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-blockdiagonal--9b57b89de64c3246c33f1e1b.md) | 166 | `result-track:9b57b89de64c3246c33f1e1b621766e3409ed8b25dd778e3b019870b5f3824b9` |
| 23 | `theorem` | [blockTriangular_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-one--f7d5eedc3fcd4545f290c331.md) | 174 | `result-track:f7d5eedc3fcd4545f290c3311e41043b862a338393821a210c21856aa596f6b8` |
| 24 | `theorem` | [blockTriangular_single](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-single--cfd803009b9a666792755266.md) | 177 | `result-track:cfd803009b9a66679275526642c6204f48c462b858c9309040e453579505f521` |
| 25 | `theorem` | [blockTriangular_single'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-single--e3004596c973bc7cba5f58d0.md) | 184 | `result-track:e3004596c973bc7cba5f58d023f02def8e418d3989f796cfecfa85d0005575bc` |
| 26 | `theorem` | [blockTriangular_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-transvection--74d3d3cb2a68f8f353987502.md) | 192 | `result-track:74d3d3cb2a68f8f353987502388f1eb7d262fcf558bea64c3dbbe6adc0cef51a` |
| 27 | `theorem` | [blockTriangular_transvection'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-transvection--e398849c3fb7b89c38708b6a.md) | 196 | `result-track:e398849c3fb7b89c38708b6aef48d538604feb92805431532e658d2c8750c0fa` |
| 28 | `theorem` | [BlockTriangular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-mul--460f9b14183c3d729e5e5d2b.md) | 206 | `result-track:460f9b14183c3d729e5e5d2b18fb6f25073ddd8610e3ca79d1956ccc15bfaa53` |
| 29 | `def` | [blockTriangularSubsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangularsubsemiring--bb50d673833a2c1586992059.md) | 219 | `declaration-track:bb50d673833a2c1586992059633ba118980bfcbf52599d30c7a9bba8f68f50bb` |
| 30 | `theorem` | [mem_blockTriangularSubsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/mem-blocktriangularsubsemiring--3a77074578edaef0de9fa1ff.md) | 228 | `result-track:3a77074578edaef0de9fa1ffe7248ade0feeeab1a47c801ba0ae94b636bda21f` |
| 31 | `theorem` | [BlockTriangular.pow](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-pow--e861b02af115b98e67c583f4.md) | 233 | `result-track:e861b02af115b98e67c583f4ac63311ea01ea8781c9122a9645477076d6d577b` |
| 32 | `theorem` | [blockTriangular_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-algebramap--3c8b5365ee64dcde3ab0d156.md) | 237 | `result-track:3c8b5365ee64dcde3ab0d156e593a9b21ab03a467c097099103ad82dd9113ec5` |
| 33 | `def` | [blockTriangularSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangularsubalgebra--1f024c061a6155d103bd599d.md) | 243 | `declaration-track:1f024c061a6155d103bd599d9bdb749bc4c4a42c7774e2289dc21869dba2be9a` |
| 34 | `theorem` | [mem_blockTriangularSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/mem-blocktriangularsubalgebra--e0a29ec7f2cd83f82c8055ec.md) | 249 | `result-track:e0a29ec7f2cd83f82c8055ec878cf680761af16bd693bf42d733b3a9399bcec7` |
| 35 | `lemma` | [isIndecomposable_iff_blockTriangular_const](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/isindecomposable-iff-blocktriangular-const--0f57349340fb9eeb9ba4262e.md) | 255 | `result-track:0f57349340fb9eeb9ba4262e20a788cbd61c8c111db90fa5972635b16bd7d71d` |
| 36 | `theorem` | [upper_two_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/upper-two-blocktriangular--ebd0eb2c5b8c2b300fe10587.md) | 301 | `result-track:ebd0eb2c5b8c2b300fe10587332a47270d9739e0554fb2538e1773b9f5e00808` |
| 37 | `theorem` | [equiv_block_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/equiv-block-det--8bbae10a369d5a50bf92fb80.md) | 311 | `result-track:8bbae10a369d5a50bf92fb8073884a52aa33fff61a48a8d16c600428de4a0a76` |
| 38 | `theorem` | [det_toSquareBlock_id](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/det-tosquareblock-id--fd215cb10585b1393a9ae16d.md) | 322 | `result-track:fd215cb10585b1393a9ae16db25b00d11f2b7ee85975560576f43e8ea2fbd98e` |
| 39 | `theorem` | [det_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/det-toblock--905d5e170115a46da37fea3d.md) | 326 | `result-track:905d5e170115a46da37fea3da96bfc703f74ec27f52b1083635b67c3d19fc939` |
| 40 | `theorem` | [twoBlockTriangular_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/twoblocktriangular-det--53c287a9ec72d8820f4e25e2.md) | 339 | `result-track:53c287a9ec72d8820f4e25e22883d0bacff3653ac05f1eb3f5d2e0383df2af1b` |
| 41 | `theorem` | [twoBlockTriangular_det'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/twoblocktriangular-det--ae5a78d7c09460fc80e5a35e.md) | 349 | `result-track:ae5a78d7c09460fc80e5a35eeb8c496edef6e59ac521e3d7d455d18283f55eeb` |
| 42 | `theorem` | [BlockTriangular.det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-det--b59305b7fec4bf666c92aacd.md) | 357 | `result-track:b59305b7fec4bf666c92aacdc550cce732493f62c822089f1e1cd27ba6b9253c` |
| 43 | `theorem` | [BlockTriangular.det_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-det-fintype--6e6163286ddc2aad8d41f08a.md) | 392 | `result-track:6e6163286ddc2aad8d41f08ad18fc56d594cffcce96b0831c70a2d964d939506` |
| 44 | `theorem` | [det_of_isUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/det-of-isuppertriangular--528e4558c7fa124ce1b1136b.md) | 398 | `result-track:528e4558c7fa124ce1b1136bed911f71bbbd31f8f9d0866ede34efd459633668` |
| 45 | `theorem` | [det_of_isLowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/det-of-islowertriangular--5803e0ed55ab5faf2e02f6e3.md) | 405 | `result-track:5803e0ed55ab5faf2e02f6e311bc405e0c6728550762b8b0f3ee6855223341cc` |
| 46 | `theorem` | [matrixOfPolynomials_isUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/matrixofpolynomials-isuppertriangular--7bd238b911abcb6b1e5b02a4.md) | 414 | `result-track:7bd238b911abcb6b1e5b02a4ff73f962ad00367a2ab5c294d30ec9f03ff1c2ae` |
| 47 | `theorem` | [det_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/det-matrixofpolynomials--a987901ac3ef8c4d351252c2.md) | 423 | `result-track:a987901ac3ef8c4d351252c210df1b7dda7b838656bbb6b900d216f002dd6892` |
| 48 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one--3c3c60c7275f6977b4fd177d.md) | 434 | `result-track:3c3c60c7275f6977b4fd177d3d18df9c5f17f940ff3aa78c09e2a1c8b554b52e` |
| 49 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-inv-toblock--3c3f2037de66916662b4ca21.md) | 452 | `result-track:3c3f2037de66916662b4ca2160f3978c3f0ab64db4b367a95fcdc9ebbbea1548` |
| 50 | `def` | [BlockTriangular.invertibleToBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-invertibletoblock--3454930b74d6f1eacaa44d5a.md) | 460 | `declaration-track:3454930b74d6f1eacaa44d5a28779a3ce1c6a06845e70598ecf510493065c008` |
| 51 | `theorem` | [toBlock_inverse_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/toblock-inverse-eq-zero--bbef3b4a204da6c1a70a237d.md) | 467 | `result-track:bbef3b4a204da6c1a70a237d3c888cb93e3c46e5f5bb190e5645adbebe7e1630` |
| 52 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/declarations/blocktriangular-inv-of-blocktriangular--49c796677c6fa829fa029422.md) | 487 | `result-track:49c796677c6fa829fa0294223bf08130028488fdea81d35991be6d9a57fe2f9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
