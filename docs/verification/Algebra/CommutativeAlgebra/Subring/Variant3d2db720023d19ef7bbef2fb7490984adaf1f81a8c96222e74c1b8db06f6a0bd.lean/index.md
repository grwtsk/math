# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Subring.Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679870ba5f68744232b8423290ed60504a2f954b",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679870ba5f68744232b8423290ed60504a2f954b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Coeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_map_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean/declarations/mem-map-ranges--6b8f51e9a8c0e80a2a6cf657.md) | 37 | `result-track:6b8f51e9a8c0e80a2a6cf6570dee39a44c1475534f80a6ce8040862e80c340f0` |
| 2 | `theorem` | [mem_map_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant3d2db720023d19ef7bbef2fb7490984adaf1f81a8c96222e74c1b8db06f6a0bd.lean/declarations/mem-map-range--d952a4e0b51a020f40d2c0a2.md) | 50 | `result-track:d952a4e0b51a020f40d2c0a2d8f2042fcfca9d6a5069327296381cae69536b1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
