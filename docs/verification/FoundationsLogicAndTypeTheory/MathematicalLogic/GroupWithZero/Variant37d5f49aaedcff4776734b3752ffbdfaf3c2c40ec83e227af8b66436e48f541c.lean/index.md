# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GroupWithZero.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "929c02db5fa6d5d122d94d16fe50af8ec64dfb8a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `929c02db5fa6d5d122d94d16fe50af8ec64dfb8a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/declarations/mulleft--78365eca7b2f3626f6a0ae9c.md) | 27 | `declaration-track:78365eca7b2f3626f6a0ae9c6da8a11f9b23e3f46ba19950bce52c3684f209f3` |
| 2 | `theorem` | [_root_.mulLeft_bijective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/declarations/root-mulleft-bijective--b513e9018a80c5e7becde0d8.md) | 33 | `result-track:b513e9018a80c5e7becde0d85d6bfc26cda1a7236e7957f0c033b3434658fe8f` |
| 3 | `def` | [mulRight₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/declarations/mulright--b62e10e1c6d83f0acbc7161e.md) | 40 | `declaration-track:b62e10e1c6d83f0acbc7161e9f015343ff30154f0db6154c5f28fc26ef14dbfa` |
| 4 | `theorem` | [_root_.mulRight_bijective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean/declarations/root-mulright-bijective--e97218eed0c7e65eb8439afc.md) | 46 | `result-track:e97218eed0c7e65eb8439afca7b25c0f800a46727b908933efec2c16e2b86a34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
