# Verification target: GRWTSK.Analysis.TestFunction.Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b99a3c4d0f802c2ca61c7360652ba8dd66f0e78",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b99a3c4d0f802c2ca61c7360652ba8dd66f0e78`.

Source path: `GRWTSK/Analysis/TestFunction/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/primitiveweiltestfunction--7d6b0fd47a18bd00a8bc7f55.md) | 42 | `declaration-track:7d6b0fd47a18bd00a8bc7f55918c006518a02daaa1f92576cc735aaa49f93b6a` |
| 2 | `instance` | [instCoeFunPrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/instcoefunprimitiveweiltestfunction--21328d67eb07b0e1cb3c6ace.md) | 52 | `declaration-track:21328d67eb07b0e1cb3c6ace9ca69b16a297522961b99e314d6a7eab925f20f5` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/coe-mk--57536d002e51bb5b80e8b1ab.md) | 57 | `result-track:57536d002e51bb5b80e8b1ab5b120aee11eb67b0b4fb254809c2780cb50b60a3` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/continuous--f420f11c5551912a0dfad651.md) | 64 | `result-track:f420f11c5551912a0dfad651daa993e3c6ca835288966b92301f8e4e507b4873` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/hascompactsupport--e8cbf1782c7269eb7485259d.md) | 68 | `result-track:e8cbf1782c7269eb7485259d355ff8c5ff60e6ab7ad0af016797913f16bbab74` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/integrable--1eebff809423011ac52aa179.md) | 73 | `result-track:1eebff809423011ac52aa179890397ab4c8f564acc338c1635f85984955c5c1e` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/locallyintegrable--c5518dbb600b7ead17c8e106.md) | 77 | `result-track:c5518dbb600b7ead17c8e1064d43b949e59c56850f6371ca79c6ae210c59b179` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/star--aeee13200a41a267f388b0ba.md) | 83 | `declaration-track:aeee13200a41a267f388b0ba3ddc9abd8a524c903939dd505879ae7cab350af6` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/star-apply--fa12bddbb000a4e7800f07a4.md) | 104 | `result-track:fa12bddbb000a4e7800f07a4d46fcf64b8dffcd8742228ad3a5363f10611c8fa` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/star-supportradius--fd998277533080b3995612ad.md) | 109 | `result-track:fd998277533080b3995612ad070502e19d246b6151eb6ae5a54cba6ef5c621d4` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b.lean/declarations/star-star-apply--4076898906822b814d338291.md) | 114 | `result-track:4076898906822b814d3382911b68c2cd71fab79f460aa9973d74165a6b9aa85d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
