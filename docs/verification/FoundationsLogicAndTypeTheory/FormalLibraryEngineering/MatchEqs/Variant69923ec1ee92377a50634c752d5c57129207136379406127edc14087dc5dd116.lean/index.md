# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchEqs.Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "767b8cc72abcb3028eed78ea04d7fcdb23eb0766",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `767b8cc72abcb3028eed78ea04d7fcdb23eb0766`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Refl` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.SimpH` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.AltTelescopes` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.NamedPatterns` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.SplitSparseCasesOn` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAppDiscrEqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/mkappdiscreqs--707c86eda78347e5722c47e6.md) | 29 | `declaration-track:707c86eda78347e5722c47e60e6f523943e4b5267173576e29ea1050b2d7594d` |
| 2 | `def` | [substSomeVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/substsomevar--22cfd4a759d63c428ff78c20.md) | 44 | `declaration-track:22cfd4a759d63c428ff78c20578a485e345ee1c61c28cd8ac871123e0a6925de` |
| 3 | `def` | [unfoldElimOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/unfoldelimoffset--b4b5e4ebfbeca4615790bcf2.md) | 54 | `declaration-track:b4b5e4ebfbeca4615790bcf23cb737543c9444480c07bd42cfe3bac6f974d2dc` |
| 4 | `def` | [proveCondEqThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/provecondeqthm--717b567d6fecea4f9455f340.md) | 66 | `declaration-track:717b567d6fecea4f9455f3402f7f251b13fc073af78054e3cfd9b71d62bfce64` |
| 5 | `def` | [withNewAlts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/withnewalts--bd4c5b368cb893a9be804476.md) | 121 | `declaration-track:bd4c5b368cb893a9be8044769e3fbd155a8a86eaab95260f03561e7a35c9ad54` |
| 6 | `def` | [getEquationsForImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/getequationsforimpl--744e0a58b6c34ff394758acf.md) | 143 | `declaration-track:744e0a58b6c34ff394758acf208be75a6c2327eb60f8cfec4d32905acb0db670` |
| 7 | `def` | [genMatchCongrEqnsImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/genmatchcongreqnsimpl--9bdcce8f7fbc9b2ab5ba40f9.md) | 263 | `declaration-track:9bdcce8f7fbc9b2ab5ba40f950c8f0b4fb60b25b9ae7cbeceede80e413a6c47c` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/builtin-initialize--647ff0653b88664242ed74fa.md) | 332 | `declaration-track:647ff0653b88664242ed74fa469825e82d29c5edd5b48d3b23e6147d2219a8a6` |
| 9 | `def` | [isMatchEqName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/ismatcheqname--b71897dbea5a21d5f7ee2813.md) | 334 | `declaration-track:b71897dbea5a21d5f7ee28130659097533da581aedc7aa2ea612d51dde574f5e` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/builtin-initialize--1da1803a0e2c5972b9e4e029.md) | 341 | `declaration-track:1da1803a0e2c5972b9e4e029e171b79264a78a687b3df79c5732138e65cb5235` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/builtin-initialize--63c10e97ae40297094e8bd21.md) | 343 | `declaration-track:63c10e97ae40297094e8bd21fcf0e2c93f07fc2f8bc65aeffeac60f7fbbdf952` |
| 12 | `def` | [isMatchCongrEqName?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/ismatchcongreqname--ac9bc3c6386cecaacc14ad37.md) | 349 | `declaration-track:ac9bc3c6386cecaacc14ad370164a101947b0c127c1d1e1faac3c41188f2ec94` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/builtin-initialize--41737c1ee49fda3752f966ca.md) | 355 | `declaration-track:41737c1ee49fda3752f966caccbadfd98ea8af4923c3f96493a4a8462f26070a` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variant69923ec1ee92377a50634c752d5c57129207136379406127edc14087dc5dd116.lean/declarations/builtin-initialize--16f47285fe9d52e0ccae26bd.md) | 357 | `declaration-track:16f47285fe9d52e0ccae26bd7af1e2b73c05f35a23c56942aa0a4ae25c134992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
