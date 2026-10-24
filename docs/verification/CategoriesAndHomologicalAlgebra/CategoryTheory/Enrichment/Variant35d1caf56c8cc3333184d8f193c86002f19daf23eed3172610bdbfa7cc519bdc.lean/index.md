# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Enrichment.Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e2eee213a45902a09163881f3c26b50723f3467",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e2eee213a45902a09163881f3c26b50723f3467`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [enrichedCategorySelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedcategoryself--08008fd5e04d483705ed0829.md) | 43 | `declaration-track:08008fd5e04d483705ed08295cbfc45985292d8efe26106056eddb13534333cf` |
| 2 | `lemma` | [enrichedCategorySelf_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedcategoryself-hom--8b342b85e103ec9735b19c44.md) | 53 | `result-track:8b342b85e103ec9735b19c44e873f1c4e0eed35839cb2bedc9a9241be204d082` |
| 3 | `lemma` | [enrichedCategorySelf_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedcategoryself-id--d435c46b0c929582fdf22679.md) | 56 | `result-track:d435c46b0c929582fdf22679db185ed0597ac8ec1d707c8fc23bb24f8e0d6290` |
| 4 | `lemma` | [enrichedCategorySelf_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedcategoryself-comp--016c72e1b7fe5068d3db1586.md) | 59 | `result-track:016c72e1b7fe5068d3db1586322c117f0fcfd452f9ae862d211495c995f60c8a` |
| 5 | `instance` | [enrichedOrdinaryCategorySelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedordinarycategoryself--c06bc05d34017581da44f7ba.md) | 65 | `declaration-track:c06bc05d34017581da44f7ba04a5bbf387e264b93ce1be24dabbe896bf7ae4d5` |
| 6 | `lemma` | [enrichedOrdinaryCategorySelf_eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedordinarycategoryself-ehomwhiskerleft--7be42bcc2389c659179acc5e.md) | 70 | `result-track:7be42bcc2389c659179acc5ec73f50c1ae8aba8fc05e5e5daf265d71b16d1510` |
| 7 | `lemma` | [enrichedOrdinaryCategorySelf_eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedordinarycategoryself-ehomwhiskerright--4f022d4786ad8b77393528e9.md) | 75 | `result-track:4f022d4786ad8b77393528e9e64739d1533e54126dc280bce07ddcb4ba172f8a` |
| 8 | `lemma` | [enrichedOrdinaryCategorySelf_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedordinarycategoryself-homequiv--1cf270092c521097e7211842.md) | 80 | `result-track:1cf270092c521097e72118424d6324ab8f3e8ed61beff64d1e8b688342edd8d8` |
| 9 | `lemma` | [enrichedOrdinaryCategorySelf_homEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enrichment/Variant35d1caf56c8cc3333184d8f193c86002f19daf23eed3172610bdbfa7cc519bdc.lean/declarations/enrichedordinarycategoryself-homequiv-symm--71f1cfab7a08d850e721b9f9.md) | 83 | `result-track:71f1cfab7a08d850e721b9f932bf18543d6e277dd7ac019a45d0dc57b417ee2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
