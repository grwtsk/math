# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LocallyConvex.Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca4ca0adf7dcfdd8baed1c0decdce193a11d196`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace--79642fc89a6cc45ccc41ec69.md) | 45 | `declaration-track:79642fc89a6cc45ccc41ec69b6fc5185fb0a8fd871e99d93e835f9e17bb0b36a` |
| 2 | `theorem` | [locallyConvexSpace_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-iff--251870956a4fee6bd9b61507.md) | 52 | `result-track:251870956a4fee6bd9b615077acc7602c4fb45b98f3f78916f88cc95900b826c` |
| 3 | `theorem` | [LocallyConvexSpace.ofBases](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-ofbases--3f8dafacff9cc9062d97f047.md) | 56 | `result-track:3f8dafacff9cc9062d97f0473d83e20ce201701b233ace8d4b8bc1710be1193d` |
| 4 | `theorem` | [LocallyConvexSpace.convex_basis_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-convex-basis-zero--6ac1d17db8bbc1e994178cda.md) | 65 | `result-track:6ac1d17db8bbc1e994178cda2d30d9f5e80e8cd21234617fbfa13bb3bcfb67a7` |
| 5 | `theorem` | [locallyConvexSpace_iff_exists_convex_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-iff-exists-convex-subset--a3ddf55741e0e0217533d6df.md) | 69 | `result-track:a3ddf55741e0e0217533d6df69dcc2ce6e3352d817b07197925225ff23744f63` |
| 6 | `theorem` | [LocallyConvexSpace.ofBasisZero](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-ofbasiszero--78b16f9894b18a41d5195911.md) | 81 | `result-track:78b16f9894b18a41d51959111a06673c0d2dc26be5934a1672abcb055b03b031` |
| 7 | `theorem` | [locallyConvexSpace_iff_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-iff-zero--79b88b49ed2a417491e97431.md) | 89 | `result-track:79b88b49ed2a417491e9743126294d05e8aa89ee3678b920efebf42c7ee6c073` |
| 8 | `theorem` | [locallyConvexSpace_iff_exists_convex_subset_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-iff-exists-convex-subset-zero--0df4bcbb09f9adf7c8055c10.md) | 94 | `result-track:0df4bcbb09f9adf7c8055c1083e104c4b6da349633d5bbf787ee23e2d807f1c5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/instance--24ac41b9f7c146a3a031f7d9.md) | 99 | `declaration-track:24ac41b9f7c146a3a031f7d932867b66ce3fe4ffcda558707195920c48d65102` |
| 10 | `theorem` | [Convex.locPathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/convex-locpathconnectedspace--f0ce1f320e3129ab52aa4957.md) | 105 | `result-track:f0ce1f320e3129ab52aa495778494c8c57d09b20203750b959be67e27d1a6807` |
| 11 | `theorem` | [LocallyConvexSpace.convex_open_basis_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-convex-open-basis-zero--f2f25f94e57c70b6268ad09d.md) | 123 | `result-track:f2f25f94e57c70b6268ad09d23a638326cde63d87fb6190c5d42ae3bfd2055db` |
| 12 | `theorem` | [Disjoint.exists_open_convexes](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/disjoint-exists-open-convexes--05fbf92315fce551ebdc5043.md) | 135 | `result-track:05fbf92315fce551ebdc5043b782bc847282617feada99481b4aa8cb51acfcbe` |
| 13 | `lemma` | [exists_open_convex_of_notMem](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/exists-open-convex-of-notmem--c00b83cc5a30554065872a86.md) | 151 | `result-track:c00b83cc5a30554065872a86ca5ea83def1d498a5de72998c07e77509f7ee714` |
| 14 | `theorem` | [LocallyConvexSpace.sInf](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-sinf--be0f54ae7310f53a3aa87a9a.md) | 167 | `result-track:be0f54ae7310f53a3aa87a9af19986246003edf114a48555b53901e1408ccc78` |
| 15 | `theorem` | [LocallyConvexSpace.iInf](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-iinf--979ba107d388467c622d9a95.md) | 181 | `result-track:979ba107d388467c622d9a95c3dfe51bd886bb4fd1b5ea3de7987d213c186e82` |
| 16 | `theorem` | [LocallyConvexSpace.inf](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-inf--e576a747082806a8283c224e.md) | 189 | `result-track:e576a747082806a8283c224ed291b25ccc320edb23a7deedceb4cfc8c67fbf98` |
| 17 | `theorem` | [LocallyConvexSpace.induced](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/locallyconvexspace-induced--04863886b80fbb3d835ab63d.md) | 199 | `result-track:04863886b80fbb3d835ab63df18fa9bacdc768a6b0b3444c5d9c1b4950d61acf` |
| 18 | `instance` | [Pi.locallyConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/pi-locallyconvexspace--e8e735360c4fcfbb7a8dfa5a.md) | 211 | `declaration-track:e8e735360c4fcfbb7a8dfa5a89df12c9108800aca5bc7e8214710c7547806abb` |
| 19 | `instance` | [Prod.locallyConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/prod-locallyconvexspace--ac99a0b5b119f0197501b1f0.md) | 216 | `declaration-track:ac99a0b5b119f0197501b1f032d2c600da93d1514940d51ef593788c1eee667f` |
| 20 | `instance` | [LinearOrderedSemiring.toLocallyConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/linearorderedsemiring-tolocallyconvexspace--4db219e421016e3a332815f9.md) | 225 | `declaration-track:4db219e421016e3a332815f952045bbc54ef9964657e63b2dccbe6e16285d52d` |
| 21 | `lemma` | [Convex.eventually_nhdsWithin_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/declarations/convex-eventually-nhdswithin-segment--5600daec71c80309952dd610.md) | 254 | `result-track:5600daec71c80309952dd610bed066da7d6ae786e023d9bb8e0d4e2efde4a643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
