# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Matrix.Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a90c1fb4d86456d693cc99a09c146155c6f0ec0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a90c1fb4d86456d693cc99a09c146155c6f0ec0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Warshall` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Flow.Examples` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Flow.IntMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-intmatrix--5a70e819e0e464b7a6f58769.md) | 41 | `declaration-track:5a70e819e0e464b7a6f58769b610a0d9469f68fff1e37e7166293927b7865d65` |
| 2 | `def` | [Flow.IntMatrix.entry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-intmatrix-entry--2b48d887a7fce757c4e975d9.md) | 45 | `declaration-track:2b48d887a7fce757c4e975d9d93a63f4eb454a6b1e3e146e8045863989a57929` |
| 3 | `def` | [Flow.IntMatrix.identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-intmatrix-identity--f98e12f2f8de0c31518ae282.md) | 53 | `declaration-track:f98e12f2f8de0c31518ae28279b346a574a44f4d7dfa992e83b1c80ea48f6ba9` |
| 4 | `def` | [Flow.IntMatrix.ofBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-intmatrix-ofbool--89f3855c634df1fff366c4e3.md) | 62 | `declaration-track:89f3855c634df1fff366c4e35199d8413f6f018e77c7a0a9d0db5f57eb4a6f53` |
| 5 | `structure` | [Flow.UnitDeterminantCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-unitdeterminantcertificate--f2c4cf5fac5bfa6a43e46afc.md) | 72 | `declaration-track:f2c4cf5fac5bfa6a43e46afc5dc507b25c3c7856fe6fd5905d15060359308546` |
| 6 | `def` | [Flow.UnitDeterminantCertificate.treeMobius](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-unitdeterminantcertificate-treemobius--ab8118538a21534fdd97bcc6.md) | 78 | `declaration-track:ab8118538a21534fdd97bcc60e5dff90574bbffd466dbff97fffff8af0e44848` |
| 7 | `structure` | [Flow.MidpointBalanceMetadata](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-midpointbalancemetadata--88ffa53df24ab46818dfe36e.md) | 89 | `declaration-track:88ffa53df24ab46818dfe36ec70165b9bf4a8cde4d779c1285515eae231fd710` |
| 8 | `def` | [Flow.MidpointBalanceMetadata.standard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-midpointbalancemetadata-standard--f0bc73663fb207db06bdfbbf.md) | 97 | `declaration-track:f0bc73663fb207db06bdfbbfc195d15cad505340f61840bd6fdd00a264862d52` |
| 9 | `structure` | [Flow.FiniteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-finitemobiustracetriple--72915115dcfa1fc778bf3892.md) | 113 | `declaration-track:72915115dcfa1fc778bf38921ab2fe8c4f3dc3144540f40133bf8af37392d426` |
| 10 | `def` | [Flow.Expression.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-nodecount--a4525ba2a15bcab06668591f.md) | 123 | `declaration-track:a4525ba2a15bcab06668591f2ee86df8656efb79e2e9a964179e83929244af4c` |
| 11 | `def` | [Flow.Expression.nodeCountList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-nodecountlist--a017533a0c3b2748c6d24b48.md) | 141 | `declaration-track:a017533a0c3b2748c6d24b48a8c0f237a8953efe118e41bbf649fa77e6a2e33e` |
| 12 | `def` | [Flow.Expression.childEdgesFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-childedgesfrom--a65340c9fc811ec5bc56b5e7.md) | 158 | `declaration-track:a65340c9fc811ec5bc56b5e7283d35dab457b3a3e537cc17914785b61fbd4d8c` |
| 13 | `def` | [Flow.Expression.childEdgesFromList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-childedgesfromlist--96682f7d8b0d95c2ac181f97.md) | 190 | `declaration-track:96682f7d8b0d95c2ac181f979253da0d1ce7dac4c38ea4ec0dc1471e59c1d2df` |
| 14 | `def` | [Flow.Expression.childEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-childedges--1e8b6cebb4e6f2a566990861.md) | 205 | `declaration-track:1e8b6cebb4e6f2a566990861faf701fb5cab1c20fd5e187adc8190c4ae0ca9b3` |
| 15 | `def` | [Flow.Expression.adjacencyMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-adjacencymatrix--ac0862a40afcade887699e60.md) | 211 | `declaration-track:ac0862a40afcade887699e608131290bcff36ba4096a1c718729952360cb88fb` |
| 16 | `def` | [Flow.Expression.reachabilityMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-reachabilitymatrix--8b4ccd9aad8b6d6c49ecb979.md) | 220 | `declaration-track:8b4ccd9aad8b6d6c49ecb979e321e510c66902ecbe3fe868f9a2aa7c3edaf521` |
| 17 | `def` | [Flow.Expression.zetaBoolMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-zetaboolmatrix--29c2497ab12cef07cabeefd5.md) | 232 | `declaration-track:29c2497ab12cef07cabeefd5c09a5a2abd31bfc2e8a31b4bb62baa4a91185cf8` |
| 18 | `def` | [Flow.Expression.zetaMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-zetamatrix--4203c86c592748721d176662.md) | 242 | `declaration-track:4203c86c592748721d17666260fec84adcce0428ae5677cd8b0c1f4dfcf71fd7` |
| 19 | `def` | [Flow.Expression.mobiusMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-mobiusmatrix--47a9320b2d4d2c7654b6e86e.md) | 261 | `declaration-track:47a9320b2d4d2c7654b6e86e23993f5e0166cd0899826221b1a3bb3c50be66c9` |
| 20 | `structure` | [Flow.MobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-mobiusinversion--b4df2c3572e51a6c5a70ca5a.md) | 275 | `declaration-track:b4df2c3572e51a6c5a70ca5a2bb8f4339600f83800ec9a6c27275482ed9d6241` |
| 21 | `def` | [Flow.Expression.mobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-mobiusinversion--600a3ec5610f2cc2098426e9.md) | 282 | `declaration-track:600a3ec5610f2cc2098426e9adb87478995350102fd2c4fa8df38c3d187794df` |
| 22 | `def` | [Flow.Expression.finiteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-finitemobiustracetriple--610cde1fcadd366cb82edbad.md) | 295 | `declaration-track:610cde1fcadd366cb82edbadef4652ac4389a7ea5c3506ae0c0814208e95a284` |
| 23 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_matrix_eq_mobius](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-finitemobiustracetriple-matrix-eq-mobius--9dbb20471f8e630d7b2543bf.md) | 306 | `result-track:9dbb20471f8e630d7b2543bfc0670109cca040094de68ebe24162ea1cdb4e5ef` |
| 24 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_determinant_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-finitemobiustracetriple-determinant-one--4d432af42a7a7e028cc8f37d.md) | 313 | `result-track:4d432af42a7a7e028cc8f37d230cc4f16cdd2011104bf5c27024f3cc1e2a4377` |
| 25 | `theorem` | [Flow.Expression.finiteMobiusTraceTriple_tree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-finitemobiustracetriple-tree-eq--d7b9a7b75b94e484d15073d1.md) | 319 | `result-track:d7b9a7b75b94e484d15073d17146cb4f95ea31d058847f0718caf4c2e51ffa70` |
| 26 | `theorem` | [Flow.Expression.zeta_diagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-zeta-diagonal--4e3357dda37c53f1af2671e7.md) | 325 | `result-track:4e3357dda37c53f1af2671e7123a92ae1eda30599c8bdfd1149a0322b5252bfe` |
| 27 | `theorem` | [Flow.Expression.mobius_diagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-mobius-diagonal--58331574310a03b2d6418a63.md) | 334 | `result-track:58331574310a03b2d6418a6357d86954824362432ddd040f0fdb164af47eaf47` |
| 28 | `theorem` | [Flow.Expression.mobius_cover_entry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-expression-mobius-cover-entry--9d5bcb3b72575c8a8d0e3b4b.md) | 346 | `result-track:9d5bcb3b72575c8a8d0e3b4b92b131f3e409b047fb0513f26d69f85f5de58225` |
| 29 | `def` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple--fb1d7c71c099bc03d6c6ee87.md) | 355 | `declaration-track:fb1d7c71c099bc03d6c6ee87a7c1626f65540275e4248627e371cf9be58ad2f4` |
| 30 | `def` | [Flow.Examples.bsdMotivatedSymbolicMobiusInversion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-examples-bsdmotivatedsymbolicmobiusinversion--0b0713076d577aaf125abdcd.md) | 361 | `declaration-track:0b0713076d577aaf125abdcd648ecb9628be3fe82fe2ac4b3b837b0f6ec41a87` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_determinant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-determinant--2fe0b5ba8e4e2354e3db609a.md) | 369 | `result-track:2fe0b5ba8e4e2354e3db609a78f2bb462b614948528e789592c44fba1608c598` |
| 32 | `theorem` | [Flow.Examples.bsdMotivatedFiniteMobiusTraceTriple_midpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variantde5a0f313ba27a6cd38f4969e239bd720679381187622dd3265e86aa07910997.lean/declarations/flow-examples-bsdmotivatedfinitemobiustracetriple-midpoint--ba67ee0e8c4f4865c52cb5b6.md) | 378 | `result-track:ba67ee0e8c4f4865c52cb5b61b3a33f13bc7029d917e95cc96d230f57321957e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
