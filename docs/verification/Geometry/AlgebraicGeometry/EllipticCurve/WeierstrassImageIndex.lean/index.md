# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38655941277c9e73a8515c9ab46bb6c761af30bb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38655941277c9e73a8515c9ab46bb6c761af30bb`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.LinearAlgebra.FreeModule.Finite.CardQuotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Target](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/target--d5433c1485943128048c9e94.md) | 24 | `declaration-track:d5433c1485943128048c9e947fe7e8bd599b2347f21a9635edc7d8dd56fb7626` |
| 2 | `def` | [standardBasis](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/standardbasis--548a9134f611dbafcf4b78ee.md) | 27 | `declaration-track:548a9134f611dbafcf4b78ee9624273da598e2b2ed89805568bf817ed8402af4` |
| 3 | `def` | [branchElement](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/branchelement--0ecc44981a901c2cac75c545.md) | 31 | `declaration-track:0ecc44981a901c2cac75c545659a696dfd21eeb6bb40ae96db37cfdc0c592f46` |
| 4 | `def` | [imageLattice](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/imagelattice--b32c4ab20c0b39a74513f903.md) | 38 | `declaration-track:b32c4ab20c0b39a74513f9036054c4add946630542677f20378b86d1a5188cf7` |
| 5 | `def` | [standardLattice](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/standardlattice--1cade2ae11d24ae4fbfcb123.md) | 43 | `declaration-track:1cade2ae11d24ae4fbfcb123998b817ba737c8c93d3300aad25a2ce0ec0149cf` |
| 6 | `def` | [frameEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/frameequiv--392ba45a212a964c55be8c83.md) | 49 | `declaration-track:392ba45a212a964c55be8c837dbd920e83882a3af5e1d4196cc616357bb34c8e` |
| 7 | `def` | [frameBasis](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/framebasis--163e26703c9bca87c64a4985.md) | 55 | `declaration-track:163e26703c9bca87c64a49852643c7063fef10c8960a0dc596a11bc64528f27d` |
| 8 | `theorem` | [frameBasis_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/framebasis-apply--ddaf1983005a8130d251acbd.md) | 61 | `result-track:ddaf1983005a8130d251acbd45991557e6167ac7adc1edf4f0cd970c7b4a16a0` |
| 9 | `theorem` | [image_toAddSubgroup_eq_closure](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/image-toaddsubgroup-eq-closure--7aff15463e139e7aed92ec5a.md) | 73 | `result-track:7aff15463e139e7aed92ec5ae15abb6f840bacd03380c5bd8f3c7a6053c2372c` |
| 10 | `theorem` | [standard_toAddSubgroup_eq_closure](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/standard-toaddsubgroup-eq-closure--0e2d1e18be0834ef54132e00.md) | 87 | `result-track:0e2d1e18be0834ef54132e00dc923c996279d478db2612934eaa73598d1d1988` |
| 11 | `theorem` | [standard_le_image](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/standard-le-image--afa18a92c295fcdcb5ae7828.md) | 96 | `result-track:afa18a92c295fcdcb5ae7828458e5f6d40b3243ce5b944504a2aac8a223da8d0` |
| 12 | `theorem` | [frameBasis_det_standard](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/framebasis-det-standard--eb028a65abd7ba11a16011f5.md) | 117 | `result-track:eb028a65abd7ba11a16011f5c6bfe2f4d8a0d81bf63cc90928f574a2ea450206` |
| 13 | `theorem` | [relIndex_formula](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/relindex-formula--c27804e101a952a674e9cda5.md) | 134 | `result-track:c27804e101a952a674e9cda5deba3741a121a8a9da531955ebd096d513866a41` |
| 14 | `theorem` | [quotient_cardinality](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/quotient-cardinality--13dc7062796c8d71916ccf87.md) | 152 | `result-track:13dc7062796c8d71916ccf87398d6c2375b2436664d54640288e15c6e47a8223` |
| 15 | `theorem` | [quotient_cardinality_prime_depth](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassImageIndex.lean/declarations/quotient-cardinality-prime-depth--74bafbadf79e42e20cc1c360.md) | 164 | `result-track:74bafbadf79e42e20cc1c360a63da07a679bbb8741bcf1f47394e8f9be0de722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
