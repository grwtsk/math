# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchCond.Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Contradiction` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProveEq` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEqHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/iseqheq--de2633610b07531c16efbfeb.md) | 98 | `declaration-track:de2633610b07531c16efbfeb36b31b337fe6ea01c82d42050f29f06a054fa38c` |
| 2 | `def` | [collectMatchCondLhss](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/collectmatchcondlhss--e1346171b18a1773cc24b0d8.md) | 109 | `declaration-track:e1346171b18a1773cc24b0d886a1d11942460f908a7cfa44939a7dac119213d1` |
| 3 | `def` | [replaceLhs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/replacelhs--4f2852ce92c293af80004a94.md) | 123 | `declaration-track:4f2852ce92c293af80004a948b6d8c92168336ca7985e9dca67baae5d59d7d9a` |
| 4 | `def` | [collectMatchCondLhssAndAbstract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/collectmatchcondlhssandabstract--53cb0b6b2e155f8ff81811b2.md) | 177 | `declaration-track:53cb0b6b2e155f8ff81811b2882fa9876bc36d4ba54654bb06fd58cf30899ab2` |
| 5 | `def` | [isMatchCondFalseHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/ismatchcondfalsehyp--45d0b8ac09fb7ffe7f6193f8.md) | 210 | `declaration-track:45d0b8ac09fb7ffe7f6193f8bd796d6514133cb0d995852fddc3932bbced10bc` |
| 6 | `def` | [isSatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/issatisfied--e0518ef2791b4e04132c24d6.md) | 262 | `declaration-track:e0518ef2791b4e04132c24d62b9605ea3ba85b48365363abc7f447df75a9d5dc` |
| 7 | `def` | [mkMatchCondProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/mkmatchcondproof--840e3abb81160fc01a7b9847.md) | 276 | `declaration-track:840e3abb81160fc01a7b9847b60c2f63e1c73f2f6bbc2d2603257621ff5f64ed` |
| 8 | `def` | [tryToProveFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/declarations/trytoprovefalse--b39c4b9dba0c1055da4682a4.md) | 358 | `declaration-track:b39c4b9dba0c1055da4682a447ee3aa1ff414a30def4e300c930c6340f7d72a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
