# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedTopology.Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cd1ed24d5c2db1eb8f962ca4ac626e6903845a7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cd1ed24d5c2db1eb8f962ca4ac626e6903845a7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/locallycoverdense--3322804e6c6e4d4dd213d436.md) | 53 | `declaration-track:3322804e6c6e4d4dd213d4366c2bd295b73aac9abbbc840ad5102adc378d4f0e` |
| 2 | `theorem` | [pushforward_cover_iff_cover_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/pushforward-cover-iff-cover-pullback--0571286bdc1702fa5edaf1c8.md) | 61 | `result-track:0571286bdc1702fa5edaf1c8650d29224eba405b9f62de8364dae432c50d6933` |
| 3 | `def` | [inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/inducedtopology--b392606bda76129f5f2077af.md) | 74 | `declaration-track:b392606bda76129f5f2077af2bf95b2af8600a9680121ad7a797206b0ddc6647` |
| 4 | `theorem` | [inducedTopology_coverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/inducedtopology-coverlifting--97e248f4d49205d85ab9fc07.md) | 101 | `result-track:97e248f4d49205d85ab9fc07494b0283460fdf00e6ab19d600eb4c2b9e735c93` |
| 5 | `theorem` | [inducedTopology_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/inducedtopology-coverpreserving--e056d9620d125830a5833fd7.md) | 106 | `result-track:e056d9620d125830a5833fd7cc2374444d3623db29fc55583b9284dc57acba00` |
| 6 | `theorem` | [CoverDense.locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/coverdense-locallycoverdense--97a4847fd82fc0e6c5cc1257.md) | 112 | `result-track:97a4847fd82fc0e6c5cc1257556e9c4cdfb15c0f4ef5c0971e67dadb3096dcb9` |
| 7 | `abbrev` | [CoverDense.inducedTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/coverdense-inducedtopology--e7f485e0c83c04d5c6f4f3fc.md) | 124 | `declaration-track:e7f485e0c83c04d5c6f4f3fc094b9c116a39aaf244682df8b6c24baf877617e1` |
| 8 | `theorem` | [over_forget_locallyCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/over-forget-locallycoverdense--04aee63cd1cf32c0eb3fd366.md) | 131 | `result-track:04aee63cd1cf32c0eb3fd366d3872b3ed62489f5db7316596b1fcc055675fed8` |
| 9 | `def` | [CoverDense.sheafEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variant2e204a38a3f8e36b8f923fb9f9ad7b19ab3ff99463f61fe8bb7d1ad54df65209.lean/declarations/coverdense-sheafequiv--c49c22f1e557161a0075dc68.md) | 157 | `declaration-track:c49c22f1e557161a0075dc68ef2582316bf603050a2579293306ca5473f11f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
