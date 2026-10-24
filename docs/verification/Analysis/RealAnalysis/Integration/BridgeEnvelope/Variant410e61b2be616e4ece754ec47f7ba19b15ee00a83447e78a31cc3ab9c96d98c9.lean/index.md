# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeEnvelope.Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39d646f0accaaf75948fd2c353f23eec5f17b17f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39d646f0accaaf75948fd2c353f23eec5f17b17f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 6; external provider; requires a separately pinned dependency.
- `ActualPrimeError` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralBridge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/integralbridge--900ab12fe66357fddaa7c51f.md) | 23 | `declaration-track:900ab12fe66357fddaa7c51f4da559cca389c457d9430f481e00c280ac51bed6` |
| 2 | `theorem` | [segment_integral_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/segment-integral-bounds--70c9abb20270ce3683b8449e.md) | 26 | `result-track:70c9abb20270ce3683b8449ecdb69439e89e6d2095910190602dd3477f3a918e` |
| 3 | `theorem` | [integralBridge_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/integralbridge-abs-le--67edb371186700aec7c1dfcf.md) | 41 | `result-track:67edb371186700aec7c1dfcf059c1e7c9ada1acdd70cef85e600e69525c43b19` |
| 4 | `theorem` | [actual_discrepancy_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/actual-discrepancy-bounds--a5f459d8d0e4995014090771.md) | 73 | `result-track:a5f459d8d0e499501409077141ce5e3bbaa7963cdee19a0d4eedc15b5edd7362` |
| 5 | `theorem` | [actual_bridge_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/actual-bridge-eq--a88077b263eca0a06c5ae4b3.md) | 86 | `result-track:a88077b263eca0a06c5ae4b3d7680d4ff2f695d96f7a3a007b783b6eb06afe29` |
| 6 | `theorem` | [actual_bridge_abs_le_chord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/actual-bridge-abs-le-chord--1b28e8e55fb3f42673d11469.md) | 91 | `result-track:1b28e8e55fb3f42673d114695cf80de39153845cf16836427966b91d7c0c8365` |
| 7 | `theorem` | [chord_le_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/chord-le-scale--e4bbf3fd71d46585e03848bf.md) | 102 | `result-track:e4bbf3fd71d46585e03848bfe09f00fb3a736d2a888da6ed30ab2f79974588dd` |
| 8 | `theorem` | [actual_bridge_abs_le_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/declarations/actual-bridge-abs-le-scale--05e911c9e4bb0e3347c00a1b.md) | 107 | `result-track:05e911c9e4bb0e3347c00a1b3516381fcc8a87e4ee65beb11d34e53d49106633` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
