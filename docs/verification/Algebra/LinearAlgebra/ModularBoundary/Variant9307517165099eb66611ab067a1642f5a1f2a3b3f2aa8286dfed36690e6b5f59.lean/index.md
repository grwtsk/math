# Verification target: GRWTSK.Algebra.LinearAlgebra.ModularBoundary.Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1a254171b36ab7bc55a27b876d401892fd1d27b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1a254171b36ab7bc55a27b876d401892fd1d27b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Phase` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryChart](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart--3f93b6b842c626fc96030184.md) | 23 | `declaration-track:3f93b6b842c626fc96030184ee2b986a81685cf9908420bcab8826bd614924fa` |
| 2 | `theorem` | [boundaryChart_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart-coordinates--1bbdced9294316ae4289f430.md) | 26 | `result-track:1bbdced9294316ae4289f430cf9e7422364ee3d85d3171c18060edb60b2abe6b` |
| 3 | `def` | [lastPair](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/lastpair--979d684704b699c66d9abfc0.md) | 32 | `declaration-track:979d684704b699c66d9abfc00a296595b1750dd1bdc27ee2b0022079e7a6bec3` |
| 4 | `theorem` | [boundaryChart_lastMinor](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart-lastminor--2bbbc4d75f9652f9746892df.md) | 35 | `result-track:2bbbc4d75f9652f9746892dfeaa899724cfd1d9f5d42f88ef49d47e81e6b48c7` |
| 5 | `theorem` | [boundaryChart_rank](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart-rank--59c5eab4537fba76fd19ce11.md) | 43 | `result-track:59c5eab4537fba76fd19ce11bec2fae32790660e171fb1149128885fb470b6a3` |
| 6 | `theorem` | [boundaryChart_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart-nonnegative--d638654da415323e4dac4a6f.md) | 47 | `result-track:d638654da415323e4dac4a6f097042bc077e4e4cbbbc49584b25aa9c11806c1b` |
| 7 | `theorem` | [boundaryChart_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundarychart-positive-iff--55f7af92eb922eeaf9fbe476.md) | 55 | `result-track:55f7af92eb922eeaf9fbe4767434b3e5da53ca3a6ea3e6a6e2af414d5f5a51cb` |
| 8 | `def` | [boundaryFrame](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryframe--7bb0cb85144c3decaf84a939.md) | 67 | `declaration-track:7bb0cb85144c3decaf84a9390ab905449c9010fbaa659ba4f524463c0dd36a29` |
| 9 | `def` | [boundaryPlane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryplane--c1065116bb71e69355e61a87.md) | 71 | `declaration-track:c1065116bb71e69355e61a8741e560e9c0576a3ed56318d20c7491809b7f6c89` |
| 10 | `theorem` | [boundaryPlane_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryplane-nonnegative--8ff480b4ffd1ed9990b560b2.md) | 74 | `result-track:8ff480b4ffd1ed9990b560b2093cd83ea3c817699aeb8c4c2734e8846260c0d3` |
| 11 | `theorem` | [boundaryPlane_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryplane-positive-iff--d5984fc0a62b8848e9cf10fc.md) | 79 | `result-track:d5984fc0a62b8848e9cf10fc0a51d46105787e4710677b0aa605fe9e5578f2e7` |
| 12 | `def` | [arithmeticPlane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/arithmeticplane--aebc8574ea697240a92880dc.md) | 97 | `declaration-track:aebc8574ea697240a92880dce35dd302f2c62dbb13d4340961a883a22a001358` |
| 13 | `theorem` | [arithmeticPlane_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/arithmeticplane-nonnegative--982eb5a4e4ffae2a09b77c97.md) | 101 | `result-track:982eb5a4e4ffae2a09b77c97413b7d46dce02d6a119814432c41c06b05f48d9f` |
| 14 | `theorem` | [arithmeticPlane_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/arithmeticplane-positive-iff--8f9b3c40b7cad529fae92385.md) | 106 | `result-track:8f9b3c40b7cad529fae92385ca22fc2a6f369e6dbc7c40b26c8439ad73946bd3` |
| 15 | `theorem` | [arithmeticPlane_boundary_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/arithmeticplane-boundary-iff--71ea5b48dd9d49019bae2a30.md) | 111 | `result-track:71ea5b48dd9d49019bae2a30df9ea4eb1db93589c7a345830a2215ebf1d74929` |
| 16 | `theorem` | [phase_polynomial_minor](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/phase-polynomial-minor--154192025014ac05280d2593.md) | 118 | `result-track:154192025014ac05280d25933dc9ecf4f51fb31cc0224756933b2f780814abde` |
| 17 | `def` | [boundaryWeights](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryweights--0d700f4f1fc8a16da74bf5e4.md) | 126 | `declaration-track:0d700f4f1fc8a16da74bf5e44321da38c5967b1191639057ac8fbcbcff2e1535` |
| 18 | `theorem` | [boundaryWeights_positive](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryweights-positive--06634e96bbb1bb1d70bacbbe.md) | 130 | `result-track:06634e96bbb1bb1d70bacbbef34fb21128571ee3bcaeeda3ce938052c048a97c` |
| 19 | `theorem` | [boundaryWeights_sum](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryweights-sum--131613c5ed5fde13cee44a20.md) | 137 | `result-track:131613c5ed5fde13cee44a20839e61183aa5f10005b4c4fcaff5d20bbb9393ba` |
| 20 | `theorem` | [boundaryWeights_mutate](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryweights-mutate--766ad92acb3d4411e34fc323.md) | 144 | `result-track:766ad92acb3d4411e34fc323ed3dd22837712fefdd099a92eccbe48cdf4ecb68` |
| 21 | `theorem` | [boundaryWeights_mutate_back](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryweights-mutate-back--6262a2468c046de14482a2e0.md) | 162 | `result-track:6262a2468c046de14482a2e03845756c67e8649edf108eebc79eadc37aab44cb` |
| 22 | `theorem` | [boundary_weighted_braid](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundary-weighted-braid--ba97dce21775b228ec5c7ce0.md) | 167 | `result-track:ba97dce21775b228ec5c7ce0755c0f6961887601cfb9ee0d63a51dc89a83957e` |
| 23 | `def` | [boundaryWord](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryword--e63e86aca5a1ddc4169600be.md) | 176 | `declaration-track:e63e86aca5a1ddc4169600bebe2d056595934d84443c702d907281dba07eb739` |
| 24 | `theorem` | [boundaryWord_eq](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryword-eq--a8e93be4e0e3af840156ebd5.md) | 180 | `result-track:a8e93be4e0e3af840156ebd5c30b634d3d69785b042ffd3b208ca97d6c7edbe5` |
| 25 | `theorem` | [boundaryWord_block_det](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryword-block-det--09c90c341fdcf4f25acedec0.md) | 187 | `result-track:09c90c341fdcf4f25acedec0c3f23b804238037620cdd0c9b4d38ab38c563dc7` |
| 26 | `theorem` | [boundaryWord_signedGraph](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryword-signedgraph--ea83d416cb72b251672b70cc.md) | 194 | `result-track:ea83d416cb72b251672b70cc1bda70f0a5b996f8be01c61374c95ce2c573c5d4` |
| 27 | `theorem` | [boundaryWord_plane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundaryword-plane--cad89d5e517c111c72d14621.md) | 203 | `result-track:cad89d5e517c111c72d146210c177c16a31ce4fdcb7a97d8d9ca887b931ce51b` |
| 28 | `theorem` | [boundary_relative_half](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean/declarations/boundary-relative-half--f72b2ddeed53947b00330721.md) | 212 | `result-track:f72b2ddeed53947b0033072168f90dac1e05cdd3442b00affc79a32280a2cc03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
