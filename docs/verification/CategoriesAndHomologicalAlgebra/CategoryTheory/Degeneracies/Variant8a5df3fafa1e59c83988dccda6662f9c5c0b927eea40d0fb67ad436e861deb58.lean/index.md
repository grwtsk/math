# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Degeneracies.Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ed3017c4598005e96f535efa92b4eea7ddb04b3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ed3017c4598005e96f535efa92b4eea7ddb04b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean.json)

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
| 1 | `theorem` | [HigherFacesVanish.comp_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/declarations/higherfacesvanish-comp--110641ee47780df1d8562614.md) | 40 | `result-track:110641ee47780df1d856261466d1fa95eee94cf1e8cd76baa1a76cadb48bc4d4` |
| 2 | `theorem` | [σ_comp_P_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/declarations/comp-p-eq-zero--621ca4e14d887dbff1019a40.md) | 57 | `result-track:621ca4e14d887dbff1019a40cd33785873bf03b49ca533020af696374850f75b` |
| 3 | `theorem` | [σ_comp_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/declarations/comp-pinfty--068878d62de639fb7b4e7372.md) | 120 | `result-track:068878d62de639fb7b4e73722839e15de67d99d95b50d95be52fd9f1598a07b8` |
| 4 | `theorem` | [degeneracy_comp_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/declarations/degeneracy-comp-pinfty--f9656dc37f58db4522a19cb4.md) | 128 | `result-track:f9656dc37f58db4522a19cb40dcaff52788a7bb16cfec6c45c945dba2ff91feb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
