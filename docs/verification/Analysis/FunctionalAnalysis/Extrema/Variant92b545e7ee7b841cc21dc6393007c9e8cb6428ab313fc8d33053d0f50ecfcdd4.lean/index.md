# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extrema.Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05eb31c596c5ec588c580395baf2320b108e6a5f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05eb31c596c5ec588c580395baf2320b108e6a5f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalExtr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/declarations/isminon-of-islocalminon-of-convexon-icc--b1b4b9903577f900b791aebd.md) | 38 | `result-track:b1b4b9903577f900b791aebd5ea310a47b9f3b47868c00b31d682c8b400a608f` |
| 2 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/declarations/isminon-of-islocalminon-of-convexon--7a534d47ed7e2a066127ae71.md) | 61 | `result-track:7a534d47ed7e2a066127ae71fb6234d282f579fec6305d9a570547d84946319b` |
| 3 | `theorem` | [IsMaxOn.of_isLocalMaxOn_of_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/declarations/ismaxon-of-islocalmaxon-of-concaveon--18d390bbda40708ec0500ab1.md) | 80 | `result-track:18d390bbda40708ec0500ab1d88b7647976ef93ce136327c81772b1dd85b0752` |
| 4 | `theorem` | [IsMinOn.of_isLocalMin_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/declarations/isminon-of-islocalmin-of-convex-univ--e3d0142661a68070373b9411.md) | 86 | `result-track:e3d0142661a68070373b9411f80383624ed82bc5e712148aa2d989cbb54636d2` |
| 5 | `theorem` | [IsMaxOn.of_isLocalMax_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant92b545e7ee7b841cc21dc6393007c9e8cb6428ab313fc8d33053d0f50ecfcdd4.lean/declarations/ismaxon-of-islocalmax-of-convex-univ--126fb59e08caf176faad4c33.md) | 92 | `result-track:126fb59e08caf176faad4c33d2f70c97e032654cd37a6ad3501dce7fc44c1996` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
