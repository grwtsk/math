# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.ExistUnique.Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5ae428d670778e4c6ff4b6faea75fbfa5fd94c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5ae428d670778e4c6ff4b6faea75fbfa5fd94c`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.ODE.Gronwall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.ODE.PicardLindelof` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IntegralCurve.Transform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.InteriorBoundary` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isIntegralCurveAt_of_contMDiffAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/exists-isintegralcurveat-of-contmdiffat--734aee2dd86b3d8f8684f2a8.md) | 57 | `result-track:734aee2dd86b3d8f8684f2a85026d2aa927cda8b101199593b8cee1ed884f0f7` |
| 2 | `lemma` | [exists_isIntegralCurveAt_of_contMDiffAt_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/exists-isintegralcurveat-of-contmdiffat-boundaryless--a99a19a83f3965f6a8975002.md) | 111 | `result-track:a99a19a83f3965f6a89750020541dcaaabdc049e92baf3b518e9066432d17ee3` |
| 3 | `theorem` | [isIntegralCurveAt_eventuallyEq_of_contMDiffAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurveat-eventuallyeq-of-contmdiffat--ae61dec9717d7776f1be612c.md) | 123 | `result-track:ae61dec9717d7776f1be612c47fbda6e42c2e329969757c994e850f507923978` |
| 4 | `theorem` | [isIntegralCurveAt_eventuallyEq_of_contMDiffAt_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurveat-eventuallyeq-of-contmdiffat-boundaryless--d8f82766b382f5537c6b1935.md) | 168 | `result-track:d8f82766b382f5537c6b1935b56f8599b774ed823fa2e316202f273bd71a5bc6` |
| 5 | `theorem` | [isIntegralCurveOn_Ioo_eqOn_of_contMDiff](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurveon-ioo-eqon-of-contmdiff--9bfd27b15bfc08190862259b.md) | 180 | `result-track:9bfd27b15bfc08190862259b1eee29ddd496fd56f96014fa403a36400621ae0c` |
| 6 | `theorem` | [isIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurveon-ioo-eqon-of-contmdiff-boundaryless--c124ee1dd8e4203389b742b9.md) | 218 | `result-track:c124ee1dd8e4203389b742b935e89e20530ff9649434f9015c31ef7a21508539` |
| 7 | `theorem` | [isIntegralCurve_eq_of_contMDiff](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurve-eq-of-contmdiff--7d48cb98e75d86aa73515ada.md) | 230 | `result-track:7d48cb98e75d86aa73515adaca0c1fcc6b211e9e9f8d9c92a83ca5a7fa8b1a5f` |
| 8 | `theorem` | [isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurve-ioo-eq-of-contmdiff-boundaryless--07079305c78725264d110e86.md) | 244 | `result-track:07079305c78725264d110e865572e1f2d1ebfaa6c51a5582675372914b57ee59` |
| 9 | `lemma` | [IsIntegralCurve.periodic_of_eq](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurve-periodic-of-eq--29ec7835c25f45392a453aa3.md) | 251 | `result-track:29ec7835c25f45392a453aa3ecbc2c593d1fbb115fb6d59be267f07f77fa4168` |
| 10 | `lemma` | [IsIntegralCurve.periodic_xor_injective](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/declarations/isintegralcurve-periodic-xor-injective--026f3e92f76f99c62f55de18.md) | 261 | `result-track:026f3e92f76f99c62f55de187b8659074ac6538e584386cbcfe7eea8d3f3b759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
