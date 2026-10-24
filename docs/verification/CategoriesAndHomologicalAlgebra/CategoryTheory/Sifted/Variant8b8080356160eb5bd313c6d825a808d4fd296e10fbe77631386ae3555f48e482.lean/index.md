# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sifted.Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5385d8552eb282ce06f5e6261db4ef2a1c9664a2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5385d8552eb282ce06f5e6261db4ef2a1c9664a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSiftedOrEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/issiftedorempty--748df69afe562180f2e76ff6.md) | 42 | `declaration-track:748df69afe562180f2e76ff6c5486aa82bacb645dcd1e892655efe92de9977f1` |
| 2 | `class` | [IsSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/issifted--84b065541b87c4a6d428fb60.md) | 47 | `declaration-track:84b065541b87c4a6d428fb6091fc197921fc8e3363ba37b6900636e54b29ed9d` |
| 3 | `lemma` | [isSifted_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/issifted-of-equiv--d9af29ee4029c58985e452d4.md) | 61 | `result-track:d9af29ee4029c58985e452d4f792157f16742c8723bc7eaf2413100dfb07d10d` |
| 4 | `lemma` | [isSifted_iff_asSmallIsSifted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/issifted-iff-assmallissifted--a061dce5f777b1de115242b9.md) | 73 | `result-track:a061dce5f777b1de115242b91df13979277f853075e788a02be220cda0112623` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/instance--bc30e52b4e2fe02a2be843db.md) | 78 | `declaration-track:bc30e52b4e2fe02a2be843db53c97246cf71796b5225c30b64f237ac5c8d3203` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/instance--f679f0809ec36c045c25b858.md) | 93 | `declaration-track:f679f0809ec36c045c25b858daf33c4679b185c758020b0108eaf19b1dccb4e4` |
| 7 | `instance` | [isSifted_of_hasBinaryCoproducts_and_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/issifted-of-hasbinarycoproducts-and-nonempty--799093c876efc20dedbac1d1.md) | 109 | `declaration-track:799093c876efc20dedbac1d1d1ec51c595e3e734251b974305a8a8dd3ff2f6f9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variant8b8080356160eb5bd313c6d825a808d4fd296e10fbe77631386ae3555f48e482.lean/declarations/instance--fa62213a344c989b23bebc1b.md) | 121 | `declaration-track:fa62213a344c989b23bebc1bfc93ed1c376ff570737396f5497ec09939f1a352` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
