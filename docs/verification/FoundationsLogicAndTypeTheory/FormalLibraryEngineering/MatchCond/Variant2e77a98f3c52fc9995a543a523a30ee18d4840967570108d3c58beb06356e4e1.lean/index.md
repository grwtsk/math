# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchCond.Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f1dee0c977f65769276c38be385990525ad6f92",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f1dee0c977f65769276c38be385990525ad6f92`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Contradiction` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProveEq` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEqHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/iseqheq--a465cb6ec1f2811c0f381d1b.md) | 90 | `declaration-track:a465cb6ec1f2811c0f381d1ba07a2e24daa85e0346b55f309966a1b460cd4f12` |
| 2 | `def` | [collectMatchCondLhss](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/collectmatchcondlhss--d33aa1b99b75d1d6de5a7f2a.md) | 101 | `declaration-track:d33aa1b99b75d1d6de5a7f2a1d36c3ce91ce10b9978b0a558ba570d294155b1f` |
| 3 | `def` | [replaceLhs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/replacelhs--f6a7cc2bbf9cd9e095df3883.md) | 115 | `declaration-track:f6a7cc2bbf9cd9e095df3883095e7f8ce88453bf3fe090f0b3f625ffca785f14` |
| 4 | `def` | [collectMatchCondLhssAndAbstract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/collectmatchcondlhssandabstract--09cee3683ffb5d96f6ecf4d1.md) | 169 | `declaration-track:09cee3683ffb5d96f6ecf4d1c23e999face478e2c51ce23bdf53ce813d3a093d` |
| 5 | `def` | [isMatchCondFalseHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/ismatchcondfalsehyp--cd03cbfc8595e99c0766c5cb.md) | 202 | `declaration-track:cd03cbfc8595e99c0766c5cb6e86e33cc5587f77926bc80f901ccd84f0d42b3e` |
| 6 | `def` | [isSatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/issatisfied--3643c93a08b56e641f8e1348.md) | 254 | `declaration-track:3643c93a08b56e641f8e13481bece327f582f6100cdd8cac1a7af9a7fc8419b1` |
| 7 | `def` | [mkMatchCondProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/mkmatchcondproof--23147a34a6c2e57e82934473.md) | 268 | `declaration-track:23147a34a6c2e57e82934473531ff951675083b24214cebd653caa1077a9c6fc` |
| 8 | `def` | [tryToProveFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/declarations/trytoprovefalse--cd0fec4b3c45640ff2333aec.md) | 350 | `declaration-track:cd0fec4b3c45640ff2333aec9246be40045bbc8b21879177e21c63417bf3cbf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
