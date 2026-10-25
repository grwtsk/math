# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c487c6cf29984ca6d84d964c79988d3542a97a37",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c487c6cf29984ca6d84d964c79988d3542a97a37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matchHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/matchhyps--eeebbc7421f9f411a69320de.md) | 39 | `declaration-track:eeebbc7421f9f411a69320de284fda55b19ec3bc01a3d8a95a8e3939995694ec` |
| 2 | `def` | [isBlackListed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/isblacklisted--2430b5be02821e8daa676df5.md) | 51 | `declaration-track:2430b5be02821e8daa676df5349f7cac7ff289913b213af405898b5bac893ac0` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/initialize--0340efceef57dda9b83a5bbe.md) | 59 | `declaration-track:0340efceef57dda9b83a5bbec242a1fbade5ceda4901e075d3af6557607e6448` |
| 4 | `def` | [findType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/findtype--3c645294f93d5cec4aca981d.md) | 69 | `declaration-track:3c645294f93d5cec4aca981dda1b57f691b82540c81b96333b8943b1bbea36de` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/elab--7244e67574b20967d1d8489d.md) | 105 | `declaration-track:7244e67574b20967d1d8489d97670621f80b0fcfd88756303386c687535dd250` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/elab--3a68b22b85660b55cec5e787.md) | 132 | `declaration-track:3a68b22b85660b55cec5e787b6ea847e19fd0261b6746a39bd12719b9fff41c7` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/declarations/elab--0b6c6dec2b38a0f2f611a0a5.md) | 139 | `declaration-track:0b6c6dec2b38a0f2f611a0a5c97240029f4d386101feb2196648cbd8529df39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
