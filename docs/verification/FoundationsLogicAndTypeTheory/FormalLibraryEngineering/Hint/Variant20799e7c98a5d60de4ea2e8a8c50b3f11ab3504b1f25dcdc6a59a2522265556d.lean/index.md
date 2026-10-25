# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hint.Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e419f70a854df01ab085b63d53cc35d11dd367",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e419f70a854df01ab085b63d53cc35d11dd367`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.TryThis` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Control.Nondet.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/initialize--aaaa37438a1e721e0a5f5151.md) | 29 | `declaration-track:aaaa37438a1e721e0a5f5151e9a84606420393ff19462270f024d20a569ad5e6` |
| 2 | `def` | [addHint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/addhint--19bf29b1c627c8ca0463d73e.md) | 36 | `declaration-track:19bf29b1c627c8ca0463d73ed5ee8eb8633a684436aba8385f91537dbf091aa0` |
| 3 | `def` | [getHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/gethints--45c3a548e15e4c191c13169b.md) | 40 | `declaration-track:45c3a548e15e4c191c13169b702b6a070a99d3b573ebcd95215375dd49dc1f0a` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/elab--040900bc5988349709107300.md) | 46 | `declaration-track:040900bc598834970910730045bf05e6b1d08a2c8021bad565fcb2fd66706b4f` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/initialize--6c71915df8c4fb23d0db56e5.md) | 51 | `declaration-track:6c71915df8c4fb23d0db56e510278e5f2dffa0896ff6212d8835e9d7f46fe976` |
| 6 | `def` | [suggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/suggestion--8bd318a76da5d514519ffe5b.md) | 61 | `declaration-track:8bd318a76da5d514519ffe5b1591ab440cbaf82e483d41562ec123de4b7ed6f0` |
| 7 | `def` | [withMessageLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/withmessagelog--e11eac91c219362f6735e047.md) | 80 | `declaration-track:e11eac91c219362f6735e0473cfa6539b06a8e50736dac9985a26b2e2790a874` |
| 8 | `def` | [withoutInfoTrees](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/withoutinfotrees--e2fb1b793310848271a69b21.md) | 89 | `declaration-track:e2fb1b793310848271a69b2185b55a2803d96769e941a363386805c22066fff2` |
| 9 | `def` | [hint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/hint--75fd1aa547a7fca22ce8165f.md) | 103 | `declaration-track:75fd1aa547a7fca22ce8165f7a725b683e5c0726d99107790bcaddb0d1c1ad2e` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/syntax--83fd60037f4ebf61d009376d.md) | 126 | `declaration-track:83fd60037f4ebf61d009376d539f13f1586eb9c9381ef368b5c4283879ea41f4` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/declarations/elab-rules--d5a221d379df781777805d47.md) | 129 | `declaration-track:d5a221d379df781777805d47db0de75e4dbd7dcb8fbd603432ff9c2be7a4fe73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
