# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SecondInter.Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ba9ebba23da16224ea72b72a07178d8572f391",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ba9ebba23da16224ea72b72a07178d8572f391`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sphere.secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter--01b694e39881548c46f8bc45.md) | 43 | `declaration-track:01b694e39881548c46f8bc45b2a97ff1a79a95741de4398a18b7de58e3042204` |
| 2 | `theorem` | [Sphere.secondInter_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-dist--66bd500760a5115914249f7a.md) | 49 | `result-track:66bd500760a5115914249f7ae60de8ffedbb1834792949b7b35a73b06147f4e0` |
| 3 | `theorem` | [Sphere.secondInter_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-mem--c6046ede83af6a75af88561c.md) | 58 | `result-track:c6046ede83af6a75af88561c15aa34ff102970830b9cea4c1c6a08db98c4c0f2` |
| 4 | `theorem` | [Sphere.secondInter_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-zero--a8c60e002d576dff0d3ee14c.md) | 64 | `result-track:a8c60e002d576dff0d3ee14c41bd408306b4b25d6911064616dcfccea3cd959a` |
| 5 | `theorem` | [Sphere.secondInter_eq_self_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-eq-self-iff--6b567d33e075828cb97cad64.md) | 69 | `result-track:6b567d33e075828cb97cad64f86155e6ae0231d46c2130706f9e242f47da0e55` |
| 6 | `theorem` | [Sphere.eq_or_eq_secondInter_of_mem_mk'_span_singleton_iff_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-eq-or-eq-secondinter-of-mem-mk-span-singleton-iff-mem--19955183d598cf3c88a7ef16.md) | 80 | `result-track:19955183d598cf3c88a7ef16f02f37c90cafdcbc325fb88c9f4f3985a297228d` |
| 7 | `theorem` | [Sphere.secondInter_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-smul--cfd8ec7db2d720d4419e7a64.md) | 100 | `result-track:cfd8ec7db2d720d4419e7a6417b890e0293a7cf585c08eea358bf52a170b9027` |
| 8 | `theorem` | [Sphere.secondInter_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-neg--16371603d65ddcd2feb4b6be.md) | 109 | `result-track:16371603d65ddcd2feb4b6bea7e3e9d9cf9a38166c21a3cad11d431b256fba7d` |
| 9 | `theorem` | [Sphere.secondInter_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-secondinter--ceba012a6e63d01686c75bb1.md) | 115 | `result-track:ceba012a6e63d01686c75bb1ab17b510b906f9248329d223ecd89dcc9781a84d` |
| 10 | `theorem` | [Sphere.secondInter_eq_lineMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-eq-linemap--95e07c2e8aed63534839caca.md) | 128 | `result-track:95e07c2e8aed63534839caca67c8889a8fb49f7045ff0a4b02b1cd541d866f9e` |
| 11 | `theorem` | [Sphere.secondInter_vsub_mem_affineSpan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-vsub-mem-affinespan--bf42f6cabfddfbcda715bc7a.md) | 135 | `result-track:bf42f6cabfddfbcda715bc7a98cd5990a1a6d99885a91b203ffc855285a31fec` |
| 12 | `theorem` | [Sphere.secondInter_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-secondinter-collinear--0ce973c50e65f499b0375dd0.md) | 141 | `result-track:0ce973c50e65f499b0375dd068d487906f1935466abab5919b44cd90659de2ab` |
| 13 | `theorem` | [Sphere.wbtw_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-wbtw-secondinter--8664623fc67169c3ae0c2646.md) | 151 | `result-track:8664623fc67169c3ae0c264692117881b4003e18957819158073c2a81e1c152e` |
| 14 | `theorem` | [Sphere.sbtw_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb75f8cfdf3c864ea11aa1720b7429807f1fdc60c80eb5510f7b7ce3bec8d0e24.lean/declarations/sphere-sbtw-secondinter--b9fe5c743d491df3852d2053.md) | 165 | `result-track:b9fe5c743d491df3852d2053cf5306ad631717b2a21e517229d6b0884d4cb6a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
