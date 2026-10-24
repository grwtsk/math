# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matrix.Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58cf01ade6ff6f15321d10c77ac422c3b7f2f2db",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58cf01ade6ff6f15321d10c77ac422c3b7f2f2db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Warshall` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Flow.Examples` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-intmatrix--6f57a65da7ada07ef1a49d71.md) | 33 | `declaration-track:6f57a65da7ada07ef1a49d71720ba632c195857c960b8c0c3315f69286acdd95` |
| 2 | `def` | [Flow.IntMatrix.entry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-intmatrix-entry--746e054f7ee5e9140b753de8.md) | 37 | `declaration-track:746e054f7ee5e9140b753de801bb293f739b4d9a74096a08818d1bc524bd182c` |
| 3 | `def` | [Flow.IntMatrix.identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-intmatrix-identity--cb965cd3bc622f453c492699.md) | 45 | `declaration-track:cb965cd3bc622f453c4926990c25cb6082eae96a6493b2d37170b0675908b9f3` |
| 4 | `def` | [Flow.IntMatrix.ofBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-intmatrix-ofbool--cef9b805fd488fe552862774.md) | 54 | `declaration-track:cef9b805fd488fe552862774153a66e7f26d7c6d02c0526447e862efe01ecf9c` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-unitdeterminantcertificate--ac375c99e586d281bb6825d6.md) | 64 | `declaration-track:ac375c99e586d281bb6825d67d9c2076fd69a0ab34dc0963df1931c0c6deaf41` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-unitdeterminantcertificate-treemobius--c625abea69781b4608166dbf.md) | 70 | `declaration-track:c625abea69781b4608166dbff0a4f653d719384aa5cedea920d6f88144e7b150` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-midpointbalancemetadata--4e4e90a43e5b9d55f3c8e17c.md) | 81 | `declaration-track:4e4e90a43e5b9d55f3c8e17c215f9aa23670c832556746b15c0851019375008c` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-midpointbalancemetadata-standard--90ae77807d1283b00fd127c3.md) | 89 | `declaration-track:90ae77807d1283b00fd127c378bb4152d07bbb4aea62c21c7027b9745467b3ed` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-finitemobiustracetriple--05b97afd5874b7d42a601baa.md) | 105 | `declaration-track:05b97afd5874b7d42a601baa2fcd5524930c6c27c0e34ed64a2875e7ec78d3f0` |
| 10 | `def` | [Flow.Expression.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-nodecount--d629e7386b0bdcead7e55bfc.md) | 115 | `declaration-track:d629e7386b0bdcead7e55bfcf8aadc2656dad93ef8381714b44b73ba73ee22b1` |
| 11 | `def` | [Flow.Expression.nodeCountList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-nodecountlist--3826391584a7987d2077febf.md) | 133 | `declaration-track:3826391584a7987d2077febfc86bd7e57f50b0799cad82d3b9042292ebb7c643` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-childedgesfrom--9e48e61f67fa5425e1c9266c.md) | 150 | `declaration-track:9e48e61f67fa5425e1c9266cbe1b7192ab41226b40e508d8f8613f1e2c49af9e` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-childedgesfromlist--b39d2a1eb45e6edb4c9157fc.md) | 182 | `declaration-track:b39d2a1eb45e6edb4c9157fca8787a5cb7e68886f10932d3c32cc57584779f40` |
| 14 | `def` | [Flow.Expression.childEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-childedges--24f4fa9890b6610408657057.md) | 197 | `declaration-track:24f4fa9890b66104086570572b44b3bc0e02107e88461b7f62cd20a0540e48e0` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-adjacencymatrix--c2683b271082417eeb55acb4.md) | 203 | `declaration-track:c2683b271082417eeb55acb46902aa6bd47e0a50a83563ed4c9290e44c5c6da5` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-reachabilitymatrix--97a9293cc64a32f6f6a120a6.md) | 212 | `declaration-track:97a9293cc64a32f6f6a120a69a46deb3999fb2cfbcafb46b3d9acdc454873417` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-zetaboolmatrix--3d3cd34bde457eed562bad6f.md) | 224 | `declaration-track:3d3cd34bde457eed562bad6fd4d6831db9ae0b185d7a6374c2a7e282da3290f5` |
| 18 | `def` | [Flow.Expression.zetaMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-zetamatrix--e7f751c1c19b5106fb82b09e.md) | 234 | `declaration-track:e7f751c1c19b5106fb82b09e65f301acac4bcb69cb442b777c4a02b4bb1be6ff` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-mobiusmatrix--f58966b9c1e5a02353632c40.md) | 253 | `declaration-track:f58966b9c1e5a02353632c40dd67bef35ded7993e52a48c3518f3529a378d317` |
| 20 | `structure` | [Flow.MobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-mobiusinversion--6d4430031cc69b6e3bca8f75.md) | 267 | `declaration-track:6d4430031cc69b6e3bca8f7551660f642e64baf9fa4ecd7e6b224fc0731a9022` |
| 21 | `def` | [Flow.Expression.mobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-mobiusinversion--932186e1cfed939262d1cdcd.md) | 274 | `declaration-track:932186e1cfed939262d1cdcdb5f715b844ce0c98bb33139e06bec56fee2f12d9` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-finitemobiustracetriple--bdf9e5ea48319b095ffec413.md) | 287 | `declaration-track:bdf9e5ea48319b095ffec413790e5dba96aeb646661d15c4815e440d5ed8ae1a` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius--c385dc777f7007150959ae44.md) | 298 | `result-track:c385dc777f7007150959ae44bec30fed6db1de75d953d32cdbeef800ea25cbee` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-finitemobiustracetriple-determinant-one--e944e2b142259d00fb4bb6a5.md) | 305 | `result-track:e944e2b142259d00fb4bb6a56225acf0c1b5a0947d96f6155f7d3d58bdade9d2` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-finitemobiustracetriple-tree-eq--7cc6479ae67127e935e90a7e.md) | 311 | `result-track:7cc6479ae67127e935e90a7e8c18105dbb978adfb0b867f9d412e128934d0f92` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-zeta-diagonal--1b639eca65f0230f17f47f7c.md) | 317 | `result-track:1b639eca65f0230f17f47f7c3d45a402822ddfd87da0182fb8c7b087ebb08309` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-mobius-diagonal--a25c4433b0381af85ea42d3b.md) | 326 | `result-track:a25c4433b0381af85ea42d3b2c9623bf252e16c1c9fad1d77d0153d23c71bf62` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-expression-mobius-cover-entry--bd024065592b44e735834ab7.md) | 338 | `result-track:bd024065592b44e735834ab783ca67e44d5ecb370254cfc530261490d56cd86b` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple--2d02aa9136f04a2e06f0f6a0.md) | 347 | `declaration-track:2d02aa9136f04a2e06f0f6a07516ea6dfbc559a03db5e8367ab51b622948f660` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion--c310c07c07587a6fa2c9fce5.md) | 353 | `declaration-track:c310c07c07587a6fa2c9fce5226c22ac304b324b0c0c45cef9b72d20d516258f` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant--a35fa82703c1ddfeec2eb262.md) | 361 | `result-track:a35fa82703c1ddfeec2eb2624767a9d2cfd9b24d39078382470b01b63ff53198` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantff812b717949ad9b886fc152c166cedbc229f2861b512d2f4f9c16e5491962ff.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint--db3c0dae13dd72ebbe32c2f1.md) | 370 | `result-track:db3c0dae13dd72ebbe32c2f1c3a90e89e16393814d6ebe0e555a9beb3a64d2a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
