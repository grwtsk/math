# Verification target: GRWTSK.Geometry.DifferentialGeometry.ExistUnique.Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isMIntegralCurveAt_of_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/exists-ismintegralcurveat-of-contmdiffat--88e7fbfcb0964e1f30f12628.md) | 65 | `result-track:88e7fbfcb0964e1f30f12628bcf53375c1063a01f584453512f2921fde65b567` |
| 2 | `lemma` | [exists_isMIntegralCurveAt_of_contMDiffAt_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/exists-ismintegralcurveat-of-contmdiffat-boundaryless--714cc0910f9b19a3cbb7e28e.md) | 120 | `result-track:714cc0910f9b19a3cbb7e28e8fabd18403b2e2b0d603c9451b5e7dacd97fdba5` |
| 3 | `theorem` | [isMIntegralCurveAt_eventuallyEq_of_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurveat-eventuallyeq-of-contmdiffat--5ce5e49a88aeba3df130b055.md) | 132 | `result-track:5ce5e49a88aeba3df130b0553d66fabe23bda0e5f2e793330220b0a0e542b83d` |
| 4 | `theorem` | [isMIntegralCurveAt_eventuallyEq_of_contMDiffAt_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurveat-eventuallyeq-of-contmdiffat-boundaryless--557a6699367a4b74c07e8aa4.md) | 177 | `result-track:557a6699367a4b74c07e8aa4749fce166a8dd3b9e934b6a1d54f750d180e50e4` |
| 5 | `theorem` | [isMIntegralCurveOn_Ioo_eqOn_of_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurveon-ioo-eqon-of-contmdiff--468180dafbd1b718062ab3a6.md) | 189 | `result-track:468180dafbd1b718062ab3a66b4bd153e759af9ba18c5309ff7193999f79a972` |
| 6 | `theorem` | [isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurveon-ioo-eqon-of-contmdiff-boundaryless--8301533b01c4ea9b9abcf8b4.md) | 227 | `result-track:8301533b01c4ea9b9abcf8b4f7a64f117a899d70291f14b9ac6711cde547c4b6` |
| 7 | `theorem` | [isMIntegralCurve_eq_of_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurve-eq-of-contmdiff--e71d1d1362e9fbc65e350949.md) | 239 | `result-track:e71d1d1362e9fbc65e350949c838721bee8d4395fa76d494c06648895dd8bd46` |
| 8 | `theorem` | [isMIntegralCurve_Ioo_eq_of_contMDiff_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurve-ioo-eq-of-contmdiff-boundaryless--732f0f409f1dc0ceaa2fdb5f.md) | 253 | `result-track:732f0f409f1dc0ceaa2fdb5f117f106ee026b5e6d8d28120e546962a5de12e5b` |
| 9 | `lemma` | [IsMIntegralCurve.periodic_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurve-periodic-of-eq--676da30197175176e409e57b.md) | 260 | `result-track:676da30197175176e409e57b31fbf64a17a64f7cafc3227a8ccf02da88f6c197` |
| 10 | `lemma` | [IsMIntegralCurve.periodic_xor_injective](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/declarations/ismintegralcurve-periodic-xor-injective--4a437048c93086b043e6e56f.md) | 269 | `result-track:4a437048c93086b043e6e56f7c582993e62d9fb4949fcf78c4d8ce080663b980` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
