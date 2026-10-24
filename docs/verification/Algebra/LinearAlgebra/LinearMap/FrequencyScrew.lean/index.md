# Verification target: GRWTSK.LinearAlgebra.LinearMap.FrequencyScrew

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5428dbef453dda4ee2356190c606078e80d626d2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/LinearMap/FrequencyScrew.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5428dbef453dda4ee2356190c606078e80d626d2`.

Source path: `GRWTSK/LinearAlgebra/LinearMap/FrequencyScrew.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/LinearMap/FrequencyScrew.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [operator](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/declarations/operator--f84ead5aa9d3e3e633c0778b.md) | 31 | `declaration-track:f84ead5aa9d3e3e633c0778b089c29622792017ff4547ba36b37e2d75a1e147b` |
| 2 | `theorem` | [operator_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/declarations/operator-apply--54e43cf125ab28080c0b6b37.md) | 42 | `result-track:54e43cf125ab28080c0b6b3773876a387e9b33e7eb09761c30f6b34c99a7f30e` |
| 3 | `structure` | [OrderedOperator](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/declarations/orderedoperator--6538547856c5b1fa22a926b6.md) | 53 | `declaration-track:6538547856c5b1fa22a926b6a1b63301135e0299784064f1a4eec8c8dcb50bb9` |
| 4 | `def` | [OrderedOperator.toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/declarations/orderedoperator-tolinearmap--58de9249d72319238da1dfa4.md) | 64 | `declaration-track:58de9249d72319238da1dfa41fce17b3cd34962ecd90a46858e040a448f48e70` |
| 5 | `theorem` | [OrderedOperator.path_frequency_lt](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/declarations/orderedoperator-path-frequency-lt--5b01e71b34243fd9466e5e6a.md) | 72 | `result-track:5b01e71b34243fd9466e5e6ab3028e82c7ce8fe7fdcb8e9705f286e64d331c90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
