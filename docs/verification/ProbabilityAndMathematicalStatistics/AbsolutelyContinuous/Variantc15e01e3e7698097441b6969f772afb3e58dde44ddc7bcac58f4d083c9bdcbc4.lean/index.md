# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.AbsolutelyContinuous.Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5397b31e0bacc05d0cdfe3a45afc0f1ddca2c80c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5397b31e0bacc05d0cdfe3a45afc0f1ddca2c80c`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.RadonNikodym` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MutuallySingular.compProd_of_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/mutuallysingular-compprod-of-right--c2fd8cb73bdf8dbad6f549f8.md) | 38 | `result-track:c2fd8cb73bdf8dbad6f549f812e3084f81d9d626a89e7b1517aa7e27eea59b5d` |
| 2 | `lemma` | [MutuallySingular.compProd_of_right'](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/mutuallysingular-compprod-of-right--7f529960d27d9727267afeaf.md) | 57 | `result-track:7f529960d27d9727267afeaffeca8adc7dee204be3bb0a31cb292a65b6707aba` |
| 3 | `lemma` | [mutuallySingular_compProd_right_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/mutuallysingular-compprod-right-iff--dbf051ef467a749854ba8664.md) | 62 | `result-track:dbf051ef467a749854ba8664073b8838767491d15858e9614e9951992072d153` |
| 4 | `lemma` | [AbsolutelyContinuous.kernel_of_compProd](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/absolutelycontinuous-kernel-of-compprod--1db98cac76fa34be1e1178b5.md) | 67 | `result-track:1db98cac76fa34be1e1178b567a1384366eb56a6e30edc2ea1a36bb7c96b6783` |
| 5 | `lemma` | [absolutelyContinuous_compProd_iff'](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/absolutelycontinuous-compprod-iff--5f9306b97499cf83474a1bc5.md) | 78 | `result-track:5f9306b97499cf83474a1bc5aaac1ca8138f7b429da680ed1499e8d85d5204c8` |
| 6 | `lemma` | [absolutelyContinuous_compProd_right_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/declarations/absolutelycontinuous-compprod-right-iff--c04c7753ed0b156bfac0571e.md) | 82 | `result-track:c04c7753ed0b156bfac0571e1f254fcb7e63afe79bc609bd4158935243cbdaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
