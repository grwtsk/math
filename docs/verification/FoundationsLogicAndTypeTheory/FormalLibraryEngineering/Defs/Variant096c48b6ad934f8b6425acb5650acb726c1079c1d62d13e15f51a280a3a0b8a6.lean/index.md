# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94fe6812e329fa584bdf14a40847aff190a2f7ad",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94fe6812e329fa584bdf14a40847aff190a2f7ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/upperbounds--67210b16eec711f1e5864d81.md) | 28 | `declaration-track:67210b16eec711f1e5864d816773d914414a01465d529dcc726957dff3ae1daa` |
| 2 | `def` | [lowerBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/lowerbounds--a000c4cb2142c590110caba5.md) | 32 | `declaration-track:a000c4cb2142c590110caba5725090d2f68d89f76c9242a0ecdbad1461a5f590` |
| 3 | `def` | [BddAbove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/bddabove--f001d6c685edbd6c6d37f593.md) | 36 | `declaration-track:f001d6c685edbd6c6d37f5936e14ad2276d94664c3c5627138a836285101c1be` |
| 4 | `def` | [BddBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/bddbelow--e3c0a3df3b69b18e73fdfdb8.md) | 40 | `declaration-track:e3c0a3df3b69b18e73fdfdb81235ffdb8ab75f798917e1363246a6c531526c45` |
| 5 | `def` | [IsLeast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/isleast--da61439a729f2c2c21102365.md) | 44 | `declaration-track:da61439a729f2c2c21102365feee28d2170ead3e3828ea9575e2e669c6a3c28c` |
| 6 | `def` | [IsGreatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/isgreatest--b5cb354a64cc40de8314c7bd.md) | 48 | `declaration-track:b5cb354a64cc40de8314c7bd901af1d49ebe73024cb65facfb5b03e46a7c626b` |
| 7 | `def` | [IsLUB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/islub--e81a8f0b66c419fc56883b45.md) | 52 | `declaration-track:e81a8f0b66c419fc56883b455ee923ea4609597cf5e4dd275925738fb98e1ab5` |
| 8 | `def` | [IsGLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/isglb--7eeb68e8368db83d5a4f786b.md) | 56 | `declaration-track:7eeb68e8368db83d5a4f786be334e1ad8c4742ceed2cf13f6e979a542e158649` |
| 9 | `def` | [IsCofinalFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/iscofinalfor--3c5bce8fce3a6f3a78bb159b.md) | 61 | `declaration-track:3c5bce8fce3a6f3a78bb159bfc0b71538977826615c473fba65477b805469b76` |
| 10 | `def` | [IsCoinitialFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/iscoinitialfor--00745e8bdaa49a68350a389c.md) | 65 | `declaration-track:00745e8bdaa49a68350a389c61b6c12c7e57f3039401880098470c2b2a520e34` |
| 11 | `def` | [IsCofinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant096c48b6ad934f8b6425acb5650acb726c1079c1d62d13e15f51a280a3a0b8a6.lean/declarations/iscofinal--ebafd21505ab10243ae596c7.md) | 68 | `declaration-track:ebafd21505ab10243ae596c71a8e18d3ea2c69b6234278242ef21a6151acb679` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
