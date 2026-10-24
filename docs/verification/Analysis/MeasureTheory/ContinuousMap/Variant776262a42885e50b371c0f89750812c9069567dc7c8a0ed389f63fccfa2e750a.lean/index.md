# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousMap.Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b36cdbce3e5b657cc1d21bc69956eace01bfe9f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b36cdbce3e5b657cc1d21bc69956eace01bfe9f`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.SecondCountableSpace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ContinuousMap.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmap-measurablespace--d7a8bfc56d5dfe92e4ff0b5f.md) | 59 | `declaration-track:d7a8bfc56d5dfe92e4ff0b5f61bbedd1fff6380fd922e46d4eb2eee1b0d8e30b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/instance--490cb41aed8432a943911f56.md) | 61 | `declaration-track:490cb41aed8432a943911f5639d56ca38844496b6d081ab46a2e2dc0f57eeb1f` |
| 3 | `lemma` | [ContinuousMap.measurable_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmap-measurable-eval--76965be336432923eb2daf7b.md) | 64 | `result-track:76965be336432923eb2daf7b0c0ed1a7ecb86afd51804e161be0ef09548ac0d9` |
| 4 | `lemma` | [ContinuousMap.iSup_comap_le_borel](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmap-isup-comap-le-borel--e3c5eac8beac5c43d643442e.md) | 70 | `result-track:e3c5eac8beac5c43d643442eeb1aa7d238afb8bde9eeb39d753345f5385f6f55` |
| 5 | `theorem` | [borel_eq_iSup_comap_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/borel-eq-isup-comap-eval--e00f7f53830d62b11cd5926c.md) | 85 | `result-track:e00f7f53830d62b11cd5926c312157e13b981917313b6f4dd68254fa8876c29a` |
| 6 | `lemma` | [measurableSpace_eq_iSup_comap_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/measurablespace-eq-isup-comap-eval--617c219cb24cd6b0f3429405.md) | 157 | `result-track:617c219cb24cd6b0f3429405d3a1c6cc55e0e3b3d06a08e8009d82dcf0f3a5ee` |
| 7 | `lemma` | [measurable_iff_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/measurable-iff-eval--f5389f6ed16ada587002f2d5.md) | 163 | `result-track:f5389f6ed16ada587002f2d5874a031bca2808817c4b16ce1602b3da29421ec4` |
| 8 | `def` | [continuousMapToFun](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmaptofun--4bfa9917d67a614fc33d5d16.md) | 176 | `declaration-track:4bfa9917d67a614fc33d5d16afb8ac545fd7e892545d324a404d131b3bee0ec6` |
| 9 | `lemma` | [continuousMapToFun_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmaptofun-apply--0ef253bc018f42d7d91c346f.md) | 187 | `result-track:0ef253bc018f42d7d91c346fcb14d0d562783f8bd0398b0b48a752531b24609e` |
| 10 | `lemma` | [symm_continuousMapToFun_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/symm-continuousmaptofun-apply--29c2d2f0c4e50051cd61ae19.md) | 191 | `result-track:29c2d2f0c4e50051cd61ae19ea9ac456ab5d11ba0d7145e4535f9eacf81a58fe` |
| 11 | `lemma` | [continuousMapToFun_apply_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/continuousmaptofun-apply-apply--ef68bdcc8e7e852c03ac0b35.md) | 194 | `result-track:ef68bdcc8e7e852c03ac0b35ce0cd149ec7e40d3b9f08cbb403c8dd1ad8feb15` |
| 12 | `lemma` | [symm_continuousMapToFun_apply_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant776262a42885e50b371c0f89750812c9069567dc7c8a0ed389f63fccfa2e750a.lean/declarations/symm-continuousmaptofun-apply-apply--e20d057063b2b12689280a96.md) | 197 | `result-track:e20d057063b2b12689280a96416bd1a95eca2d06400087c164a5bf490f8c89ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
