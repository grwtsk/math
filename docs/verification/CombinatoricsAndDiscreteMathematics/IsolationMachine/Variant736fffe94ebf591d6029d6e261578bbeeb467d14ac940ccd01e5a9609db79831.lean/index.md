# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IsolationMachine.Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d2ac2e72f13baaecdeda5c94910d718dfc91306",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d2ac2e72f13baaecdeda5c94910d718dfc91306`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.GraphIntegration` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.RHIsolation.Refinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHIsolationState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/rhisolationstate--2e55e654b3d09e65e85054d2.md) | 26 | `declaration-track:2e55e654b3d09e65e85054d2eab83d90576fd85de9d272fcc33316187f000357` |
| 2 | `structure` | [RHIsolationInvariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/rhisolationinvariant--9eb50785dd650c3f7cf7b56a.md) | 41 | `declaration-track:9eb50785dd650c3f7cf7b56add7a99758ac2889ded008bacc589f576ac6300c4` |
| 3 | `def` | [reorderBySpectralPriority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/reorderbyspectralpriority--7f70c482833441bebe28d706.md) | 82 | `declaration-track:7f70c482833441bebe28d706e2b99ee249ce6075e445076f57b764811f8afbba` |
| 4 | `theorem` | [spectralPriority_preserves_analytic_frontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/spectralpriority-preserves-analytic-frontier--b4aa29ca9c44e558d3c8592a.md) | 97 | `result-track:b4aa29ca9c44e558d3c8592a96932ce1f529da5859d53e16860827fa99704917` |
| 5 | `inductive` | [RHIsolationEvent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/rhisolationevent--e9f3f12d06e5452f15791913.md) | 124 | `declaration-track:e9f3f12d06e5452f157919137ea776541cdad7cda4b72f797c4d65d6e17cbc59` |
| 6 | `def` | [RHIsolationEvent.hasCommittedAnalyticEffect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant736fffe94ebf591d6029d6e261578bbeeb467d14ac940ccd01e5a9609db79831.lean/declarations/rhisolationevent-hascommittedanalyticeffect--ea458435fb47277f3d9fb5fe.md) | 141 | `declaration-track:ea458435fb47277f3d9fb5fe7a9bdbe153eba9cb4819af57362fc668832e0a1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
