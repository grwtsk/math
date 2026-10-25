# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesM.Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbd7fc43fd2e4fbef302b79ec3c7b59ff32cdd7f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbd7fc43fd2e4fbef302b79ec3c7b59ff32cdd7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Pattern` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [casesMatching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/casesmatching--4567d5ef0ad6e1eb8207edd2.md) | 24 | `declaration-track:4567d5ef0ad6e1eb8207edd233973aab1d924ecb96aa3e02463f4140e40c320d` |
| 2 | `def` | [casesType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/casestype--191de91414bdf9bc3a675491.md) | 61 | `declaration-track:191de91414bdf9bc3a67549140697b79db4429877b18be571626132f21ebd654` |
| 3 | `def` | [elabPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elabpatterns--821a9ae9521593d83d693fa7.md) | 73 | `declaration-track:821a9ae9521593d83d693fa711c9a3a000f28c193dcd56d3a724c4372f17f5d4` |
| 4 | `def` | [matchPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/matchpatterns--e0606fa508d7d580e0b4362e.md) | 80 | `declaration-track:e0606fa508d7d580e0b4362ebc32a2fcf1653c7daadb7287d568a1d4256f18b9` |
| 5 | `def` | [elabCasesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elabcasesm--1c2f7b9af78451a65c1f8592.md) | 85 | `declaration-track:1c2f7b9af78451a65c1f859228e34bd9ea2c5d088474e5d6c361fe906b70c328` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elab--4dfcb229d130cd22cce6b70e.md) | 103 | `declaration-track:4dfcb229d130cd22cce6b70e1c564293eb7c67c37069fad9506e7c12b065a214` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elab--f8df099f9232fd19bdb23c32.md) | 107 | `declaration-track:f8df099f9232fd19bdb23c32bea52c725390948dca0605cd7f4eadb517e017de` |
| 8 | `def` | [elabCasesType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elabcasestype--1d8da6377cb55a3975ecdbbd.md) | 111 | `declaration-track:1d8da6377cb55a3975ecdbbda9be936a246a904109fdf918e36132bed7a63ec1` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elab--f45117720d5a9cb1a8703415.md) | 128 | `declaration-track:f45117720d5a9cb1a87034150d5e95a08f4532591c85a043622c1d3fff01d211` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elab--60df46f14d0c34c8fcf810f1.md) | 132 | `declaration-track:60df46f14d0c34c8fcf810f1858ab5930c710f712cc7fdd947b3177ec908b2dd` |
| 11 | `def` | [constructorMatching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/constructormatching--80821c3ba5286fea984986a1.md) | 141 | `declaration-track:80821c3ba5286fea984986a1ef9286ce5e69565ff23ded13282725b813fc8342` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d.lean/declarations/elab--57479c09e8b71fb6ecde1333.md) | 177 | `declaration-track:57479c09e8b71fb6ecde133337ffc482794ba4ea84103808c1bd52a06d7ffef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
