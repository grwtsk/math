# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coverage.Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3fec638e7a98836422b4553d968b45db814b5b1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3fec638e7a98836422b4553d968b45db814b5b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThruAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/factorsthrualong--8e2a01d41e7c269434ac7175.md) | 73 | `declaration-track:8e2a01d41e7c269434ac71757e446134f6c49016c66ca54cfba38c11d4cda672` |
| 2 | `def` | [FactorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/factorsthru--d8a6d49b9ea6647ae792188f.md) | 85 | `declaration-track:d8a6d49b9ea6647ae792188f77afe6255403a4e4d425f8b3f39bcc008eb498c7` |
| 3 | `lemma` | [factorsThruAlong_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/factorsthrualong-id--b9493af8fafe413cbbd5b259.md) | 90 | `result-track:b9493af8fafe413cbbd5b25959937b8d1de15143baec46cbd9c91849a7873fc1` |
| 4 | `lemma` | [factorsThru_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/factorsthru-of-le--a50c160dfc50e712a22642a4.md) | 94 | `result-track:a50c160dfc50e712a22642a4f28ebbc1718fe0edcb2586a50a6c37c14be16c78` |
| 5 | `lemma` | [le_of_factorsThru_sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/le-of-factorsthru-sieve--c6496ae2a316270d3b6a7745.md) | 98 | `result-track:c6496ae2a316270d3b6a7745eabd43b8c51c331cdd4985b25f727680b3367edc` |
| 6 | `lemma` | [factorsThru_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/factorsthru-top--089356ff65ec7916b1601510.md) | 104 | `result-track:089356ff65ec7916b1601510a630785f93bd1ceb96d74408d0676d1c6a1df61d` |
| 7 | `lemma` | [isSheafFor_of_factorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/issheaffor-of-factorsthru--3a35a0bf0557e2694e8213b2.md) | 107 | `result-track:3a35a0bf0557e2694e8213b224383dbe8e4674ec082279f9fffd5a6a12e2bf94` |
| 8 | `structure` | [Coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/coverage--6b6e1921f277c10774016792.md) | 153 | `declaration-track:6b6e1921f277c1077401679278d54c837e5119b20650cca6209b7214f7b73473` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/instance--c552e4474b7a41675139595b.md) | 163 | `declaration-track:c552e4474b7a41675139595b5e5fd93e384d197fce9f923ebbac4b130d847cd0` |
| 10 | `def` | [ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/ofgrothendieck--8c9391dc4273911c638a5e48.md) | 173 | `declaration-track:8c9391dc4273911c638a5e4804ba8e24bfcda2d5b6d299fc9bfe3754868a3c06` |
| 11 | `lemma` | [ofGrothendieck_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/ofgrothendieck-iff--aed182195cfc2899c68b7299.md) | 182 | `result-track:aed182195cfc2899c68b729936fca31f75602cb0ed805f255fda5d5c2f705ffd` |
| 12 | `inductive` | [Saturate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/saturate--2b9df57c4a835e3a5b27ccae.md) | 189 | `declaration-track:2b9df57c4a835e3a5b27ccaed2b2d60ec3bc35fc99491f37dbe9c48f02b61700` |
| 13 | `lemma` | [eq_top_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/eq-top-pullback--5e056de8f7efe2dc2ba1313e.md) | 197 | `result-track:5e056de8f7efe2dc2ba1313e22a1d7529b5ca29a96f49509cddb498664da6112` |
| 14 | `lemma` | [saturate_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/saturate-of-superset--852cbbfaa9dfe2e99bf7e447.md) | 205 | `result-track:852cbbfaa9dfe2e99bf7e447c5a7240a90a0c73e1d3abf704ba2beb78bcac6e0` |
| 15 | `def` | [toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/togrothendieck--b9474946bfdee5fde4725b18.md) | 226 | `declaration-track:b9474946bfdee5fde4725b184d80adfa4c49903c935536c6fcc1acfd5fbfaec6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/instance--2fd72974d4179c1db3daaead.md) | 249 | `declaration-track:2fd72974d4179c1db3daaeadadf431f2137ee8b706eedd061e614be0a6d864ec` |
| 17 | `def` | [gi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/gi--926f523d04c53bb6ddff2df2.md) | 261 | `declaration-track:926f523d04c53bb6ddff2df29720adaf3b1f3a651208ecb9b8ca7746f862000a` |
| 18 | `theorem` | [toGrothendieck_eq_sInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/togrothendieck-eq-sinf--d1a3ddb1beecc33a657977b0.md) | 283 | `result-track:d1a3ddb1beecc33a657977b06d3d3698a867484bf8eeadc809dc4c363567f25c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/instance--7560f2445a3f28ae9e86b010.md) | 296 | `declaration-track:7560f2445a3f28ae9e86b0105921468eda7b18c0b1f37766ecd2e592951a7561` |
| 20 | `lemma` | [sup_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/sup-covering--7a2565cdad31471d02422b7e.md) | 311 | `result-track:7a2565cdad31471d02422b7e8169526cbbce5ac0d950e6beb0a2109587d8b69d` |
| 21 | `theorem` | [mem_toGrothendieck_sieves_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/mem-togrothendieck-sieves-of-superset--173ef09622d42eb3c7b1aa10.md) | 319 | `result-track:173ef09622d42eb3c7b1aa10f987b1e0469c3bcb19d29d2f26cf13b28f391bd7` |
| 22 | `theorem` | [isSheaf_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/issheaf-coverage--e37b33daa3d5a1863def40f8.md) | 334 | `result-track:e37b33daa3d5a1863def40f820688403f0c0f17ad0691e61d581b89ce27efa63` |
| 23 | `theorem` | [isSheaf_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/issheaf-sup--8253d1efe4fcd0feb219cab4.md) | 408 | `result-track:8253d1efe4fcd0feb219cab4c2a0303ec9a1a4b0783a2c45020af97c5b9d3b30` |
| 24 | `theorem` | [isSheaf_iff_isLimit_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/issheaf-iff-islimit-coverage--cbd69d213d29f81e625c75d1.md) | 424 | `result-track:cbd69d213d29f81e625c75d15b270c5df766f12a598ba9846d4416b70b432011` |
| 25 | `theorem` | [isSheaf_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/declarations/issheaf-sup--0bc2ce28e00db097140c7878.md) | 432 | `result-track:0bc2ce28e00db097140c78785930a870f5cba59de3e5530e2e66c8d90d4bf0ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
