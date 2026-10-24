# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5488d12c04beaadc022466904effc3ea08c055f3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5488d12c04beaadc022466904effc3ea08c055f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean.json)

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
| 1 | `def` | [piObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/piobjiso--0fe18322a266dbb4f1e9bb47.md) | 41 | `declaration-track:0fe18322a266dbb4f1e9bb4718fc3287aca62c2a7737f096e5e2c5f6eb73791c` |
| 2 | `theorem` | [piObjIso_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/piobjiso-hom-comp--59f93fb4ec795f0fa7d5067e.md) | 47 | `result-track:59f93fb4ec795f0fa7d5067e7850f9a9569c72d9ec139290d0205223730bb6be` |
| 3 | `theorem` | [piObjIso_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/piobjiso-inv-comp--25857ed3980ba3d6d217d22e.md) | 53 | `result-track:25857ed3980ba3d6d217d22e3322b5816383a56355ca8453f660b401e8ff3092` |
| 4 | `def` | [sigmaObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/sigmaobjiso--b18c9842bff68fda5a538d8d.md) | 64 | `declaration-track:b18c9842bff68fda5a538d8dd2f9945db7899674dab5331f938124505f941b89` |
| 5 | `theorem` | [ι_comp_sigmaObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/comp-sigmaobjiso-hom--800546c485d3c658363c2817.md) | 70 | `result-track:800546c485d3c658363c2817b88e6f4793b73050ce312c37a9b04daccf020390` |
| 6 | `theorem` | [ι_comp_sigmaObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantda26777a515e555808a53b184a958eb8e101250de9a84fbb3f02a0ba357371fa.lean/declarations/comp-sigmaobjiso-inv--c497a845fff37a7f4cda665b.md) | 76 | `result-track:c497a845fff37a7f4cda665b0c24f540287f6f50cf3382c6975eccc60c511392` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
