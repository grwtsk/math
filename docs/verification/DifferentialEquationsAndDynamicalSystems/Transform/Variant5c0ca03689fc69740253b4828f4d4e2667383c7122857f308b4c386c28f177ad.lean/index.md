# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.Transform.Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IntegralCurve.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsIntegralCurveOn.comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveon-comp-add--b536702ac55af6f1abee5de8.md) | 35 | `result-track:b536702ac55af6f1abee5de82ea240a52165832695ec2b047442f23ff1618952` |
| 2 | `lemma` | [isIntegralCurveOn_comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveon-comp-add--281e441c97ad0e8923bc0dce.md) | 46 | `result-track:281e441c97ad0e8923bc0dce4f3fd656bb25168486a32595a0ca747651a0fa67` |
| 3 | `lemma` | [isIntegralCurveOn_comp_sub](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveon-comp-sub--54c35e9937da3efb3f59a20f.md) | 54 | `result-track:54c35e9937da3efb3f59a20f18275bc82e2e35c66a8f8923c15f6c1d3100c8a4` |
| 4 | `lemma` | [IsIntegralCurveAt.comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveat-comp-add--09d6d8dd7fc6f61a2a601944.md) | 58 | `result-track:09d6d8dd7fc6f61a2a6019440432db6f22ce56377dcef9b9da743f11e5f0c4c8` |
| 5 | `lemma` | [isIntegralCurveAt_comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveat-comp-add--b15e34e274d9133407db2846.md) | 66 | `result-track:b15e34e274d9133407db284664c3c807e49e184aa8cd692d5846b7f858caeb50` |
| 6 | `lemma` | [isIntegralCurveAt_comp_sub](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveat-comp-sub--2172faf7337e27283fa7bb67.md) | 74 | `result-track:2172faf7337e27283fa7bb67ce27698fbcac38e1a7480cee53109a7996c57b05` |
| 7 | `lemma` | [IsIntegralCurve.comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-comp-add--d50ad96f60407e6455180989.md) | 78 | `result-track:d50ad96f60407e64551809895b5fbca6e28f689aa0486e4efaebda82d38a4300` |
| 8 | `lemma` | [isIntegralCurve_comp_add](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-comp-add--bc9ccaa36e8ba455e59fe75e.md) | 83 | `result-track:bc9ccaa36e8ba455e59fe75e6d8407faf739a7019aaa29f2b64729001dab637c` |
| 9 | `lemma` | [isIntegralCurve_comp_sub](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-comp-sub--72376caf8fde14ed8013ecc6.md) | 90 | `result-track:72376caf8fde14ed8013ecc66518eac7b10b648c89e27c3f4af50ba23c71f01d` |
| 10 | `lemma` | [IsIntegralCurveOn.comp_mul](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveon-comp-mul--fba7fe9d959ea66e93a090eb.md) | 100 | `result-track:fba7fe9d959ea66e93a090eb093184bebcb444309d1a02ad65839ecab489af90` |
| 11 | `lemma` | [isIntegralCurveOn_comp_mul_ne_zero](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveon-comp-mul-ne-zero--22cb04cc7af9d47e0a0f487d.md) | 108 | `result-track:22cb04cc7af9d47e0a0f487d157593bb1b9c14744e87269c8a288ea602d2dbd4` |
| 12 | `lemma` | [IsIntegralCurveAt.comp_mul_ne_zero](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveat-comp-mul-ne-zero--f00208cd373b4352324a3d44.md) | 117 | `result-track:f00208cd373b4352324a3d440d2fa833bd960967936aab91d8752d7d93da39bb` |
| 13 | `lemma` | [isIntegralCurveAt_comp_mul_ne_zero](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurveat-comp-mul-ne-zero--9107d91b507b67cf62664460.md) | 127 | `result-track:9107d91b507b67cf62664460361b375ca198a239daa64333a98436d9ce313cd9` |
| 14 | `lemma` | [IsIntegralCurve.comp_mul](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-comp-mul--49494d8e7170b4759d7824fd.md) | 136 | `result-track:49494d8e7170b4759d7824fd2f3d8991d08dfaabed9627857047e9d5946e9b49` |
| 15 | `lemma` | [isIntegralCurve_comp_mul_ne_zero](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-comp-mul-ne-zero--e097129ca22c8dae285e59aa.md) | 141 | `result-track:e097129ca22c8dae285e59aa80a41d2cd5157f20bb96ff4387803256c13eb70f` |
| 16 | `lemma` | [isIntegralCurve_const](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/declarations/isintegralcurve-const--2d1eb5641e0d7fb8197f9022.md) | 151 | `result-track:2d1eb5641e0d7fb8197f902295212bb740d4bfecb0f49f04526791cd4ab4c59b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
