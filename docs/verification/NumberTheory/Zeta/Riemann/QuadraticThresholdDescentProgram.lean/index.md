# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc2870529fabda8b556755c2f6dcf8f694660d5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc2870529fabda8b556755c2f6dcf8f694660d5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/OpenAISevenEighthsPort.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthreshold--e09195dab8aafb06bf9099b9.md) | 46 | `declaration-track:e09195dab8aafb06bf9099b9f0348381374fe353fe5a5d804a20f3bb1a014ced` |
| 2 | `theorem` | [quadraticThreshold_sevenEighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthreshold-seveneighths--ccfcce8709c531ef1732bf24.md) | 50 | `result-track:ccfcce8709c531ef1732bf24eac71c3fcb5cc7a68e8c4b18a1d97d77cc1ebb90` |
| 3 | `theorem` | [quadraticThreshold_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthreshold-threequarters--2d076724d644d13c1d1a4290.md) | 55 | `result-track:2d076724d644d13c1d1a42902099cb87036cf8d00af282f83a8beb7929d6b7ab` |
| 4 | `theorem` | [quadraticThreshold_lt_self](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthreshold-lt-self--3848df1f6b5209b2150c6046.md) | 59 | `result-track:3848df1f6b5209b2150c604690593aed841d810860cd8bbeaa87443517bf2da8` |
| 5 | `theorem` | [half_le_quadraticThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/half-le-quadraticthreshold--0aabf406d73730788d3f365e.md) | 65 | `result-track:0aabf406d73730788d3f365efbbc8f88200c56e06ac66bc4a569408f6536ba92` |
| 6 | `theorem` | [quadratic_power_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadratic-power-identity--c11b6505a2aee6f8b81b6e9f.md) | 71 | `result-track:c11b6505a2aee6f8b81b6e9f7f9f9fd0ea73b40a32a019f14b1e725ee3aa001b` |
| 7 | `theorem` | [quadratic_error_step](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadratic-error-step--8e7aceccc9d89514706a07c0.md) | 85 | `result-track:8e7aceccc9d89514706a07c0fdfbbbea667314dca13678f0d13f262232b68ec4` |
| 8 | `def` | [QuadraticThetaDescentAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthetadescentat--32072f32679767d64ef55347.md) | 143 | `declaration-track:32072f32679767d64ef553478e5fb72cd875ea06aa1bd3b6911e0e78ede2df5c` |
| 9 | `def` | [QuadraticThetaDescentSevenEighthsToHalf](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/quadraticthetadescentseveneighthstohalf--ec7247460214f4ead387814f.md) | 147 | `declaration-track:ec7247460214f4ead387814f917397afcf58f55b3729f3b2d41e6250a5f87ffd` |
| 10 | `def` | [SevenEighthsZeroFreeToTheta](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/seveneighthszerofreetotheta--5b04003e8da99021c51fef52.md) | 153 | `declaration-track:5b04003e8da99021c51fef52d1c460e4981e09244d9af4acffbe7ac0a0787977` |
| 11 | `theorem` | [thetaSevenEighths_twoQuadraticSteps_to_half](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/thetaseveneighths-twoquadraticsteps-to-half--e9d291353c46909cbe0cbbb4.md) | 157 | `result-track:e9d291353c46909cbe0cbbb4a62f3b0c775e87924bcf59bfb892558ae9bf55e2` |
| 12 | `theorem` | [riemannHypothesis_of_thetaSevenEighths_quadraticDescent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/riemannhypothesis-of-thetaseveneighths-quadraticdescent--d8f80e876f8378924100dfb1.md) | 172 | `result-track:d8f80e876f8378924100dfb1833b07866b67837918873b16e1c8c6332617dc84` |
| 13 | `theorem` | [riemannHypothesis_of_sevenEighths_zeroFree_quadraticProgram](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/riemannhypothesis-of-seveneighths-zerofree-quadraticprogram--a59b19683ac5a87550742f86.md) | 186 | `result-track:a59b19683ac5a87550742f86e77f3d2548767ad2765d6c94d9c68cbd7667d593` |
| 14 | `theorem` | [riemannHypothesis_of_acceptedSevenEighths_quadraticProgram](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/declarations/riemannhypothesis-of-acceptedseveneighths-quadraticprogram--1711d1639a4bed44ae687a5f.md) | 195 | `result-track:1711d1639a4bed44ae687a5fa02cf53f63a1660ba14876a287615980267ca4f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
