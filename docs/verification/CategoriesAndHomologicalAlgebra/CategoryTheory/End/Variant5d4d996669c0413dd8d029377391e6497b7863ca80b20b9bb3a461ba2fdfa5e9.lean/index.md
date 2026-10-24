# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1772d1e8ceef701bc2a6c21b7c7e32f422c7cd7e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1772d1e8ceef701bc2a6c21b7c7e32f422c7cd7e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endofunctorMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory--de143451cafe2fa6646cbc44.md) | 41 | `declaration-track:de143451cafe2fa6646cbc4400ffdcfcbf2bac2acadcf60b77503849a1c05f34` |
| 2 | `theorem` | [endofunctorMonoidalCategory_tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-tensorunit-obj--ec2338e8af18b19bcb1b4f50.md) | 55 | `result-track:ec2338e8af18b19bcb1b4f5025fbac0f32678be4a6496a09db33b414f10b9875` |
| 3 | `theorem` | [endofunctorMonoidalCategory_tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-tensorunit-map--d9c9c5514477c57cd447c038.md) | 58 | `result-track:d9c9c5514477c57cd447c03812e1a9e5d018d32a53c6757046893499745c6f6b` |
| 4 | `theorem` | [endofunctorMonoidalCategory_tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-tensorobj-obj--f3dfc8afed8200ab23972a8d.md) | 61 | `result-track:f3dfc8afed8200ab23972a8df5fe5cba3b0382c2a407d53e71a57cd8e530b05e` |
| 5 | `theorem` | [endofunctorMonoidalCategory_tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-tensorobj-map--c279f980f0efa907a9f1832f.md) | 64 | `result-track:c279f980f0efa907a9f1832fdb919c0a31b9805275404cc6d7ca63ed40ee2c8d` |
| 6 | `theorem` | [endofunctorMonoidalCategory_tensorMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-tensormap-app--f10d76ca8cd17798f473dc78.md) | 67 | `result-track:f10d76ca8cd17798f473dc78d2dc46e35a5683c931ca1e18808b46816e640a66` |
| 7 | `theorem` | [endofunctorMonoidalCategory_whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-whiskerleft-app--031d2b9e218b5d554a0663a0.md) | 71 | `result-track:031d2b9e218b5d554a0663a0d22e5bf71795bbbc0a8fc49543225c21438d1ca6` |
| 8 | `theorem` | [endofunctorMonoidalCategory_whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-whiskerright-app--9fb06b24ca20c70f1945c22c.md) | 75 | `result-track:9fb06b24ca20c70f1945c22c8ba7bfa8314118204fd46adaedc7061e6c7c1217` |
| 9 | `theorem` | [endofunctorMonoidalCategory_associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-associator-hom-app--f17ea3bdc36ad3e76b0862d1.md) | 79 | `result-track:f17ea3bdc36ad3e76b0862d158b4d9931fb28ada2d455d6f395824f5f2ecec43` |
| 10 | `theorem` | [endofunctorMonoidalCategory_associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-associator-inv-app--d89e5c4709ff6a5f4bc6e7a5.md) | 82 | `result-track:d89e5c4709ff6a5f4bc6e7a5c276feee66ef1e64ba522c4883c70a4b7f0564f2` |
| 11 | `theorem` | [endofunctorMonoidalCategory_leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-leftunitor-hom-app--4b4ff7117b19b22fd2bb45c0.md) | 85 | `result-track:4b4ff7117b19b22fd2bb45c0a088d57238c7d308a8aaf9eb14c8010c49885a4d` |
| 12 | `theorem` | [endofunctorMonoidalCategory_leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-leftunitor-inv-app--36355a7edbaa7e528795f6f0.md) | 88 | `result-track:36355a7edbaa7e528795f6f0ceea108dae69922b6abb69947ed09b9135cf62ea` |
| 13 | `theorem` | [endofunctorMonoidalCategory_rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-rightunitor-hom-app--5090739f00c67289e65e4bd4.md) | 91 | `result-track:5090739f00c67289e65e4bd4cc70da82a1e7e0a7d1c37f017e2bd60389a5f3b7` |
| 14 | `theorem` | [endofunctorMonoidalCategory_rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/endofunctormonoidalcategory-rightunitor-inv-app--01b387b11133bfcc3561b3e3.md) | 94 | `result-track:01b387b11133bfcc3561b3e37c2a5734eeac17a60f53ba8dba7ab2e19f817a26` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/instance--56b67597b163189e1fc6d72c.md) | 103 | `declaration-track:56b67597b163189e1fc6d72c2c9d03c00fbe88ee3972bf39dd5663c0fc14623a` |
| 16 | `lemma` | [tensoringRight_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/tensoringright--9ce79480cda5bb695fb3f00c.md) | 109 | `result-track:9ce79480cda5bb695fb3f00cebeff48c6c9546a1708335b069184f2dfb81b800` |
| 17 | `lemma` | [tensoringRight_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/tensoringright--7a5fadf74bcd557e1d65bb67.md) | 112 | `result-track:7a5fadf74bcd557e1d65bb67326408e6527e1ae79c9eab507f9151eec00f0b83` |
| 18 | `lemma` | [tensoringRight_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/tensoringright--37c30231534c8884f1a5ebce.md) | 115 | `result-track:37c30231534c8884f1a5ebce03ac12f7c75c9ec0a58e4922c376eebd74a4cd51` |
| 19 | `lemma` | [tensoringRight_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/tensoringright--a5748a4ae4ed59cd482a7c8a.md) | 118 | `result-track:a5748a4ae4ed59cd482a7c8a14e0d1848108cc91b02847a40b393da1339a5ee3` |
| 20 | `theorem` | [μ_δ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app--c1823e08421641ec00bdb4da.md) | 127 | `result-track:c1823e08421641ec00bdb4da5dca9e052c270d433c130ec59a287f436c0624ef` |
| 21 | `theorem` | [δ_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app--eaefdecf06081e9c70ee1e3e.md) | 132 | `result-track:eaefdecf06081e9c70ee1e3e3afb3e0940b0b47ca3b8dc32a2b8773f586d1414` |
| 22 | `theorem` | [ε_η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app--525be180a7213e57d0247137.md) | 137 | `result-track:525be180a7213e57d0247137c4e83ec23a92f060215c670011af121ef7393e57` |
| 23 | `theorem` | [η_ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app--8223bf88093d7263b077367a.md) | 141 | `result-track:8223bf88093d7263b077367a9a9d301e7d9f0201f30ee9b435ca034f06814902` |
| 24 | `theorem` | [ε_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--2900297ce41b4707aac7a356.md) | 145 | `result-track:2900297ce41b4707aac7a356055317e155eb411608bd80e589224377d9ce39ce` |
| 25 | `theorem` | [η_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--84694117fa2164d087f9a204.md) | 150 | `result-track:84694117fa2164d087f9a2043b3d7aa2618d9ee7170257fe2949685bde61b08b` |
| 26 | `theorem` | [μ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--9e7a4c0b3194d355bfc66dba.md) | 155 | `result-track:9e7a4c0b3194d355bfc66dba31f3029361ac0c39cb8e2b31bdff2de7409e5567` |
| 27 | `theorem` | [δ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--4769a4fd469d7458e4858fda.md) | 161 | `result-track:4769a4fd469d7458e4858fdaec2a8c07406062949b7b4c403e7c4654eaf31f07` |
| 28 | `theorem` | [μ_naturality₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--c579751f9756994a340b7da5.md) | 167 | `result-track:c579751f9756994a340b7da5b2732f29e54f060fb4ff0ab7b2054b5e0bdf76ec` |
| 29 | `theorem` | [μ_naturalityₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--06e1d1e496d013e28523bca1.md) | 175 | `result-track:06e1d1e496d013e28523bca155fff5c04ec04432ca9a98df82dd911b107495f3` |
| 30 | `theorem` | [μ_naturalityᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--b6000d6e75dd6ce844a6f020.md) | 182 | `result-track:b6000d6e75dd6ce844a6f020b9c2dc0748f25080432241d193daa55434b3a938` |
| 31 | `theorem` | [δ_naturalityₗ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--a8a69726aa7bd7d224731aa0.md) | 189 | `result-track:a8a69726aa7bd7d224731aa0a06a129c7f44c36073232fef6526cdb60974b275` |
| 32 | `theorem` | [δ_naturalityᵣ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/naturality--45fbfd3e2e160a18555cbf33.md) | 195 | `result-track:45fbfd3e2e160a18555cbf33bb78ccfd3064dd295bfcc5e5c5d72964ea71dd6a` |
| 33 | `theorem` | [left_unitality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/left-unitality-app--8dfdbd9cf37840cf2818edec.md) | 201 | `result-track:8dfdbd9cf37840cf2818edecd0726d19fc1769bc9ef1b5f940b1bd9c9c5ed576` |
| 34 | `theorem` | [obj_ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-app--b25586dacfe8a6a14d79b8b9.md) | 206 | `result-track:b25586dacfe8a6a14d79b8b9c97f69883280bacb9f6840a2cf204c872cf8507a` |
| 35 | `theorem` | [obj_η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-app--d8e0f51fca93f5fad2aa1d74.md) | 214 | `result-track:d8e0f51fca93f5fad2aa1d74f0c96c165f418012de3b280e09f05d6a70799b99` |
| 36 | `theorem` | [right_unitality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/right-unitality-app--9de655a8a9bd8612363e8c83.md) | 220 | `result-track:9de655a8a9bd8612363e8c831347d03ac08b7769442b65cbf094322ca7417143` |
| 37 | `theorem` | [ε_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app-obj--eff911d52889673fab648d92.md) | 225 | `result-track:eff911d52889673fab648d92a20cc926704ed6bda5a85ba3a7e8a8a02923480f` |
| 38 | `theorem` | [η_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/app-obj--1a222e27b3d9ab40e724b7c9.md) | 233 | `result-track:1a222e27b3d9ab40e724b7c9aff198ec146eacec0cdd13eb0428ec6ed5c3aa13` |
| 39 | `theorem` | [associativity_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/associativity-app--40ad5aa70d14ab4af28f85a0.md) | 240 | `result-track:40ad5aa70d14ab4af28f85a0f6122970e71fbe40689d194816378c778d65a526` |
| 40 | `theorem` | [obj_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-app--ca7ac40901c426164b41ae2a.md) | 249 | `result-track:ca7ac40901c426164b41ae2a9d10351e46095a9bba66b8bd75f24030cf58bcd7` |
| 41 | `theorem` | [obj_μ_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-inv-app--4324b80d0f472d41b4f9425d.md) | 258 | `result-track:4324b80d0f472d41b4f9425dc8f819ca9a8dbd1f92f5666975cd93ec23ca7373` |
| 42 | `theorem` | [obj_zero_map_μ_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-zero-map-app--3c5fa5cc4b713eb820370c57.md) | 269 | `result-track:3c5fa5cc4b713eb820370c5789000c30aaee430daf4f537bf3e148b6a80d8618` |
| 43 | `theorem` | [obj_μ_zero_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/obj-zero-app--3b93c392276b1ab1714bbc75.md) | 276 | `result-track:3b93c392276b1ab1714bbc75545ee818c7e4122dae3a6334896f17928bc1cef2` |
| 44 | `def` | [unitOfTensorIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/unitoftensorisounit--c96f231ee04d81d60be466ae.md) | 286 | `declaration-track:c96f231ee04d81d60be466aec44293376d3e9758df3c6eb27e8a3a5981e7fcc0` |
| 45 | `def` | [equivOfTensorIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant5d4d996669c0413dd8d029377391e6497b7863ca80b20b9bb3a461ba2fdfa5e9.lean/declarations/equivoftensorisounit--445e8ff25f5e662a728c187e.md) | 293 | `declaration-track:445e8ff25f5e662a728c187ebe086283b215361707e4fd915cf02b0b034c0ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
