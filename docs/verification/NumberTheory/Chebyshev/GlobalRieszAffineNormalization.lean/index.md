# Verification target: GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c162633e0f9251c3724b11a7454aeaebc60bbff",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c162633e0f9251c3724b11a7454aeaebc60bbff`.

Source path: `GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.RieszCorrectionNormalization`](../../../../mathematics/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity`](../../../../mathematics/NumberTheory/Zeta/Riemann/RieszZeroContinuity.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Real.ContinuousMidpointAffine`](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primitive_eq_moments](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/primitive-eq-moments--c15aff0896c8ed81c5329c18.md) | 28 | `result-track:c15aff0896c8ed81c5329c18653421cfa5730d863e431a5928f80bcc973cc219` |
| 2 | `theorem` | [rationalRieszPrimitive_continuousOn](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/rationalrieszprimitive-continuouson--4f90abbcf7936e1d774fe827.md) | 50 | `result-track:4f90abbcf7936e1d774fe82722b0ef95cc57759aa0a8a638ed2e7bf5ccd79bc0` |
| 3 | `theorem` | [correctedRieszSourceDefect_continuousOn](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/correctedrieszsourcedefect-continuouson--b38da35e25a5fe200d83b5e8.md) | 66 | `result-track:b38da35e25a5fe200d83b5e8458fd6a1a107c17dab0c4196f3ebbdb696e101b5` |
| 4 | `theorem` | [correctedRieszSourceDefect_affine](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/correctedrieszsourcedefect-affine--4a1ecd9c5c8961d5c903c5c8.md) | 78 | `result-track:4a1ecd9c5c8961d5c903c5c810d975d666b5471a8b10b7fb6317f2cfd15d5b47` |
| 5 | `def` | [normalizationAtTwo](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/normalizationattwo--15885a413faa1f5582d65f7f.md) | 90 | `declaration-track:15885a413faa1f5582d65f7fed05bfe5009425fa9f61b439d5f8f9b97d80f3ca` |
| 6 | `def` | [normalizationAtThree](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/normalizationatthree--07209a668e92c83f6a5ab687.md) | 93 | `declaration-track:07209a668e92c83f6a5ab6873efd3445ab9e1e5686d742831a40801040fdc67f` |
| 7 | `theorem` | [firstRieszPrefix_eq_boundary_normalized](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/firstrieszprefix-eq-boundary-normalized--b4bd885f42fdd76892c42ad5.md) | 98 | `result-track:b4bd885f42fdd76892c42ad5cffb4b2964529be51528859554872c9e73c6d047` |
| 8 | `theorem` | [primitive_change_base_all](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/primitive-change-base-all--f2a43566b39c03f7efd4a947.md) | 119 | `result-track:f2a43566b39c03f7efd4a9479c9ddfe6f062e419bff9541963f3d25955597059` |
| 9 | `theorem` | [firstRieszPrefix_eq_global_normalized](../../../../mathematics/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/declarations/firstrieszprefix-eq-global-normalized--f115ee4f443c43a007a58f17.md) | 155 | `result-track:f115ee4f443c43a007a58f17db9b8427e22c21ffe5aff9a0d4a3f790375697ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
