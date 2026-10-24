# Verification target: GRWTSK.Topology.AlgebraicTopology.Homology.SimplicialHomology.SourceComponents.Variantae88ac453195b5c4.OctahedralFundamentalCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e7e8254d2a480be66278b720b79ef44c035a111",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/index.md) · [Full source](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e7e8254d2a480be66278b720b79ef44c035a111`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variantae88ac453195b5c4.OctahedralFiniteCells`](../../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/index.md) — import line 20; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralSphereChain](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedralspherechain--e1a80a86d1a67bdbb7777acc.md) | 38 | `declaration-track:e1a80a86d1a67bdbb7777accd6a33cec5c07cae6a60899836a3dcf755ba921f1` |
| 2 | `def` | [octahedralSphereBoundary](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedralsphereboundary--535c98539adc40a667c550c2.md) | 43 | `declaration-track:535c98539adc40a667c550c2d412b45524c6d151937d3ef542b2ca888cc34f74` |
| 3 | `def` | [octahedralEdgeCoefficient](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedraledgecoefficient--da901731288d856bb45905c7.md) | 47 | `declaration-track:da901731288d856bb45905c71e25f9ec9ff8678110d1951113e118e2c0400804` |
| 4 | `def` | [OctahedralSphereClosed](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedralsphereclosed--d3a02f578bd564e9622db723.md) | 56 | `declaration-track:d3a02f578bd564e9622db723d7a4e317794947ead9d1fe700ebffb38d584d1ff` |
| 5 | `theorem` | [octahedralSphereClosedProof](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedralsphereclosedproof--4156bf7f88667b78409de10e.md) | 61 | `result-track:4156bf7f88667b78409de10eb3e85c66046fc16cba9df83e8840e4242e8a272a` |
| 6 | `def` | [octahedralClosedSphereChain](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralFundamentalCycle.lean/declarations/octahedralclosedspherechain--3911f987091c7ecae40ce493.md) | 68 | `declaration-track:3911f987091c7ecae40ce49377b6f90e254a887e965b6cde71e98250cec05ce9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
