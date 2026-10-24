# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e3d9cec73f185cbced950be61c011878c93f835",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e3d9cec73f185cbced950be61c011878c93f835`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel--57e1cf7370c6aabc62b87d29.md) | 28 | `declaration-track:57e1cf7370c6aabc62b87d29623388a018f6a08df1f96f0de3f5a118e9c3422e` |
| 2 | `theorem` | [kernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-zero--ef007a16330a1d30857cd46f.md) | 31 | `result-track:ef007a16330a1d30857cd46fef02f2790d99b82b49701110ce89859a49d1fbde` |
| 3 | `theorem` | [kernel_zero_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-zero-sum--17f4e942193f958c1e958f7b.md) | 34 | `result-track:17f4e942193f958c1e958f7b4441e466cda5fcbd51f815063a919fe5c8d9dd85` |
| 4 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-nonneg--14dda25e39dfbbd4d61c4bbc.md) | 38 | `result-track:14dda25e39dfbbd4d61c4bbca1f2c0f6b02fc635b3c803a5f8057d7145d3554a` |
| 5 | `theorem` | [kernel_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-antitone--8ebe3e562d22d8c4e219dcbe.md) | 43 | `result-track:8ebe3e562d22d8c4e219dcbe984bd13ef06dd58924b26394d6aeaeadc917b008` |
| 6 | `theorem` | [kernel_quarter_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-quarter-le--bd54cadfc874c57d703b2df4.md) | 52 | `result-track:bd54cadfc874c57d703b2df46d20817e2af722ea65032b6ec276397ca8bf9908` |
| 7 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/primitive--8de0294051d998db676183ec.md) | 58 | `declaration-track:8de0294051d998db676183ece0c542f9b4e33b3b7ca548650e959b16ace2f97e` |
| 8 | `theorem` | [hasDerivAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/hasderivat-primitive--e0f76ab66e22059790141ff6.md) | 61 | `result-track:e0f76ab66e22059790141ff650f7be68b7e02ffec18cdfaae4e83f5c5e779f0a` |
| 9 | `theorem` | [primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/primitive-tendsto--284e0f15867a959581dd1024.md) | 73 | `result-track:284e0f15867a959581dd1024ec93544c713c52a6d3060d8125706a8018fdd08a` |
| 10 | `theorem` | [kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-integrable--b0aebab9909b7c56212f8b89.md) | 81 | `result-track:b0aebab9909b7c56212f8b89b17624f6def3efec1fe36c656a987694cfc0cad5` |
| 11 | `theorem` | [kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-integral--b2c5071523a2bade02e080e4.md) | 88 | `result-track:b2c5071523a2bade02e080e4c8c070dcfef0ed48342b196540557929f396b5de` |
| 12 | `theorem` | [kernel_integral_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-integral-quarter--5e4df0d34ad73c28edbbd484.md) | 96 | `result-track:5e4df0d34ad73c28edbbd484f1495d49b81096093d0d74264c07a1b33afa92cf` |
| 13 | `theorem` | [shifted_primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/shifted-primitive-tendsto--c8903d10bddf247e2cb4f65d.md) | 105 | `result-track:c8903d10bddf247e2cb4f65dab819a1c042d2e426efdf1917645d281f92a5229` |
| 14 | `theorem` | [shifted_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/shifted-kernel-integrable--fd4325d3a1d056e055f96225.md) | 110 | `result-track:fd4325d3a1d056e055f96225f6850b428fe3e85514e32e723e9d9dd02d48e0ef` |
| 15 | `theorem` | [shifted_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/shifted-kernel-integral--adf97e338cebefb2bd4b89e0.md) | 124 | `result-track:adf97e338cebefb2bd4b89e075bfcfe986619d2eee17ed8a086607b80feff673` |
| 16 | `theorem` | [decreasing_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/decreasing-sum-bounds--ad0c77603425c7c17b870aa5.md) | 139 | `result-track:ad0c77603425c7c17b870aa5e6c2e3f4ef5576cc971245a0834580e78219b030` |
| 17 | `theorem` | [shifted_kernel_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/shifted-kernel-antitone--ac358943031afe5407f261ac.md) | 147 | `result-track:ac358943031afe5407f261ac253f772e1f409ffde3970dc9add023c68f019524` |
| 18 | `theorem` | [kernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-summable--e74e8091e519e484bb4aa28b.md) | 156 | `result-track:e74e8091e519e484bb4aa28bd1d891b6322522f4c1449e0b612b858e7072d45d` |
| 19 | `theorem` | [kernel_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/kernel-sum-bounds--a762033dc481737db9fce76b.md) | 163 | `result-track:a762033dc481737db9fce76b90d7f2a35b1a567ecccf825fa091b945dd776151` |
| 20 | `theorem` | [sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/sum-bounds--ccaea84a3bb1e818a2ebfc18.md) | 175 | `result-track:ccaea84a3bb1e818a2ebfc18a740596bdc7a29030640b4c1304f77c477fd86a0` |
| 21 | `theorem` | [frequency_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Variant2d3878ac970a71f57bcec41d1fb80557ddebb85861f7ab2969cd0845ba402ddf.lean/declarations/frequency-sum-bounds--b0bd6b62546ab7d10c58530c.md) | 184 | `result-track:b0bd6b62546ab7d10c58530c6f97e0ee7f3092c88f9a167077b77f12bf64af74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
