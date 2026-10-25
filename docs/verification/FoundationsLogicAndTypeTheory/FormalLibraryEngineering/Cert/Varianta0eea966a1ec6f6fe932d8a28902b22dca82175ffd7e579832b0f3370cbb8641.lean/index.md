# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cert.Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7710e8a2817e40dffe6e22efd898d65a1192ce1a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7710e8a2817e40dffe6e22efd898d65a1192ce1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.LRAT.Trim` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.BVDecide.LRAT.Parser` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.BVDecide.External` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/declarations/instance--3d8decda952691d5f084caa1.md) | 25 | `declaration-track:3d8decda952691d5f084caa155d170852776fa957e96ff6e7fea1bd4c6e4dadc` |
| 2 | `abbrev` | [LratCert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/declarations/lratcert--643b6b2cf3765bfb6706154b.md) | 55 | `declaration-track:643b6b2cf3765bfb6706154b31883e7138ab0c14d5e85a452906b2ceefc9b347` |
| 3 | `def` | [load](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/declarations/load--eb88a284fcd00efa9949d611.md) | 59 | `declaration-track:eb88a284fcd00efa9949d611ae82c4a3baff86e21543c1de682c796e4b6daf99` |
| 4 | `def` | [ofFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/declarations/offile--026a3372f91e8e3706ca29e9.md) | 83 | `declaration-track:026a3372f91e8e3706ca29e99c1842f9519e76a486f135a6dc9dcb5485fb2ec1` |
| 5 | `def` | [runExternal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641.lean/declarations/runexternal--f7d57e81a856a6f59e3701b0.md) | 98 | `declaration-track:f7d57e81a856a6f59e3701b030c3dbd81f569017d83de6fa35f788511151dd72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
