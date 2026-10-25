# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Match.Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Apply` — import line 8; external provider; requires a separately pinned dependency.
- `Aesop.RuleTac.Forward.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.UnusedNames` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabForwardRuleTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/elabforwardruleterm--79fd7898d93088654ec401d0.md) | 25 | `declaration-track:79fd7898d93088654ec401d011beff81aaf651396e97115aec0c3075b70f528d` |
| 2 | `def` | [initial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/initial--7e067c35fbac59cda884b8f9.md) | 37 | `declaration-track:7e067c35fbac59cda884b8f97280750621a8f613258fd44bc4dc99d20483f9ba` |
| 3 | `def` | [addHypOrPatSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/addhyporpatsubst--742c19331671c1124f9290d6.md) | 50 | `declaration-track:742c19331671c1124f9290d67ab59cf2d0e0832378fef2ee19d0abb21fbbd01a` |
| 4 | `def` | [containsHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/containshyp--4e8c3ba3d5175fadb2933d1f.md) | 60 | `declaration-track:4e8c3ba3d5175fadb2933d1f9926c69e4ce5311da30dd0c29ccdbd930b384d90` |
| 5 | `def` | [containsPatSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/containspatsubst--ded4905af78c0342294968e7.md) | 64 | `declaration-track:ded4905af78c0342294968e754c2101acc6c160fd9bcfc405536a42f2608e7bc` |
| 6 | `def` | [reconstructArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/reconstructargs--a6274978ac280bb9bb1b16c1.md) | 74 | `declaration-track:a6274978ac280bb9bb1b16c12f8feb5e6f2c8b2baeb79eecc4aba30d704c551f` |
| 7 | `def` | [toMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/tomessagedata--019d80c6ead986bd5d2ebb7d.md) | 89 | `declaration-track:019d80c6ead986bd5d2ebb7de94f5bb98052a81df84e031f623111911dce58dc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/instance--c914b208187a6f691e7344a6.md) | 97 | `declaration-track:c914b208187a6f691e7344a6c2d2d7ee86ce308d0ccd835780b9dce8036436c5` |
| 9 | `def` | [foldHypsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/foldhypsm--bb44a7ffdf6279adb5a76fb2.md) | 101 | `declaration-track:bb44a7ffdf6279adb5a76fb2a0cd94f0ab6ee29c9071ab2060ad9c2ad4fbf7f6` |
| 10 | `def` | [foldHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/foldhyps--3f6aa8d65e243308acbf7b61.md) | 110 | `declaration-track:3f6aa8d65e243308acbf7b61a279c474d1d611a716dfe010cb5ecea2133047d1` |
| 11 | `def` | [anyHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/anyhyp--dada3726bcdd86b36bd0a05e.md) | 114 | `declaration-track:dada3726bcdd86b36bd0a05e16287ef5a87af30c504a6b6df28e046a4979949e` |
| 12 | `def` | [getPropHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/getprophyps--0050bc8a1e5658c1fc99d3a9.md) | 122 | `declaration-track:0050bc8a1e5658c1fc99d3a93139c43b17987c19c0d422ae6e7096eeaceb8a37` |
| 13 | `def` | [getProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/getproof--6d25783c45aaac16eeb576a2.md) | 127 | `declaration-track:6d25783c45aaac16eeb576a243c05b78e27593a9f3f87e6230b793ec13c300a5` |
| 14 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/apply--58c6691a767e799fd6061c6d.md) | 168 | `declaration-track:58c6691a767e799fd6061c6da6309f28d5f924ebca7b70250c3d360506cb8b71` |
| 15 | `def` | [forwardRuleMatchesToRules?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/forwardrulematchestorules--66270ceb3fe11ccde3f145ad.md) | 194 | `declaration-track:66270ceb3fe11ccde3f145adbceb49dfcd7bab652d14c6896191cc9b8815a5f9` |
| 16 | `def` | [forwardRuleMatchesToNormRules?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/forwardrulematchestonormrules--51bf82191192a67e865e0b07.md) | 218 | `declaration-track:51bf82191192a67e865e0b07a738f19679f3f66ef4e0c53f034a85f9551d05f6` |
| 17 | `def` | [forwardRuleMatchesToSafeRules?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/forwardrulematchestosaferules--dbfbd5190dee8409e5c34669.md) | 225 | `declaration-track:dbfbd5190dee8409e5c34669ca817a2def431ea5ae4ce67be50ae12bf621baff` |
| 18 | `def` | [forwardRuleMatchesToUnsafeRules?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/declarations/forwardrulematchestounsaferules--3e5c883e51079dce2b05e859.md) | 232 | `declaration-track:3e5c883e51079dce2b05e859672ca415741d37a3e5bae22f9ee2049c7835f050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
