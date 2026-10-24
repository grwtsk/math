# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b429bb8f87de8bbe82f2d67e328e864edd98d83a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b429bb8f87de8bbe82f2d67e328e864edd98d83a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean.json)

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
| 1 | `abbrev` | [LightCondMod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondmod--d2dd60665805a1602f323e4d.md) | 50 | `declaration-track:d2dd60665805a1602f323e4d89f2bdcde87708dec34c7f89e76396bd694278ec` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/instance--89506b02aabf69e8c94acc49.md) | 52 | `declaration-track:89506b02aabf69e8c94acc49334b13a98ccd489fc322f2f5f064ee79abf5be2d` |
| 3 | `def` | [LightCondensed.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondensed-forget--6106e26179b03192b0a7a3a3.md) | 55 | `declaration-track:6106e26179b03192b0a7a3a34507c2c04c0c9f524d3b9bb9007e126a0409d901` |
| 4 | `lemma` | [LightCondensed.forget_obj_obj_map_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondensed-forget-obj-obj-map-hom-apply--a84d2f395465ae53f9d89fd8.md) | 59 | `result-track:a84d2f395465ae53f9d89fd8cd92e563bdf6aefd6cacdc039481271bd2e054a3` |
| 5 | `lemma` | [LightCondensed.forget_map_hom_app_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondensed-forget-map-hom-app-hom-apply--c982019fdd1aebc36326adab.md) | 65 | `result-track:c982019fdd1aebc36326adab82cdb0811c4aa043cd2701870e1b2c9128b54498` |
| 6 | `def` | [LightCondensed.free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondensed-free--c27c496f38d2c4c5dce0c571.md) | 76 | `declaration-track:c27c496f38d2c4c5dce0c571565b0e121a431d6c8181da79de87a255406963e1` |
| 7 | `def` | [LightCondensed.freeForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondensed-freeforgetadjunction--88d1aa4676bc18efedf72314.md) | 81 | `declaration-track:88d1aa4676bc18efedf72314d175c7b924c5d36dd208727666ec590651756ed2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/instance--0769e7ca1a1e1a5fc036df49.md) | 85 | `declaration-track:0769e7ca1a1e1a5fc036df4922d481123c8172b0433e9acd9b0102c7cb154d8e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/instance--35910a2dfca3e00c7bdf7395.md) | 87 | `declaration-track:35910a2dfca3e00c7bdf73950daf7458af3f302e92d673141cd8d0662ddeb44a` |
| 10 | `abbrev` | [LightCondAb](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/lightcondab--0759b7a54794cb466366262d.md) | 93 | `declaration-track:0759b7a54794cb466366262dc99a9ab7066383dcad48b102c844d8baf8a0112c` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/example--0eb3023877034ab0f36e6928.md) | 95 | `declaration-track:0eb3023877034ab0f36e692864b1b691154af4345521bd01523073bea0bced5e` |
| 12 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantc28657396aeda6f39aabdd012285f2ec647c5cde35b58a79e8c0ba2fa73da667.lean/declarations/hom-naturality-apply--ee427411b249844db7d8be92.md) | 99 | `result-track:ee427411b249844db7d8be9253fbb92e3ea8bad33b23ac9b257f903850d82e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
