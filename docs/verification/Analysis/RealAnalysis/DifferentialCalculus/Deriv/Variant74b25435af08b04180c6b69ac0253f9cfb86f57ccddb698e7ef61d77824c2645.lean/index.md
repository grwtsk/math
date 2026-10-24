# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "216fbf6b864f68553b0dec5da4f18cf3473f714f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `216fbf6b864f68553b0dec5da4f18cf3473f714f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MellinTransform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GammaIntegral_eq_mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/gammaintegral-eq-mellin--e26442377d7ac2f4b9a1f890.md) | 41 | `result-track:e26442377d7ac2f4b9a1f890ffbebc990d528a5d1f5844134f1a031f96a5f542` |
| 2 | `theorem` | [hasDerivAt_GammaIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/hasderivat-gammaintegral--13e6db72069a146a3141fc59.md) | 46 | `result-track:13e6db72069a146a3141fc59be33d7edb04c4cec7911eadf9453beff5765f80c` |
| 3 | `theorem` | [differentiableAt_GammaAux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/differentiableat-gammaaux--c2d5c00cd1ffc1f71ddc75ec.md) | 60 | `result-track:c2d5c00cd1ffc1f71ddc75ecd6207057f83dc524dc9d0b2d6c248a17f08bf73b` |
| 4 | `theorem` | [differentiableAt_Gamma](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/differentiableat-gamma--45a38a6780bfd00fd4bfb01d.md) | 80 | `result-track:45a38a6780bfd00fd4bfb01d51f86bd9bdc100faac12e0737466d2fec6e00f95` |
| 5 | `theorem` | [tendsto_self_mul_Gamma_nhds_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/tendsto-self-mul-gamma-nhds-zero--5f3d8dde5846fcb10ae43a16.md) | 99 | `result-track:5f3d8dde5846fcb10ae43a1615a4c6a299c9e76bfbd9d34a6c5d606a0011e674` |
| 6 | `theorem` | [differentiableAt_Gamma](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74b25435af08b04180c6b69ac0253f9cfb86f57ccddb698e7ef61d77824c2645.lean/declarations/differentiableat-gamma--1ae642f58078d0f269ece2d3.md) | 114 | `result-track:1ae642f58078d0f269ece2d31d4f4ace8c4b11118b2f5a89b315414d208fe2f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
