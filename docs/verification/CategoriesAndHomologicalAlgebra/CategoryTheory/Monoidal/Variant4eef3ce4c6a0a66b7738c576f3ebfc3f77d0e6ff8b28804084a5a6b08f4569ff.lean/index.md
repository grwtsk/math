# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7efc89c8f84de79906834eaaf6cc936f71f6bf33",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7efc89c8f84de79906834eaaf6cc936f71f6bf33`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.OfEquivalence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Concrete` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instmonoidalcategory--736f642105bd0e813619fb1f.md) | 39 | `declaration-track:736f642105bd0e813619fb1febe2099557840c8b817cf6f369dbd8f5e6acafc5` |
| 2 | `theorem` | [tensorUnit_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/tensorunit--e5dbe91fdad19057d766e1f8.md) | 43 | `result-track:e5dbe91fdad19057d766e1f8b8bf9c9568cdb29d7f2c748b600306058f34f7d2` |
| 3 | `theorem` | [tensor_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/tensor--42f4fa30f39051b66ab1cf76.md) | 48 | `result-track:42f4fa30f39051b66ab1cf76e5bd0b7102e9de9f3fa03bc519d47389cb502801` |
| 4 | `def` | [tensorUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/tensorunitiso--a4dd7b4f6308092c826b258a.md) | 54 | `declaration-track:a4dd7b4f6308092c826b258acada75fa54c28d98aa984f913325121d011836f2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--a1d07266ece2a926077505cc.md) | 59 | `declaration-track:a1d07266ece2a926077505cc3746b08073f63007b7ab3680aee70bb711a621f0` |
| 6 | `lemma` | [forget_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/forget--ffc9369bb69ded26467c52cd.md) | 66 | `result-track:ffc9369bb69ded26467c52cd381c0e77a59e1aab249d74841cb91a97b81938bc` |
| 7 | `lemma` | [forget_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/forget--acdc9e9181573b95d252c079.md) | 67 | `result-track:acdc9e9181573b95d252c079906bfbf357f278181fe46c19ba8d9368702706b7` |
| 8 | `lemma` | [forget_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/forget--d4120f386b4e5e4d74569316.md) | 71 | `result-track:d4120f386b4e5e4d74569316c3ffec2a22b91f133711a19da211d513a46abbf8` |
| 9 | `lemma` | [forget_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/forget--900051128aadb2b98fb1620b.md) | 72 | `result-track:900051128aadb2b98fb1620b21d43cbc57fb97ce4a32658998008728709c049e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--8e403029e48b734609f36ce6.md) | 80 | `declaration-track:8e403029e48b734609f36ce65deec247798213e5921b3ea6cd0e56e1312b7ad1` |
| 11 | `theorem` | [β_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/hom-hom--8ec8296e500ed53dc557d931.md) | 85 | `result-track:8ec8296e500ed53dc557d93105ef6457900a122da1808e88b5fef2e3484032cf` |
| 12 | `theorem` | [β_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/inv-hom--4d3ee2caf32ab469b73005f3.md) | 88 | `result-track:4d3ee2caf32ab469b73005f3dc6c4a478ead573e2cd13db81c6ae4be233777f2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--eaa1ff073989e3f0a96be27b.md) | 91 | `declaration-track:eaa1ff073989e3f0a96be27b36a1c51e7551fa849cc3bd66d4f4834b70d09e07` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--b07b102496f7a9c13f981337.md) | 95 | `declaration-track:b07b102496f7a9c13f981337e689f998d7dbd505f917cb4fedc336a04693dc0c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--970616c2f3727cf53b3f6072.md) | 104 | `declaration-track:970616c2f3727cf53b3f6072c34116f66ad27b93548c443e45fa6fd82ecc8e67` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--703ee501b2c3b1c8200dc3eb.md) | 108 | `declaration-track:703ee501b2c3b1c8200dc3ebdfd8b066f77494407cba915010d43041d10bf536` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--1749bf9204711e603d2752fa.md) | 115 | `declaration-track:1749bf9204711e603d2752fab5841cf23c1b86854cfe69ff815090c345b3cfe7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--b410833e3ad26208ee663061.md) | 119 | `declaration-track:b410833e3ad26208ee6630613a29d144d3e4a8f5759d6bcd7432fc11cbbda40a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--92fbfde8b0d252bd0516b417.md) | 123 | `declaration-track:92fbfde8b0d252bd0516b417496bad33993adc7e9f8c4ef527b7970b1097fe68` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--b57546062f16cb685f149b03.md) | 127 | `declaration-track:b57546062f16cb685f149b035e3e334ee04a1c33e794aabc293a144f208dbc34` |
| 21 | `lemma` | [FunctorCategoryEquivalence.functor_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/functorcategoryequivalence-functor--89036a3c84794acb46b51d8f.md) | 131 | `result-track:89036a3c84794acb46b51d8f6e77fa52cc55b60dbd0f891f97d0b5f0235e5a37` |
| 22 | `lemma` | [FunctorCategoryEquivalence.functor_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/functorcategoryequivalence-functor--1ac8fd58ac37a48363bf3f78.md) | 135 | `result-track:1ac8fd58ac37a48363bf3f78b5ca60b7b200a13411ee0ec96e9840623c6115f5` |
| 23 | `lemma` | [FunctorCategoryEquivalence.functor_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/functorcategoryequivalence-functor--1e0c01cd97252c4b5a2a7ac7.md) | 139 | `result-track:1e0c01cd97252c4b5a2a7ac70af9a257139ec3b658009414bc7233a877426fbf` |
| 24 | `lemma` | [FunctorCategoryEquivalence.functor_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/functorcategoryequivalence-functor--ee147acdb5eb4bf698bf5e38.md) | 143 | `result-track:ee147acdb5eb4bf698bf5e381cfcdb8d2a17baffdcedde96b5b4942845a72f7a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--fe4259e662ae3083f9f12157.md) | 149 | `declaration-track:fe4259e662ae3083f9f12157276b3ee6973822b695bde41a69a1314b9f25728c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--fb2d94facc3b84dfc5476366.md) | 153 | `declaration-track:fb2d94facc3b84dfc5476366a402505e45841a51d3b1f4ae1c9b0cbc7ffa2902` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--fc56e9bad450a51448dab174.md) | 157 | `declaration-track:fc56e9bad450a51448dab174b91a9127aadd596937d44390ab0b902df2603094` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--d7e48edd8b0035698cfc549b.md) | 161 | `declaration-track:d7e48edd8b0035698cfc549b88f31d7d263cfb0013e7873bd80fdab717d849c9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--02a30d559861284186143294.md) | 164 | `declaration-track:02a30d5598612841861432944c30abecca1acdb32195f74b9ba25ab4609af4e4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--989058a810d3d4e375180b8b.md) | 168 | `declaration-track:989058a810d3d4e375180b8bfec7043fa5d32018de1d250e007e4bbc8871fca2` |
| 31 | `theorem` | [rightDual_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/rightdual-v--06d19e1c9c3699ee1d9d740e.md) | 175 | `result-track:06d19e1c9c3699ee1d9d740e390aa7c2cffd112d42a501249272d3fb1dcc21d8` |
| 32 | `theorem` | [leftDual_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/leftdual-v--a2cefad00fd25c1e8aa47918.md) | 179 | `result-track:a2cefad00fd25c1e8aa47918e58fc503d514b5d50c6142ea62a4d00dd65cf6cf` |
| 33 | `theorem` | [rightDual_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/rightdual--d068dd701fd07684b85b94a4.md) | 182 | `result-track:d068dd701fd07684b85b94a466f5093910d1e507b41bd67a78fe7f44dad7d244` |
| 34 | `theorem` | [leftDual_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/leftdual--fd5ea14f34ad3c5c0c84bf47.md) | 185 | `result-track:fd5ea14f34ad3c5c0c84bf4723ae2a0c89220b66997f3fb0de33caa10096dbba` |
| 35 | `def` | [leftRegularTensorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/leftregulartensoriso--5b790d2f02baef71beb8d5ea.md) | 199 | `declaration-track:5b790d2f02baef71beb8d5eafb99af743d26c7c7ed8d70ffb3aae76b19fc556b` |
| 36 | `def` | [diagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/diagonalsucc--a5cfdb7cad1b0b3638b63997.md) | 230 | `declaration-track:a5cfdb7cad1b0b3638b63997a36c35ca0a51ea30d72eb48bd267e1d9c46f4b9a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--38be08dd6f8a0606d334de17.md) | 247 | `declaration-track:38be08dd6f8a0606d334de1709808a709e66547fb0210716aa0a3c91898feb16` |
| 38 | `lemma` | [mapAction_ε_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/mapaction-hom--c937dde741a71744528e6b7a.md) | 263 | `result-track:c937dde741a71744528e6b7ae7b6187bfabf5fc5fb1642a31957a38990a96957` |
| 39 | `lemma` | [mapAction_μ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/mapaction-hom--75fcdf4ae46da1d23c9e91fa.md) | 266 | `result-track:75fcdf4ae46da1d23c9e91fa095295cefcda40aeb43bc0737eaa6b3cce077701` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--ef092e07e0c69e30b2007b18.md) | 271 | `declaration-track:ef092e07e0c69e30b2007b188d6dd5e8cfba2351e3f0d45883bd7f8b0c0e1a6d` |
| 41 | `lemma` | [mapAction_η_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/mapaction-hom--95ad76e10cd12b63ed6167c8.md) | 287 | `result-track:95ad76e10cd12b63ed6167c835105700fb89eecd49d0262cedd7438463c6656b` |
| 42 | `lemma` | [mapAction_δ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/mapaction-hom--81ed38c3b4357dccd78eeef4.md) | 290 | `result-track:81ed38c3b4357dccd78eeef4ba5200972f57368c87bab7c70be77647ae86eeff` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant4eef3ce4c6a0a66b7738c576f3ebfc3f77d0e6ff8b28804084a5a6b08f4569ff.lean/declarations/instance--8f8213ef26e2920b09886513.md) | 295 | `declaration-track:8f8213ef26e2920b098865136d6d38fb0be5d81c8e6b98f637f2ee045fa25a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
