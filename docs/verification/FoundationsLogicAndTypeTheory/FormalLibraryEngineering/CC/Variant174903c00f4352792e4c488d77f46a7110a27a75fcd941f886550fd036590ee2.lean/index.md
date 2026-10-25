# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CC.Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5d47f47ccfc0f846dec535e0dc0beddeb24755e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5d47f47ccfc0f846dec535e0dc0beddeb24755e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CC.Addition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/mkcore--84132710e56985cf14e85719.md) | 63 | `declaration-track:84132710e56985cf14e8571907910fdc320924cb12e17f486a7dabb38e6fc725` |
| 2 | `def` | [mkUsingHsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/mkusinghscore--5effd5fc993028a523024c58.md) | 69 | `declaration-track:5effd5fc993028a523024c58d28e43e9f69fe7727e6a1a8963544b8bba748c19` |
| 3 | `def` | [rootsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/rootscore--db582f01c93764c124b1fefe.md) | 80 | `declaration-track:db582f01c93764c124b1fefefdfb2c2c2f29410ac182507a1ddb2826bd1b7c1f` |
| 4 | `def` | [incGMT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/incgmt--0ef1bda40457479b596b269d.md) | 84 | `declaration-track:0ef1bda40457479b596b269d227b5cd9f93350726f15f048612e522ce7d6a184` |
| 5 | `def` | [internalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/internalize--9b57375f7e40a5fd70626e3a.md) | 88 | `declaration-track:9b57375f7e40a5fd70626e3a4cbdcbd9cdfe2b5e8cff298f39b023b9c83f785e` |
| 6 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/add--8feed45c20e86116196eb69e.md) | 94 | `declaration-track:8feed45c20e86116196eb69e051298cafc6e3098dd208b89b9f5f12f9ffac038` |
| 7 | `def` | [isEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/iseqv--2e855b03270a66fb7c58d12e.md) | 102 | `declaration-track:2e855b03270a66fb7c58d12e8c9640f7c5d3f60416e6f513705d5ff7b52a92fc` |
| 8 | `def` | [isNotEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/isnoteqv--b019977723635a5e4f42ea8c.md) | 107 | `declaration-track:b019977723635a5e4f42ea8c65eab1c5914d0a00453a89c40b93ee20f413fc2d` |
| 9 | `def` | [eqvProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/eqvproof--3ee63cb4d80243d2ea4bc341.md) | 112 | `declaration-track:3ee63cb4d80243d2ea4bc3411542476fe4cf731a54d8cd3179479ae5199e1866` |
| 10 | `def` | [proofFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/prooffor--8d53f364a759282dd27eca43.md) | 118 | `declaration-track:8d53f364a759282dd27eca43a94c04c6ec4deb9adb18df174471f00e82235796` |
| 11 | `def` | [refutationFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/refutationfor--2fbbc374cd25450a2aaed990.md) | 125 | `declaration-track:2fbbc374cd25450a2aaed990e1899aca79d52c1f764e70ff75fefe13e17069fe` |
| 12 | `def` | [proofForFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/proofforfalse--21eeb5d6d82e586e22526817.md) | 131 | `declaration-track:21eeb5d6d82e586e2252681791b736aea01242698451b1868f589d9fe66c1215` |
| 13 | `def` | [mkUsingHs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/mkusinghs--7c338ce9e33e0b1ce581271f.md) | 137 | `declaration-track:7c338ce9e33e0b1ce581271f95974d71a2794af7df3b7a4e72503cdf5e17cbc1` |
| 14 | `def` | [roots](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/roots--c8e936de6807f832b5ea988a.md) | 141 | `declaration-track:c8e936de6807f832b5ea988aabb6a96a7b04103eafa4b66becf0f54cfc725094` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/instance--edd0ca3a0f497b3d1b0d814a.md) | 144 | `declaration-track:edd0ca3a0f497b3d1b0d814a9ad8c68d64a677f4a84285a18b81b3fd8c6ea02e` |
| 16 | `def` | [eqcOfCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/eqcofcore--8566b1420ce9fe8aefc2e3d2.md) | 149 | `declaration-track:8566b1420ce9fe8aefc2e3d277585ec8220593191dc3bbab92c5c79e2715f987` |
| 17 | `def` | [eqcOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/eqcof--bea519e30da33cea34f55cea.md) | 154 | `declaration-track:bea519e30da33cea34f55ceaebbd011745e9d300ea2cbceb258972d45da9aeb7` |
| 18 | `def` | [eqcSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/eqcsize--f5a92ad565196bbd7f5f6c4b.md) | 158 | `declaration-track:f5a92ad565196bbd7f5f6c4b6fe9751af6c8a1de47ebdd72b3cf4c7131e674d5` |
| 19 | `def` | [foldEqcCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/foldeqccore--993d1814201d1702327bba9b.md) | 165 | `declaration-track:993d1814201d1702327bba9b6a7ae7a053e4defddd6f31bc895a9aa8b5b283e8` |
| 20 | `def` | [foldEqc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/foldeqc--f14da4f90bfddbe9d638a57a.md) | 172 | `declaration-track:f14da4f90bfddbe9d638a57a7323a2c2f964cbef8a5a35f374fba26610b6640a` |
| 21 | `def` | [foldEqcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/foldeqcm--a57eaa05eb7ba24903da6b17.md) | 176 | `declaration-track:a57eaa05eb7ba24903da6b175b7ccc5d309447fff6f4e77c2bc8b0cdcc0d7397` |
| 22 | `def` | [_root_.Lean.MVarId.cc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/root-lean-mvarid-cc--82237b40c6e08d113fa27720.md) | 206 | `declaration-track:82237b40c6e08d113fa277204782d39a5046ff40a0b02b31b7f552b53325aa2e` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CC/Variant174903c00f4352792e4c488d77f46a7110a27a75fcd941f886550fd036590ee2.lean/declarations/elab--2a9a6dde6a59f1d363cfca85.md) | 254 | `declaration-track:2a9a6dde6a59f1d363cfca8511e9c4aefe307126844acc18919e824ced677e93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
