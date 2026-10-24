# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherentTopology.Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3d81579f0701466a5ec2df2a1f597800b491ca9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3d81579f0701466a5ec2df2a1f597800b491ca9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coherentTopology.mem_sieves_of_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/declarations/coherenttopology-mem-sieves-of-haseffectiveepifamily--ffc26990eacba1ab9f9fb3c0.md) | 29 | `result-track:ffc26990eacba1ab9f9fb3c03ee08766b2171fc271d69793631d21fe3dd98345` |
| 2 | `theorem` | [EffectiveEpiFamily.transitive_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/declarations/effectiveepifamily-transitive-of-finite--75036b8aaf108e84052731ce.md) | 44 | `result-track:75036b8aaf108e84052731ce1e8820744ed6ce037a3648af2d3749aefb2be059` |
| 3 | `instance` | [precoherentEffectiveEpiFamilyCompEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/declarations/precoherenteffectiveepifamilycompeffectiveepis--bec7255e14c1a424fe609a43.md) | 70 | `declaration-track:bec7255e14c1a424fe609a438e6bb3e16543df063517480db6b626557eb1a265` |
| 4 | `theorem` | [coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantbff610a48473076a09dbfc2fd9894701edc8109ae0913a0dcc2fc5f070f7d068.lean/declarations/coherenttopology-mem-sieves-iff-haseffectiveepifamily--e0aaf8ba2811553f77b8f03b.md) | 82 | `result-track:e0aaf8ba2811553f77b8f03bd00be2b4a32a5f3d87e12dcb9f4e77a10d0a47a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
