# Verification target: GRWTSK.Algebra.LinearAlgebra.Hom.Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLinHomAux₁](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/tolinhomaux--6a14ed88669d61aa468dcd37.md) | 66 | `declaration-track:6a14ed88669d61aa468dcd37f6bf1599f0ad5d8abbdd59c323274e7d9cf074d0` |
| 2 | `theorem` | [sum_left](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/sum-left--f4a6d4cc2cfc1d6cba25bf51.md) | 70 | `result-track:f4a6d4cc2cfc1d6cba25bf5141131e98d460e9214b53d04e10954d5e86dd88dc` |
| 3 | `theorem` | [sum_right](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/sum-right--5dca884b735128861e97dd07.md) | 76 | `result-track:5dca884b735128861e97dd07c9461cd1497e0d3e22d41436fa056d3a04ef6902` |
| 4 | `theorem` | [sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/sum-apply--dcfc7de990609b674e24d6b4.md) | 79 | `result-track:dcfc7de990609b674e24d6b4f485ed7cdb9d07bae8b46c4dbcb3caf33814a5db` |
| 5 | `def` | [toLinHomFlip](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/tolinhomflip--5ae226f15646e4b2f1d2161d.md) | 87 | `declaration-track:5ae226f15646e4b2f1d2161da53d074321df3fd87f25f308af073ef89ef49ae5` |
| 6 | `theorem` | [toLin'Flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/tolin-flip-apply--db9acce7308caf7c51f251a0.md) | 90 | `result-track:db9acce7308caf7c51f251a00a4987177a7d82faddd414f771648dbd26c8f922` |
| 7 | `def` | [compBilinForm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compbilinform--62fa74b18bc8f6518188da46.md) | 105 | `declaration-track:62fa74b18bc8f6518188da46783436b8ebda043240016bcd9230aa03e9731137` |
| 8 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp--dece9b069b5a77831e20ff19.md) | 119 | `declaration-track:dece9b069b5a77831e20ff19134f906f4c3ed98be2ca38ef943743490d1ad9f7` |
| 9 | `def` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compleft--7c920901c3364ab769d027a7.md) | 122 | `declaration-track:7c920901c3364ab769d027a758cc70b33835a296845230e6334e63a7e8e0454d` |
| 10 | `def` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compright--36e5c94891eb38e9e8351009.md) | 126 | `declaration-track:36e5c94891eb38e9e8351009448fc4458a818bed351c0c9d8bf4f8d267e1ba64` |
| 11 | `theorem` | [comp_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-comp--87d8cd89c57947858fb7272e.md) | 129 | `result-track:87d8cd89c57947858fb7272e11a4aab24b8e8d25398a15dbba1a07190d816e34` |
| 12 | `theorem` | [compLeft_compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compleft-compright--fd361e8a35536608980ff162.md) | 135 | `result-track:fd361e8a35536608980ff1629229cdabca7c00b194a1301126d6bb59723f94d1` |
| 13 | `theorem` | [compRight_compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compright-compleft--6bb6aff1cc53e51e982c0bbd.md) | 140 | `result-track:6bb6aff1cc53e51e982c0bbdacde0b0194c24e337bd00db5173b5ce3d9018c68` |
| 14 | `theorem` | [comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-apply--4368654194637a322692bd6b.md) | 145 | `result-track:4368654194637a322692bd6bb1d6f0d50f030eccab510459b47c5deb0e425da6` |
| 15 | `theorem` | [compLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compleft-apply--0c8725e60c3ed5e3448faadb.md) | 149 | `result-track:0c8725e60c3ed5e3448faadb84cdc189d7a01b25791c69a84087f3436dbed7cb` |
| 16 | `theorem` | [compRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compright-apply--a611017ddca692a27296cf80.md) | 153 | `result-track:a611017ddca692a27296cf80028f55692a6ba8a8c082c780ce3033f492b812b0` |
| 17 | `theorem` | [comp_id_left](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-id-left--89a94302ad5426938d4b8b02.md) | 157 | `result-track:89a94302ad5426938d4b8b0225757c47f39188a3afa70cc1154251d086a2b670` |
| 18 | `theorem` | [comp_id_right](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-id-right--778dcd478303edc02bdf8165.md) | 163 | `result-track:778dcd478303edc02bdf8165addd11581b4f1d973875fa2ab2e5e8f8c302ac26` |
| 19 | `theorem` | [compLeft_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compleft-id--f3346b618427558fb826d79b.md) | 169 | `result-track:f3346b618427558fb826d79bc0aa4e1283ab012dc710c5572c1d9db3fa4b6904` |
| 20 | `theorem` | [compRight_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/compright-id--887e77cc5c074c3089967ef3.md) | 174 | `result-track:887e77cc5c074c3089967ef30926f3dd8ccef6c8d22b14f7a4504fed34bdaff9` |
| 21 | `theorem` | [comp_id_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-id-id--6fd9757fe4391b6f590949e9.md) | 181 | `result-track:6fd9757fe4391b6f590949e9b6739ca731fac6323660e8185ad89d57ba75d9cb` |
| 22 | `theorem` | [comp_inj](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-inj--b12d778c62e19e245e6e5254.md) | 185 | `result-track:b12d778c62e19e245e6e525402c25247b6740cf05f8634a423d5d5165ff846ba` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr--abf477b726d55d7df86b9db3.md) | 206 | `declaration-track:abf477b726d55d7df86b9db33c6ab650eb39d7747ae14abd18d7bb29a523cd0f` |
| 24 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-apply--b0ac2d52d30c1e6ebc9d2824.md) | 210 | `result-track:b0ac2d52d30c1e6ebc9d28243b82b8d242424b2ab6a14d817d01b962c3bb4b11` |
| 25 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-symm--ea9732f637de8ab3c58e102a.md) | 215 | `result-track:ea9732f637de8ab3c58e102ab01de998a18332a32831005b25fd356ac20cfae3` |
| 26 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-refl--ebc88e4b324a202fcd3bd5e5.md) | 221 | `result-track:ebc88e4b324a202fcd3bd5e52e91b98ebe51e229f55b69c0e18d6d2982199483` |
| 27 | `theorem` | [congr_trans](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-trans--bb976832f40e6618900d84c2.md) | 224 | `result-track:bb976832f40e6618900d84c205e80213aaeecbb804dda379b49b13a526000554` |
| 28 | `theorem` | [congr_congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-congr--5620ce6144120ebb0d3c2d04.md) | 228 | `result-track:5620ce6144120ebb0d3c2d04438f82827c1afa2228411b78dc87796316d57740` |
| 29 | `theorem` | [congr_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/congr-comp--06703d93ebf780fe0060bb3c.md) | 232 | `result-track:06703d93ebf780fe0060bb3c28fc5f43ec9d066614b732b91f884d42ae8c353b` |
| 30 | `theorem` | [comp_congr](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/comp-congr--4f5b1b5c96de012dfb3bf003.md) | 238 | `result-track:4f5b1b5c96de012dfb3bf0035c8837ec65cb584d26ace3bdc50ff8e23859c056` |
| 31 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToLinHomAux.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.LinearEquiv.congrRight₂](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/root-grwtsk-algebra-linearalgebra-tolinhomaux-variant5284f824c45a5f7ce2a--ef7a1d4f80cc00120d87d908.md) | 253 | `declaration-track:ef7a1d4f80cc00120d87d9082e682f4c2cca8992d5a5022eb4551f990b000e4f` |
| 32 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToLinHomAux.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.LinearEquiv.congrRight₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/root-grwtsk-algebra-linearalgebra-tolinhomaux-variant5284f824c45a5f7ce2a--657423e8b57d74362bc06655.md) | 257 | `result-track:657423e8b57d74362bc066553bc1dbc9b1a93a3604a3cf621c7e4d05d06166df` |
| 33 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToLinHomAux.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.LinearEquiv.congrRight₂_refl](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/root-grwtsk-algebra-linearalgebra-tolinhomaux-variant5284f824c45a5f7ce2a--95ac56bc6b85eaac854bbc68.md) | 261 | `result-track:95ac56bc6b85eaac854bbc6856792a018c699e7a1092ba3316d40f95a8323313` |
| 34 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToLinHomAux.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.LinearEquiv.congrRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/root-grwtsk-algebra-linearalgebra-tolinhomaux-variant5284f824c45a5f7ce2a--47bf7f3748356b9b6c4acdcb.md) | 265 | `result-track:47bf7f3748356b9b6c4acdcbd17df338a396c6a4aa94a95626c663498fc522ae` |
| 35 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToLinHomAux.Variant5284f824c45a5f7ce2aa727376e197d38f666d74f4d518ea06a4bb97109a5a62.LinearEquiv.congrRight₂_trans](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/root-grwtsk-algebra-linearalgebra-tolinhomaux-variant5284f824c45a5f7ce2a--0b8e1d159bacb2ceb22ed71f.md) | 269 | `result-track:0b8e1d159bacb2ceb22ed71f4fe6203dd6a8323b1193757efdbf91cc7c2e7677` |
| 36 | `def` | [linMulLin](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/linmullin--cc76cb16f99cefa6d438dbbe.md) | 279 | `declaration-track:cc76cb16f99cefa6d438dbbe6877c3850bd4f6304b13928cae6a9fd9d30cc2a8` |
| 37 | `theorem` | [linMulLin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/linmullin-apply--8e19bcefd27c37b0c22cf5cd.md) | 284 | `result-track:8e19bcefd27c37b0c22cf5cd2eedf76e3ca0cd93458b22d8947fc076dc6d78e1` |
| 38 | `theorem` | [linMulLin_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/linmullin-comp--86161ddced143e359a16f6dd.md) | 288 | `result-track:86161ddced143e359a16f6dd795bd41a9757560aba44e7e44fcffb7b04e4d70e` |
| 39 | `theorem` | [linMulLin_compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/linmullin-compleft--1c1d0c84480d852bafc611b0.md) | 293 | `result-track:1c1d0c84480d852bafc611b072eb5df2056dc3161ae54cf4032c5fcbd3c00a28` |
| 40 | `theorem` | [linMulLin_compRight](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/linmullin-compright--4349f1a4a122c14e955d0b67.md) | 298 | `result-track:4349f1a4a122c14e955d0b67a4c5f6a9f8e61afe40b44cfbae8f6f214d7b9aa0` |
| 41 | `theorem` | [ext_basis](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/ext-basis--60b4aff74fbee7d9339a29dc.md) | 310 | `result-track:60b4aff74fbee7d9339a29dcc90b2f9241d4acc1b02de38b6bcf197e6dc7f172` |
| 42 | `theorem` | [sum_repr_mul_repr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/declarations/sum-repr-mul-repr-mul--58a98de97ed0c2a9bde74434.md) | 314 | `result-track:58a98de97ed0c2a9bde7443499d950578efd45287a1f30b25dc8714fa2811734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
