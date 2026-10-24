# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab7ddc86fa82f15d603775e57e5ed03fd2d8345",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab7ddc86fa82f15d603775e57e5ed03fd2d8345`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types--189ad2e02e692a16a427fc95.md) | 53 | `declaration-track:189ad2e02e692a16a427fc9574b41ca42abd1b5fd5bbc0a40413ec73012b2050` |
| 2 | `theorem` | [types_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-hom--a21edd03e590c62479d7b866.md) | 60 | `result-track:a21edd03e590c62479d7b866ce22a789f7e9bf551ea3d13622917a4d090de34d` |
| 3 | `theorem` | [types_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-ext--753acc424de708cc9fb149ba.md) | 67 | `result-track:753acc424de708cc9fb149baddc40993353e343ab9deb628a45a494991921a71` |
| 4 | `theorem` | [types_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-id--ce6971f1cf52781a787f0046.md) | 71 | `result-track:ce6971f1cf52781a787f00466e912a25f098eaa348d3bf855b603876111c1e42` |
| 5 | `theorem` | [types_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-comp--2775c56699c9839f38a03941.md) | 75 | `result-track:2775c56699c9839f38a03941f8d0758e6d6b8bab255b07174562c81f25fd6ede` |
| 6 | `theorem` | [types_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-id-apply--4c9ff054b1b8dcc523c36ddc.md) | 80 | `result-track:4c9ff054b1b8dcc523c36ddc4cf74081ccae344915a29effdf6e96d02925061a` |
| 7 | `theorem` | [types_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/types-comp-apply--0b72895bf4e16ccf9f33fbb7.md) | 85 | `result-track:0b72895bf4e16ccf9f33fbb72154939e7ade2a67703cc7d055bb761eae667eba` |
| 8 | `theorem` | [hom_inv_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/hom-inv-id-apply--1c1312b6b1313c287a8a4bb9.md) | 90 | `result-track:1c1312b6b1313c287a8a4bb99af52a9fbd7bc952b903ffaafaa2d444b8d91c0b` |
| 9 | `theorem` | [inv_hom_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/inv-hom-id-apply--bfb0d23ece15207fcffc3167.md) | 95 | `result-track:bfb0d23ece15207fcffc31675748a3be530a6eaa7cc9bea8cc672ba3e40184f4` |
| 10 | `abbrev` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/ashom--fab6367e577aa0c5f4f2f715.md) | 101 | `declaration-track:fab6367e577aa0c5f4f2f7153bfea5f7c862e9e3c88c3e33f7cf5857030fc4dd` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/example--9bbb04e491ffe2da1c8a051e.md) | 113 | `declaration-track:9bbb04e491ffe2da1c8a051e9c19fe6333e5205574b51ea99804d775314e4d5c` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/example--9d887f4fa06167f33e941321.md) | 116 | `declaration-track:9d887f4fa06167f33e941321ba5efecea6df10ce5e3a4243b1fb575e4aa2e81b` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/example--b51c59d75d57f878a3dfd47c.md) | 118 | `declaration-track:b51c59d75d57f878a3dfd47c23adafff916540c04f4ced4776ff9b55fc8dee37` |
| 14 | `def` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/sections--12900ec3df0ad675c555b002.md) | 132 | `declaration-track:12900ec3df0ad675c555b0027a1b98eef1e52fc5d260a9d9d0cdd6bd4ad73af2` |
| 15 | `lemma` | [sections_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/sections-property--02cad1797f7d004a01f933a1.md) | 138 | `result-track:02cad1797f7d004a01f933a155bf683b1ccd68e524847bd3a1ba360d5998410e` |
| 16 | `theorem` | [map_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/map-comp-apply--bf06bf2cf2da6f2a53a189b1.md) | 151 | `result-track:bf06bf2cf2da6f2a53a189b1e3218913e3cc220ad3fbbf9b3b2fb5d70287da9f` |
| 17 | `theorem` | [map_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/map-id-apply--2640bc4238d82481f2676027.md) | 156 | `result-track:2640bc4238d82481f2676027292b614eab7bca59d4b7f460b4cea322d6455cf7` |
| 18 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/naturality--69fe0be01a6b59e4cd364492.md) | 159 | `result-track:69fe0be01a6b59e4cd36449230454c721a231a85b2ef7db1dd8b53c6c380cd54` |
| 19 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/comp--3f3b643f3ab598a8aef79b0b.md) | 164 | `result-track:3f3b643f3ab598a8aef79b0bb86549ec7d257882ead6d6f5403b7edd7d06ab3d` |
| 20 | `theorem` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/hcomp--fbe123e77415608ec126d724.md) | 171 | `result-track:fbe123e77415608ec126d724898647bd772dcb3f5a9f64e0da53fcfd5eb37d66` |
| 21 | `theorem` | [map_inv_map_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/map-inv-map-hom-apply--1501866d17f1ed7dc0652a6d.md) | 176 | `result-track:1501866d17f1ed7dc0652a6d74bda5387954376bc42806f96305f2563d15fe64` |
| 22 | `theorem` | [map_hom_map_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/map-hom-map-inv-apply--1bfb29da38f204b2cd955946.md) | 181 | `result-track:1bfb29da38f204b2cd955946ea48e1b25c05724c55ec4b9d9eb3ba1e44800455` |
| 23 | `theorem` | [hom_inv_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/hom-inv-id-app-apply--94e536d10a1d33730ecc3cc1.md) | 186 | `result-track:94e536d10a1d33730ecc3cc1e505b74fceaf7a16b8892362435308a3a9b40c34` |
| 24 | `theorem` | [inv_hom_id_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/inv-hom-id-app-apply--a0df067eee31e4f1f907ecfa.md) | 191 | `result-track:a0df067eee31e4f1f907ecfa60f951f2e7ba96e2eef25cb6e3738b5a8b0bdf7b` |
| 25 | `def` | [uliftTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/ulifttrivial--cd0f5437b6c013e34b7dc3ec.md) | 200 | `declaration-track:cd0f5437b6c013e34b7dc3ec3fff3df95858c181394d030c5a14d4781fe62d3a` |
| 26 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/uliftfunctor--324ed6e40ce3a450d6be0481.md) | 209 | `declaration-track:324ed6e40ce3a450d6be04816e653ccebcbc48ecec9d73b21b154f4d9d267515` |
| 27 | `theorem` | [uliftFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/uliftfunctor-map--baac613391e0546a85d205b6.md) | 216 | `result-track:baac613391e0546a85d205b6e57ecfba1f43c51545460a909cc3053162fc328e` |
| 28 | `instance` | [uliftFunctorFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/uliftfunctorfull--cfa40d46a84613b41ea25764.md) | 221 | `declaration-track:cfa40d46a84613b41ea25764e727f1d0722eb9ef54dd1253574a5548ce1a0828` |
| 29 | `instance` | [uliftFunctor_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/uliftfunctor-faithful--0c6a1653d727e6cbdb592b61.md) | 224 | `declaration-track:0c6a1653d727e6cbdb592b6145ca3cb644d15a2189955bdcc596a9adbd6f041f` |
| 30 | `def` | [uliftFunctorTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/uliftfunctortrivial--05d606bad8be1afc12458e5a.md) | 232 | `declaration-track:05d606bad8be1afc12458e5a7e40436394349411d98e65408bdb7409020ce2d9` |
| 31 | `def` | [homOfElement](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/homofelement--e53c507416517f7b12d46a63.md) | 239 | `declaration-track:e53c507416517f7b12d46a63eba768944a1799963f719b612eff53c2f26ed33b` |
| 32 | `theorem` | [homOfElement_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/homofelement-eq-iff--944abd747df8a11c1c8af2ca.md) | 242 | `result-track:944abd747df8a11c1c8af2ca38ecfc3545e37991de0ad3b9048b715f7e592faf` |
| 33 | `theorem` | [mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/mono-iff-injective--44b268678b64c15191916f96.md) | 250 | `result-track:44b268678b64c15191916f9615469289165e16f9810180211bef73e443ad1d5a` |
| 34 | `theorem` | [injective_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/injective-of-mono--9a6301d2b4fe4572354dd2e8.md) | 259 | `result-track:9a6301d2b4fe4572354dd2e8472628503a95d80d48eaca94a1c7ae86b4ecbdf9` |
| 35 | `theorem` | [epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/epi-iff-surjective--27d2187842ed3bdacc3fb2fb.md) | 267 | `result-track:27d2187842ed3bdacc3fb2fb3e056ff6cd0868d5c978b4bde2c26bfb639f701b` |
| 36 | `theorem` | [surjective_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/surjective-of-epi--d99bf36fb2f12dcc00e57ee7.md) | 278 | `result-track:d99bf36fb2f12dcc00e57ee7ba9ca65aaa88fd030a66463bdbca2feb5dbbd739` |
| 37 | `def` | [ofTypeFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/oftypefunctor--6a943efa6ec599e2e20043b8.md) | 286 | `declaration-track:6a943efa6ec599e2e20043b8cad7881145951460358fa1a12c94939810241c5e` |
| 38 | `theorem` | [ofTypeFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/oftypefunctor-obj--da2292cd63ae8dc438756717.md) | 299 | `result-track:da2292cd63ae8dc4387567174aef2eff47e7d5a6f8686f0c7ab02bcbf21b6865` |
| 39 | `theorem` | [ofTypeFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/oftypefunctor-map--c5a41a3c683498bf0f78b433.md) | 304 | `result-track:c5a41a3c683498bf0f78b4331f3a6ae5c6afb7212746f91cf03f3348dfd98a33` |
| 40 | `def` | [toIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toiso--09df2f8a78f24345920d641c.md) | 323 | `declaration-track:09df2f8a78f24345920d641c7921eb84288ce2b14896a5f38e11b6ef7a179ad0` |
| 41 | `theorem` | [toIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toiso-hom--a1cfc9e2f4451bbeeb33b102.md) | 331 | `result-track:a1cfc9e2f4451bbeeb33b1027050044859ee2c45835b8dad2c0bddfcc3dd5e49` |
| 42 | `theorem` | [toIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toiso-inv--28d40ca7992d24dc39c96c7f.md) | 336 | `result-track:28d40ca7992d24dc39c96c7f16305c44064b24008aee1338f55433f5776268fd` |
| 43 | `def` | [toEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toequiv--7ea3ac483644943b4dd59ee1.md) | 352 | `declaration-track:7ea3ac483644943b4dd59ee167bccc24d572576d70feb9f1597945a4202f943e` |
| 44 | `theorem` | [toEquiv_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toequiv-fun--6d71ab99ebf3691102683284.md) | 360 | `result-track:6d71ab99ebf36911026832848010eacc1d128430b3a33d09d958193c6b594c40` |
| 45 | `theorem` | [toEquiv_symm_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toequiv-symm-fun--e805202356bf09a5c7b9a712.md) | 365 | `result-track:e805202356bf09a5c7b9a712e7a8ef4c3ba7fe03dc61d339d40eb824c5213063` |
| 46 | `theorem` | [toEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toequiv-id--4e5e767226feb01b51890273.md) | 370 | `result-track:4e5e767226feb01b5189027302ff7225db379e05df3a8d924e0a065f812b87dc` |
| 47 | `theorem` | [toEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/toequiv-comp--a0e80fd89059c1308f01308d.md) | 375 | `result-track:a0e80fd89059c1308f01308dbd43b1b8f02100260cc0f936eb6c8fe8d65a4a1b` |
| 48 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/isiso-iff-bijective--8680d6a8b76a1f349d511399.md) | 385 | `result-track:8680d6a8b76a1f349d511399481b2419dce555e7de997207dbbf8f2c5ec08432` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/instance--f9b9ba5ea4a7716b1269718a.md) | 390 | `declaration-track:f9b9ba5ea4a7716b1269718a2ccf188c71777c5361d4a7bf81bae6bdbb166e4f` |
| 50 | `def` | [equivIsoIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/equivisoiso--e956c2a7c67f412ca2f1734f.md) | 403 | `declaration-track:e956c2a7c67f412ca2f1734f0177f27896d0dd0e2701ef2f8509ab742d3145e3` |
| 51 | `def` | [equivEquivIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/equivequiviso--bf57b2fd947ad65ea0930a8b.md) | 411 | `declaration-track:bf57b2fd947ad65ea0930a8b74936c13fb19ee6f8e4b535551c311180d6bc215` |
| 52 | `theorem` | [equivEquivIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/equivequiviso-hom--f843f2e315798748627d3214.md) | 416 | `result-track:f843f2e315798748627d321406b6be6ea682703abe76ec94fba8bdf09d2dbc14` |
| 53 | `theorem` | [equivEquivIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6846adc0aa6c135afe4546ddeb8eed201984313235f6293d3238c8525b50b8ef.lean/declarations/equivequiviso-inv--442a7a9d3c74d40efe6c3bf0.md) | 421 | `result-track:442a7a9d3c74d40efe6c3bf0262c8ae79f263ac440699979a5ea6a593c6a2ad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
