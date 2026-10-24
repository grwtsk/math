# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Path.Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bfcfd4b81105455fa6ffdb35dd034394c71bf83",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bfcfd4b81105455fa6ffdb35dd034394c71bf83`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Horn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Path₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/path--92d504fbafc804484287ceb6.md) | 42 | `declaration-track:92d504fbafc804484287ceb67a5c9be3a4a362b4a3dc531816b0ef157f94595a` |
| 2 | `def` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/path--0235313f1fb1e774ea56d31f.md) | 54 | `declaration-track:0235313f1fb1e774ea56d31ff6fea5f104a7eeabb0c7e81b367a31524f9eb451` |
| 3 | `abbrev` | [vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/vertex--4d8ed3f35c32cf21c64be2fd.md) | 62 | `declaration-track:4d8ed3f35c32cf21c64be2fddab8a668a9706ddfdcbf428702d2047bd6277118` |
| 4 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow--24e5a92cee789eeae4ea4bca.md) | 66 | `declaration-track:24e5a92cee789eeae4ea4bca7d787674ed24d23c911ac197d86bc85d6580f8de` |
| 5 | `lemma` | [arrow_src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow-src--590bf2e1a092b43e40d726fe.md) | 70 | `result-track:590bf2e1a092b43e40d726feb35f2c54974b29f5430a53d51b95510e7e847eae` |
| 6 | `lemma` | [arrow_tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow-tgt--518b6a17fe853541c020d936.md) | 75 | `result-track:518b6a17fe853541c020d9367b0c895a4311cabbf61848b2159ac3ee3a746714` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/ext--7eabff943a40884e31ed521e.md) | 80 | `result-track:7eabff943a40884e31ed521eabc23800aa898c80ca858f2ed7ca146a2fac5f85` |
| 8 | `lemma` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/ext--92370041b1fd363ef149c326.md) | 86 | `result-track:92370041b1fd363ef149c326f2716f9deaa45153e8998579cac4c68ee4863d6f` |
| 9 | `def` | [interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/interval--2ae4f665b4e3debe7f6007e3.md) | 96 | `declaration-track:2ae4f665b4e3debe7f6007e31e670ffedfd1273e076be1536fc03581661e938e` |
| 10 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map--fec269848c0727797bf18749.md) | 105 | `declaration-track:fec269848c0727797bf187498cad0044f86976d8cb7f86667a55c56cd37b373f` |
| 11 | `lemma` | [map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-vertex--60b2724b90c093e4b6140935.md) | 117 | `result-track:60b2724b90c093e4b6140935471ff7564bb408cd8ccc593b1c24ee3dec495344` |
| 12 | `lemma` | [map_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-arrow--c76e47061678273a4ab35199.md) | 123 | `result-track:c76e47061678273a4ab35199d2358961ffa9f8a9f880b1a195bd04cfbc1431df` |
| 13 | `lemma` | [map_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-interval--10a1b95b21c738e3cc153b12.md) | 128 | `result-track:10a1b95b21c738e3cc153b120556c52f99c87bff4fb4b9bbff58deaf7327df34` |
| 14 | `def` | [spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine--8fa7c9f70b90e3e0df3542b2.md) | 138 | `declaration-track:8fa7c9f70b90e3e0df3542b2d279b729774c01eb1ea453bd3655199d11c70f20` |
| 15 | `lemma` | [trunc_spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/trunc-spine--45303f6b51849a6048f90e3c.md) | 154 | `result-track:45303f6b51849a6048f90e3ca4eeb60c0a04f8ef1a53f7390045afb32b7d6d5a` |
| 16 | `lemma` | [spine_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-vertex--c7901e5b5cf72bac0c90db90.md) | 162 | `result-track:c7901e5b5cf72bac0c90db903e659b76e51a9c1050250d1edc4d9b016656673a` |
| 17 | `lemma` | [spine_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-arrow--6818e2286d92477eaa93b7d2.md) | 169 | `result-track:6818e2286d92477eaa93b7d26a8fff32ccb304961cfa4d9bfd311f66dcb9ec81` |
| 18 | `lemma` | [spine_map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-map-vertex--83c174695410414f9b299464.md) | 173 | `result-track:83c174695410414f9b299464aeb888c50b6bc36ca94b85304966acd7e5f354a5` |
| 19 | `lemma` | [spine_map_subinterval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-map-subinterval--be9ca9b6bb14193f622d2000.md) | 181 | `result-track:be9ca9b6bb14193f622d20005749f2ee900b6ee0594decd411cfa001d3f6471d` |
| 20 | `abbrev` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/path--01651c2374555354810c59f9.md) | 196 | `declaration-track:01651c2374555354810c59f9afd5d48c6e600e9b96f7100e08533a527479741d` |
| 21 | `abbrev` | [vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/vertex--3f956930d5004ad810e979b7.md) | 203 | `declaration-track:3f956930d5004ad810e979b7a8d363af0aafa9d6a1bf1fb79802b6ecd2ba08c2` |
| 22 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow--40c2ad4cb7e9997ee120d43b.md) | 207 | `declaration-track:40c2ad4cb7e9997ee120d43b67584fc262cb52c4fa116be682daf2c936d5b8a6` |
| 23 | `lemma` | [arrow_src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow-src--c0bb150d7e385d845edd586f.md) | 211 | `result-track:c0bb150d7e385d845edd586fa1bbaaa10b87a33d8bd83a8c800ccc0d4ba44823` |
| 24 | `lemma` | [arrow_tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/arrow-tgt--c000a1726a298f4cdb5b773f.md) | 216 | `result-track:c000a1726a298f4cdb5b773f6cd9db3135b4934ab8bd303dbd133fbf52b28714` |
| 25 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/ext--eb94c63b9c74a5481bdcbd93.md) | 221 | `result-track:eb94c63b9c74a5481bdcbd936bd3699808031603076e6d5acd8077e41bde2afe` |
| 26 | `lemma` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/ext--04e4ab3498242a67fe9ca230.md) | 227 | `result-track:04e4ab3498242a67fe9ca2301bf1c6382407d31dbaec78074d36cdfb2ce00af1` |
| 27 | `def` | [interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/interval--e169287eb9898d1c4043599f.md) | 232 | `declaration-track:e169287eb9898d1c4043599fb4203146530fc16eb2cf2729b407a83f5fc35f63` |
| 28 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map--2060e16ca2e8140aefbd0a67.md) | 238 | `declaration-track:2060e16ca2e8140aefbd0a67feadbc7952107776b5913b2361a4c91df88f02a2` |
| 29 | `lemma` | [map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-vertex--8a8dbe3341f05b44f2e141c8.md) | 242 | `result-track:8a8dbe3341f05b44f2e141c89cd8f24f21ea64e5344b85d7212a7c2e2ddcf53a` |
| 30 | `lemma` | [map_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-arrow--75d41b1e2f50949710c106ea.md) | 247 | `result-track:75d41b1e2f50949710c106ea26ea173e64c9d5877d9a8587f4504c185a635291` |
| 31 | `lemma` | [map_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/map-interval--af17765e1e48f7bfbc907379.md) | 252 | `result-track:af17765e1e48f7bfbc907379703f04397b5cee5e7417b4e99701a93e18f08789` |
| 32 | `def` | [spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine--57c3178d2cdcfe05f66ee7aa.md) | 264 | `declaration-track:57c3178d2cdcfe05f66ee7aa6bd8106586823166fe678a8a9793fd7ca3714539` |
| 33 | `lemma` | [spine_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-vertex--4ba888a685782cb6119c9052.md) | 268 | `result-track:4ba888a685782cb6119c90524cfab4efc66d5d448aa4d2e34efada4d42af2305` |
| 34 | `lemma` | [spine_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-arrow--e231c500dc247a845a8ccdaa.md) | 273 | `result-track:e231c500dc247a845a8ccdaaec5070130c371cbb6d0ae1ec428dd6efdb18e4d0` |
| 35 | `lemma` | [truncation_spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/truncation-spine--740e3221c4347bf0d0504f8a.md) | 279 | `result-track:740e3221c4347bf0d0504f8a9f1862e42400e7d121b92e9b5347f82fb9efd6ac` |
| 36 | `lemma` | [spine_map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-map-vertex--ad1f947a61322756656691a8.md) | 283 | `result-track:ad1f947a61322756656691a8c49c40de504a75f4a10e13103c7ef3ac28d916dc` |
| 37 | `lemma` | [spine_map_subinterval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/spine-map-subinterval--cb1537cbaae60204f8ae834f.md) | 290 | `result-track:cb1537cbaae60204f8ae834f5a9dc84dcb0091128f072cbd0fc03ae2d2932d91` |
| 38 | `def` | [stdSimplex.spineId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/stdsimplex-spineid--70929a46a5317f46a1124d9f.md) | 297 | `declaration-track:70929a46a5317f46a1124d9f4b47c05afb6e6768f9a2577d842166d9df8c4f63` |
| 39 | `lemma` | [stdSimplex.spineId_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/stdsimplex-spineid-vertex--04a61cd7c4d574f7a5f8c35c.md) | 301 | `result-track:04a61cd7c4d574f7a5f8c35c66fe06579e0cca480904cf302f800a512a48113b` |
| 40 | `lemma` | [stdSimplex.spineId_arrow_apply_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/stdsimplex-spineid-arrow-apply-zero--c6566510e821b139d31946e1.md) | 305 | `result-track:c6566510e821b139d31946e1bc7db2e8090d6d2e4a190c95582c357333e59257` |
| 41 | `lemma` | [stdSimplex.spineId_arrow_apply_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/stdsimplex-spineid-arrow-apply-one--61f07ae687f3e18788295775.md) | 309 | `result-track:61f07ae687f3e18788295775fd8c26b2d136fb35e9de95376125e9ec545cbc69` |
| 42 | `def` | [Subcomplex.liftPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/subcomplex-liftpath--7a27c64ec1aa5ed637094d9a.md) | 315 | `declaration-track:7a27c64ec1aa5ed637094d9aa6f39e599953f57ef5023be125451fd7f13d56b3` |
| 43 | `lemma` | [Subcomplex.map_ι_liftPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/subcomplex-map-liftpath--002475f2366dea8ccbaf891d.md) | 325 | `result-track:002475f2366dea8ccbaf891d33ce098138b43d670b1c0b999836554fab520bbe` |
| 44 | `def` | [horn.spineId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/horn-spineid--409bc185289ae7463e6277bc.md) | 333 | `declaration-track:409bc185289ae7463e6277bc31742e0c168e1b092f22e0b5c28f88651af770ea` |
| 45 | `lemma` | [horn.spineId_map_hornInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean/declarations/horn-spineid-map-horninclusion--9463707a6035ff83a9e096a6.md) | 342 | `result-track:9463707a6035ff83a9e096a6964727c831a28aeb1682c6d77524e10978016a03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
