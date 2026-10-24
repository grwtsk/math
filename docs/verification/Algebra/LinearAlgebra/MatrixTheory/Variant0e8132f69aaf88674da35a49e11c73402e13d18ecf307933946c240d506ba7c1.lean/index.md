# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed978317263c34ccc03e51d12a7f49335f560770",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed978317263c34ccc03e51d12a7f49335f560770`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix.Warshall` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Flow.Examples` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-intmatrix--ed76aec6b18200ce3ae1e268.md) | 31 | `declaration-track:ed76aec6b18200ce3ae1e26804b76bf52a02fa3f23c758bb816f377b9c27be98` |
| 2 | `def` | [Flow.IntMatrix.entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-intmatrix-entry--9aefa948e1413f03c930d08a.md) | 35 | `declaration-track:9aefa948e1413f03c930d08ab872e6fda24220fcab38a4e5c582eafbd91d6a51` |
| 3 | `def` | [Flow.IntMatrix.identity](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-intmatrix-identity--bc46e52ca646a05ba5241938.md) | 43 | `declaration-track:bc46e52ca646a05ba52419384fccb6c1e8d1de31aa588e3341db5cb9604b27b8` |
| 4 | `def` | [Flow.IntMatrix.ofBool](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-intmatrix-ofbool--da5c45d5add545e455b04d33.md) | 52 | `declaration-track:da5c45d5add545e455b04d33edcd3a6ea119df2f95ccdbf8aa711fd9bbfa3afa` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-unitdeterminantcertificate--883cdfea1fff4ddf21a173bc.md) | 62 | `declaration-track:883cdfea1fff4ddf21a173bc54013756624b3d2d832951cf08ed6baa754571fd` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-unitdeterminantcertificate-treemobius--ef652dcb060ffab86be7934e.md) | 68 | `declaration-track:ef652dcb060ffab86be7934ef148f64ddac25620f3927a074bcc99ff8e9a5263` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-midpointbalancemetadata--0b504125a0eed07f356e28a4.md) | 79 | `declaration-track:0b504125a0eed07f356e28a4627f28405beb50c0643d08d5e3ce3b0bf4d29a09` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-midpointbalancemetadata-standard--29560f814ef570f79de55a25.md) | 87 | `declaration-track:29560f814ef570f79de55a25da539f1d289b293962b74b4855e97d43f2da6109` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-finitemobiustracetriple--e54d94118927032fa7d9109f.md) | 103 | `declaration-track:e54d94118927032fa7d9109f48c3f2362f005787e5869e2e0229e37cd1a8c8e6` |
| 10 | `def` | [Flow.Expression.nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-nodecount--03d652c1554ef5f42e97a46e.md) | 113 | `declaration-track:03d652c1554ef5f42e97a46e3339af78e98b2f134f524ad56b32018e24602474` |
| 11 | `def` | [Flow.Expression.nodeCountList](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-nodecountlist--84fa1191edf9d4aba3144afa.md) | 131 | `declaration-track:84fa1191edf9d4aba3144afafc5a7145178ebc498bbbc1159da504d8735ef7c9` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-childedgesfrom--305c1f4cc33957b222375e49.md) | 148 | `declaration-track:305c1f4cc33957b222375e49ba7ae1471edfff7e2ac480d68f8cd717a52ec53d` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-childedgesfromlist--43a0c80cb22a6d0219960804.md) | 180 | `declaration-track:43a0c80cb22a6d02199608040c342624d26599775391cc2aa65c8d83617ab02d` |
| 14 | `def` | [Flow.Expression.childEdges](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-childedges--ef09644300485673a27f3eb8.md) | 195 | `declaration-track:ef09644300485673a27f3eb89be3761a7ef1a31920aa9e21dda7d894a92ecae4` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-adjacencymatrix--99b1e7745da83d742b7c8ed9.md) | 201 | `declaration-track:99b1e7745da83d742b7c8ed996e89059916f6b99e2cfdaaaba1d2c67d7643144` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-reachabilitymatrix--a5ea3bad497c50a18315e26f.md) | 210 | `declaration-track:a5ea3bad497c50a18315e26f7e9631587533e79d0be696240eda32de6cf984cc` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-zetaboolmatrix--5def651b12a3feb79ffe2cec.md) | 222 | `declaration-track:5def651b12a3feb79ffe2cece928edbef9b17baeefaad9306bc437c351c32a71` |
| 18 | `def` | [Flow.Expression.zetaMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-zetamatrix--cf0fbec42139fdb4bfff55f9.md) | 232 | `declaration-track:cf0fbec42139fdb4bfff55f99496d86ea6ff66b94e6ed47b1148c7145781a0e2` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-mobiusmatrix--ec9571d7fe72b8c143390bad.md) | 251 | `declaration-track:ec9571d7fe72b8c143390bad5047fd1ad67197f770e902f033c1e757a52ce3f8` |
| 20 | `structure` | [Flow.MobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-mobiusinversion--a2572c4f00ac2fdcd4defa32.md) | 265 | `declaration-track:a2572c4f00ac2fdcd4defa329663fca4b7fda22754aaeab9a9606fcacca43f01` |
| 21 | `def` | [Flow.Expression.mobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-mobiusinversion--9e06290bb2ed0f98b7aef49c.md) | 272 | `declaration-track:9e06290bb2ed0f98b7aef49c3d6d64643f53c610f16d2709fde9f81cefce4337` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-finitemobiustracetriple--de34584f6556066da90e85da.md) | 285 | `declaration-track:de34584f6556066da90e85da9289c92b9319030edd0f9e8212bd4e7e58e2855d` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius--fba4c3bec4ec8471fdbe4928.md) | 296 | `result-track:fba4c3bec4ec8471fdbe492875a34478aae9bd29b42246bac38af5c57818960d` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-finitemobiustracetriple-determinant-one--8108971dc3577002e2efb909.md) | 303 | `result-track:8108971dc3577002e2efb909743e94640c853b60318379c98fa4247421026aef` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-finitemobiustracetriple-tree-eq--35deaef914ebeff7f870e14f.md) | 309 | `result-track:35deaef914ebeff7f870e14fa2122b96394e43b9809a688ea5805af799abc6fb` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-zeta-diagonal--a2fa8e58282ffd4e367a8e4a.md) | 315 | `result-track:a2fa8e58282ffd4e367a8e4a2573bed1edf2dd61cf88cf5905c885d552396b01` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-mobius-diagonal--5838bdbf8bf4faf3c76e2835.md) | 324 | `result-track:5838bdbf8bf4faf3c76e283566d50358e5c6fd8be42cb5f674c5da73e31cf95d` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-expression-mobius-cover-entry--972eb1481b3d65dc3e575131.md) | 336 | `result-track:972eb1481b3d65dc3e575131955e34e0f1fd745132cc49dc4544b91a14384b47` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple--61aac23da6e23af59810fdde.md) | 345 | `declaration-track:61aac23da6e23af59810fddedcf754fa9fda2886df9410ffb8a8ba22fe89b464` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion--559133b205027679b5354d24.md) | 351 | `declaration-track:559133b205027679b5354d24ab6b86609866b247b9dc56ee0e9e715a98d92eac` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant--c064043c4e1a6f6e7a0c4ede.md) | 359 | `result-track:c064043c4e1a6f6e7a0c4ede8859366cabf7ee155f808550966b49f21e11dd9d` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint--aa433395de9bb9530be3360a.md) | 368 | `result-track:aa433395de9bb9530be3360a1c3617a5c9b99e3667bd2fc3b744342c6edaf563` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
