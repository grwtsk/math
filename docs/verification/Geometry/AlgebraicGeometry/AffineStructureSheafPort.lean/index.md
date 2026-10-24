# Verification target: GRWTSK.AlgebraicGeometry.AffineStructureSheafPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27f9abf392541c36523f7762214a43f562509946",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AffineStructureSheafPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/index.md) · [Full source](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27f9abf392541c36523f7762214a43f562509946`.

Source path: `GRWTSK/AlgebraicGeometry/AffineStructureSheafPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AffineStructureSheafPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.AffineSpecPort`](../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpecPort.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Topology.Algebra.PortFiberRing`](../../../../mathematics/Topology/Algebra/PortFiberRing.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [globalSectionsSystem](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/globalsectionssystem--27863b491cae0ac0eba26847.md) | 18 | `declaration-track:27863b491cae0ac0eba26847f693c55d864d889092ebe150aabd297a140e846e` |
| 2 | `def` | [ringCertificate](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/ringcertificate--1b5bb2d0a5d7d997841fb24e.md) | 37 | `declaration-track:1b5bb2d0a5d7d997841fb24e407efa99ce4c39d2397984e3313054ba91b50dfd` |
| 3 | `def` | [ringProperty](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/ringproperty--ccf7c29303f2e2e6152227d8.md) | 44 | `declaration-track:ccf7c29303f2e2e6152227d8ade831b81ebbef29a199c287f3ae893bbacdabde` |
| 4 | `def` | [sectionMap](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/sectionmap--e41af92cf025b857a3b56f97.md) | 50 | `declaration-track:e41af92cf025b857a3b56f97f324da4dcf98b08e4a1323d422e8329b76053906` |
| 5 | `theorem` | [sectionMap_eq_structureSheafComap](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/sectionmap-eq-structuresheafcomap--c128c7bbf0ad5ef3b61432cf.md) | 55 | `result-track:c128c7bbf0ad5ef3b61432cfd62192f3e6521342b95df3cae5debb2803225619` |
| 6 | `def` | [stalkMap](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/stalkmap--711c7e4babc47146e6034c40.md) | 64 | `declaration-track:711c7e4babc47146e6034c40b28432f58329b2b0203c9feeb28531ba801ed808` |
| 7 | `theorem` | [stalkMap_isLocal](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/stalkmap-islocal--9a6d5fe54b01236df330a9a5.md) | 69 | `result-track:9a6d5fe54b01236df330a9a5aea19d4e90323d69df9633bb3839a98bed386ab1` |
| 8 | `def` | [globalSectionsArrowIso](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/globalsectionsarrowiso--29fe5595fb0e863811582070.md) | 77 | `declaration-track:29fe5595fb0e863811582070c4ec4a47a155d46a04acd795b887656888e1a8e7` |
| 9 | `theorem` | [globalSections_recover_original](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/globalsections-recover-original--31d56ff7e68f33173604958d.md) | 82 | `result-track:31d56ff7e68f33173604958d8d6a68adffd39795a55d4919aafeb341eca2c125` |
| 10 | `def` | [integerToRational](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/integertorational--aa9a3f8fb9e75ccd5fe55f81.md) | 92 | `declaration-track:aa9a3f8fb9e75ccd5fe55f81a1353b3233b0d2accd143b6e4ced06699db58654` |
| 11 | `def` | [rationalToComplex](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/rationaltocomplex--26da1c3d94da37c6a2561d0e.md) | 96 | `declaration-track:26da1c3d94da37c6a2561d0e7477082920d967bb82ab65a50f7d9e3eca159308` |
| 12 | `def` | [arithmeticTowerPath](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/arithmetictowerpath--ef3948cc801f65261c7a3698.md) | 100 | `declaration-track:ef3948cc801f65261c7a3698e0c3712dff11b967183b322f03fde5480ef767c3` |
| 13 | `theorem` | [arithmeticTower_ring](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/arithmetictower-ring--403109dadb13714fa0da67a8.md) | 108 | `result-track:403109dadb13714fa0da67a834493a77addc5481cd1c470e5ceb6eed11803b80` |
| 14 | `theorem` | [arithmeticTower_recovers_original](../../../../mathematics/Geometry/AlgebraicGeometry/AffineStructureSheafPort.lean/declarations/arithmetictower-recovers-original--4a939e59f43f4ee5e9a67cd6.md) | 114 | `result-track:4a939e59f43f4ee5e9a67cd607af8f350c07113454382f919517c53e08fbca18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
