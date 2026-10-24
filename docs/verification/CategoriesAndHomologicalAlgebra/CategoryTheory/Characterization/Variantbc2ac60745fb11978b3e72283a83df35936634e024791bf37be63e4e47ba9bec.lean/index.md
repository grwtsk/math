# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Characterization.Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a774f98d4f8fa76de45c56997cd262f6f27ee31",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a774f98d4f8fa76de45c56997cd262f6f27ee31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Discrete.Colimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Discrete.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete--7a901ce3963e03f20a4988fa.md) | 51 | `declaration-track:7a901ce3963e03f20a4988fae5202dd7d03aa25d3754a5818cc78127f7882a08` |
| 2 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--5312aa0121a81d4e2b6d687c.md) | 59 | `result-track:5312aa0121a81d4e2b6d687cb292c9b0925d369c27af134c080fb02d06dbe7dd` |
| 3 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/locallyconstant-adjunction--f1c291f759319bdf17b1699a.md) | 77 | `declaration-track:f1c291f759319bdf17b1699aaa5379d696614b6938ae78370f5e8991c4260a6c` |
| 4 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-tfae--f44ea3122f9e8764c8407a49.md) | 85 | `result-track:f44ea3122f9e8764c8407a494715a44d7453fc745b4f6297a2addf92caec332c` |
| 5 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-iff-isdiscrete-forget--a5b23afd14f62df6c7eca3c7.md) | 124 | `result-track:a5b23afd14f62df6c7eca3c7665bb1e02ebfc2223736e2f28d9b767e3ec6d08b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/instance--c27f4dea0a382928672751d8.md) | 129 | `declaration-track:c27f4dea0a382928672751d8eef9f0ad0c6854b0bd17992c6eec90911296436b` |
| 7 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-tfae--de1d869892f695177fbc04d0.md) | 133 | `result-track:de1d869892f695177fbc04d044571c4f73cf1104a43153919f72d10ccbeaa44e` |
| 8 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete--c24f72ebed5388f7ec3d4502.md) | 182 | `declaration-track:c24f72ebed5388f7ec3d4502e181ba0f2d0d96cbd2e394b5b3e541bd2b5dfad6` |
| 9 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--8487e1cca8f1502794af8e64.md) | 188 | `result-track:8487e1cca8f1502794af8e64cb74c8ad4c645349c940969f234995856d017265` |
| 10 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/locallyconstant-adjunction--4bdee5d80a8e96f1a6c55752.md) | 204 | `declaration-track:4bdee5d80a8e96f1a6c557523d5fb9d343fc90a063d4ac89c322f80436af1560` |
| 11 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-tfae--7914037ab7a3b70410b16612.md) | 210 | `result-track:7914037ab7a3b70410b166121e8903a3c43a818ff8a039ce3ddf52ae2365202c` |
| 12 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-iff-isdiscrete-forget--d50d4e4f602a9618cf803399.md) | 242 | `result-track:d50d4e4f602a9618cf803399e7992ad0e8171c9ee0228006ea04d8364441c6fc` |
| 13 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/declarations/isdiscrete-tfae--40ad6e7d23712112f4746b14.md) | 248 | `result-track:40ad6e7d23712112f4746b14669cab3b6dc96f0239cc37cbef37af438afcd5cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
