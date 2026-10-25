# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PatternVar.Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "125ef9b58cffd4f12b599f6bb1f67084bb79dbaf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `125ef9b58cffd4f12b599f6bb1f67084bb79dbaf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PatternVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/patternvar--a4f3f254a3a5e42ab2340265.md) | 21 | `declaration-track:a4f3f254a3a5e42ab2340265b087ca679cda7d8b27bac26dce3bbadb81103833` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/state--43492af8ba67c9c2166602f2.md) | 47 | `declaration-track:43492af8ba67c9c2166602f26282ce91564b6825003a7578a05516754227d11c` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/m--98866c97e5ddb39542b1a700.md) | 54 | `declaration-track:98866c97e5ddb39542b1a7005bb2cfd674af919cd32d60daaac0fab0fdc8cdb2` |
| 4 | `def` | [throwCtorExpected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/throwctorexpected--ce4f8fb1e61bf01f679e97d9.md) | 56 | `declaration-track:ce4f8fb1e61bf01f679e97d9114b69bf06b8bf6e1bfe5f4a4e4a909eaa812815` |
| 5 | `def` | [throwInvalidPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/throwinvalidpattern--9fff70260d9b3ede48360213.md) | 82 | `declaration-track:9fff70260d9b3ede48360213c537f220e74308c1668980d39c9f9a64b3c6b8b3` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/context--9e0f4b349e8109190e1cad5b.md) | 95 | `declaration-track:9e0f4b349e8109190e1cad5b6cb5af3ee9d3eac9aa6a7d43ecd469b893fce47c` |
| 7 | `def` | [throwInvalidNamedArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/throwinvalidnamedargs--6d5c5a1ab9fbdb098a656b69.md) | 108 | `declaration-track:6d5c5a1ab9fbdb098a656b6935fceed4927ee962a77fa8592d013a6160443608` |
| 8 | `def` | [isDone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/isdone--911764a517223be7785ad1dc.md) | 132 | `declaration-track:911764a517223be7785ad1dc728b59fe82f694350e6235d2ac66e7f11a884512` |
| 9 | `def` | [getNextParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/getnextparam--54b08441bfdbd863282bde62.md) | 135 | `declaration-track:54b08441bfdbd863282bde62fecadbd8b33c2f07130fa2ea0b172bfd802bd5b9` |
| 10 | `def` | [throwWrongArgCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/throwwrongargcount--7fe2e3559db5d8c1a1466cfe.md) | 140 | `declaration-track:7fe2e3559db5d8c1a1466cfe6b50cd715a2c35ed06f1c68ad5c1dfef1778dfbe` |
| 11 | `def` | [finalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/finalize--ecab429b1068bd14c501b593.md) | 168 | `declaration-track:ecab429b1068bd14c501b593d26d19a065823d4446f6f067e160412284a0e458` |
| 12 | `def` | [isNextArgAccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/isnextargaccessible--7f23417ab58737935a3005e8.md) | 178 | `declaration-track:7f23417ab58737935a3005e8404dc4c94e549bd27a070affe45ddbd4b255ffc8` |
| 13 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/processvar--56f3b9582a58e396c089a8c6.md) | 190 | `declaration-track:56f3b9582a58e396c089a8c602fd218c2692e70a644e112ef50e78733663e983` |
| 14 | `def` | [samePatternsVariables](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/samepatternsvariables--4507c3a64a07c0cdfd82cf70.md) | 201 | `declaration-track:4507c3a64a07c0cdfd82cf70ae885df9bfaf7f8b07d87bf00fecf47aba46ff43` |
| 15 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/collect--7ad7899b7406bd667649ba96.md) | 211 | `declaration-track:7ad7899b7406bd667649ba962dee43e0b9de33623f092b35e5ab8a3008811755` |
| 16 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/main--08f30c60cdf64db9511f0de7.md) | 420 | `declaration-track:08f30c60cdf64db9511f0de792163c379fda312d5054ca500bd74690a973648c` |
| 17 | `def` | [collectPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/collectpatternvars--d39151ac6cc6e9500abafb20.md) | 432 | `declaration-track:d39151ac6cc6e9500abafb20849a213907ca7aeba3b0032a631ff6563bcc67e7` |
| 18 | `def` | [getPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/getpatternvars--deedbd9b611bfb4b58a41ba9.md) | 440 | `declaration-track:deedbd9b611bfb4b58a41ba9a808097a21cd8cea4262a6719e55d703035eb95d` |
| 19 | `def` | [getPatternsVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/getpatternsvars--1e29b9f84ccac9e66f2c0045.md) | 449 | `declaration-track:1e29b9f84ccac9e66f2c00458ce3ef47e08989c74f07f43eac32a4b4c62d897d` |
| 20 | `def` | [getPatternVarNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/declarations/getpatternvarnames--8a2077223328570500da3410.md) | 456 | `declaration-track:8a2077223328570500da3410b8284d81169854366d27ada005a0cb6b33e2ef33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
