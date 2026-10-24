# Verification target: GRWTSK.Algebra.LinearAlgebra.Hom.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c6016a38f6cae246f12e6fbe133d9bfd4875d75",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c6016a38f6cae246f12e6fbe133d9bfd4875d75`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinHomAux₁](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/tolinhomaux--f76e45680203474164f3b829.md) | 58 | `declaration-track:f76e45680203474164f3b829501db4a8f5ad8771f6ab353ac302f24a5524fb14` |
| 2 | `theorem` | [sum_left](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/sum-left--c37ff531db3ee340664dd7f9.md) | 62 | `result-track:c37ff531db3ee340664dd7f91f44fce404e0fb34f61c702d1fb5970f1165bcab` |
| 3 | `theorem` | [sum_right](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/sum-right--bdc23ca2b3a55fecb3687324.md) | 68 | `result-track:bdc23ca2b3a55fecb36873240b62eae753efdbb3980415d787fa703e60a7fa0b` |
| 4 | `theorem` | [sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/sum-apply--506731ba4a0837ac32cbd15b.md) | 71 | `result-track:506731ba4a0837ac32cbd15b88f20320a16260256dcd930927e40db2f6456167` |
| 5 | `def` | [toLinHomFlip](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/tolinhomflip--c79b738a3c02dcc513061032.md) | 79 | `declaration-track:c79b738a3c02dcc51306103287a277d7b5dc805dde2545c022aa1b1757412427` |
| 6 | `theorem` | [toLin'Flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/tolin-flip-apply--f32a7e4b31db106d6c1495dc.md) | 82 | `result-track:f32a7e4b31db106d6c1495dc8b7a7b89300c26af0893500497e083e6694a4983` |
| 7 | `def` | [compBilinForm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compbilinform--32821c36e6b0f50b71043fdb.md) | 97 | `declaration-track:32821c36e6b0f50b71043fdbd4ec0b5965a73bd1c822950767fcf500515a0e8f` |
| 8 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp--fc5b36b58e8dd92cf90f223d.md) | 111 | `declaration-track:fc5b36b58e8dd92cf90f223daafe5d3bbbe1671dfbe71779cb0b0f3b2717e90c` |
| 9 | `def` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compleft--b3fc451b550c30a0aafe3bba.md) | 114 | `declaration-track:b3fc451b550c30a0aafe3bba5ccab5c8b3e1af49c37ebfa597ea5b16711f4f0c` |
| 10 | `def` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compright--265e9becc2aeacff7d1b412a.md) | 118 | `declaration-track:265e9becc2aeacff7d1b412ad5ed9e91353e31909ed8311d0901d65089cb5e64` |
| 11 | `theorem` | [comp_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-comp--bb4eac70d559d1829fc3660c.md) | 121 | `result-track:bb4eac70d559d1829fc3660c621475ac0268bd750fe1e5e23ac5a9560ad877f6` |
| 12 | `theorem` | [compLeft_compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compleft-compright--26fe1612b5282dc5574edbc8.md) | 127 | `result-track:26fe1612b5282dc5574edbc8ac11e024960db1435166ed22d2070a801718c98e` |
| 13 | `theorem` | [compRight_compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compright-compleft--be06571215272835e81ebe55.md) | 132 | `result-track:be06571215272835e81ebe55ed433227311b8153f79695d509fe21b2a69c5453` |
| 14 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-apply--89f95ea837ab2595af687978.md) | 137 | `result-track:89f95ea837ab2595af687978f96a3944e0ab5658997eeee3c8781740c8359a18` |
| 15 | `theorem` | [compLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compleft-apply--c757012d6fddda19acb06af4.md) | 141 | `result-track:c757012d6fddda19acb06af44dd84957d79ec98a12e6505ab006edbf48c35520` |
| 16 | `theorem` | [compRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compright-apply--ad632a5a73f185fb2a8f2db0.md) | 145 | `result-track:ad632a5a73f185fb2a8f2db05512f113cb5de36ec2f14fedaaeaeb342f9a82f4` |
| 17 | `theorem` | [comp_id_left](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-id-left--fb98fc9aee04ac423f2340cf.md) | 149 | `result-track:fb98fc9aee04ac423f2340cf8e607699f33b43ba93f6224b42848a810061e04c` |
| 18 | `theorem` | [comp_id_right](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-id-right--328b9c7b1fd944642aa7b747.md) | 155 | `result-track:328b9c7b1fd944642aa7b7473e4f017073fc6a40b2f47d7e8343681b6e5ada88` |
| 19 | `theorem` | [compLeft_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compleft-id--c25b9fbfd797b0692f28c1b2.md) | 161 | `result-track:c25b9fbfd797b0692f28c1b27dbb7fe3e651b73ce47966ce478e5587f510f3df` |
| 20 | `theorem` | [compRight_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/compright-id--8694f1be4c391eac711eb4bd.md) | 166 | `result-track:8694f1be4c391eac711eb4bd8a49e9aa9c6ecf78c94d18968017f06d584f07b6` |
| 21 | `theorem` | [comp_id_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-id-id--31ef63b4ef23d62b64451726.md) | 173 | `result-track:31ef63b4ef23d62b64451726b8b3856288222643f4fbb5779740bfcd0c1e7445` |
| 22 | `theorem` | [comp_inj](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-inj--7fef550324a3ea730301e752.md) | 177 | `result-track:7fef550324a3ea730301e7528200d3938a306b4f12f591cd2ccba490af7164a9` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr--37ff6d56bc35066d4b99442a.md) | 198 | `declaration-track:37ff6d56bc35066d4b99442a43cc7c6ef6874065058d76e6035577b6c51c4152` |
| 24 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-apply--c3cac87a0a10ad5c4263e73e.md) | 202 | `result-track:c3cac87a0a10ad5c4263e73e51823a63c88ddf2f739e3f92de6f07b4dc113d5e` |
| 25 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-symm--16f39351025da3bec7c275e6.md) | 207 | `result-track:16f39351025da3bec7c275e668b4ac38aef1be224f1a138d8795c9fe72f4499f` |
| 26 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-refl--d8cf109ff79b69dff55f0353.md) | 213 | `result-track:d8cf109ff79b69dff55f03531660bd1833d583f6d5480806aa46d1b0c283caa9` |
| 27 | `theorem` | [congr_trans](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-trans--85607552d7796c0461cff9ae.md) | 216 | `result-track:85607552d7796c0461cff9aefc20da5e18c87ddaa782b7976c44d1b1630c12b9` |
| 28 | `theorem` | [congr_congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-congr--c6be39fa3ed45678385d253e.md) | 220 | `result-track:c6be39fa3ed45678385d253e2af8480b9d893419263abd99b1386d6e010244ff` |
| 29 | `theorem` | [congr_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/congr-comp--560a9313ee1579c0f8662d68.md) | 224 | `result-track:560a9313ee1579c0f8662d68e26f6a91f97d0ffda4460f950d198f6745ef7a99` |
| 30 | `theorem` | [comp_congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/comp-congr--78d119ce49d60e34b9645452.md) | 230 | `result-track:78d119ce49d60e34b9645452f7ba58b0152cd2c833427bb4f29c118fb2d750b2` |
| 31 | `def` | [_root_.LinearEquiv.congrRight₂](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/root-linearequiv-congrright--8df3773550445424a9e61d6f.md) | 245 | `declaration-track:8df3773550445424a9e61d6f7249e215089ed698237be6841cdae78bc10d0e72` |
| 32 | `theorem` | [_root_.LinearEquiv.congrRight₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/root-linearequiv-congrright-apply--b09edbfb8a6484ec36f5db32.md) | 249 | `result-track:b09edbfb8a6484ec36f5db32b1634a8efaaf1f1941e1656a53f741bb31208e18` |
| 33 | `theorem` | [_root_.LinearEquiv.congrRight₂_refl](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/root-linearequiv-congrright-refl--96aa296f44d6b3ed921bba0a.md) | 253 | `result-track:96aa296f44d6b3ed921bba0a11533a58def8448d482215a9d7148811c24b80ef` |
| 34 | `theorem` | [_root_.LinearEquiv.congrRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/root-linearequiv-congrright-symm--894312bb3fa1cc8cf090bd86.md) | 257 | `result-track:894312bb3fa1cc8cf090bd86f4d5bc9655f1a2a28be113c6ea11caeb35b00cc6` |
| 35 | `theorem` | [_root_.LinearEquiv.congrRight₂_trans](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/root-linearequiv-congrright-trans--8597ae2dc2a908634c2830de.md) | 261 | `result-track:8597ae2dc2a908634c2830de7a4c9dcf04b0a0a29af922931b1bde71ca4dafaa` |
| 36 | `def` | [linMulLin](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/linmullin--4006e1af1082364f0c3ffd13.md) | 271 | `declaration-track:4006e1af1082364f0c3ffd13337ca8a7e8bbc79a6ec7a1b1f77ba05d8401c0ca` |
| 37 | `theorem` | [linMulLin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/linmullin-apply--568aeb8d16641e05954f38ca.md) | 276 | `result-track:568aeb8d16641e05954f38ca4c715112ffa7249802fb096eee19b8bce397b5f9` |
| 38 | `theorem` | [linMulLin_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/linmullin-comp--ece6c16e93768e6c711a2926.md) | 280 | `result-track:ece6c16e93768e6c711a29265460dfd6c059b502f2157a1f1ff9a0f7cab36854` |
| 39 | `theorem` | [linMulLin_compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/linmullin-compleft--09a8ac0c91b805be34884b72.md) | 285 | `result-track:09a8ac0c91b805be34884b72051cfd405cbea821f9399c10176e5381b1719705` |
| 40 | `theorem` | [linMulLin_compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/linmullin-compright--54d47a6efea44018e5dd0640.md) | 290 | `result-track:54d47a6efea44018e5dd064039055202876a4b088bbcddf16258e08abbeb1d65` |
| 41 | `theorem` | [ext_basis](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/ext-basis--f14bb5396197658934952cc7.md) | 302 | `result-track:f14bb5396197658934952cc726680d76bcac5e477051c3a9162108eb34d7a53b` |
| 42 | `theorem` | [sum_repr_mul_repr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.lean/declarations/sum-repr-mul-repr-mul--ec67614588f79598c2b94dd1.md) | 306 | `result-track:ec67614588f79598c2b94dd1e9e6457ff26066ee22aab82f75e44377b7ed4b0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
