# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b548dd5cae2f00d05d37c018f735bdc0e39d232f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b548dd5cae2f00d05d37c018f735bdc0e39d232f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Maps.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [radialSourceToCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/radialsourcetocone--00f953ce0cbb52bfefee09b3.md) | 64 | `declaration-track:00f953ce0cbb52bfefee09b31cbb39f747bb66c8ad454d7f25b7ec373a71837a` |
| 2 | `theorem` | [radialSourceToCone_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/radialsourcetocone-apply--cb77d8c973ac4b4758bfc628.md) | 69 | `result-track:cb77d8c973ac4b4758bfc62854faafadae2dd0b1a273834ca00d0f50c19d9d40` |
| 3 | `theorem` | [radialSourceToCone_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/radialsourcetocone-isquotientmap--b35c8c87088d2a4d23d63529.md) | 78 | `result-track:b35c8c87088d2a4d23d63529d5356f5c327ccfa4be2f9f29072abf5a70cd937e` |
| 4 | `theorem` | [radialSourceToCone_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/radialsourcetocone-surjective--765dc3dcb55ab6f2e80221be.md) | 87 | `result-track:765dc3dcb55ab6f2e80221bef7cbb1845b26ba4f614c70f2b4b3e23448ac60b4` |
| 5 | `theorem` | [coneToFilled_radialSourceToCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/conetofilled-radialsourcetocone--0db914776a73e28b3f2a39b3.md) | 93 | `result-track:0db914776a73e28b3f2a39b3c7110587ef18c0063596bd389cd29371f2dc41a3` |
| 6 | `theorem` | [coneToFilled_comp_radialSourceToCone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/conetofilled-comp-radialsourcetocone--53cf9ad59592202f12502cdc.md) | 107 | `result-track:53cf9ad59592202f12502cdc33214dac635857a3b43164356140785687553abd` |
| 7 | `theorem` | [coneToFilled_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/conetofilled-isquotientmap--ed6a6c441dde79aa618482d2.md) | 116 | `result-track:ed6a6c441dde79aa618482d2be8922aa13dd1e5959106ac920d6605504c3aa6c` |
| 8 | `theorem` | [continuous_iff_comp_coneToFilled](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/continuous-iff-comp-conetofilled--27a83d8bf676c70453f13346.md) | 128 | `result-track:27a83d8bf676c70453f1334641b84c4d8acdae2eb32859ce1f18c0ef47cf653c` |
| 9 | `theorem` | [coneToFilled_quotient_but_not_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/conetofilled-quotient-but-not-injective--d439ae6379389f8fc26a1bd6.md) | 137 | `result-track:d439ae6379389f8fc26a1bd6ea7a8a6ce0a3fb9c09a6ff9bc48c28e058525f59` |
| 10 | `theorem` | [coneToFilled_has_distinct_fiber](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/conetofilled-has-distinct-fiber--93fdc211e23f3bbe2de0d87e.md) | 144 | `result-track:93fdc211e23f3bbe2de0d87eedafda6251019d1fda391f7c02835290ffc9d706` |
| 11 | `theorem` | [genusTwo_coneToFilled_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/genustwo-conetofilled-isquotientmap--21f14c98b3565575f5085bc0.md) | 156 | `result-track:21f14c98b3565575f5085bc0688f63ddda7c5ecd9fa1b711610cea97256e9721` |
| 12 | `theorem` | [genusThree_coneToFilled_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/declarations/genusthree-conetofilled-isquotientmap--b25c14b0698ad4b6bfd92bd3.md) | 162 | `result-track:b25c14b0698ad4b6bfd92bd3c499d19fc8734eb0ebf1ba5c4a2076aa531b8f13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
