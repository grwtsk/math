# Verification target: GRWTSK.Algebra.GroupTheory.Archimedean.Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a11edc39e181fd45068909d137a20cdb15eba9bc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a11edc39e181fd45068909d137a20cdb15eba9bc`.

Source path: `GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subgroup.cyclic_of_min](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/declarations/subgroup-cyclic-of-min--1a841b160e7a01cbe02f83d7.md) | 52 | `result-track:1a841b160e7a01cbe02f83d729c570470f3aad5ca32dfa44d9ed9707400a2e51` |
| 2 | `theorem` | [Subgroup.exists_isLeast_one_lt](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/declarations/subgroup-exists-isleast-one-lt--6d589cd13a4b8fa0ee03048d.md) | 74 | `result-track:6d589cd13a4b8fa0ee03048dc70abb9677f6865d28c995bb324c1408147710c0` |
| 3 | `theorem` | [Subgroup.cyclic_of_isolated_one](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/declarations/subgroup-cyclic-of-isolated-one--25b5deae0a1c5c5fa462da97.md) | 108 | `result-track:25b5deae0a1c5c5fa462da97522256fa259ff07c681e803fe578868ebd5b97c5` |
| 4 | `theorem` | [Int.subgroup_cyclic](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/declarations/int-subgroup-cyclic--ecca1c38433cfdfe08e7e7d5.md) | 115 | `result-track:ecca1c38433cfdfe08e7e7d508b581aa708850c3a93e79de4756890575e20972` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
