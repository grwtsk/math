# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqResolution.Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d996801e15064e637d3bb0895b7557fffc0a2db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d996801e15064e637d3bb0895b7557fffc0a2db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.MatchUtil` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Util.ForEachExpr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forallMetaTelescopeReducingAndUnfoldingNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/forallmetatelescopereducingandunfoldingnot--e503d08974d8baa53cdcfa18.md) | 20 | `declaration-track:e503d08974d8baa53cdcfa1831a0273910c718f4dc845c55f431c5443c8aa6fe` |
| 2 | `structure` | [TopSort.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/topsort-state--e5fa347fdb6c6ba3116e3cab.md) | 27 | `declaration-track:e5fa347fdb6c6ba3116e3cabc44a85272b71d7d51a7d6f2756a755bf09b0b90a` |
| 3 | `abbrev` | [TopSortM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/topsortm--f108457325379d1d787a2e25.md) | 32 | `declaration-track:f108457325379d1d787a2e251556f1ac9d818e1ccd26f013fadd22185952d09d` |
| 4 | `def` | [topsortMVars?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/topsortmvars--b7efbe179fff9cd138b5af65.md) | 58 | `declaration-track:b7efbe179fff9cd138b5af6523c023ff4897d374e55cbea633d4341516d2a362` |
| 5 | `def` | [eqResCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/eqrescore--caf32a63f2a0645cd5b0e896.md) | 88 | `declaration-track:caf32a63f2a0645cd5b0e896dc29cd36411c9d0ef6b45de0b10d74f4f40cbe64` |
| 6 | `def` | [eqResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/declarations/eqresolution--ba95373642732715e49798b7.md) | 128 | `declaration-track:ba95373642732715e49798b721c8b7cb7b29df8903c7932b5c8ee1e8ab2b94ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
