# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceModuleBuild01.Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtDirichletTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm--468097eff0547b6d4f9e2538.md) | 33 | `declaration-track:468097eff0547b6d4f9e253818f2cc85a32ee649a7ac40c2bf9c3b5ec0da2b2d` |
| 2 | `def` | [cellMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant--069d0be85b153aa58f6662c4.md) | 37 | `declaration-track:069d0be85b153aa58f6662c4dbaafdf6dabab9c62e6b57cbbf7ea9ae86b40be6` |
| 3 | `def` | [dirichletBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/dirichletbudget--8f9d352d080ae1a0cdb83b97.md) | 41 | `declaration-track:8f9d352d080ae1a0cdb83b970fff0f7df047751b30ceb2d602e8b911f6192082` |
| 4 | `theorem` | [mangoldtDirichletTerm_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm-zero--2a5eed933d9911c57135b2ec.md) | 44 | `result-track:2a5eed933d9911c57135b2ec2757e938368bfbf47f19a2a0a279c6c94031c18e` |
| 5 | `theorem` | [mangoldtDirichletTerm_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm-one--b4a2fadb5ef274387630b818.md) | 47 | `result-track:b4a2fadb5ef274387630b818bce68780fbff26f2f155907af34b20e05efe2643` |
| 6 | `theorem` | [mangoldtDirichletTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm-nonneg--c3507721e6550d6bbef6cd32.md) | 51 | `result-track:c3507721e6550d6bbef6cd326a55cec79512e1a0023adf1b340def7d65326d2f` |
| 7 | `theorem` | [mangoldtDirichletTerm_le_cellMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm-le-cellmajorant--a2f0bef67617cf5b130b71dc.md) | 57 | `result-track:a2f0bef67617cf5b130b71dccb0318f40dc512a641cd3821f4c25da8f7d3c788` |
| 8 | `theorem` | [cellMajorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant-nonneg--8a76654b31c328a45d546307.md) | 80 | `result-track:8a76654b31c328a45d54630715e0c32e4ddac9623d57923078ea0e93060bf808` |
| 9 | `def` | [majorantPrimitive](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/majorantprimitive--3cdbf274214def992f91accf.md) | 86 | `declaration-track:3cdbf274214def992f91accfaf618766429a44eed243262d686ef02bc5eb8b3b` |
| 10 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/majorantprimitive-hasderivat--bf91f3e119c657a1e4b21872.md) | 90 | `result-track:bf91f3e119c657a1e4b21872d07b237481c9d1268e861e084caefecfb48a2688` |
| 11 | `theorem` | [cellMajorant_continuousOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant-continuouson--3e30359741000117b433704e.md) | 106 | `result-track:3e30359741000117b433704edba293d250deb771b800521fe36ab57f3131cb5f` |
| 12 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant-intervalintegrable--41d8848144c35016eda272df.md) | 113 | `result-track:41d8848144c35016eda272df8303f6d035d9be3f93e8731c8ce629e65a097fa9` |
| 13 | `theorem` | [majorantPrimitive_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/majorantprimitive-one--268106dd460ae776ed49942a.md) | 120 | `result-track:268106dd460ae776ed49942a67a7fa64b6eaa5d6f28f8de61e111ad839c2ff5e` |
| 14 | `theorem` | [cellMajorant_integral_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant-integral-eq--4372071597928b4cad08f4c4.md) | 129 | `result-track:4372071597928b4cad08f4c43d8d92c16012a1191043e7362532141de2ae0189` |
| 15 | `theorem` | [cellMajorant_integral_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/cellmajorant-integral-le--2b4d84da4df0ae5f37f42dfd.md) | 142 | `result-track:2b4d84da4df0ae5f37f42dfd854f87f90bafcc099def16c8bbd0dcd6a46add48` |
| 16 | `theorem` | [mangoldtDirichletTerm_le_cellIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichletterm-le-cellintegral--4d7fbcaf8e5959dac6d2b54c.md) | 154 | `result-track:4d7fbcaf8e5959dac6d2b54cad39709939e16aa02cbc831a6f990f18fdc3ebfb` |
| 17 | `theorem` | [mangoldtDirichlet_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-sum-range-le--258f330768a16e7393e7fcdb.md) | 172 | `result-track:258f330768a16e7393e7fcdbf04b5588f9e40dad66ebdaea241931c3d23e71f7` |
| 18 | `theorem` | [mangoldtDirichlet_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-summable--62227c2ef40d38f3a68152fd.md) | 189 | `result-track:62227c2ef40d38f3a68152fd1078f66d2dc1ce6d6c6b6d2a70e757cd7ae612f8` |
| 19 | `theorem` | [mangoldtDirichlet_tsum_eq_shift](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-tsum-eq-shift--72a8dab46ddcdc6fe804be52.md) | 196 | `result-track:72a8dab46ddcdc6fe804be527214f2efe64ca9d87b132b74acb475f068073319` |
| 20 | `theorem` | [mangoldtDirichlet_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-tsum-le--a500209495f556fde2b6fe06.md) | 203 | `result-track:a500209495f556fde2b6fe06cd71acb99f199fcde0b7aae797fc468d0fe10bd3` |
| 21 | `theorem` | [tsum_vonMangoldt_div_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/tsum-vonmangoldt-div-rpow-le--5e0f13b8b9835aea50ff7b41.md) | 212 | `result-track:5e0f13b8b9835aea50ff7b41ebe29646fabce0afad45af64999774f08acb52b1` |
| 22 | `theorem` | [movingLine_one_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/movingline-one-lt--db81d8c1766bdc0a2b5169c9.md) | 218 | `result-track:db81d8c1766bdc0a2b5169c974a22c16af3d8e91be8608d707c9cc56f1d8f1f0` |
| 23 | `theorem` | [mangoldtDirichlet_movingLine_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-movingline-le--a6816a2b189847416a35b1f6.md) | 222 | `result-track:a6816a2b189847416a35b1f6330e19e105e6253ce7b2163000e77389d27dab71` |
| 24 | `theorem` | [mangoldtDirichlet_movingLine_le_quadratic](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/declarations/mangoldtdirichlet-movingline-le-quadratic--8ef761e69d2f4bb21d22c070.md) | 230 | `result-track:8ef761e69d2f4bb21d22c070cc22e5f0f6a479a546bd9454fb2d11b28ad63c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
