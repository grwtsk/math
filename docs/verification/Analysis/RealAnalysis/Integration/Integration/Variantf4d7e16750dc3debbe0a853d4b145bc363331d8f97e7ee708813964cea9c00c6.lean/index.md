# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adfee145593169e2b9b77f148993872723df788b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adfee145593169e2b9b77f148993872723df788b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-mul-indicator-eq-lintegral-mul-lintegral-indicator--0628cc12ebf17639d5d6b26d.md) | 51 | `result-track:0628cc12ebf17639d5d6b26d95ff3330e050e5966a4ddee3caa22e7972f4876e` |
| 2 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-independent-measurablespace--5968ca625d9858b9b68ea883.md) | 87 | `result-track:5968ca625d9858b9b68ea88335b281fb0d576bcb0551df297f9cd7371418e09e` |
| 3 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--b38e9ed72115df60e88ec99e.md) | 113 | `result-track:b38e9ed72115df60e88ec99ec8caebff0f1732059bf342f4f751ad15d3ea11fe` |
| 4 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--88de5d53dbe701122cc5acf6.md) | 123 | `result-track:88de5d53dbe701122cc5acf6a51c16d2de32bad02075896ccc09927594b0e38e` |
| 5 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--d20675cc0a62a39c8e5eb6ad.md) | 133 | `result-track:d20675cc0a62a39c8e5eb6ad876ac36095016cfd866a3580ce0a594e9642bbcb` |
| 6 | `theorem` | [lintegral_prod_eq_prod_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/lintegral-prod-eq-prod-lintegral-of-indepfun--2a2a9fbff34f6faa208f50fb.md) | 138 | `result-track:2a2a9fbff34f6faa208f50fb13c9a5f9fcb0e2d1804aa48359b71dc7c421e4d5` |
| 7 | `theorem` | [IndepFun.integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integrable-mul--cca53f7c91008a123e6296c8.md) | 153 | `result-track:cca53f7c91008a123e6296c8ec98328276ab818fbdb96cb5023ac9efc1c4d917` |
| 8 | `theorem` | [IndepFun.integrable_left_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integrable-left-of-integrable-mul--5592509e2e80f0d72d0f6e4f.md) | 170 | `result-track:5592509e2e80f0d72d0f6e4ff2aafb106a5a604bcecf28c4762c3e6884330a06` |
| 9 | `theorem` | [IndepFun.integrable_right_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integrable-right-of-integrable-mul--38ba6312a6af95a2a5c00933.md) | 190 | `result-track:38ba6312a6af95a2a5c00933db2c9c7f8bbb29eefa2ca55ec64f4d2a52c0c631` |
| 10 | `theorem` | [IndepFun.integral_mul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integral-mul-of-nonneg--22089346b40eaa0c2766c79b.md) | 212 | `result-track:22089346b40eaa0c2766c79bb81ac3ef9b095e9673546db2e4fd2895d15c2b6c` |
| 11 | `theorem` | [IndepFun.integral_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integral-mul-of-integrable--73e92e8f460bfa994c27c310.md) | 233 | `result-track:73e92e8f460bfa994c27c310c57f0a8e72c5dc1b02af3867fc7b6d166160c781` |
| 12 | `theorem` | [IndepFun.integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integral-mul--7d269595eff5de54a261b606.md) | 277 | `result-track:7d269595eff5de54a261b60615ee084d52ba47fce52c860cdf996ceb5607716c` |
| 13 | `theorem` | [IndepFun.integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-integral-mul--3002f2593c0884eea9e76ccd.md) | 302 | `result-track:3002f2593c0884eea9e76ccd1d02a88a74d4db815dc9da9df5fdcd85cd06c800` |
| 14 | `theorem` | [indepFun_iff_integral_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/declarations/indepfun-iff-integral-comp-mul--25fe0bdc5f62ee1965f07d91.md) | 310 | `result-track:25fe0bdc5f62ee1965f07d91e0ae7a2e56ef621f778c77df6179acee556ffb3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
