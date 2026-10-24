# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Degenerate.Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38556196fdfa4879c02859703191a4a14a9bce29",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38556196fdfa4879c02859703191a4a14a9bce29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean.json)

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
| 1 | `def` | [degenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate--b62defd15a72f2ebcbf74f90.md) | 38 | `declaration-track:b62defd15a72f2ebcbf74f9059b7353dd48bd3c36b81b09139ab2dd04061890a` |
| 2 | `def` | [nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerate--e89dcfdf2ac2c1ee3f6e3d0f.md) | 44 | `declaration-track:e89dcfdf2ac2c1ee3f6e3d0f797be46f98228c1b9c6e76aa77839c9501dd74c7` |
| 3 | `lemma` | [degenerate_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-zero--37e8f9f174f4a5b9fdb22bd8.md) | 47 | `result-track:37e8f9f174f4a5b9fdb22bd8aaac49cf90337f3ab65e089e9854c1e6052ccea8` |
| 4 | `lemma` | [nondegenerate_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerate-zero--f51817cbc70b032854757e4a.md) | 54 | `result-track:f51817cbc70b032854757e4a4317d2390902048f7b86704e2551b0f4d6590ed8` |
| 5 | `lemma` | [mem_nonDegenerate_iff_notMem_degenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-nondegenerate-iff-notmem-degenerate--3ab21e95988270e985ff6965.md) | 59 | `result-track:3ab21e95988270e985ff696525c10c0fb2021c60e6dcead22ce945012a7c190f` |
| 6 | `lemma` | [mem_degenerate_iff_notMem_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-degenerate-iff-notmem-nondegenerate--5b8b414e1246a21371a1b4ca.md) | 62 | `result-track:5b8b414e1246a21371a1b4ca8825bea4947673c1dd4407d99a2d7802e59cb900` |
| 7 | `lemma` | [σ_mem_degenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-degenerate--9e1eac47812a9b124cb15ab6.md) | 66 | `result-track:9e1eac47812a9b124cb15ab68783a595ef929fa5145133a9afdf9d7920242f9e` |
| 8 | `lemma` | [mem_degenerate_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-degenerate-iff--97487559a1138691715b78e1.md) | 70 | `result-track:97487559a1138691715b78e1fd3d406490eb4a98ddc3a68375860a8b9088bb44` |
| 9 | `lemma` | [opObjEquiv_mem_degenerate_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/opobjequiv-mem-degenerate-iff--8bf949d2afbf0206b7f642e7.md) | 82 | `result-track:8bf949d2afbf0206b7f642e7ce728af7b75b0e3e73b95796630e0f44045f5216` |
| 10 | `lemma` | [opObjEquiv_mem_nonDegenerate_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/opobjequiv-mem-nondegenerate-iff--d30f396bd8b2810278e8c601.md) | 93 | `result-track:d30f396bd8b2810278e8c60165e57f549d0ba156af0f0086abb457cefc75cfd0` |
| 11 | `lemma` | [degenerate_eq_iUnion_range_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-eq-iunion-range--97ce39f77ba0acacdb63787e.md) | 98 | `result-track:97ce39f77ba0acacdb63787e72e15a5ad8bbd3e5cd1f95fef1bb8748df4664d0` |
| 12 | `lemma` | [exists_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/exists-nondegenerate--22ad52c4c63861aabc0e0d79.md) | 115 | `result-track:22ad52c4c63861aabc0e0d79577ca6aaea7c5f51b5e11c15f0f29b594f7731bd` |
| 13 | `lemma` | [isIso_of_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/isiso-of-nondegenerate--12921733b4ab99d9b631b265.md) | 130 | `result-track:12921733b4ab99d9b631b2652ec3a3835233ee3299c6474f16cb247c9fa85a1d` |
| 14 | `lemma` | [mono_of_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mono-of-nondegenerate--ab5e3a3001f751287c430235.md) | 142 | `result-track:ab5e3a3001f751287c430235d6042ea485e96c6f03351ec8aa5f104c13f33220` |
| 15 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/g--0b990a002729f51eba3627f1.md) | 169 | `declaration-track:0b990a002729f51eba3627f11f70f63a25536be88ae99ed44dccac88d20d6717` |
| 16 | `lemma` | [map_g_op_y₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/map-g-op-y--51f8515b54b8188dd97759fd.md) | 175 | `result-track:51f8515b54b8188dd97759fdbaf4c3b775fdbd3b63eef80f55f713774fb5adec` |
| 17 | `lemma` | [isIso_factorThruImage_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/isiso-factorthruimage-g--9025a1301f4bbe768129973b.md) | 180 | `result-track:9025a1301f4bbe768129973beeb621841a995534ba6e856c452f73a1d8275984` |
| 18 | `lemma` | [mono_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mono-g--0275057ea3eff5f49aecb2d4.md) | 186 | `result-track:0275057ea3eff5f49aecb2d4c9d43d1c6a57fcf8c86688b3c08da2a20379d422` |
| 19 | `lemma` | [le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/le--f4b7abc2c866e66a3ecb130d.md) | 191 | `result-track:f4b7abc2c866e66a3ecb130da23cc2243081f7fb4a620f4faa26fd199036179e` |
| 20 | `lemma` | [g_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/g-eq-id--21cd60047d3cd30b98d96f7b.md) | 199 | `result-track:21cd60047d3cd30b98d96f7bb978b8a3938cd3d2ae1b6cef1fa1f77bec595d16` |
| 21 | `lemma` | [unique_nonDegenerate_dim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/unique-nondegenerate-dim--8710b252e95d2e9745e8c75c.md) | 218 | `result-track:8710b252e95d2e9745e8c75c0ec18d1793b5ccd337f2bea415b77055adfe3506` |
| 22 | `lemma` | [unique_nonDegenerate_simplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/unique-nondegenerate-simplex--01ed07945790983f9a81b73d.md) | 226 | `result-track:01ed07945790983f9a81b73d016b544413bf44130051b9ad18c18671aae056f3` |
| 23 | `lemma` | [unique_nonDegenerate_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/unique-nondegenerate-map--1568469e4f213a7dd0277300.md) | 234 | `result-track:1568469e4f213a7dd0277300681a2418bcfa3e97e780e22818c242e54003fe91` |
| 24 | `lemma` | [mem_degenerate_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-degenerate-iff--9921fdb62d72b413981b1406.md) | 267 | `result-track:9921fdb62d72b413981b14061a45a0a4e9affe6d2b7606c276fd12926dc25652` |
| 25 | `lemma` | [mem_nonDegenerate_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/mem-nondegenerate-iff--2a0719669274ee5a705b9980.md) | 281 | `result-track:2a0719669274ee5a705b99809e16e5e088dd07ba0dcb9d9e9ad916669d42dd39` |
| 26 | `lemma` | [le_iff_contains_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/le-iff-contains-nondegenerate--755b1cf86b5d479ff86a31ae.md) | 287 | `result-track:755b1cf86b5d479ff86a31ae566a61c0b85fa09585101a76a843c7f2276f04a2` |
| 27 | `lemma` | [eq_top_iff_contains_nonDegenerate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/eq-top-iff-contains-nondegenerate--dc6345d1b945933013e71992.md) | 300 | `result-track:dc6345d1b945933013e71992a1e3ca92078d95ec0760d35f835ab10604d75352` |
| 28 | `lemma` | [degenerate_eq_top_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-eq-top-iff--c1403c38b74e8e859a1d18c6.md) | 304 | `result-track:c1403c38b74e8e859a1d18c6da95ff6e33eae3be447ac4cc85da546f4cf671be` |
| 29 | `lemma` | [iSup_ofSimplex_nonDegenerate_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/isup-ofsimplex-nondegenerate-eq-top--dfea00586deb7dd82a6c646f.md) | 318 | `result-track:dfea00586deb7dd82a6c646fa8d17945a49910a29404d39b003ea83af641706c` |
| 30 | `lemma` | [degenerate_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-app-apply--2b15c9e824cf4bd7b554ad38.md) | 332 | `result-track:2b15c9e824cf4bd7b554ad388df0b129b0acc565b09ae43cf5a7173810af3d55` |
| 31 | `lemma` | [nonDegenerate_of_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerate-of-app-apply--3c94cb5257154eec81634f84.md) | 337 | `result-track:3c94cb5257154eec81634f849bfe680301037fad94c967014a71b5c7d0965950` |
| 32 | `lemma` | [degenerate_le_preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-le-preimage--175aed624de163ae394b033b.md) | 342 | `result-track:175aed624de163ae394b033b1fd3cffab88acd991d9aa03f77e388f38c06d69c` |
| 33 | `lemma` | [image_degenerate_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/image-degenerate-le--9b32f1f063411196db8cfc46.md) | 346 | `result-track:9b32f1f063411196db8cfc46021b12e29df7cfcc96bb642e59010b977d2da27b` |
| 34 | `lemma` | [degenerate_iff_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-iff-of-isiso--9361cbfc2e90917967d028fe.md) | 350 | `result-track:9361cbfc2e90917967d028fea8eb4605d507ac28444a8bc754102439128fd0e7` |
| 35 | `lemma` | [nonDegenerate_iff_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerate-iff-of-isiso--3537ffc100a3d30e7189e6cc.md) | 357 | `result-track:3537ffc100a3d30e7189e6ccc1cd2bad82db8fff22d3ec5196ef0907adb89a45` |
| 36 | `def` | [nonDegenerateEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerateequivofiso--007e2d500447ddda0023b492.md) | 366 | `declaration-track:007e2d500447ddda0023b4923e5862bdd8b01230ae08f633d169a4dd36e65f76` |
| 37 | `lemma` | [degenerate_iff_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/degenerate-iff-of-mono--f44a7c0952ccc5a43b25eb03.md) | 376 | `result-track:f44a7c0952ccc5a43b25eb034cf05508d7977d722752f11c7b6ab2053cc4ad46` |
| 38 | `lemma` | [nonDegenerate_iff_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/declarations/nondegenerate-iff-of-mono--3aa0cff1ff929515aed42d42.md) | 383 | `result-track:3aa0cff1ff929515aed42d42a41fbabd7503ff49970f1fb3c6c8998bab1fc507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
