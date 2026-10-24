# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de8e7ff2a68fa79c59dd92c45188d3a3d154e03",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de8e7ff2a68fa79c59dd92c45188d3a3d154e03`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean.json)

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
| 1 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurry--c539976f7c53ef202f53e4b8.md) | 46 | `declaration-track:c539976f7c53ef202f53e4b852c432d0189db184c861edaa528850d043928869` |
| 2 | `def` | [curryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curryobj--bbeb96f6573ec6a39ee0fe05.md) | 66 | `declaration-track:bbeb96f6573ec6a39ee0fe051b479a296396a977af58f0c843e91a843e81a15e` |
| 3 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curry--a0bffd55bbdd5e622eb53c0c.md) | 81 | `declaration-track:a0bffd55bbdd5e622eb53c0cfb24c3165a8dba1fb8cd5b1a9e6fba38ef73c548` |
| 4 | `def` | [currying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/currying--f1bc514198f4c581bb2e6675.md) | 97 | `declaration-track:f1bc514198f4c581bb2e6675ca79d7ec7e31f1461cd9ff06395f4c48dd061466` |
| 5 | `def` | [flipping](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/flipping--1701e3e79774d1c7bf78653e.md) | 110 | `declaration-track:1701e3e79774d1c7bf78653edf4e471d787320cef1d227e199ef9e26be86d940` |
| 6 | `def` | [fullyFaithfulUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/fullyfaithfuluncurry--915e3f8c13fffba546a81b92.md) | 119 | `declaration-track:915e3f8c13fffba546a81b9201767e38128e39ee270419e2c1f6d1c4919bd6ee` |
| 7 | `def` | [fullyFaithfulCurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/fullyfaithfulcurry--09d2dea4bc8dc53eb10b5c40.md) | 123 | `declaration-track:09d2dea4bc8dc53eb10b5c40cf1942adbd312bcbb3bdbeaee69d49666cfec62b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/instance--a051d7c2b08d4b646f3146f3.md) | 126 | `declaration-track:a051d7c2b08d4b646f3146f3796228714a0d345010e8fb53d8d57605a9cb0aff` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/instance--38c6f5de378d2847a9dea9b7.md) | 129 | `declaration-track:38c6f5de378d2847a9dea9b72f94155c6f16a99c40dc72d121e79797a083dd42` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/instance--fa9f05fa3fe567f83eaf9dad.md) | 132 | `declaration-track:fa9f05fa3fe567f83eaf9dad5bf31ae37b515e4fb6c47131414d66db622e4544` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/instance--0e9c35450d13a43f5a7f6731.md) | 135 | `declaration-track:0e9c35450d13a43f5a7f67315d9aa0eb0c32cb25a43203f475e1a3f22bf8d4d1` |
| 12 | `def` | [curryObjProdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curryobjprodcomp--63675b61578c3208a7c872c7.md) | 142 | `declaration-track:63675b61578c3208a7c872c7acb777ea4e2376123226d59ad90445a31be9fbec` |
| 13 | `def` | [flipIsoCurrySwapUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/flipisocurryswapuncurry--5fd005b1439b1e1c95c7a001.md) | 150 | `declaration-track:5fd005b1439b1e1c95c7a001a0d6e899a3f2b82bd112bc7cd7d66ef62aaf6520` |
| 14 | `def` | [uncurryObjFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurryobjflip--c95eeb7103765f609bcbafae.md) | 156 | `declaration-track:c95eeb7103765f609bcbafae52eec83cc9c9298583dbd1a2e07908d5b25ced83` |
| 15 | `def` | [whiskeringRight₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/whiskeringright--f87b6504ef1dc64be5e328b3.md) | 165 | `declaration-track:f87b6504ef1dc64be5e328b38367b5996bd1ca0d0dbad159eba123f6bc0c3055` |
| 16 | `lemma` | [uncurry_obj_curry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurry-obj-curry-obj--814697d7162419ae8059e5cd.md) | 171 | `result-track:814697d7162419ae8059e5cde2ad2f708b59bfc7a23426eb4dc8a9e3c29091ff` |
| 17 | `lemma` | [curry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curry-obj-injective--529c5eb16f2471dbfa043952.md) | 176 | `result-track:529c5eb16f2471dbfa043952723582616c793f29c68bee35314e9c5b25043db5` |
| 18 | `lemma` | [curry_obj_uncurry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curry-obj-uncurry-obj--cb8f06b64cfdd77c5c88016c.md) | 180 | `result-track:cb8f06b64cfdd77c5c88016cc0cfef12ea28dfdb28d8217cc9a0c64f21fd2ca2` |
| 19 | `lemma` | [uncurry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurry-obj-injective--d189809a12d71a064fbf6db2.md) | 183 | `result-track:d189809a12d71a064fbf6db27c9f72cf6e64b8515ffcabd16be0470868f5a924` |
| 20 | `lemma` | [flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/flip-flip--078c45958ee7479153973689.md) | 187 | `result-track:078c45958ee7479153973689cd8d4a45ca81f02aedf3bbf87b2420ee07c9b636` |
| 21 | `lemma` | [flip_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/flip-injective--1181ebdadb3acd01977f9652.md) | 189 | `result-track:1181ebdadb3acd01977f96525c84a938e80e2a53fc54e5355db503a58c2b5d59` |
| 22 | `lemma` | [uncurry_obj_curry_obj_flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurry-obj-curry-obj-flip-flip--f2c9516a40924af81234dd7f.md) | 193 | `result-track:f2c9516a40924af81234dd7f826ff46542064ac49a1c0c4de710dbd359ad2c30` |
| 23 | `lemma` | [uncurry_obj_curry_obj_flip_flip'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/uncurry-obj-curry-obj-flip-flip--2bdb07e840ddb8b50c28415c.md) | 199 | `result-track:2bdb07e840ddb8b50c28415c2d6d7aad0dd0044e452b4660321840581c586d65` |
| 24 | `def` | [compFlipUncurryIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/compflipuncurryiso--3db72843fadbc32ca8f8096c.md) | 207 | `declaration-track:3db72843fadbc32ca8f8096cbf21ecdb7608849dcbc4ecbcfdb69bf7d2848842` |
| 25 | `lemma` | [comp_flip_uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/comp-flip-uncurry-eq--d85f78bef428fd69efad1ea4.md) | 210 | `result-track:d85f78bef428fd69efad1ea47a26bfc881fe59e63be766a5556a854479f9faa5` |
| 26 | `def` | [curryObjCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curryobjcompiso--df8c6959986494776e2d9cbb.md) | 215 | `declaration-track:df8c6959986494776e2d9cbba90dfff7fddf659534d2c6a94de2490c77298aa0` |
| 27 | `lemma` | [curry_obj_comp_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curry-obj-comp-flip--24944721fbb3d2b6986a5eb7.md) | 218 | `result-track:24944721fbb3d2b6986a5eb79d9137aef470d96016e9995e27d49060020283b3` |
| 28 | `def` | [flippingEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/flippingequiv--dd98fd4d8ad7d9c287dae84a.md) | 224 | `declaration-track:dd98fd4d8ad7d9c287dae84a7580465ef5d8c0e047a754bd907d3f691fba8b00` |
| 29 | `def` | [curryingEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curryingequiv--1233a57a401a1ef21b0f8131.md) | 232 | `declaration-track:1233a57a401a1ef21b0f813161dad92443d983dfe1c6e901af97a1825f389e51` |
| 30 | `def` | [curryingFlipEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant9c508a3e7e8ef082cac6e9432bf84073fc3e1144d790a2b400a9b83f7bb67736.lean/declarations/curryingflipequiv--d07521e6b30310a1fa047a80.md) | 240 | `declaration-track:d07521e6b30310a1fa047a80ba9776a4bac025b57966cf83791f45c20dba4681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
