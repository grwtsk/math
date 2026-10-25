# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SmallHom.Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "334149a38ba679cddfab2abb7f190d0d26ff51d3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `334149a38ba679cddfab2abb7f190d0d26ff51d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HomEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSmallLocalizedHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom--9525e0cf6f929d48d7486159.md) | 42 | `declaration-track:9525e0cf6f929d48d748615932be49773e7655f1cb722a77636fa4e8c6fb0059` |
| 2 | `lemma` | [hasSmallLocalizedHom_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom-iff--95993da3e9ef77a37e1b24e0.md) | 49 | `result-track:95993da3e9ef77a37e1b24e0e2935716581e9bdae1c72bc86b0d56f9db4800b4` |
| 3 | `lemma` | [hasSmallLocalizedHom_of_isLocalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom-of-islocalization--415f98e59064147d38335438.md) | 59 | `result-track:415f98e59064147d383354386702f6f744521e37061bd75dc076039c70259874` |
| 4 | `lemma` | [small_of_hasSmallLocalizedHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/small-of-hassmalllocalizedhom--2d4c42d2e6a85a22f9838d9d.md) | 65 | `result-track:2d4c42d2e6a85a22f9838d9de82f8a05323093a57ad830d597941c9c1d02a58b` |
| 5 | `lemma` | [hasSmallLocalizedHom_iff_of_isos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom-iff-of-isos--5925bfd710d44cde054ee57c.md) | 69 | `result-track:5925bfd710d44cde054ee57c4e35bcd881dd706c31a4f295dc73ca8a1156d7a1` |
| 6 | `lemma` | [hasSmallLocalizedHom_iff_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom-iff-target--c0d1895dc07a3450693e1c53.md) | 75 | `result-track:c0d1895dc07a3450693e1c533616706c9af4e828644a37374f059306b4f1e6c2` |
| 7 | `lemma` | [hasSmallLocalizedHom_iff_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/hassmalllocalizedhom-iff-source--0fa9a6f5c899fd903a633b9a.md) | 80 | `result-track:0fa9a6f5c899fd903a633b9ab7a0bf0b78391fc4eab36d5c096857d66b760d43` |
| 8 | `def` | [SmallHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/smallhom--1bfe51b6c62dc857b6136f7a.md) | 90 | `declaration-track:1bfe51b6c62dc857b6136f7ab31bdd778a62c64eaa406a0b3c975e536b38e0db` |
| 9 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv--95dfea7e037a40cd686c4a6f.md) | 98 | `declaration-track:95dfea7e037a40cd686c4a6f650ba6617d1a6c13698e71d415d5a5fd8d9a7e42` |
| 10 | `lemma` | [equiv_equiv_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-equiv-symm--f264b0bd9deb4a3da320c270.md) | 104 | `result-track:f264b0bd9deb4a3da320c27087df337a145385009e23114bd4c87d2eddc28559` |
| 11 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mk--4449cdc41674bc90812c9848.md) | 115 | `declaration-track:4449cdc41674bc90812c98489a7b034fd05f1cdd7b10812d59532ca3f46fb25f` |
| 12 | `lemma` | [equiv_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-mk--5b72ebe67a7c1a2130ae69a0.md) | 120 | `result-track:5b72ebe67a7c1a2130ae69a067fb2a4efdabaf64abec73a1fa9cbd90bc0e1ab8` |
| 13 | `def` | [mkInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mkinv--289fb70efaebd26daada51b6.md) | 128 | `declaration-track:289fb70efaebd26daada51b6fb359d28794a028d8e18fa80cd986f23b55cd34d` |
| 14 | `lemma` | [equiv_mkInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-mkinv--64c78d27d6d16d1ff7a0d54d.md) | 133 | `result-track:64c78d27d6d16d1ff7a0d54d679a80d1ca54f6f5cce2b40174dd579b118902ee` |
| 15 | `def` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/comp--bf0d249c0c0a5a0255c6bb3b.md) | 140 | `declaration-track:bf0d249c0c0a5a0255c6bb3b0d74ff4dbad10b306bf89ec528da20bac0e300cd` |
| 16 | `lemma` | [equiv_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-comp--0b5e964521f26753ee312e6a.md) | 146 | `result-track:0b5e964521f26753ee312e6ae4314357d84f676d42135a3ec3d4a1ae89a09cd6` |
| 17 | `lemma` | [mk_comp_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mk-comp-mk--3d9f6a98aae17952d8f82a72.md) | 163 | `result-track:3d9f6a98aae17952d8f82a724e8c93034141746f6a8cad9ccedcdcf517c5cf92` |
| 18 | `lemma` | [comp_mk_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/comp-mk-id--2a300c508097d3f61dc3fc25.md) | 169 | `result-track:2a300c508097d3f61dc3fc2517dc291dc3b16d7bb43935b35905f9d5aa3a5706` |
| 19 | `lemma` | [mk_id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mk-id-comp--bfce6e269b74fa089a0315ff.md) | 175 | `result-track:bfce6e269b74fa089a0315ff8b5713ab078d90fab468861ffa20b3d2c011644c` |
| 20 | `lemma` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/comp-assoc--7ec952adc5f0279c1ebe059a.md) | 181 | `result-track:7ec952adc5f0279c1ebe059a54be43b266a5ca2e6fb410e6249b5239f9566d84` |
| 21 | `lemma` | [mk_comp_mkInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mk-comp-mkinv--6928ea756bef2c31abe51179.md) | 190 | `result-track:6928ea756bef2c31abe511798625a2c6402f8bfb6e8e37f393f1daa4501531bd` |
| 22 | `lemma` | [mkInv_comp_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/mkinv-comp-mk--75361b4a20fcb3380b83a4e9.md) | 196 | `result-track:75361b4a20fcb3380b83a4e975ca9dd9e28649c7bce14f1f702642847f509fe2` |
| 23 | `def` | [chgUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/chguniv--be623f752dcb35ba44f3885f.md) | 206 | `declaration-track:be623f752dcb35ba44f3885f7dcc2d057bd39c9db3e0105fdb9c1b914436dc4a` |
| 24 | `lemma` | [equiv_chgUniv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-chguniv--adb16efb6a0a8136ccd871cc.md) | 211 | `result-track:adb16efb6a0a8136ccd871cc60fb3a8d8d9631971e98d0da8ec14e8de0b68ceb` |
| 25 | `def` | [smallHomMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/smallhommap--ab10aa999572878103ba654f.md) | 244 | `declaration-track:ab10aa999572878103ba654f2e8583fa71be7c510020d7349eeb05cfafdd8643` |
| 26 | `lemma` | [equiv_smallHomMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/equiv-smallhommap--bbb20e9a220358430a69141a.md) | 251 | `result-track:bbb20e9a220358430a69141a7e1c3f9fa299c56d76e49d1a96c938326d9325e3` |
| 27 | `lemma` | [smallHomMap_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/declarations/smallhommap-comp--9fdfb01f7cf99127f253f9a2.md) | 294 | `result-track:9fdfb01f7cf99127f253f9a2dbb81166da5e72b3564baa09b023e74ae92f6d9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
