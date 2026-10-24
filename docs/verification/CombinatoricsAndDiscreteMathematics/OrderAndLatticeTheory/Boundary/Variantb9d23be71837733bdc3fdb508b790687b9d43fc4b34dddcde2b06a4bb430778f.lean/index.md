# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7f5f832b383095fc3af710e8937a3f5755673b1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7f5f832b383095fc3af710e8937a3f5755673b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FirstInfeasibleOnBranch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/declarations/firstinfeasibleonbranch--1fc890c748f21d1b9a519166.md) | 13 | `declaration-track:1fc890c748f21d1b9a519166254592d36f004a3eaa3a54440905484afed307ad` |
| 2 | `theorem` | [firstInfeasibleOnBranch_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/declarations/firstinfeasibleonbranch-unique--6c9f5c545cb6f18cd2ef6b1d.md) | 21 | `result-track:6c9f5c545cb6f18cd2ef6b1dda70257d1aa089f00b51dc683fdb3de511e871b7` |
| 3 | `theorem` | [failed_branch_has_unique_first_infeasible_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean/declarations/failed-branch-has-unique-first-infeasible-prefix--4b707edd1a4c7ba2d16ace4f.md) | 42 | `result-track:4b707edd1a4c7ba2d16ace4fca299a82e7c8ab1801b51acfdd32a79ecdd968cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
