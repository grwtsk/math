# Verification target: GRWTSK.Algebra.GroupTheory.IndexNormal.Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c8115567bb1a69b2a51a6b3d666939fa6611dbd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c8115567bb1a69b2a51a6b3d666939fa6611dbd`.

Source path: `GRWTSK/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Factorial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normal_of_index_eq_one](../../../../../mathematics/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean/declarations/normal-of-index-eq-one--b009342ed15deda4118b9a7f.md) | 37 | `result-track:b009342ed15deda4118b9a7f5134dd488cd7e78efbdec55dad030ffced8e5619` |
| 2 | `theorem` | [normal_of_index_eq_two](../../../../../mathematics/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean/declarations/normal-of-index-eq-two--385f73f9a9c0cad91d09c2ab.md) | 43 | `result-track:385f73f9a9c0cad91d09c2ab767d6af23ceeb7dc553b79f381336833da279659` |
| 3 | `theorem` | [normal_of_index_eq_minFac_card](../../../../../mathematics/Algebra/GroupTheory/IndexNormal/Variant9b32080c497a5be3eade108108d888cfd682a6979a49452836c651fa9dc80b4b.lean/declarations/normal-of-index-eq-minfac-card--7c116e84c8040f3a6f875985.md) | 49 | `result-track:7c116e84c8040f3a6f875985d3975bf5e4555b5732c03e62f5f986c6b5b3aec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
