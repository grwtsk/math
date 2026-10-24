# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.ExistUnique.Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f93ba6e2823290bf798f10c92117ce680fa161d5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f93ba6e2823290bf798f10c92117ce680fa161d5`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.ODE.Gronwall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.ODE.PicardLindelof` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IntegralCurve.Transform` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.InteriorBoundary` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isIntegralCurveAt_of_contMDiffAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/exists-isintegralcurveat-of-contmdiffat--fb8b7bfbab60ab74cb8f2c34.md) | 65 | `result-track:fb8b7bfbab60ab74cb8f2c341ac878f1a16d07fee3469a04ac5790dc29061ae4` |
| 2 | `lemma` | [exists_isIntegralCurveAt_of_contMDiffAt_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/exists-isintegralcurveat-of-contmdiffat-boundaryless--2b9240b5b07b67d70b05b4ac.md) | 119 | `result-track:2b9240b5b07b67d70b05b4aca661571fd15a7662ba05dc4e64ca0228b1590c7b` |
| 3 | `theorem` | [isIntegralCurveAt_eventuallyEq_of_contMDiffAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurveat-eventuallyeq-of-contmdiffat--45ea9bdd3a458a536a796134.md) | 131 | `result-track:45ea9bdd3a458a536a796134252bec0e548693a173cfdc124e52b8bb4e117192` |
| 4 | `theorem` | [isIntegralCurveAt_eventuallyEq_of_contMDiffAt_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurveat-eventuallyeq-of-contmdiffat-boundaryless--6e755febb8327705fa80dae9.md) | 176 | `result-track:6e755febb8327705fa80dae95ae09090a5409bdb188d35da193cd178df355fcd` |
| 5 | `theorem` | [isIntegralCurveOn_Ioo_eqOn_of_contMDiff](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurveon-ioo-eqon-of-contmdiff--af4d5a0ae5af8ee6028ea103.md) | 188 | `result-track:af4d5a0ae5af8ee6028ea1033fcf7b2e8449be5415b4bbd97d35461db2fd1a88` |
| 6 | `theorem` | [isIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurveon-ioo-eqon-of-contmdiff-boundaryless--a9bb9d0f3a828bf68a701e5b.md) | 226 | `result-track:a9bb9d0f3a828bf68a701e5bb130bfaf05df81967d99f8c89e3bb5fa436944c4` |
| 7 | `theorem` | [isIntegralCurve_eq_of_contMDiff](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurve-eq-of-contmdiff--633850ad6ec09510c1bb8bfd.md) | 238 | `result-track:633850ad6ec09510c1bb8bfdf9f0b01502ffc0bdfd2caf5ffeb9bfaa8d007cbe` |
| 8 | `theorem` | [isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurve-ioo-eq-of-contmdiff-boundaryless--d0d91260206af50787716bdb.md) | 252 | `result-track:d0d91260206af50787716bdb412513d783bc74f86e47f4122eee7d00c09a0db7` |
| 9 | `lemma` | [IsIntegralCurve.periodic_of_eq](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurve-periodic-of-eq--a8a6facad8e248be55ab3055.md) | 259 | `result-track:a8a6facad8e248be55ab30552c774edd225e105bc05d41d90db691d19367ce6e` |
| 10 | `lemma` | [IsIntegralCurve.periodic_xor_injective](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/declarations/isintegralcurve-periodic-xor-injective--4821b4cfd802b5de08a24ae3.md) | 269 | `result-track:4821b4cfd802b5de08a24ae33011153fa4f4e40d5bd3eff98a1e819406c7718e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
