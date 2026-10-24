# Verification target: GRWTSK.Analysis.ReciprocalKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9670d9ba52d6393edddd1f8e7667129b277e1155",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ReciprocalKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Analysis/ReciprocalKernel.lean/index.md) · [Full source](../../../mathematics/Analysis/ReciprocalKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9670d9ba52d6393edddd1f8e7667129b277e1155`.

Source path: `GRWTSK/Analysis/ReciprocalKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ReciprocalKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel--5e8369a71e3e2736ba6df01c.md) | 23 | `declaration-track:5e8369a71e3e2736ba6df01c9fa47dd1004d880865dfca05daaa7b6019bf6dcc` |
| 2 | `theorem` | [kernel_zero](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-zero--b6879505df2a096f68dd7e6f.md) | 26 | `result-track:b6879505df2a096f68dd7e6fc09e4ee416a18adec7631e005afcd73e72c4bbec` |
| 3 | `theorem` | [kernel_zero_sum](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-zero-sum--c7e48dedda2c20d4ef52a2d3.md) | 29 | `result-track:c7e48dedda2c20d4ef52a2d321e6460dfaf917c44ad3887a6b31d97eacf3e8c5` |
| 4 | `theorem` | [kernel_nonneg](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-nonneg--8751529b1579773f0fa61a10.md) | 33 | `result-track:8751529b1579773f0fa61a10ae6236dd54ad563c0a63d448e07e9b13e33de683` |
| 5 | `theorem` | [kernel_antitone](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-antitone--ab40a06327afd02ece3d20e1.md) | 38 | `result-track:ab40a06327afd02ece3d20e1cbccfdb6846ec2cd4fb34b9570d85fc6ad701c7f` |
| 6 | `theorem` | [kernel_quarter_le](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-quarter-le--53f9bddf67688764c3c31f9c.md) | 47 | `result-track:53f9bddf67688764c3c31f9c1979aeeb982b00dc577d054835d14f0e561bf012` |
| 7 | `def` | [primitive](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/primitive--d83cc25e6dc4cb77212bfcde.md) | 53 | `declaration-track:d83cc25e6dc4cb77212bfcde3e595d2d445fc9af9977fcfff1de62440a2879d2` |
| 8 | `theorem` | [hasDerivAt_primitive](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/hasderivat-primitive--3143b5ec0716a8161c7f1089.md) | 56 | `result-track:3143b5ec0716a8161c7f1089d73efc3c251b8ecee11685d6f6af6e73830b524f` |
| 9 | `theorem` | [primitive_tendsto](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/primitive-tendsto--96b0d7b580d2042ea3297cad.md) | 68 | `result-track:96b0d7b580d2042ea3297cad5ad8d19444ddc5d175fac8215a3d90724a76833d` |
| 10 | `theorem` | [kernel_integrable](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-integrable--62ac62b9295a8cebb4d5143e.md) | 76 | `result-track:62ac62b9295a8cebb4d5143e4bce51e2f98c98f32598f1433e11b5f2d67e4db7` |
| 11 | `theorem` | [kernel_integral](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-integral--e0435aad6766682e5fdd0958.md) | 83 | `result-track:e0435aad6766682e5fdd0958fdef8657625e9eb95185926e457820d6d5b99893` |
| 12 | `theorem` | [kernel_integral_quarter](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-integral-quarter--1f8c618abb2140a6f510f0bd.md) | 91 | `result-track:1f8c618abb2140a6f510f0bdeba90da759897e5b5f415daad2051c5405d4fb48` |
| 13 | `theorem` | [shifted_primitive_tendsto](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/shifted-primitive-tendsto--53f13f3fdadfd28ecbb225ca.md) | 100 | `result-track:53f13f3fdadfd28ecbb225ca9e34a9e7ceed9ce669a8abd7e40337b98e80ab0e` |
| 14 | `theorem` | [shifted_kernel_integrable](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/shifted-kernel-integrable--c0ea1b55bb0f284cb6b6312b.md) | 105 | `result-track:c0ea1b55bb0f284cb6b6312bad2e02e805992493f69b3d247b35990982bb83f9` |
| 15 | `theorem` | [shifted_kernel_integral](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/shifted-kernel-integral--3199a97e469902aff072af86.md) | 119 | `result-track:3199a97e469902aff072af86f0adf30d10b99331bba4a56b33143a19768945be` |
| 16 | `theorem` | [decreasing_sum_bounds](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/decreasing-sum-bounds--e54d825b0722d43cf60a703d.md) | 134 | `result-track:e54d825b0722d43cf60a703dac878429b92f34b3f2720bff35ab08c3976fd1df` |
| 17 | `theorem` | [shifted_kernel_antitone](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/shifted-kernel-antitone--e0afaca868e2718dc08fa8a4.md) | 142 | `result-track:e0afaca868e2718dc08fa8a46a8033dec95ff262cd4b2939455922a85c7725d5` |
| 18 | `theorem` | [kernel_summable](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-summable--36e91159da968dc0c4a5f457.md) | 151 | `result-track:36e91159da968dc0c4a5f4574d53d1ac1177c22c694a8883ec14c14789b89dec` |
| 19 | `theorem` | [kernel_sum_bounds](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/kernel-sum-bounds--b62d3b272c7e336cd83f4d1a.md) | 158 | `result-track:b62d3b272c7e336cd83f4d1af87df07c4d9dd6d3835495bce41ca88cfaeb3ca3` |
| 20 | `theorem` | [sum_bounds](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/sum-bounds--508495e0763025b1c0c03909.md) | 170 | `result-track:508495e0763025b1c0c0390954608d3d5fa39aa40309746407c4337bab5549a5` |
| 21 | `theorem` | [frequency_sum_bounds](../../../mathematics/Analysis/ReciprocalKernel.lean/declarations/frequency-sum-bounds--68601725991d8766df0c3ddf.md) | 179 | `result-track:68601725991d8766df0c3ddf82c561386a271d44bf16a22d8d1cc2b3775bb27d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
