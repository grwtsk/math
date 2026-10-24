# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "867b380d8c6763542977f462456aec5b3b49d266",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `867b380d8c6763542977f462456aec5b3b49d266`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Preimage` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.map_atTop_finset_prod_le_of_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean/declarations/filter-map-attop-finset-prod-le-of-prod-eq--9611d433e0351e92a5a10dc6.md) | 29 | `result-track:9611d433e0351e92a5a10dc636a2c92e96eb38df8f39b8fda652c702259fd1ce` |
| 2 | `theorem` | [Function.Injective.map_atTop_finset_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantd7eefd99842789e1b612d5abc225889d6fadda1ab91e6e9821bd497f848e15fd.lean/declarations/function-injective-map-attop-finset-prod-eq--f5eae910962dbdf06232a352.md) | 47 | `result-track:f5eae910962dbdf06232a35295862135d08be983eeb252bdb52f38035b06c4fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
