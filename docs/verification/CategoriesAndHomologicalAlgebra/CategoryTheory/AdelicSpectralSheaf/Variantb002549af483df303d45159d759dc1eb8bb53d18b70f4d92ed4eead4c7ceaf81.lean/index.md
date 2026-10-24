# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdelicSpectralSheaf.Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51663b4aaa55fd667537fcf4c79df7d018953474",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51663b4aaa55fd667537fcf4c79df7d018953474`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.AdelicInfinityTopos.AdelicBase` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.ArchimedeanFiber` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.NonArchimedeanFiber` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.SheafOfSpectra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdelicSpectralSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/declarations/adelicspectralsheaf--c8238678ec9c03dbe6d6e917.md) | 29 | `declaration-track:c8238678ec9c03dbe6d6e917d49a1931e57e849fb0ffdbb7b2b959df10e9a6ce` |
| 2 | `theorem` | [adelic_sheaf_has_hyperdescent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/declarations/adelic-sheaf-has-hyperdescent--05088aa6086b745808f63a2f.md) | 43 | `result-track:05088aa6086b745808f63a2fa6c7d59a59271fa26b2f951c13ebeaad007a92af` |
| 3 | `theorem` | [adelic_sheaf_has_local_factor_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/declarations/adelic-sheaf-has-local-factor-compatibility--ea63a1b2f1c9473af7703a25.md) | 48 | `result-track:ea63a1b2f1c9473af7703a2572a5ece642657dd251888f71284395f10b9d618d` |
| 4 | `theorem` | [adelic_sheaf_has_product_formula_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdelicSpectralSheaf/Variantb002549af483df303d45159d759dc1eb8bb53d18b70f4d92ed4eead4c7ceaf81.lean/declarations/adelic-sheaf-has-product-formula-compatibility--f6f68270952b7125582e2fab.md) | 53 | `result-track:f6f68270952b7125582e2fab3597eb577e79921acb2a891038058ccd0c9ef457` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
