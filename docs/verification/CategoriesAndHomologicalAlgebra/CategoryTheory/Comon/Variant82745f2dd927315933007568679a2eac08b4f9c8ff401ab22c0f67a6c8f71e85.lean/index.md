# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comon.Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08beaa72aba8eecf5a2ca7c7faab8933fe94edcc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08beaa72aba8eecf5a2ca7c7faab8933fe94edcc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartesianComon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/declarations/cartesiancomon--3a3815b94f4ae9f0ee184dc9.md) | 30 | `declaration-track:3a3815b94f4ae9f0ee184dc96b1d6b8e56b21d3506df1cb4385a7fa275b09c87` |
| 2 | `theorem` | [counit_eq_toUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/declarations/counit-eq-tounit--f54cf0adfbdb6f3256c7b0f7.md) | 40 | `result-track:f54cf0adfbdb6f3256c7b0f7001531998a7af679e9e0274cee3a8237f86ec22d` |
| 3 | `theorem` | [comul_eq_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/declarations/comul-eq-lift--935990a3f8999e0513687077.md) | 44 | `result-track:935990a3f8999e0513687077295da44333dba8ace3675ec09a15e1efda855838` |
| 4 | `def` | [iso_cartesianComon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/declarations/iso-cartesiancomon--8238f11a715ebc9847db25d8.md) | 55 | `declaration-track:8238f11a715ebc9847db25d839795f078459cb86c6ab8cc4695d32ba46a2f50e` |
| 5 | `def` | [comonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85.lean/declarations/comonequiv--d68ccb78dca6fbac239a4576.md) | 63 | `declaration-track:d68ccb78dca6fbac239a4576e47fc83058c34caf8192aaefb889bc8099793023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
