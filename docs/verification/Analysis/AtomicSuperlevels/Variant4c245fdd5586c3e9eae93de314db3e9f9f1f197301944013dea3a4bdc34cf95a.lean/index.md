# Verification target: GRWTSK.Analysis.AtomicSuperlevels.Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "836d73fecf283c4b177d320ae708960790b07d55",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md) · [Full source](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `836d73fecf283c4b177d320ae708960790b07d55`.

Source path: `GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Integral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomicMeasure](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/atomicmeasure--9968dfffe8330241b40246b1.md) | 32 | `declaration-track:9968dfffe8330241b40246b1cc097d565b4f1303b0eca272bd7d3d75fec72db5` |
| 2 | `def` | [superlevelMass](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/superlevelmass--f77f786dfaa3403ce8a14279.md) | 39 | `declaration-track:f77f786dfaa3403ce8a1427930b39ef28f29adc5ce205d2923aa506be01e7249` |
| 3 | `theorem` | [atomic_lintegral](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/atomic-lintegral--1030c958f5487ec91efcc1a2.md) | 42 | `result-track:1030c958f5487ec91efcc1a230615745b3cc047bca8de1ac63c4fc88ecdd4c4c` |
| 4 | `theorem` | [atomic_superlevel_measure](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/atomic-superlevel-measure--eb23233402b0020bd3452505.md) | 48 | `result-track:eb23233402b0020bd345250586aefabad090f7501b389c7bd43f2ede439b0d76` |
| 5 | `theorem` | [weighted_layercake](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/weighted-layercake--9b2cd0c80d9b901e9b4893d7.md) | 59 | `result-track:9b2cd0c80d9b901e9b4893d75189b5019113d2c32e35bf793d9f7128b37fa87d` |
| 6 | `theorem` | [superlevel_above_one_zero](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/superlevel-above-one-zero--10bfc72027df9cea8bbc9021.md) | 71 | `result-track:10bfc72027df9cea8bbc9021a67c99015947ad4f4654f57102be27614a2bd0d3` |
| 7 | `theorem` | [unit_superlevel_integral](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/unit-superlevel-integral--5fe5d16bb0c97c0820782800.md) | 77 | `result-track:5fe5d16bb0c97c082078280082192821606d46296ba41658ed3d88038dde08f4` |
| 8 | `theorem` | [unit_panel_moment](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/unit-panel-moment--56176e5f75dbb823e1fc2876.md) | 92 | `result-track:56176e5f75dbb823e1fc28761eb202457af3ec19099f8cbb8972d89692d0acb2` |
| 9 | `theorem` | [scaled_panel_moment](../../../../mathematics/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/declarations/scaled-panel-moment--1be978b48b96df74a5f8d395.md) | 100 | `result-track:1be978b48b96df74a5f8d395bc51bff3e45b675930902c5e9270c8bdf2478163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
