# Verification target: GRWTSK.Analysis.Complex.TentHorizontalRayMajorant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c01638c882fed0a2d4032ee54dc4f6052205d16",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c01638c882fed0a2d4032ee54dc4f6052205d16`.

Source path: `GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentHorizontalRayMajorant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentContourMajorants`](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affinePowerPrimitive](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affinepowerprimitive--759f679f66e5b3dca4c89a4e.md) | 28 | `declaration-track:759f679f66e5b3dca4c89a4e7ac77ab7186eefbd4c52a8fb336f2ac8f176e0a6` |
| 2 | `def` | [affineProfilePrimitive](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineprofileprimitive--e6bf8b03c3fdb43e17d37d54.md) | 32 | `declaration-track:e6bf8b03c3fdb43e17d37d542193ea990e5bfc1f48d99250032069dee80104d1` |
| 3 | `def` | [affineRayBudget](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineraybudget--e9a23f26800a531d7ba0aa32.md) | 37 | `declaration-track:e9a23f26800a531d7ba0aa328bbcc36a235e6f3b16e6df5dd056dcced4344b78` |
| 4 | `def` | [shiftMomentBudget](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/shiftmomentbudget--9bb53e5c3eba5f5eebed50ba.md) | 40 | `declaration-track:9bb53e5c3eba5f5eebed50ba44c079f4a781939b2b2e3d48b33e93936fb23e05` |
| 5 | `theorem` | [affineRayBudget_eq](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineraybudget-eq--0be854e80e7da6c3626117b0.md) | 45 | `result-track:0be854e80e7da6c3626117b0fe46caef6bc6686175e093a790d1f9512a2b20e4` |
| 6 | `theorem` | [affinePowerPrimitive_deriv](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affinepowerprimitive-deriv--32b4c04fae40116ef267d310.md) | 52 | `result-track:32b4c04fae40116ef267d31071423c74bdfe7173dd52ff9a9a18681a560eb33c` |
| 7 | `theorem` | [affineProfilePrimitive_deriv](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineprofileprimitive-deriv--0123ed935afeece02be4dc28.md) | 69 | `result-track:0123ed935afeece02be4dc2811e94d51383d0540ab3d9b36f0bc0cda69bfc414` |
| 8 | `theorem` | [affinePowerPrimitive_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affinepowerprimitive-nonneg--a1d106e0d8932fdb32555566.md) | 77 | `result-track:a1d106e0d8932fdb32555566e305f0fa8ee4fb91582866b7692ca77949458f13` |
| 9 | `theorem` | [affineProfilePrimitive_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineprofileprimitive-nonneg--642aa0d09e906181106c30e9.md) | 84 | `result-track:642aa0d09e906181106c30e954b92690cef1b13be2bb83836a276a406b861338` |
| 10 | `theorem` | [affineRayBudget_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/affineraybudget-nonneg--d73fbd6690cfde4cb4a1cc25.md) | 92 | `result-track:d73fbd6690cfde4cb4a1cc25e636ffa34db4ad7f2a765ec29af0cef265e9fd87` |
| 11 | `theorem` | [shiftMomentBudget_pos](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/shiftmomentbudget-pos--b5716171395b8fc6cf06e89f.md) | 96 | `result-track:b5716171395b8fc6cf06e89f3bd4fe2aba4c33f706cc0e3bf982e006c10e0443` |
| 12 | `theorem` | [integral_affine_envelope_le](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/integral-affine-envelope-le--7175b4b833b7e445e9ddcecb.md) | 105 | `result-track:7175b4b833b7e445e9ddcecb74bba7282465fb36ed169f873511ed99e6bbb1a1` |
| 13 | `theorem` | [integral_norm_le_of_affine_envelope](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/integral-norm-le-of-affine-envelope--30814450c659dad685189601.md) | 123 | `result-track:30814450c659dad685189601be10f08b967782d4ae8f4a1a3f36c59751c6f94f` |
| 14 | `theorem` | [integrableOn_Iic_of_affine_envelope](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/integrableon-iic-of-affine-envelope--73bccbd3994c1a8c9a58daa7.md) | 138 | `result-track:73bccbd3994c1a8c9a58daa7fc825eb148d7f64cd90aae8da9efdef874ed4dda` |
| 15 | `theorem` | [integral_norm_Iic_le_of_affine_envelope](../../../../mathematics/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/declarations/integral-norm-iic-le-of-affine-envelope--4e3546b608dee3ded25b1f0f.md) | 152 | `result-track:4e3546b608dee3ded25b1f0f2bbacba5675a5e3af09b73599151e7f60af51f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
