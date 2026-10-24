# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e6f741b4ae50b8fa82eeee38a8617c3ca49074",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e6f741b4ae50b8fa82eeee38a8617c3ca49074`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/mulsemiringaction--0f30831dd446a94a8dd44a58.md) | 50 | `declaration-track:0f30831dd446a94a8dd44a58c7f4684496f6c940518101c8997bf3638fcacb4f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/instance--143e2e62babb51dbc0c4c25a.md) | 63 | `declaration-track:143e2e62babb51dbc0c4c25acf012abc3603cc855c2395a9966be020a9d937f2` |
| 3 | `def` | [MulSemiringAction.toRingHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/mulsemiringaction-toringhom--08b1fd369adfdedde9e24a66.md) | 70 | `declaration-track:08b1fd369adfdedde9e24a660ac182d16b3e2a7bc3b38ca27c05918fb4dff0ed` |
| 4 | `theorem` | [toRingHom_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/toringhom-injective--f4d0d5039e5a22b135336a03.md) | 73 | `result-track:f4d0d5039e5a22b135336a039f7698d22bba25a36ffe22d6b72fe58798556c73` |
| 5 | `instance` | [RingHom.applyMulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/ringhom-applymulsemiringaction--f6c590175b4a693f45702a3f.md) | 80 | `declaration-track:f6c590175b4a693f45702a3f625420c75a986b9e19c5771061334135a46a9b48` |
| 6 | `theorem` | [RingHom.smul_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/ringhom-smul-def--c735710c15d84970c0737223.md) | 90 | `result-track:c735710c15d84970c073722310cd7493438f319800a9c5949b7f31d2f9bd269d` |
| 7 | `instance` | [RingHom.applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/ringhom-applyfaithfulsmul--353ecd5ed6a6fbef9556d164.md) | 94 | `declaration-track:353ecd5ed6a6fbef9556d164caeb081181a810d1811b40dcefea910b841c4d1a` |
| 8 | `abbrev` | [MulSemiringAction.compHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Varianta46a75451f122a94722717e07c6609e1336c5b9ae9f30f1c05c2b0f2c2d3403e.lean/declarations/mulsemiringaction-comphom--372b93312662d1380bdc549d.md) | 103 | `declaration-track:372b93312662d1380bdc549d9cc0c17eb751f2ae952dde05b6ece6e880538a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
