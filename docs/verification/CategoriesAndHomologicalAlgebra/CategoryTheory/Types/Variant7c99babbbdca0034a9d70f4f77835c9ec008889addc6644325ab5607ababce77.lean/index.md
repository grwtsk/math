# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb11894f1a926a8d2a2ac4acb0b831bec9c13f6",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb11894f1a926a8d2a2ac4acb0b831bec9c13f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.CoeSort` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types--e5db1d08c138cfc80fed4e55.md) | 51 | `declaration-track:e5db1d08c138cfc80fed4e5582f3ca7b639af419b2a8bed4e43a399d5661df51` |
| 2 | `theorem` | [types_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-hom--0bad09be850d951dbfdca878.md) | 56 | `result-track:0bad09be850d951dbfdca878b749425c80eb5519abe7dcf992af02678a304732` |
| 3 | `theorem` | [types_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-ext--457282e09f629df269e701d8.md) | 59 | `result-track:457282e09f629df269e701d84d38d40b8c82d59a0be6e19f1418c77d8090df61` |
| 4 | `theorem` | [types_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-id--68ebf4bc87150cd58544b907.md) | 63 | `result-track:68ebf4bc87150cd58544b907ace9934f8f1b1f00b39ac051cf791e93bdad1856` |
| 5 | `theorem` | [types_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-comp--2a9ce923c4ce470ee5a56914.md) | 66 | `result-track:2a9ce923c4ce470ee5a569142ce0c73929a5dc043dfce484859c801d846634f2` |
| 6 | `theorem` | [types_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-id-apply--2982886e8dc9048c4472a063.md) | 70 | `result-track:2982886e8dc9048c4472a063cd6b53b689344503630093b4e1acf8330aaf3ee4` |
| 7 | `theorem` | [types_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/types-comp-apply--f94b2a9af7426d1ae556b1ee.md) | 74 | `result-track:f94b2a9af7426d1ae556b1ee87eab80d7583c0890e7293c0fa2634e1b79b3336` |
| 8 | `theorem` | [hom_inv_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/hom-inv-id-apply--435a76836ca3815f6920ca20.md) | 78 | `result-track:435a76836ca3815f6920ca20ce3cb184791f442b06d28fda2cb334178f141f46` |
| 9 | `theorem` | [inv_hom_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/inv-hom-id-apply--16059509e53ee8543d1618fa.md) | 82 | `result-track:16059509e53ee8543d1618fa6a01b1cf3236a9b219cc14579bb605c6ab94d851` |
| 10 | `abbrev` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/ashom--10e07f71db93cdc198905e80.md) | 87 | `declaration-track:10e07f71db93cdc198905e80747cb3076411f13d765ce45199518293ace77b66` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/example--71356e26a57f39539882eb7c.md) | 98 | `declaration-track:71356e26a57f39539882eb7c53dce15da85cc12c977f719ac708304ef80fe1c3` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/example--f6ea4c218e6e62b22ffbac24.md) | 101 | `declaration-track:f6ea4c218e6e62b22ffbac24ea0836ffc328e4e1bf7d37fd7850d63467c1c994` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/example--8251ac7ed1eee65d6223e5dc.md) | 103 | `declaration-track:8251ac7ed1eee65d6223e5dc715edd7effa4458146d4c48bb7445071059f7cd2` |
| 14 | `def` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/sections--6616e96727342bafd9aa712c.md) | 117 | `declaration-track:6616e96727342bafd9aa712c1fae6b75eb552dfb7b3242b0da23c9cc0e452212` |
| 15 | `lemma` | [sections_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/sections-property--67f5d809d89e89b0b30cdddc.md) | 121 | `result-track:67f5d809d89e89b0b30cdddcc6fb3e4c43356d1a12f4400b221a2a6579547e2a` |
| 16 | `lemma` | [sections_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/sections-ext-iff--e8420287be4349c68349c1e7.md) | 125 | `result-track:e8420287be4349c68349c1e7bbe57ab543c5b6a89b0f66aef14ec0485a79b9e5` |
| 17 | `def` | [sectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/sectionsfunctor--44b8486611eb59c9c5b2ad49.md) | 132 | `declaration-track:44b8486611eb59c9c5b2ad49689827b6834839bee20e8a1c7c24dbf3177b46c4` |
| 18 | `theorem` | [map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/map-comp-apply--0d6f1eab9f30191ec8fb3089.md) | 145 | `result-track:0d6f1eab9f30191ec8fb308972b0e24b7ec0745839efdaa2ba2f8a7776031150` |
| 19 | `theorem` | [map_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/map-id-apply--9e9cbb5401a21d4626227d6d.md) | 149 | `result-track:9e9cbb5401a21d4626227d6d87d782985c6dd7db1dfeebfc8a6c8932b324bcc6` |
| 20 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/naturality--9d4e4ae375b945d018765277.md) | 151 | `result-track:9d4e4ae375b945d018765277981df7aabe6d53e9b30620773c9dd4d85a0de715` |
| 21 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/comp--3e963dde6000b5b96a1418bc.md) | 155 | `result-track:3e963dde6000b5b96a1418bc5276281f1cfce47377508f37948fd35c9349fc70` |
| 22 | `theorem` | [eqToHom_map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/eqtohom-map-comp-apply--8e457be7cd61c820ff9884b3.md) | 159 | `result-track:8e457be7cd61c820ff9884b31a7b18ee18853c8922c462ce7e8775649bd51b99` |
| 23 | `theorem` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/hcomp--3d2c4d63798d5b4179f4b99d.md) | 166 | `result-track:3d2c4d63798d5b4179f4b99d829372cb0a9f27edcd0ea225ca93a7b1527e43e6` |
| 24 | `theorem` | [map_inv_map_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/map-inv-map-hom-apply--aca1e64219479a8133a8726b.md) | 170 | `result-track:aca1e64219479a8133a8726b16eb1bd4c8afda94887448cac97240ec5aaf876c` |
| 25 | `theorem` | [map_hom_map_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/map-hom-map-inv-apply--01aa42d59813326870c2c712.md) | 174 | `result-track:01aa42d59813326870c2c7125e90054e3c09afd3f723261dd08df33aee4ec483` |
| 26 | `theorem` | [hom_inv_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/hom-inv-id-app-apply--e8927ced067994f03a34286a.md) | 178 | `result-track:e8927ced067994f03a34286a90d30420ebe6de5546f4db78b7f881d989f99fcd` |
| 27 | `theorem` | [inv_hom_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/inv-hom-id-app-apply--cb7707d01bc8b989b1130f66.md) | 182 | `result-track:cb7707d01bc8b989b1130f66734ea77d2de6c538235d7feec449c39358e274d4` |
| 28 | `def` | [uliftTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/ulifttrivial--d12ac72118c071a21a293156.md) | 190 | `declaration-track:d12ac72118c071a21a293156f54c879971f9fb380e340dc48a51674c88a40de4` |
| 29 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctor--0982f085e4b1393fe6c93662.md) | 198 | `declaration-track:0982f085e4b1393fe6c936621f866175d7f61bb939873b7f6b3db5c98bbe6388` |
| 30 | `theorem` | [uliftFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctor-obj--38d14ef3499de1e7873cab92.md) | 203 | `result-track:38d14ef3499de1e7873cab921c9e9633ba3ddcdefc42546c0cd3c262729a473b` |
| 31 | `theorem` | [uliftFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctor-map--ade234a698c84305322734e9.md) | 207 | `result-track:ade234a698c84305322734e90365c48f25f517ca804a341d7942279b903b8c93` |
| 32 | `instance` | [uliftFunctor_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctor-full--0ec4f73c662cc9763ff221cb.md) | 211 | `declaration-track:0ec4f73c662cc9763ff221cb107a27cfa91371ec792890f765fd03aa0017f0b9` |
| 33 | `instance` | [uliftFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctor-faithful--2190eff955853e4d08ab2a7e.md) | 214 | `declaration-track:2190eff955853e4d08ab2a7ea913cc7138541fb7277606bf263815f9ae8bf505` |
| 34 | `def` | [uliftFunctorTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/uliftfunctortrivial--7297e2e015cce9aff86a0b8a.md) | 221 | `declaration-track:7297e2e015cce9aff86a0b8aed43b174de6f7292ea5299cae4cd0d21074a5d9e` |
| 35 | `def` | [homOfElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/homofelement--dade427ef591bad956228f46.md) | 227 | `declaration-track:dade427ef591bad956228f4670b2e2ce1cc5394827e4c881bafad26f64166eaa` |
| 36 | `theorem` | [homOfElement_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/homofelement-eq-iff--2a4d104af0f445349a1ccd6f.md) | 229 | `result-track:2a4d104af0f445349a1ccd6fcf48976c0bb387ed9d60eb03fa7e8c3df9007520` |
| 37 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/mono-iff-injective--627bd5fe03e59c470d9e841c.md) | 234 | `result-track:627bd5fe03e59c470d9e841c2679a8fee1c67eabef416d3a21031e0a8e88a1f5` |
| 38 | `theorem` | [injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/injective-of-mono--bd19c0a69f194b70c3b771d8.md) | 241 | `result-track:bd19c0a69f194b70c3b771d89ca9fa81548affdc7555637596d1ad892cfcd5e1` |
| 39 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/epi-iff-surjective--a47142f76e3ca26d8c2e3fed.md) | 246 | `result-track:a47142f76e3ca26d8c2e3fed00afae7a4521b89049eace78c4cbb3d1789f0742` |
| 40 | `theorem` | [surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/surjective-of-epi--72287c19638ecbb2a82bad6f.md) | 256 | `result-track:72287c19638ecbb2a82bad6f4d805a900b0dad97cef19e08c53c7af38b08639c` |
| 41 | `def` | [ofTypeFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/oftypefunctor--194d958b4cd36c86d624aecb.md) | 263 | `declaration-track:194d958b4cd36c86d624aecb1e6417a7546a01dbd27b1f875b038e203eacd8f5` |
| 42 | `theorem` | [ofTypeFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/oftypefunctor-obj--b0c70385d60a8301f8796d0d.md) | 271 | `result-track:b0c70385d60a8301f8796d0d59233a64dc7c53603172c6e97fe62a6e7f1daabb` |
| 43 | `theorem` | [ofTypeFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/oftypefunctor-map--6b9bf16ea17ffa89e3aefee4.md) | 275 | `result-track:6b9bf16ea17ffa89e3aefee427140de6a1cb8bd36103e9eb8263a2611e264ae5` |
| 44 | `def` | [toIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toiso--63b9eb6e4b884ddb042c20e9.md) | 293 | `declaration-track:63b9eb6e4b884ddb042c20e9a865e643596ccbefe5ada9842c320c757224057f` |
| 45 | `theorem` | [toIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toiso-hom--69324f14681c81b8535d2ff1.md) | 300 | `result-track:69324f14681c81b8535d2ff1570daadcd8fe5adeb1d03cf9256dece52db625af` |
| 46 | `theorem` | [toIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toiso-inv--66d0bff800515f4f00d8c988.md) | 304 | `result-track:66d0bff800515f4f00d8c98835f4e0fb6225d1e6977a47fbaea06c51b59befb4` |
| 47 | `def` | [toEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toequiv--0127264c49d51fc71c76069f.md) | 318 | `declaration-track:0127264c49d51fc71c76069f061e915ecf603799b0fc701c17ff682764fe0781` |
| 48 | `theorem` | [toEquiv_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toequiv-fun--0cc4d19c1d1036d07f8935a6.md) | 325 | `result-track:0cc4d19c1d1036d07f8935a60ca9c946011209634a8f235812edf1c083657cce` |
| 49 | `theorem` | [toEquiv_symm_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toequiv-symm-fun--0e3b65dbc26a81d7d4f7841d.md) | 329 | `result-track:0e3b65dbc26a81d7d4f7841de3774d35386f09bba69dce68239610f1bbc257cf` |
| 50 | `theorem` | [toEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toequiv-id--8b2595c6eb533410b6bdbdb1.md) | 333 | `result-track:8b2595c6eb533410b6bdbdb1dbe0f0a659300ed9ae781998c5e834ea18d4cdc7` |
| 51 | `theorem` | [toEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/toequiv-comp--116566e85f1d9dfa7b5d7cef.md) | 337 | `result-track:116566e85f1d9dfa7b5d7cefffc8cd24bad46cbb1f4728daa5df9aaa18026842` |
| 52 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/isiso-iff-bijective--6744fd8f162bf5212da54240.md) | 346 | `result-track:6744fd8f162bf5212da5424036ef80327326e98681e0fb0093554070c62b2391` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/instance--d77b9e2dc6c64ed5f6005529.md) | 350 | `declaration-track:d77b9e2dc6c64ed5f6005529a49b28e6e1343762e1cea4360a4f573094c0d700` |
| 54 | `def` | [equivIsoIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/equivisoiso--30586926f9aa4534dc172ca7.md) | 363 | `declaration-track:30586926f9aa4534dc172ca72a0868216cfbe04008db3cee3bc7383c8c426fce` |
| 55 | `def` | [equivEquivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/equivequiviso--e346ff7f806e32bd6b4fd8c8.md) | 369 | `declaration-track:e346ff7f806e32bd6b4fd8c8aba168a733c2040a2c64877cbbc60930c777593f` |
| 56 | `theorem` | [equivEquivIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/equivequiviso-hom--ba7d71512c40f9daddf92289.md) | 373 | `result-track:ba7d71512c40f9daddf92289b522408c4ee0fec05d765c02a5677a12f2f1ee9e` |
| 57 | `theorem` | [equivEquivIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant7c99babbbdca0034a9d70f4f77835c9ec008889addc6644325ab5607ababce77.lean/declarations/equivequiviso-inv--d03b1db45c9f622b65a458d7.md) | 377 | `result-track:d03b1db45c9f622b65a458d7463a83f3f23b64d24c0b457793c2ca294f3197a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
