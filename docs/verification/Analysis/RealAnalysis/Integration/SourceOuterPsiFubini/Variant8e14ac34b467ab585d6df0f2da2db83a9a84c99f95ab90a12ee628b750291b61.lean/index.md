# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07d2ae1f6c2bae96f2a27d29e129611fc93c64f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07d2ae1f6c2bae96f2a27d29e129611fc93c64f8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/finitedensity--60265b74027c057c52120cdc.md) | 20 | `declaration-track:60265b74027c057c52120cdc4ff833632da2ee06262b168140f2760cb8bfc2b4` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/threshold-order--bf23b6b247fef1805ddfdb15.md) | 25 | `result-track:bf23b6b247fef1805ddfdb151f9d0c8406cad5a66f866553a7eccd7fc1138772` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/finitedensity-integrable--68ba5f2b033001e6ae7ed6f9.md) | 29 | `result-track:68ba5f2b033001e6ae7ed6f9a29b7b0666930c2516337a8de4110a73556016fe` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/density-left-slice--c3c23161dc3c65908c872895.md) | 84 | `result-track:c3c23161dc3c65908c872895c94a68afdd2b0ad476a4a84501ede22ace48f68e` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/density-right-slice--c8c069da27ffb18c16f4cbb4.md) | 106 | `result-track:c8c069da27ffb18c16f4cbb431e032316ffc4bbb6b45978c1025fd896942a067` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/declarations/actualfinitesecondreadout-outer-fubini--7207d4c667b6a9a3cd73ac03.md) | 132 | `result-track:7207d4c667b6a9a3cd73ac03d730f17794e08e388fecc29290bfb219f5f7bd4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
