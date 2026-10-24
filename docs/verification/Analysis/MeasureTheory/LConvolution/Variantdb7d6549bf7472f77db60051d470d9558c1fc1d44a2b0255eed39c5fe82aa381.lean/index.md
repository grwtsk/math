# Verification target: GRWTSK.Analysis.MeasureTheory.LConvolution.Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0da609bef3bb5c050f5468fb8a0381ac6bb3bdcb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0da609bef3bb5c050f5468fb8a0381ac6bb3bdcb`.

Source path: `GRWTSK/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/declarations/mlconvolution--901186848101cb5e0283fb3f.md) | 49 | `declaration-track:901186848101cb5e0283fb3fca20bb93f92cb3cb5cd8b0bdb2bcacb5364b0f9c` |
| 2 | `theorem` | [mlconvolution_def](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/declarations/mlconvolution-def--61e47c39eb57974fada32d7e.md) | 67 | `result-track:61e47c39eb57974fada32d7e0b19d7d65c04ca7321c28602ccc712d5e6d7edca` |
| 3 | `theorem` | [zero_mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/declarations/zero-mlconvolution--cb9bb9c5761fbad38696834e.md) | 73 | `result-track:cb9bb9c5761fbad38696834e8979b2b7af82424cb6f5301d042292cfd4c2c724` |
| 4 | `theorem` | [mlconvolution_zero](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/declarations/mlconvolution-zero--abd25fdda215a2c536f6eb2e.md) | 79 | `result-track:abd25fdda215a2c536f6eb2efe93e5d291863fa693457012a53d885321e68681` |
| 5 | `theorem` | [measurable_mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/declarations/measurable-mlconvolution--53d63d5990e8133444d368a2.md) | 85 | `result-track:53d63d5990e8133444d368a21a660ec56f47cca75973d4c69cd1f507987445cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
