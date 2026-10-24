# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7d3c2778486bb63d0babbeed75d935069fe739d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7d3c2778486bb63d0babbeed75d935069fe739d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/condensed--7c7bba2e34905f8ee12b9fb2.md) | 42 | `declaration-track:7c7bba2e34905f8ee12b9fb2bd6a5a8994e4e6bc12f38f9d0a67f892f4631821` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/instance--3fc9a6015345f2d0462c4dee.md) | 45 | `declaration-track:3fc9a6015345f2d0462c4deedfb96f9d91137ff61a4ce3cda1b98595827ef994` |
| 3 | `abbrev` | [CondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/condensedset--25971200ff7198748255d256.md) | 52 | `declaration-track:25971200ff7198748255d2569b09d84ab10e3502ddc884af2075260dc1a5cac9` |
| 4 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/id-val--06d095c9893b5d1e4ab19fe7.md) | 59 | `result-track:06d095c9893b5d1e4ab19fe767af8038dd0229d6b7311d8d27d1975f7ce61881` |
| 5 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/comp-val--abfd74b87fc5ff7d553b4102.md) | 62 | `result-track:abfd74b87fc5ff7d553b41020392592a7fb7b2e87d30c4c4e021d24248eb49f3` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/hom-ext--af121128000923135654d11d.md) | 66 | `result-track:af121128000923135654d11dffaf959c27cb6098de3b3670e459d1b265cbee39` |
| 7 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantceb4ccb751ef13dd24cf8de90bb583f17eabc99e6faf382795dc53d49fcae3ae.lean/declarations/hom-naturality-apply--988bdba90cdc160aa3757e71.md) | 80 | `result-track:988bdba90cdc160aa3757e7184f2973a3b31e18e1fc6a71aed6059a982621bff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
