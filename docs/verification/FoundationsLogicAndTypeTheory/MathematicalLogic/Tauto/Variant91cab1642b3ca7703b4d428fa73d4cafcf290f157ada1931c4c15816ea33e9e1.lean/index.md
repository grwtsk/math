# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tauto.Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39dc5a266abbe4032269d23477af1eff0c13bf7d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39dc5a266abbe4032269d23477af1eff0c13bf7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CasesM` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Elab.Tactic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Qq` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/initialize--0fc4b1c0a5c1ba16b7357b8a.md) | 21 | `declaration-track:0fc4b1c0a5c1ba16b7357b8a5d9e52739949296cd336e730dab95160f808f05d` |
| 2 | `def` | [distribNotOnceAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/distribnotonceat--fad135cfec0eb6295285576d.md) | 24 | `declaration-track:fad135cfec0eb6295285576d125bd5853d5d9d9df91785ed40f9a6b1d15e1dd1` |
| 3 | `structure` | [DistribNotState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/distribnotstate--df14d559aee0aec0eccc1c4b.md) | 88 | `declaration-track:df14d559aee0aec0eccc1c4b569ae015b186d21a36cb35c2a92679a6b2569d50` |
| 4 | `def` | [distribNotAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/distribnotat--d4309b25f60ab622eb946961.md) | 100 | `declaration-track:d4309b25f60ab622eb9469616089b8eabecdfc8789f631390b0cde47ae66b00d` |
| 5 | `def` | [distribNotAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/distribnotaux--b179711607ae4f68b435fc4a.md) | 114 | `declaration-track:b179711607ae4f68b435fc4a49e86d9c7779666ae4fe12af88ed8bf174e620af` |
| 6 | `def` | [distribNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/distribnot--5f685136ba6472e2f2bee2f1.md) | 125 | `declaration-track:5f685136ba6472e2f2bee2f14082bdb8d805e764732de3292ddb1c2721fab14b` |
| 7 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/config--e685ad18f12c21ac8fbc20be.md) | 133 | `declaration-track:e685ad18f12c21ac8fbc20bef20f971ced2722205fb18066668ea58515a8b866` |
| 8 | `def` | [coreConstructorMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/coreconstructormatcher--b843822e9525bc057a23616b.md) | 140 | `declaration-track:b843822e9525bc057a23616b746e577bee92eb1d34dcf4a0d876098f9e41f092` |
| 9 | `def` | [casesMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/casesmatcher--77da6a837b98b4af795529c8.md) | 149 | `declaration-track:77da6a837b98b4af795529c8e97ca605c0d3ae26024e887fd5835838590fa04b` |
| 10 | `def` | [tautoCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/tautocore--25d03a6cd82dc2dce7367334.md) | 169 | `declaration-track:25d03a6cd82dc2dce7367334efeb5fae3fdc24500fe6e199904fc0c9aba35b6a` |
| 11 | `def` | [finishingConstructorMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/finishingconstructormatcher--474291ab455f5e01bdda1797.md) | 190 | `declaration-track:474291ab455f5e01bdda17977a14e43609fa4fcad8b73405ef3f742b25d73d08` |
| 12 | `def` | [tautology](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/tautology--43311707d827134c9473eeec.md) | 199 | `declaration-track:43311707d827134c9473eeec18155250c49acf6f3bf858ee34565476bdd967c1` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/syntax--1446f53aa5065a3790ab0b56.md) | 217 | `declaration-track:1446f53aa5065a3790ab0b56e6004212e8e254c5e09d23ad41cc26276d3bff55` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/declarations/elab-rules--885fc34163c1ed478bb3bdcc.md) | 219 | `declaration-track:885fc34163c1ed478bb3bdcc789022f7a6e00203adce4c6bc4c71714f4850a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
