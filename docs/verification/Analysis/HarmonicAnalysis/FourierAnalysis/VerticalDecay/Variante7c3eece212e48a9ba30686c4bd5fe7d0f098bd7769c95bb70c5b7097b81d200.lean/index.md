# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalDecay.Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4cafb8ca3777a9ee3f4f86f0a9a78f4be5d2d9e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4cafb8ca3777a9ee3f4f86f0a9a78f4be5d2d9e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceSliceSchwartz](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/laplacesliceschwartz--99a5a924b1d37bdea37f96a9.md) | 38 | `declaration-track:99a5a924b1d37bdea37f96a9eb570101ff9d7e18704f20aaddba14799d855f4f` |
| 2 | `theorem` | [laplaceSliceSchwartz_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/laplacesliceschwartz-apply--cf4d68e8327e475ecd771225.md) | 50 | `result-track:cf4d68e8327e475ecd771225ba6681e59f90060fce1ff12d4a0ba91039d3612d` |
| 3 | `theorem` | [primitiveWeilLaplace_eq_fourier_laplaceSlice](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/primitiveweillaplace-eq-fourier-laplaceslice--c543b939be54743fe510e92a.md) | 59 | `result-track:c543b939be54743fe510e92a1a907fc88566ac04699b118dfe5a399e03030631` |
| 4 | `theorem` | [primitiveWeilLaplace_vertical_normalized_pow_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/primitiveweillaplace-vertical-normalized-pow-bound--90ad444063d72ac5f219303e.md) | 87 | `result-track:90ad444063d72ac5f219303e6ecfeb272ffcba736f4e279eeaf1f0e8ed8a384c` |
| 5 | `theorem` | [primitiveWeilLaplace_vertical_pow_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/primitiveweillaplace-vertical-pow-bound--2f001373d026c8e7c2814535.md) | 102 | `result-track:2f001373d026c8e7c281453560b83c7d0ac1637e78017c80704754b5d7a94a1f` |
| 6 | `theorem` | [primitiveWeilLaplace_decay_fixedRealPart](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/VerticalDecay/Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200.lean/declarations/primitiveweillaplace-decay-fixedrealpart--9d4fb658067ad829ea3ae6e5.md) | 121 | `result-track:9d4fb658067ad829ea3ae6e508174fffbec67a7e10d3353cdc9ec237f8d31f5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
