# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875ff17ff86d027d9527f764c6472881ec022c31",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875ff17ff86d027d9527f764c6472881ec022c31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq.MetaM` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subsingleton_or_nontrivial_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/declarations/subsingleton-or-nontrivial-elim--0db823dbf5e15e4fff565dc4.md) | 25 | `result-track:0db823dbf5e15e4fff565dc4e531bbb6173abcafeecf526c05e5319396a49bce` |
| 2 | `def` | [nontrivialityByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/declarations/nontrivialitybyelim--bbfc9b89acf648718c19904a.md) | 35 | `declaration-track:bbfc9b89acf648718c19904a6301f2f2f8c60f9a674b8182f35a0a817faffe87` |
| 3 | `def` | [nontrivialityByAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/declarations/nontrivialitybyassumption--4d491e27608513d4d24aa09f.md) | 58 | `declaration-track:4d491e27608513d4d24aa09f5ffe6bcb923d9d99300af00884acf1042ce52a41` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/declarations/syntax--a7e4f1040992dc454a753d1c.md) | 105 | `declaration-track:a7e4f1040992dc454a753d1c3a275bf35d2ee1b43b37e8b9e7cf1c9f00625d43` |
| 5 | `def` | [elabNontriviality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464.lean/declarations/elabnontriviality--2d7313771e9f795a54936bb1.md) | 109 | `declaration-track:2d7313771e9f795a54936bb1641e7cec8fc3de9ada0258449a9ea0d9d83b81c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
