# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6a6915cc25dde87fcbd442748a7813213bca46e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6a6915cc25dde87fcbd442748a7813213bca46e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.AEStabilizer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ErgodicVAdd](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/ergodicvadd--f2c9cb31bf10ca69f73432a7.md) | 27 | `declaration-track:f2c9cb31bf10ca69f73432a7423205291c9c1458a808dc6b48fb2bbc40559798` |
| 2 | `class` | [ErgodicSMul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/ergodicsmul--7dd3dca89ea7c66cc96062a1.md) | 39 | `declaration-track:7dd3dca89ea7c66cc96062a1ca011e472b1da4c3f880f1191d919b5078aaa4da` |
| 3 | `theorem` | [aeconst_of_forall_preimage_smul_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/aeconst-of-forall-preimage-smul-ae-eq--e9d9a79caf6bd61c99e739f9.md) | 51 | `result-track:e9d9a79caf6bd61c99e739f9f041e64fe026b9e817b7991de499429e71883302` |
| 4 | `theorem` | [aeconst_of_forall_smul_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/aeconst-of-forall-smul-ae-eq--3368fdaa791fd00f34509315.md) | 65 | `result-track:3368fdaa791fd00f345093157c3cc745058612491f614c1053eadc3b9dcf07fb` |
| 5 | `theorem` | [_root_.MulAction.aeconst_of_aestabilizer_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/root-mulaction-aeconst-of-aestabilizer-eq-top--f7da9f01195dbd6f09ced32a.md) | 71 | `result-track:f7da9f01195dbd6f09ced32ad1300106aa5aac40ce611a77674e543c3ace6828` |
| 6 | `theorem` | [_root_.ErgodicSMul.of_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/root-ergodicsmul-of-aestabilizer--d607e3ffd918e060a1170c47.md) | 77 | `result-track:d607e3ffd918e060a1170c47c17777a9af40b82f5071b7f8bd1a3d440a482e8e` |
| 7 | `theorem` | [ergodicSMul_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/declarations/ergodicsmul-iteratemulact--f765bcab353df9cc86fd5dee.md) | 83 | `result-track:f765bcab353df9cc86fd5dee0d630eb82c664e15f3f6cab52e4373a92710f3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
