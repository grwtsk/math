# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Inversion.Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "113798fb194ea6075be43394a625d05c70f2b656",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `113798fb194ea6075be43394a625d05c70f2b656`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.PeakFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_integral_cexp_sq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/tendsto-integral-cexp-sq-smul--52a901b12a88929faa1a53bf.md) | 58 | `result-track:52a901b12a88929faa1a53bf212961cac0d9bf107798401e91739dcfaff5f8ef` |
| 2 | `lemma` | [tendsto_integral_gaussian_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/tendsto-integral-gaussian-smul--396495bd56ace62c72ebe39e.md) | 79 | `result-track:396495bd56ace62c72ebe39ebb43f0b6660d260c8555c90eb92055e3e25a33cd` |
| 3 | `lemma` | [tendsto_integral_gaussian_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/tendsto-integral-gaussian-smul--081a4966f0801ab4477302c5.md) | 112 | `result-track:081a4966f0801ab4477302c54ae4120368e220a854b88e72d069484d67c569b5` |
| 4 | `theorem` | [MeasureTheory.Integrable.fourier_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/measuretheory-integrable-fourier-inversion--7edda939376cc2fad42b7d94.md) | 167 | `result-track:7edda939376cc2fad42b7d946d5696d3a9b05b31c4179d176a7a5a1beb14ac91` |
| 5 | `theorem` | [Continuous.fourier_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/continuous-fourier-inversion--d49156bbd0e50b128a61406e.md) | 176 | `result-track:d49156bbd0e50b128a61406ee59f32c38340080a7e2f65803d9c913e5092e6fc` |
| 6 | `theorem` | [MeasureTheory.Integrable.fourier_inversion_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/measuretheory-integrable-fourier-inversion-inv--80c80005511372da24754f32.md) | 185 | `result-track:80c80005511372da24754f32b0e739de6435469fc52e8c4de618a8423f11153e` |
| 7 | `theorem` | [Continuous.fourier_inversion_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant5f2f6da3cff8081eef817827f5f657d5bb29169c1ec9c1113cc5a09ac31b5100.lean/declarations/continuous-fourier-inversion-inv--036344bb06afb46ff7c16a11.md) | 194 | `result-track:036344bb06afb46ff7c16a11eedfe90f1b40f478ad0df1fd834ac409d849574f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
