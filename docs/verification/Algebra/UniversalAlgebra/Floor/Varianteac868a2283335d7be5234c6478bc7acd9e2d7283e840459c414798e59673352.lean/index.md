# Verification target: GRWTSK.Algebra.UniversalAlgebra.Floor.Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a5947232588748353510c440085dc232c7fe322",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a5947232588748353510c440085dc232c7fe322`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [floorSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean/declarations/floorsemiring--9765673790ab8331141a6256.md) | 36 | `declaration-track:9765673790ab8331141a62560a366cdeab42d406447e408c25585ed9e7419fc2` |
| 2 | `theorem` | [nat_floor_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean/declarations/nat-floor-coe--e8e0f13cbf3bb648b1b2ad26.md) | 45 | `result-track:e8e0f13cbf3bb648b1b2ad26be8096a257633b989de4443e73b202aa4bbf53c9` |
| 3 | `theorem` | [nat_ceil_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352.lean/declarations/nat-ceil-coe--befbba05b9c0817f1e259abd.md) | 51 | `result-track:befbba05b9c0817f1e259abd5f8c5fabcc3a9568141d3ac1aa67fbb572d76fca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
