# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Degeneracies.Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87cb7a7c7c719cca477c208e1b6cfc719f13d1b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87cb7a7c7c719cca477c208e1b6cfc719f13d1b4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.Decomposition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HigherFacesVanish.comp_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/declarations/higherfacesvanish-comp--b047fb519692663147fad3e0.md) | 38 | `result-track:b047fb519692663147fad3e03ae1c42871cfc0b00ddb1b9bc7a999df58d1cc9a` |
| 2 | `theorem` | [σ_comp_P_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/declarations/comp-p-eq-zero--79edb2abf1e36c9d5271a316.md) | 54 | `result-track:79edb2abf1e36c9d5271a3167e9857f2c71b23b3d3f69a32de67827734ac1e72` |
| 3 | `theorem` | [σ_comp_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/declarations/comp-pinfty--c8c1293d9243a0f191115ea9.md) | 120 | `result-track:c8c1293d9243a0f191115ea9053d7bf6b0ce2d23231461db08408dbc14cd7dda` |
| 4 | `theorem` | [degeneracy_comp_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variantc670bf2b9c62ae6000419aea318d14cdf82e692f5a7d99965342112a9875eae6.lean/declarations/degeneracy-comp-pinfty--7e60a5432bda61b00ba486c0.md) | 126 | `result-track:7e60a5432bda61b00ba486c06dc08c777d1a6624b8651e3aaa7c2b3dba393a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
