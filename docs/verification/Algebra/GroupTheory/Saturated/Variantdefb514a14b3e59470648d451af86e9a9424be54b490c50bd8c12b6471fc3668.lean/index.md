# Verification target: GRWTSK.Algebra.GroupTheory.Saturated.Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "942e024372e880b125bcb210f1d94aba176caebf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `942e024372e880b125bcb210f1d94aba176caebf`.

Source path: `GRWTSK/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Saturated](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/declarations/saturated--655e0a3fd4e5cb5d75039634.md) | 27 | `declaration-track:655e0a3fd4e5cb5d75039634c9a40100a8802f41851a1a079f0904689e5e09b5` |
| 2 | `theorem` | [saturated_iff_npow](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/declarations/saturated-iff-npow--c7beb1b7e3d6dce64da104ed.md) | 31 | `result-track:c7beb1b7e3d6dce64da104ed4509da55fcf33e2e68e6a71e6fbc22e527dd3ad8` |
| 3 | `theorem` | [saturated_iff_zpow](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/declarations/saturated-iff-zpow--1c76ca250c3bbf8d3c615695.md) | 36 | `result-track:1c76ca250c3bbf8d3c61569514e9b534757f023520f22721909408062ceb52b1` |
| 4 | `theorem` | [ker_saturated](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variantdefb514a14b3e59470648d451af86e9a9424be54b490c50bd8c12b6471fc3668.lean/declarations/ker-saturated--a0add3cd9f8d733a310c1b56.md) | 58 | `result-track:a0add3cd9f8d733a310c1b56e60f74b222eea5fc068a5af313ea59d7d81ea19e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
