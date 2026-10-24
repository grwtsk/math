# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1dd19b21940093a9fc7286a96332f5510e7b639",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1dd19b21940093a9fc7286a96332f5510e7b639`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean/declarations/finite-smul-set--d8fbd05ac4d72a1fb7c27a5b.md) | 18 | `result-track:d8fbd05ac4d72a1fb7c27a5bb1a3f063c6e09c847b1fda4d89727abe57488147` |
| 2 | `lemma` | [infinite_smul_set](../../../../../mathematics/Algebra/GroupTheory/Finite/Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0.lean/declarations/infinite-smul-set--54c409ec4413792565f3fe7c.md) | 21 | `result-track:54c409ec4413792565f3fe7c2b16ebb9492f393bcc07394f8516c79e787779fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
