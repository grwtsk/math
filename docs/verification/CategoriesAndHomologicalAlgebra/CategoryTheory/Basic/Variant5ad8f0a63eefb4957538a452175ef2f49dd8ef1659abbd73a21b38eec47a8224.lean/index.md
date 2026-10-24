# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05580d0af4f06d254efe773689c2698a2949afd8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05580d0af4f06d254efe773689c2698a2949afd8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LightCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/lightcondensed--ed8539e7f8a98cb56e343595.md) | 33 | `declaration-track:ed8539e7f8a98cb56e343595361f13a98a14e7fc6fbbc130ef24dfa8ab6f2a81` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/instance--38732895c497e4c42f4390ce.md) | 36 | `declaration-track:38732895c497e4c42f4390ce5a4f9862483d07b69b198b23205429c26a99b01a` |
| 3 | `abbrev` | [LightCondSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/lightcondset--6cc4e347b7d3c319a209af4c.md) | 43 | `declaration-track:6cc4e347b7d3c319a209af4cc7f6d6aea7d5c0a51bfcc3ba941c57c89ee8310b` |
| 4 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/id-val--ce0c2f0ace44fafcd28843e2.md) | 50 | `result-track:ce0c2f0ace44fafcd28843e262e2dd1cce5cddd8361deac598de9ee3107d1478` |
| 5 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/comp-val--f14957f54aebbea0bcb4c6cf.md) | 53 | `result-track:f14957f54aebbea0bcb4c6cfd06ce7793a630e582b00a535529cf10083ea8ddb` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/hom-ext--2c972335df63a331b7b11280.md) | 58 | `result-track:2c972335df63a331b7b11280a435eddcbc4aac023112ea21e0726ad2b2ad8618` |
| 7 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5ad8f0a63eefb4957538a452175ef2f49dd8ef1659abbd73a21b38eec47a8224.lean/declarations/hom-naturality-apply--c600f3ae0cb2cfe4ea41ad40.md) | 72 | `result-track:c600f3ae0cb2cfe4ea41ad400155b3f8c25b8d59ccd5ff45de3a1e8bdcf206db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
