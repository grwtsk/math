# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fae474f941263dc16aeda2a2c7779df7a380dbb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fae474f941263dc16aeda2a2c7779df7a380dbb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix.Warshall` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Flow.Examples` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-intmatrix--2db4505c5cd21f916f77a07d.md) | 39 | `declaration-track:2db4505c5cd21f916f77a07da3dd28bc7d76c3c5247bdf650a86c8cb054416b5` |
| 2 | `def` | [Flow.IntMatrix.entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-intmatrix-entry--8732cbd3f0895828c4e3d65e.md) | 43 | `declaration-track:8732cbd3f0895828c4e3d65e9ee26ff4b5988334c64adbca7c27ab02443e83ae` |
| 3 | `def` | [Flow.IntMatrix.identity](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-intmatrix-identity--6385419f87ab5b45653ea52d.md) | 51 | `declaration-track:6385419f87ab5b45653ea52d21c12f63fb5ab1697677bb9dfd65da8ce259fc7b` |
| 4 | `def` | [Flow.IntMatrix.ofBool](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-intmatrix-ofbool--2df6d9dc093f4c1644e2e1c9.md) | 60 | `declaration-track:2df6d9dc093f4c1644e2e1c968b6ade8df7599a41901b189ea6067685d82a3eb` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-unitdeterminantcertificate--377e9c78e470ed5f5a40cd09.md) | 70 | `declaration-track:377e9c78e470ed5f5a40cd092608443b5505adb573e84e71777079e6c969222c` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-unitdeterminantcertificate-treemobius--f3db6b4ecb14e2f482d30a32.md) | 76 | `declaration-track:f3db6b4ecb14e2f482d30a322aa10ed9609fa5a09a5bfcaa805dd342567a23e1` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-midpointbalancemetadata--a43f38b340c94fe1a21bec01.md) | 87 | `declaration-track:a43f38b340c94fe1a21bec01df2b1e9803f404a9a38638bb3060ea177a1b57b5` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-midpointbalancemetadata-standard--d773f106b995024d6c7c13c3.md) | 95 | `declaration-track:d773f106b995024d6c7c13c3980be77e75984382ed1830a21465b310e7024760` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-finitemobiustracetriple--9b131a531c8190d1a21ad019.md) | 111 | `declaration-track:9b131a531c8190d1a21ad0192ca18c0b23cb5f129d18e1d8c1eb6dc631574a92` |
| 10 | `def` | [Flow.Expression.nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-nodecount--82eee39520e2852284ff3fe9.md) | 121 | `declaration-track:82eee39520e2852284ff3fe97841a1a7cb367fb0e9d193234ac9771dd9fd1661` |
| 11 | `def` | [Flow.Expression.nodeCountList](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-nodecountlist--6b204cccef5548af7bf29c59.md) | 139 | `declaration-track:6b204cccef5548af7bf29c5928070c1616f724a3ba43c39c526861d5d1c0187e` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-childedgesfrom--d935376163c160909408719a.md) | 156 | `declaration-track:d935376163c160909408719a202d42c3475cafb2a929af68cbb04cca10d505eb` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-childedgesfromlist--fc0b0c6e653cf69fbdd34784.md) | 188 | `declaration-track:fc0b0c6e653cf69fbdd34784b790bf08333c5b227e493d5e2664048ea8ba61aa` |
| 14 | `def` | [Flow.Expression.childEdges](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-childedges--c82d2aca73400b2141d80af9.md) | 203 | `declaration-track:c82d2aca73400b2141d80af9d78029e915cf81f5dcadd4df2a41b07ea376ac83` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-adjacencymatrix--f065e2639db414b4072382c1.md) | 209 | `declaration-track:f065e2639db414b4072382c1ae44fa53df1c7fbb19a04048c43301dbc77c96a9` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-reachabilitymatrix--6b6c10bde1cdae6d0c9c914f.md) | 218 | `declaration-track:6b6c10bde1cdae6d0c9c914f5056f67a165b53cc63208bd4decd59904b6880a6` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-zetaboolmatrix--f887c9945f2a5f289d403db7.md) | 230 | `declaration-track:f887c9945f2a5f289d403db76d49f27828dd647c8640a0e4923ef27dc8c7e85c` |
| 18 | `def` | [Flow.Expression.zetaMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-zetamatrix--b97733c3b034f9816854a7b5.md) | 240 | `declaration-track:b97733c3b034f9816854a7b591c8136b4e59a5031b138330eccbcbf3ab1e64b6` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-mobiusmatrix--d0a0a1a955688d4a17e7f988.md) | 259 | `declaration-track:d0a0a1a955688d4a17e7f988f54e3c0e6751399a1b92067fbb3eed135715b048` |
| 20 | `structure` | [Flow.MobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-mobiusinversion--26e6a9af4daafa12ad94b0b9.md) | 273 | `declaration-track:26e6a9af4daafa12ad94b0b9631041eb880f59624fb1300fde24cab549e48251` |
| 21 | `def` | [Flow.Expression.mobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-mobiusinversion--e6da27542ec07cc58cd1ccd4.md) | 280 | `declaration-track:e6da27542ec07cc58cd1ccd46aa8921f40e935b79da90d021483c7fea88d6082` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-finitemobiustracetriple--06203b38ed7e913ac6a56a48.md) | 293 | `declaration-track:06203b38ed7e913ac6a56a4835172f1691fa414e02cb1f97ac8db8ebcc626054` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius--9cf304372deb94b4fa0e4741.md) | 304 | `result-track:9cf304372deb94b4fa0e4741b58158ade523f9982374cc3180129256d61ecbb5` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-finitemobiustracetriple-determinant-one--e5276fc36a13ddb5fb8d4f97.md) | 311 | `result-track:e5276fc36a13ddb5fb8d4f97ca12cf1d73420c2e3732a93031d63205a2f8d7fa` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-finitemobiustracetriple-tree-eq--607d220da705b53ae98b7d8c.md) | 317 | `result-track:607d220da705b53ae98b7d8c2baaa1089c27874e7e7dc8a1e1515e678c06df86` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-zeta-diagonal--168b73d7528e0023ebbbddc8.md) | 323 | `result-track:168b73d7528e0023ebbbddc8e38f58ffa3856398a932dafb5c61f43487ac62ba` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-mobius-diagonal--d9fbe0cfecb5e626cdce435f.md) | 332 | `result-track:d9fbe0cfecb5e626cdce435fcb046707b6383a351ba67a589e4b1774270c6f41` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-expression-mobius-cover-entry--1842e9e042ee97adcfd2eb51.md) | 344 | `result-track:1842e9e042ee97adcfd2eb51c9715da2aa8780fa3b9c6f07075a246ed4541322` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple--f93775f13ee9fb7448b3bf90.md) | 353 | `declaration-track:f93775f13ee9fb7448b3bf90e1fa2e102662ca87616b48a7fb64961356f87716` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion--5aa9a245647b1f7b6d334d67.md) | 359 | `declaration-track:5aa9a245647b1f7b6d334d67dcc8881f35c19ab987120e1ef052a9a83afde17f` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant--8839f1114ec1d754558098e7.md) | 367 | `result-track:8839f1114ec1d754558098e7ad3a39e637856a38d0b92a94e86eba729da7b815` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint--4ba83edb0b025e1b94d28197.md) | 376 | `result-track:4ba83edb0b025e1b94d2819719945af0718f5c0f5dd5cdbf368be1678a2e5c25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
