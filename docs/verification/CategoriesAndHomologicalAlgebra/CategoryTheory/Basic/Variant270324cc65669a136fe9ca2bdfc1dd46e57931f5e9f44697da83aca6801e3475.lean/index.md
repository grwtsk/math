# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c3ad0dc55348e29e8d077a7d94c978725e02f27",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c3ad0dc55348e29e8d077a7d94c978725e02f27`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/algcat--09cd08bdb6948c5395be706b.md) | 26 | `declaration-track:09cd08bdb6948c5395be706bb0358adf4441773051cfbb0bf99af4ba9f102a4d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--e812658fecd4279124cc4a62.md) | 39 | `declaration-track:e812658fecd4279124cc4a62ed5821d348344d57fdfacf4a8193820f0081967d` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/of--10ec95ee6f43d56287eb1fa1.md) | 46 | `declaration-track:10ec95ee6f43d56287eb1fa1f919d93f98b6154a2ed446ecd20f30c7e34ec079` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/coe-of--3ab5e56ba5499c8e4934ec88.md) | 49 | `result-track:3ab5e56ba5499c8e4934ec8879193f98a233ae7666ec9604ff16314e40c9edc2` |
| 5 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom--7d68cc3ad67bccda3d23f8ef.md) | 55 | `declaration-track:7d68cc3ad67bccda3d23f8effbf856fdb73c8c9e4ca2346056f811a1d973d905` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--ae84722b841b384c4b0221e7.md) | 60 | `declaration-track:ae84722b841b384c4b0221e7a888cd68b28b8e80baab3f0224a9d8e46d6fb35f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--2d7a440e226fc8e304bc7d8d.md) | 65 | `declaration-track:2d7a440e226fc8e304bc7d8d726f3edc86467fb3085b2b88317f84fd8ae8077b` |
| 8 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-hom--acf5add7915c7924948f1ada.md) | 71 | `declaration-track:acf5add7915c7924948f1adae49ed3fd3a374beabfb2265e42fb2fe12168036e` |
| 9 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofhom--ed78dd5b611493dc55409a9e.md) | 76 | `declaration-track:ed78dd5b611493dc55409a9e33d495878b4f034cc76cb82e0ec2e6cc7d96935b` |
| 10 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-simps-hom--713d06656852451d52c7a01a.md) | 82 | `declaration-track:713d06656852451d52c7a01ad6d5deebb197b5dd484a503774c6fefa6f807e4f` |
| 11 | `lemma` | [hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-id--4c97f0d3f7dee80d63082012.md) | 92 | `result-track:4c97f0d3f7dee80d63082012a405545b8778753a8a42442fadd0caec0c934b02` |
| 12 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/id-apply--e5e8891d29e858b9cdf8f1f0.md) | 95 | `result-track:e5e8891d29e858b9cdf8f1f07a19248e70f471ce024f53072795c44c1398f18c` |
| 13 | `lemma` | [hom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-comp--b10a69355ccdb5647b856f28.md) | 99 | `result-track:b10a69355ccdb5647b856f283ae5818e332b694b0f7df56487e631c63d3afa17` |
| 14 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/comp-apply--5994dddf1d5c9d722fc7cfc6.md) | 103 | `result-track:5994dddf1d5c9d722fc7cfc6162c7d573f0d16b4fa6f5cf64c47a73081ee6cc1` |
| 15 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-ext--e1e58fb97c45eef6fdb1c5fb.md) | 107 | `result-track:e1e58fb97c45eef6fdb1c5fb2b0d8d212b41cfa06aef6bb89afa7fbf9d3d2635` |
| 16 | `lemma` | [hom_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-ofhom--4f1d58e8654951af342a5e89.md) | 111 | `result-track:4f1d58e8654951af342a5e89a7f8754c1679a274bed557956cdac685e6fb2387` |
| 17 | `lemma` | [ofHom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofhom-hom--f6421973cecb3d122d24dc56.md) | 115 | `result-track:f6421973cecb3d122d24dc5659863aa22ef23e810ed9681eec10e900d69c7b52` |
| 18 | `lemma` | [ofHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofhom-id--e83e30c8f526028ac217e6eb.md) | 119 | `result-track:e83e30c8f526028ac217e6eb1e406ad710a454b4edb204d3b25a77baa0d8c671` |
| 19 | `lemma` | [ofHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofhom-comp--aec4fcfd43f05efdd0ae5210.md) | 122 | `result-track:aec4fcfd43f05efdd0ae5210ce730ed25ba00ec37cecc83b4f03b5aa6ff20df6` |
| 20 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofhom-apply--b7b34ddc2cd9bc1e478d2f26.md) | 127 | `result-track:b7b34ddc2cd9bc1e478d2f26ff61499ce796167a17604e817a75554ca5cb385d` |
| 21 | `lemma` | [inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/inv-hom-apply--d9220a5b90560f66901839b1.md) | 130 | `result-track:d9220a5b90560f66901839b1ee0c287d51a460ac62d492b74fa1546548a8e36a` |
| 22 | `lemma` | [hom_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hom-inv-apply--61e43d25858827ae3d7e5ace.md) | 134 | `result-track:61e43d25858827ae3d7e5acea5c57287810935c17875981a9ed62b45b934c99c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--576ffa3b177ca8bbe875f270.md) | 138 | `declaration-track:576ffa3b177ca8bbe875f270f2b68c21160d5c1a729b5c3b281194c5c42b099a` |
| 24 | `lemma` | [forget_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/forget-obj--4893769b1f6a512be5fa874a.md) | 141 | `result-track:4893769b1f6a512be5fa874aa33b791b1f4eafcf7cf6126409937b66abd31538` |
| 25 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/forget-map--a227d7b96683026f48c10db5.md) | 143 | `result-track:a227d7b96683026f48c10db57efa45810b3a128205e42f3447cf451214d08b06` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--3d0f34da59686d0acacb531e.md) | 147 | `declaration-track:3d0f34da59686d0acacb531ed115cfe30293720dd26a1f141f543ce87be67915` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--15aa605bc48e0c71f6af750d.md) | 150 | `declaration-track:15aa605bc48e0c71f6af750d1dd2ae4870e2cd6ee38a1af45360fab64775346e` |
| 28 | `instance` | [hasForgetToRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hasforgettoring--1d076b0b619d8bfac0dddf47.md) | 153 | `declaration-track:1d076b0b619d8bfac0dddf47dfd26184568fc96f85d1135e2ce23e074c07fb96` |
| 29 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/hasforgettomodule--0ac26e84b44e799b14d17947.md) | 158 | `declaration-track:0ac26e84b44e799b14d17947db72d0b7d603fb5f7226bb22e416b21f1b15c6a5` |
| 30 | `lemma` | [forget₂_module_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/forget-module-obj--3a35939061da12604f42b6d2.md) | 164 | `result-track:3a35939061da12604f42b6d2c5acb003e763cf811745ab73ec9d27748dcc1b37` |
| 31 | `lemma` | [forget₂_module_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/forget-module-map--94a70541ea6b100d929d4ccf.md) | 169 | `result-track:94a70541ea6b100d929d4ccf95edf825c57c2dbcbbeecf4e1d40c743365aff7f` |
| 32 | `def` | [ofSelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/ofselfiso--130a617e395ed9e68b8de7ad.md) | 177 | `declaration-track:130a617e395ed9e68b8de7ad01f990238bc68a3d6e7c2208855b8611080e548b` |
| 33 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/free--94ab9ff277171025c4f2a0e1.md) | 183 | `declaration-track:94ab9ff277171025c4f2a0e1090371c809ea56ae6ba22bf6c068c7b73395dff6` |
| 34 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/adj--1d74dfb75dccb0fa8924cced.md) | 188 | `declaration-track:1d74dfb75dccb0fa8924cced8981686d67db3044239a040b4ac6cce2c9aa3ac8` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/instance--dec862676ed36edd9057512b.md) | 196 | `declaration-track:dec862676ed36edd9057512b8338aff8f6a1888346e1ab4d4210cac4070c14eb` |
| 36 | `def` | [AlgEquiv.toAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/algequiv-toalgebraiso--3cf0322bebc46c4aa3ff913f.md) | 205 | `declaration-track:3cf0322bebc46c4aa3ff913f1727b9f94cf49646b7154311e5e479bf88bf151f` |
| 37 | `def` | [toAlgEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/toalgequiv--d7f65bb064814301feb32e63.md) | 214 | `declaration-track:d7f65bb064814301feb32e638d81ec6f0a96c8dbddbf3f61c6ab179c270c5180` |
| 38 | `def` | [algEquivIsoAlgebraIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/algequivisoalgebraiso--2aad1cba7196433ad138298d.md) | 226 | `declaration-track:2aad1cba7196433ad138298d81cc0d84bc7fb98874566f09630d01050d159720` |
| 39 | `instance` | [AlgCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant270324cc65669a136fe9ca2bdfc1dd46e57931f5e9f44697da83aca6801e3475.lean/declarations/algcat-forget-reflects-isos--82fe82cd944578218aa3af80.md) | 231 | `declaration-track:82fe82cd944578218aa3af80cc5b06e9bc7ed212d970b10cb76e0aef1bc70f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
