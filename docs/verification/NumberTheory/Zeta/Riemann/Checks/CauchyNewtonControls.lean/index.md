# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CauchyNewtonControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f4e99b69469bc5ba287d3d7d8f6c2547482df24",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f4e99b69469bc5ba287d3d7d8f6c2547482df24`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CauchyNewtonWitness`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FinitePowerZetaJet`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_gap_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/zero-gap-rejected--c92620ac8a83fcba595dde6a.md) | 24 | `result-track:c92620ac8a83fcba595dde6a2228a99e15c81059d5f3bf524f379dabcc21e5f6` |
| 2 | `theorem` | [outer_boundaries_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/outer-boundaries-rejected--2c89261c62ff30f3be729d13.md) | 28 | `result-track:2c89261c62ff30f3be729d13bd396ea6f885d1f2596fa4d2a016e297c476882b` |
| 3 | `theorem` | [rational_curvature_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/rational-curvature-control--c71cbc42526a685aca4dee52.md) | 35 | `result-track:c71cbc42526a685aca4dee52de540abdd9993694d0dff60a57469e15e3101d75` |
| 4 | `theorem` | [actual_zeta_curvature_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/actual-zeta-curvature-control--664bdec7ff1c40ea94934c9b.md) | 41 | `result-track:664bdec7ff1c40ea94934c9b6671d8171787607ad1c7992d04de8b74fa7cc5dc` |
| 5 | `theorem` | [center_error_is_not_derivative_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/center-error-is-not-derivative-error--467e095efd56c7a4d0857f6f.md) | 51 | `result-track:467e095efd56c7a4d0857f6fdee54a9a4589d093f2eb8d8c97699defa8bebb34` |
| 6 | `theorem` | [quadratic_second_derivative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/quadratic-second-derivative--cffc7f49ccb19500c82b1725.md) | 58 | `result-track:cffc7f49ccb19500c82b172584c0ad4720acca559d6d1477218f426d7c6f96de` |
| 7 | `theorem` | [pole_totalization_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/pole-totalization-control--5f73f99e22b44823a27bd785.md) | 67 | `result-track:5f73f99e22b44823a27bd785bffe8e30f2b9bcd6e8065ba6ba868646d4690e33` |
| 8 | `def` | [fictitiousCenter](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/fictitiouscenter--2fc08030c5a6f2d07f64e27d.md) | 72 | `declaration-track:2fc08030c5a6f2d07f64e27d04bf8f88d6d96e7ba9309c73d49df40325075fe0` |
| 9 | `theorem` | [arithmetic_alone_can_pass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/arithmetic-alone-can-pass--6fa60220a8f290a8d4de1a75.md) | 74 | `result-track:6fa60220a8f290a8d4de1a751ba0d2ecf97a2cd25b1ab784b686439dfb787bea` |
| 10 | `theorem` | [fictitious_center_has_no_estimates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CauchyNewtonControls.lean/declarations/fictitious-center-has-no-estimates--a82b5b05a0a923fe4d03d3b1.md) | 78 | `result-track:a82b5b05a0a923fe4d03d3b1d943732812c797b64af1993b6f34776fe661e23d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
