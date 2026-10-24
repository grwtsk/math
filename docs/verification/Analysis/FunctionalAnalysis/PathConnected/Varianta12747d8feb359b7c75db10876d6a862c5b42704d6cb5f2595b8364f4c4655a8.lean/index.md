# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PathConnected.Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa52440c1eb698b739e2106a4d364f117e290bc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa52440c1eb698b739e2106a4d364f117e290bc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/segment--130eb747d39fc7443e9f7883.md) | 39 | `declaration-track:130eb747d39fc7443e9f7883cb2b0e2c23d67913ae969ab8a516063e642fba1b` |
| 2 | `theorem` | [range_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/range-segment--05dd50a7275d50f829afe44e.md) | 45 | `result-track:05dd50a7275d50f829afe44ed87be61f09a2f28bc8b84a2ea1dd2dcefa6c96d1` |
| 3 | `theorem` | [segment_same](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/segment-same--2ac2bd485f5ebda257971cdf.md) | 50 | `result-track:2ac2bd485f5ebda257971cdf53120dc6a0154995c6ba3da16c911219f52f0623` |
| 4 | `theorem` | [segment_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/segment-symm--29e2f68ba3dd4236210708db.md) | 53 | `result-track:29e2f68ba3dd4236210708db83af04c9ae9fb3d0ca7188ebf65f93acd9d64bf5` |
| 5 | `theorem` | [segment_add_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/segment-add-segment--f8b64d3c399fc4eaaa0dc73a.md) | 57 | `result-track:f8b64d3c399fc4eaaa0dc73a24a60e1d9ee9560faaa596d771d707412c3e7dd5` |
| 6 | `theorem` | [cast_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/cast-segment--61ac91e75f92c05dada95273.md) | 63 | `result-track:61ac91e75f92c05dada9527310a2c8c22bf4b34e3d4d972ee9446640b55320e6` |
| 7 | `theorem` | [JoinedIn.of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/joinedin-of-segment-subset--5c1adcabfd33482bdf92c8d5.md) | 69 | `result-track:5c1adcabfd33482bdf92c8d513a91f39ed83dfafa317521961aa85654b8141ed` |
| 8 | `theorem` | [StarConvex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/starconvex-ispathconnected--0ae5e3af54e53ffe77ce3d04.md) | 73 | `result-track:0ae5e3af54e53ffe77ce3d0406f57c8ceb8ba555507d52819cbcc5e6e4738e2b` |
| 9 | `theorem` | [Convex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/convex-ispathconnected--954db01cdbd2746659115d8b.md) | 78 | `result-track:954db01cdbd2746659115d8b471e24557ed096340943bb69d39ba066da5b62f1` |
| 10 | `theorem` | [Convex.isConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/convex-isconnected--f84e7bfec65b68de3aaec4e4.md) | 83 | `result-track:f84e7bfec65b68de3aaec4e46af5918356aed661ee7f4f23a5c8aceed270913a` |
| 11 | `theorem` | [Convex.isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/convex-ispreconnected--ac067815ea6e23c1ec98d870.md) | 88 | `result-track:ac067815ea6e23c1ec98d870d76a64f6645455c097da8d2fa3fd7506b6c0960b` |
| 12 | `theorem` | [Submodule.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/submodule-ispathconnected--9306a1c3b123b4faf94551a8.md) | 93 | `result-track:9306a1c3b123b4faf94551a887d1c6dbc304b427c0a5353e4b5d30e0e896090a` |
| 13 | `theorem` | [IsTopologicalAddGroup.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/istopologicaladdgroup-pathconnectedspace--988f64c240e85de3f92fadbd.md) | 100 | `result-track:988f64c240e85de3f92fadbd3abb960cc0c9018baeb3a92ca4cc0aee49d523e6` |
| 14 | `theorem` | [isPathConnected_compl_of_isPathConnected_compl_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PathConnected/Varianta12747d8feb359b7c75db10876d6a862c5b42704d6cb5f2595b8364f4c4655a8.lean/declarations/ispathconnected-compl-of-ispathconnected-compl-zero--90c45b3ea9fbb5321c5b1b3a.md) | 105 | `result-track:90c45b3ea9fbb5321c5b1b3a013de1f95167d064bce87705dc3e2bb162651a7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
