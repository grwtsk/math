# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Monotone.Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c365318095fc0db4ac8e2134d06732b47a1f36",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c365318095fc0db4ac8e2134d06732b47a1f36`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.OneDim` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Extension` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/macro-rules--eb6582ed1c82e3904074e3f9.md) | 47 | `declaration-track:eb6582ed1c82e3904074e3f90592ddbc78a45fdd999d0a19b5b572f8fcea95b7` |
| 2 | `theorem` | [tendsto_apply_add_mul_sq_div_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/tendsto-apply-add-mul-sq-div-sub--408ec3dc8727f9b36489cc71.md) | 54 | `result-track:408ec3dc8727f9b36489cc71cc539574c174f324d0e3dc5ce0bd22f2552f8af3` |
| 3 | `theorem` | [StieltjesFunction.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/stieltjesfunction-ae-hasderivat--8b87365869de97cd397c45a6.md) | 77 | `result-track:8b87365869de97cd397c45a682a536fa6930e51c6e1274c5e4ff1e4ea04326cf` |
| 4 | `theorem` | [Monotone.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/monotone-ae-hasderivat--9018c0c90dda9fbd7123c44d.md) | 146 | `result-track:9018c0c90dda9fbd7123c44da9b31a9d809bc4dc9f22060c21579d0abe260a49` |
| 5 | `theorem` | [Monotone.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/monotone-ae-differentiableat--5ea30a5f0df3f575585fae33.md) | 226 | `result-track:5ea30a5f0df3f575585fae33f3740f9acc9f413a451a248f8e32910b32cee9b6` |
| 6 | `theorem` | [MonotoneOn.ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/monotoneon-ae-differentiablewithinat-of-mem--91b58790d7c98c6312fca4f3.md) | 235 | `result-track:91b58790d7c98c6312fca4f370e5db2ddb18b9bbc5641392874adbdb92d6afd6` |
| 7 | `theorem` | [MonotoneOn.ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variantbd32d21d409320aec625d8e008ad9c22dafb64696be2956085a849edd179a367.lean/declarations/monotoneon-ae-differentiablewithinat--acbc0f95fb02cc711fa5dcfe.md) | 258 | `result-track:acbc0f95fb02cc711fa5dcfe7bf9f8ebad89823c46f7e62042e3280c0b490ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
