# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21f09a2d4e7cd89ca76b178e1c5ac62bcebc4226",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21f09a2d4e7cd89ca76b178e1c5ac62bcebc4226`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KleisliCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat--03eee9f59b670434d542e9e3.md) | 34 | `declaration-track:03eee9f59b670434d542e9e315451034074baf56821cda91962bb8c41bbc20ef` |
| 2 | `def` | [KleisliCat.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat-mk--3dd2ddd35c75fd0eed87722a.md) | 39 | `declaration-track:3dd2ddd35c75fd0eed87722aa829a5a9602d9d6bbe85afba686b484a00ca7751` |
| 3 | `instance` | [KleisliCat.categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat-categorystruct--4688489a09a2018f3851bae2.md) | 43 | `declaration-track:4688489a09a2018f3851bae2eca1b68e2ea4e865fb9525085d1f1a2689dbc3f3` |
| 4 | `instance` | [KleisliCat.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat-category--84bc28bfd4df19931e31475e.md) | 50 | `declaration-track:84bc28bfd4df19931e31475e55ba6d0bdc3537f5fd24775bd29c49a22e156135` |
| 5 | `theorem` | [KleisliCat.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat-id-def--9b6cb6b68887db9b0cc9723c.md) | 59 | `result-track:9b6cb6b68887db9b0cc9723c3c29852f5af79fbd159aa5c35213ba47ade3aad7` |
| 6 | `theorem` | [KleisliCat.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/kleislicat-comp-def--da7efb844bd913a980c100d0.md) | 63 | `result-track:da7efb844bd913a980c100d06138b028fe5563e3641a11cf79000067c21f4ce3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/instance--ec37fa41db9cb5117a650c42.md) | 68 | `declaration-track:ec37fa41db9cb5117a650c42e57f0dbc4cc0da084ece8682d96c5708df9a435c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantd8dfb55381bac70ef2c856a5436fa1e8980e2aeb687e92a1d48658ea92c4b92f.lean/declarations/instance--3b057a2722b69cbe5f193c2d.md) | 71 | `declaration-track:3b057a2722b69cbe5f193c2d287d6ac18936633bb502de5d3e6ffc4e4fe23766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
