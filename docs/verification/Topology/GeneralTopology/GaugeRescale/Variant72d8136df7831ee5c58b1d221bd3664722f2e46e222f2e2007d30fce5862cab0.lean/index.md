# Verification target: GRWTSK.Topology.GeneralTopology.GaugeRescale.Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64784ae3b43688b0a149aeb865cd49946003f87f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64784ae3b43688b0a149aeb865cd49946003f87f`.

Source path: `GRWTSK/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Gauge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale--ec361500f90706d917f8c527.md) | 33 | `declaration-track:ec361500f90706d917f8c5277a19ae323f88844baf0b9dfee554468242fd623f` |
| 2 | `theorem` | [gaugeRescale_def](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-def--45a8f84e72bd141411c9dda9.md) | 35 | `result-track:45a8f84e72bd141411c9dda96a553458c499842aca54fb71dad64334597b499d` |
| 3 | `theorem` | [gaugeRescale_zero](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-zero--01e7bf86f2abc548998560f4.md) | 39 | `result-track:01e7bf86f2abc548998560f4abb3156c2fbc18153a93b58a997571f1d163ad23` |
| 4 | `theorem` | [gaugeRescale_smul](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-smul--ce1036684e13451efa8845b7.md) | 41 | `result-track:ce1036684e13451efa8845b7e6dec45259b7e8d0d6c29a0a3b9be1bffb564b95` |
| 5 | `theorem` | [gauge_gaugeRescale'](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gauge-gaugerescale--61db8e2fdcc46ccb0318319d.md) | 46 | `result-track:61db8e2fdcc46ccb0318319d6d4c6703b9d120d1a7b19ba401f46583d056f996` |
| 6 | `theorem` | [gauge_gaugeRescale_le](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gauge-gaugerescale-le--1d06fea04e59063f28eb22da.md) | 51 | `result-track:1d06fea04e59063f28eb22da6f90e352030d755ae2082e97a5e6f534505c949e` |
| 7 | `theorem` | [gaugeRescale_self_apply](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-self-apply--66706216bf61f481ad474cd1.md) | 62 | `result-track:66706216bf61f481ad474cd1a8310b5936ee62f6f5d6ca526c0fcd49c088c4da` |
| 8 | `theorem` | [gaugeRescale_self](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-self--0e4bf4483d7d2ffec4143a62.md) | 68 | `result-track:0e4bf4483d7d2ffec4143a62a90d0b2e593ed0ddb44fdb19be95c51cb1c9c9fd` |
| 9 | `theorem` | [gauge_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gauge-gaugerescale--b6c1bba2ad2f0281e4ee6127.md) | 72 | `result-track:b6c1bba2ad2f0281e4ee6127413ec1c8a640d6365ed85bf9c0f63e37a0b9c6ab` |
| 10 | `theorem` | [gaugeRescale_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescale-gaugerescale--5f14ff0fe2f200d24c5395c4.md) | 78 | `result-track:5f14ff0fe2f200d24c5395c43b8de04dbd9ae1756c918cf85b9a69a19d2271c4` |
| 11 | `def` | [gaugeRescaleEquiv](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescaleequiv--6c415d941b65c62abaf3ce11.md) | 86 | `declaration-track:6c415d941b65c62abaf3ce11d078dd7ee08ebb6cc83e29bc4e3d513161d6f988` |
| 12 | `theorem` | [mapsTo_gaugeRescale_interior](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/mapsto-gaugerescale-interior--330d607337ea3c5f6755b030.md) | 97 | `result-track:330d607337ea3c5f6755b0301cbecd6f4f08f5aae8c077b2e565b214e3c815e6` |
| 13 | `theorem` | [mapsTo_gaugeRescale_closure](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/mapsto-gaugerescale-closure--54b70708fa51d97e73c97c87.md) | 102 | `result-track:54b70708fa51d97e73c97c87d684e96f94f92fc32b29b23b93ed7b529234f62e` |
| 14 | `theorem` | [continuous_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/continuous-gaugerescale--c55b2933a4c2ab6468dd577c.md) | 110 | `result-track:c55b2933a4c2ab6468dd577c33f9f1b51f6e163b05938a9b9914b06152e54620` |
| 15 | `def` | [gaugeRescaleHomeomorph](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/gaugerescalehomeomorph--56615c2ae479d3c75e9aec66.md) | 124 | `declaration-track:56615c2ae479d3c75e9aec66a95f24f0b8b4bde296b620cab56092bc5eab5795` |
| 16 | `theorem` | [image_gaugeRescaleHomeomorph_interior](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/image-gaugerescalehomeomorph-interior--f06cef8c0bd7a933b3e25dea.md) | 131 | `result-track:f06cef8c0bd7a933b3e25dea599f750bcb8264ca4f93a7feba4f2694935770bd` |
| 17 | `theorem` | [image_gaugeRescaleHomeomorph_closure](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/image-gaugerescalehomeomorph-closure--38304cb4358dccf23109e7d8.md) | 139 | `result-track:38304cb4358dccf23109e7d8b6ec201f9c021eba13dc9bdbb4029c0b11ef288f` |
| 18 | `theorem` | [exists_homeomorph_image_eq](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/exists-homeomorph-image-eq--d1fa3f4e5e7e0380a0709fd7.md) | 156 | `result-track:d1fa3f4e5e7e0380a0709fd76a57c06f380439a23c46bea13282fa19ca69b3d9` |
| 19 | `theorem` | [exists_homeomorph_image_interior_closure_frontier_eq_unitBall](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variant72d8136df7831ee5c58b1d221bd3664722f2e46e222f2e2007d30fce5862cab0.lean/declarations/exists-homeomorph-image-interior-closure-frontier-eq-unitball--0d58b9dd861062d399901bf4.md) | 187 | `result-track:0d58b9dd861062d399901bf48273ff66c347070c3b01988334450b41594092a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
