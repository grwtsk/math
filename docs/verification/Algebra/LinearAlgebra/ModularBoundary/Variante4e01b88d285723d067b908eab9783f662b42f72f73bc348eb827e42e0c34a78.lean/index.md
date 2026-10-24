# Verification target: GRWTSK.Algebra.LinearAlgebra.ModularBoundary.Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab6e49c343feab7454fd0849f7aa0ce24f68f6f0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab6e49c343feab7454fd0849f7aa0ce24f68f6f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Phase` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryChart](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart--19a7a0708ed93520d2dcbbb9.md) | 31 | `declaration-track:19a7a0708ed93520d2dcbbb98ecd48ffc3d07a33fa2b616292228054f1130856` |
| 2 | `theorem` | [boundaryChart_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart-coordinates--8930062894c6c8dafece5fe6.md) | 34 | `result-track:8930062894c6c8dafece5fe6a14ff7d2139c8a3c656dbab6f4624e60d7c3ec82` |
| 3 | `def` | [lastPair](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/lastpair--d980ed01cb09843aea7196d4.md) | 40 | `declaration-track:d980ed01cb09843aea7196d4a82a67db2258c0b2b0e323e83ffe9ca9fd172ff7` |
| 4 | `theorem` | [boundaryChart_lastMinor](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart-lastminor--9f7c6216e7f87a1bddc097bf.md) | 43 | `result-track:9f7c6216e7f87a1bddc097bfdfca4c310ccb830a91ca5f4bee5adfbde62ef602` |
| 5 | `theorem` | [boundaryChart_rank](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart-rank--3d2cdc6d94c39630bc6d9db0.md) | 51 | `result-track:3d2cdc6d94c39630bc6d9db04b6b4ada8e6f36852dffdd67c9c05d7910bfdc5c` |
| 6 | `theorem` | [boundaryChart_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart-nonnegative--8247fafb44f0483a025fec7d.md) | 55 | `result-track:8247fafb44f0483a025fec7d920813e2b55bfc671e625dbb57b5b40cf507880e` |
| 7 | `theorem` | [boundaryChart_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundarychart-positive-iff--2bb0ea2ce352c70499b313b6.md) | 63 | `result-track:2bb0ea2ce352c70499b313b6ddf40e2bc2f01a826b6030f397b0b3a0e38b7b1c` |
| 8 | `def` | [boundaryFrame](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryframe--fb1f2b033aba51d2335a1b02.md) | 75 | `declaration-track:fb1f2b033aba51d2335a1b02b06f872c87a732dc9ae104d0f2d1715cefa71fdb` |
| 9 | `def` | [boundaryPlane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryplane--7ac3c32f3960a6c55d1e5c5b.md) | 79 | `declaration-track:7ac3c32f3960a6c55d1e5c5b7b04f10903374d2d2b7bd1c243aed24cf0f4bae4` |
| 10 | `theorem` | [boundaryPlane_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryplane-nonnegative--6d1575572b3e3f5e92c7798d.md) | 82 | `result-track:6d1575572b3e3f5e92c7798d29610f78be3526487ef4976c536a306dfb275363` |
| 11 | `theorem` | [boundaryPlane_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryplane-positive-iff--faf68e4769a4318f596b65e8.md) | 87 | `result-track:faf68e4769a4318f596b65e8f7cb3201dc9455026d505baf053c6d792ac7046d` |
| 12 | `def` | [arithmeticPlane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/arithmeticplane--3a524db4fa5da9aefae59e40.md) | 105 | `declaration-track:3a524db4fa5da9aefae59e406cf7df415cebd0504e4ecd8d3a5f179c2ba7cedf` |
| 13 | `theorem` | [arithmeticPlane_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/arithmeticplane-nonnegative--7c56628b1f7e6fd15e89af4a.md) | 109 | `result-track:7c56628b1f7e6fd15e89af4a38381362fb5b476c7206871a3232981f55b39ad4` |
| 14 | `theorem` | [arithmeticPlane_positive_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/arithmeticplane-positive-iff--df1c256aaa9d2ec8b7675cec.md) | 114 | `result-track:df1c256aaa9d2ec8b7675ceca283271bda4333dce78f1d36b497e947878e9eac` |
| 15 | `theorem` | [arithmeticPlane_boundary_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/arithmeticplane-boundary-iff--3c7a04bcc61d92112cb50ef3.md) | 119 | `result-track:3c7a04bcc61d92112cb50ef34fe190683af807d4d1f5fd143545c9c656f26af0` |
| 16 | `theorem` | [phase_polynomial_minor](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/phase-polynomial-minor--cee178b570e595672ff9bd0e.md) | 126 | `result-track:cee178b570e595672ff9bd0ec6c0c0c2e8a33d09a575cb33b999d68902288301` |
| 17 | `def` | [boundaryWeights](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryweights--3d94b06776b03da32437c40e.md) | 134 | `declaration-track:3d94b06776b03da32437c40e94083a2abc9d41560f114883198fdf7345286e10` |
| 18 | `theorem` | [boundaryWeights_positive](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryweights-positive--f8c04e4d18280833e2333b1f.md) | 138 | `result-track:f8c04e4d18280833e2333b1f51f46972216e8e9d40cf24d6ea734d6599d6f4da` |
| 19 | `theorem` | [boundaryWeights_sum](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryweights-sum--f2e5cd0a7297df3ae0ed3ff9.md) | 145 | `result-track:f2e5cd0a7297df3ae0ed3ff94248b3bad89534a30cc2f95313acb2065ed6f0c5` |
| 20 | `theorem` | [boundaryWeights_mutate](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryweights-mutate--6d3a0c4c2f405ef0a1093cdd.md) | 152 | `result-track:6d3a0c4c2f405ef0a1093cdde96a9ff6c82e84a431e1e1799e2f379eea7dc8f4` |
| 21 | `theorem` | [boundaryWeights_mutate_back](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryweights-mutate-back--e77a88cafdb1e1334bb1c230.md) | 170 | `result-track:e77a88cafdb1e1334bb1c230bf5aca26a1e3a7250656533a6d35583addc6a6c2` |
| 22 | `theorem` | [boundary_weighted_braid](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundary-weighted-braid--bcff54c0def58bd832e47e75.md) | 175 | `result-track:bcff54c0def58bd832e47e75614369a8b816a6072212967ade0eac96a1b29f32` |
| 23 | `def` | [boundaryWord](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryword--c1fc7ee292a20d00739b68a4.md) | 184 | `declaration-track:c1fc7ee292a20d00739b68a4133b49166ebfec315acc547e0869d299aa2591fc` |
| 24 | `theorem` | [boundaryWord_eq](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryword-eq--c068d44f475b07d608edb5bd.md) | 188 | `result-track:c068d44f475b07d608edb5bdcfdb21b68db432ebc9242eb645b6e5ab94f07a6d` |
| 25 | `theorem` | [boundaryWord_block_det](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryword-block-det--d323ea3092006fc3f233e04d.md) | 195 | `result-track:d323ea3092006fc3f233e04d37915dd56cb469dccd3a6dc0d30157caf4664246` |
| 26 | `theorem` | [boundaryWord_signedGraph](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryword-signedgraph--dc1c98f472d1ddef59ea26d2.md) | 202 | `result-track:dc1c98f472d1ddef59ea26d2b9f7c007828971199fcee80172b1bd1889d050e8` |
| 27 | `theorem` | [boundaryWord_plane](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundaryword-plane--26153c91d4249c3c3ef13ce4.md) | 211 | `result-track:26153c91d4249c3c3ef13ce424978c2380d1a6f653c9a3fbcaaeb86510622776` |
| 28 | `theorem` | [boundary_relative_half](../../../../../mathematics/Algebra/LinearAlgebra/ModularBoundary/Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78.lean/declarations/boundary-relative-half--61d6c60c2c1dea8d7ecc1201.md) | 220 | `result-track:61d6c60c2c1dea8d7ecc1201aa11ca2d7670df142b719a7b851c08cec42881a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
