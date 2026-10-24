# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfEnergyV5Source.Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76cc077c1d2ecda3c7f53debe98c364daa8304ea",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76cc077c1d2ecda3c7f53debe98c364daa8304ea`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/forwardhalfkernel--1b862e9757ea4a184f76d5ef.md) | 26 | `declaration-track:1b862e9757ea4a184f76d5eff552f1c225e2fd59fc9e2ac69be98353c1a330a7` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/forwardhalfkernel-continuous--cf4f1619bc3f52c0979a2195.md) | 31 | `result-track:cf4f1619bc3f52c0979a21950c94b9137ffa8581a3834a307e85f51663cc3656` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/forwardhalfkernel-hascompactsupport--86e30b98140060195c81619e.md) | 39 | `result-track:86e30b98140060195c81619ea38839173556ad4d03be77d68995e1978c75b772` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/forwardhalfkernel-integrable--0bd530d690f6400bf3af0845.md) | 61 | `result-track:0bd530d690f6400bf3af0845849908b452eabf382bfd1c57d39c6138d7364ea4` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/sourcecorrelation-eq-plus-shift--b3de7c8087971a13b163b102.md) | 67 | `result-track:b3de7c8087971a13b163b102907c694c15acd301c50bc2a4339eae4a81081d2d` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-eq-forward-integral--dee7caea8c999a8448998ecb.md) | 75 | `result-track:dee7caea8c999a8448998ecbc563c4fda75b4933870b8cb79abaa1b1f07e5045` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--788ca89b63add6599f76577f.md) | 87 | `result-track:788ca89b63add6599f76577f96c0fa41def4aa72e34ecdf504e33a630f1185eb` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-eq-tail-pairing--29426b4d690c5b802295af3d.md) | 125 | `result-track:29426b4d690c5b802295af3dea164dc15b93e20b28e13071b064415a5034eb78` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-eq-half-causal-energy--60ceeb14069bdd65ba5db2d3.md) | 135 | `result-track:60ceeb14069bdd65ba5db2d398b6a5a76d54d237f0ac724216dff3226ccd6074` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-eq-normalized-energy--a6c4cc319c54c030e5534fcb.md) | 141 | `result-track:a6c4cc319c54c030e5534fcbd53cc75171f7dbac635db645adc604c38b6aad22` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-eq-rational--d649183bb4f25f206d0a2937.md) | 149 | `result-track:d649183bb4f25f206d0a2937a899c0e9d011a77b43aaae8b4fe082ff0a7cbc22` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--acb49807f7e80b10ce435eb5.md) | 158 | `result-track:acb49807f7e80b10ce435eb547ac35029ae6d3a98a88ac1a0d7d3309efc511f3` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/criticalcontinuousmoment-eq-rational--16f3904f6c47055dbfd86741.md) | 165 | `result-track:16f3904f6c47055dbfd86741793900338f1c0dd75c0db9a82d18650a5abde442` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/negativesmoothmoment-pos--e0cb79b66078ee210ed8f2bc.md) | 173 | `result-track:e0cb79b66078ee210ed8f2bc2c195907c960a05453d5284fa9278e0a3997a650` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/criticalcontinuousmoment-lt-zero--290f66a6d5bafa3a94a0e111.md) | 179 | `result-track:290f66a6d5bafa3a94a0e1117e720fd28da3055ef3b87d3996f4578df2bb2dd0` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/criticalcontinuousmoment-ne-zero--07834fb1acc169cac47b86bc.md) | 185 | `result-track:07834fb1acc169cac47b86bc311a69963f1cd7d434c7df8fa1460cd4f84d300c` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/declarations/criticalcontinuousmoment-strict-bounds--0b1297b782975c94bc61a825.md) | 189 | `result-track:0b1297b782975c94bc61a82519715d2196d4a223150ca07cf8ea700bb867a472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
