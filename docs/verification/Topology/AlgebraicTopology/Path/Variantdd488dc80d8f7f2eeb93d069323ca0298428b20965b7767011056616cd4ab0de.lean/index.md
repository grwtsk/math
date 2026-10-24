# Verification target: GRWTSK.Topology.AlgebraicTopology.Path.Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5976cd37dd850920ac6af9d2f64b1fdfd06b41d6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5976cd37dd850920ac6af9d2f64b1fdfd06b41d6`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Homotopy](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/homotopy--f16f2148c6b8b583a019b849.md) | 57 | `declaration-track:f16f2148c6b8b583a019b849cf63b5a6dc119275bc21249b46c8d782c667ef7e` |
| 2 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/coefn-injective--032805cd42c87bf0495450ed.md) | 67 | `result-track:032805cd42c87bf0495450edae5138f4b43b53a646b90ebc4308083fadd70da6` |
| 3 | `theorem` | [source](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/source--d777e6745d01972e00c2c015.md) | 72 | `result-track:d777e6745d01972e00c2c015aadd938279449516e767360bf87713d291c1f88b` |
| 4 | `theorem` | [target](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/target--8b9d79919463a489921f2a78.md) | 78 | `result-track:8b9d79919463a489921f2a78acf5ff8ada4b855832c884cfa0407b5061fce30f` |
| 5 | `def` | [eval](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/eval--ed628152fee2218fc5544ff6.md) | 85 | `declaration-track:ed628152fee2218fc5544ff6a650a650497329d1418cf5a2c8eb077e47eb44c4` |
| 6 | `theorem` | [eval_zero](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/eval-zero--746ba258c27adbc63e629722.md) | 92 | `result-track:746ba258c27adbc63e629722139901fc922fc0bf8523997fbcc10851dcb68837` |
| 7 | `theorem` | [eval_one](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/eval-one--62c0cc8f4d4d0720a115a8fd.md) | 98 | `result-track:62c0cc8f4d4d0720a115a8fd97f1de21682eb439ee25ea66154cc3ffee611e70` |
| 8 | `def` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/refl--dcf170966288212c6608a295.md) | 112 | `declaration-track:dcf170966288212c6608a2950b10113c007b6b3991433fc0405c03d4c09ee998` |
| 9 | `def` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/symm--398fac3c7652ce6784619ee5.md) | 119 | `declaration-track:398fac3c7652ce6784619ee5c049fce31e2318cf6ef9f2943e279c0d4b73986d` |
| 10 | `theorem` | [symm_symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/symm-symm--d6ebfc6c757bb559749187db.md) | 124 | `result-track:d6ebfc6c757bb559749187db1527043bbc753578d58ae85014d325b4228a2fa5` |
| 11 | `def` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/trans--0689630b2fde241d1c130100.md) | 132 | `declaration-track:0689630b2fde241d1c1301004f6a03e62c4e322c39a12d292ebb2a4a2d16481b` |
| 12 | `theorem` | [trans_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/trans-apply--91097ab0a8d9286d9828881c.md) | 136 | `result-track:91097ab0a8d9286d9828881ca5c073006daf3b8bece38acc2b219a73e5b1030c` |
| 13 | `theorem` | [symm_trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/symm-trans--e7f767168eeb3c9f478a9215.md) | 145 | `result-track:e7f767168eeb3c9f478a9215cf4bc53e015006c7c0042a0ea985a1f7cdc63b56` |
| 14 | `def` | [cast](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/cast--e8835136d800c0116a1829ac.md) | 152 | `declaration-track:e8835136d800c0116a1829ace32c068a998faa5892209d1e1f516f630fad436d` |
| 15 | `def` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/hcomp--5064f7ff04d81b48eed8da75.md) | 167 | `declaration-track:5064f7ff04d81b48eed8da75e749c0c9748608ff4d8f69073397632087695e7b` |
| 16 | `theorem` | [hcomp_apply](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/hcomp-apply--09d27f76339869ccabdd9407.md) | 182 | `result-track:09d27f76339869ccabdd9407129422ef91f4923546af9e2751376a7454b77781` |
| 17 | `theorem` | [hcomp_half](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/hcomp-half--f33362e30e1dfb0021a22786.md) | 192 | `result-track:f33362e30e1dfb0021a227869b1701798fabe6a2a684bd1569d39b28d937c35a` |
| 18 | `def` | [reparam](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/reparam--849d6b76c82d6cb731088c3a.md) | 202 | `declaration-track:849d6b76c82d6cb731088c3a234b7921509220f00d504b727713cbc5fcc212b2` |
| 19 | `def` | [symm₂](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/symm--1a6086a5a2871ac187c97458.md) | 231 | `declaration-track:1a6086a5a2871ac187c974582efcebbd736906fc27919436e79b198524f9254e` |
| 20 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/map--c028731686c2536b0f25e39f.md) | 249 | `declaration-track:c028731686c2536b0f25e39f7fd623626495c34c0a0f8ccfaa55d4d3eae96818` |
| 21 | `def` | [Homotopic](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/homotopic--dc41a694c38f07ca6dff5476.md) | 265 | `declaration-track:dc41a694c38f07ca6dff5476322c8ad8c934ef863c0fc9de3084138f1c6ee4e9` |
| 22 | `theorem` | [refl](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/refl--e9541744c8e3b9f4fcee295b.md) | 272 | `result-track:e9541744c8e3b9f4fcee295b38c237a1acdec280d42804158429f31a3c7b608f` |
| 23 | `theorem` | [symm](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/symm--00115ecbaf52053311f8232a.md) | 277 | `result-track:00115ecbaf52053311f8232a7943edfd4cae44c25f540cf6d460983d449fd610` |
| 24 | `theorem` | [trans](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/trans--e72b377cf96224037644cae4.md) | 282 | `result-track:e72b377cf96224037644cae4c8a94a4dc95c8adda3e126b1787bcb65f8895bf4` |
| 25 | `theorem` | [equivalence](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/equivalence--091612df81dadf1e47319450.md) | 287 | `result-track:091612df81dadf1e4731945055747b3a4aaa8bca5b6190353200daf3ee35cfab` |
| 26 | `theorem` | [map](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/map--49ed5eea65e6dd916928d596.md) | 291 | `result-track:49ed5eea65e6dd916928d596a2dd83110fc5e34ecb93c0d2a3e1d2812757f461` |
| 27 | `theorem` | [hcomp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/hcomp--eeb847c925fc4be90f816e19.md) | 296 | `result-track:eeb847c925fc4be90f816e1948ff822a776484f19a5e012c397939dab123a8c5` |
| 28 | `def` | [setoid](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/setoid--cc4752ffadfafcf3689df229.md) | 305 | `declaration-track:cc4752ffadfafcf3689df2297726cbf3562cfe68d19032af8b663649015ddec2` |
| 29 | `def` | [Quotient](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/quotient--925f59330b726912b46aacde.md) | 311 | `declaration-track:925f59330b726912b46aacde13ae31e5f0c29dadbea2d830c72af6b8de571ab9` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/instance--51542533da904701f47c4912.md) | 317 | `declaration-track:51542533da904701f47c491263c77e3f1ce2c2e794995498137d560bc7a63d9b` |
| 31 | `def` | [Quotient.comp](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/quotient-comp--00cc14e3b731e90910d8d3c0.md) | 321 | `declaration-track:00cc14e3b731e90910d8d3c0497a8b7812c37dd0499dffe93ae7c795b0f26b6e` |
| 32 | `theorem` | [comp_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/comp-lift--fefc25a8b5080c56259eec58.md) | 326 | `result-track:fefc25a8b5080c56259eec580138386551bd2bbdf30560c5a3898ec0d6c9743a` |
| 33 | `def` | [Quotient.mapFn](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/quotient-mapfn--8497c7936fcb2a2137a5949f.md) | 332 | `declaration-track:8497c7936fcb2a2137a5949f0c4bb1ef4491878ceb76d0cd64b58f8fe9708ec3` |
| 34 | `theorem` | [map_lift](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/map-lift--56c4506c6d4f20e5b5404bfa.md) | 337 | `result-track:56c4506c6d4f20e5b5404bfa05dba76d0c9c7cd2dda7d066d04db704b9e3b1a1` |
| 35 | `theorem` | [hpath_hext](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/hpath-hext--f68ce84b63f60ae9eca65621.md) | 342 | `result-track:f68ce84b63f60ae9eca65621a9cb9fe653c9b94ffabe7173423533dfb9abb605` |
| 36 | `def` | [toHomotopyConst](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/tohomotopyconst--71bc7f631a0b6751414e7ca0.md) | 354 | `declaration-track:71bc7f631a0b6751414e7ca07840dd0fc5ece3a2650900385123ad82fe9542b6` |
| 37 | `theorem` | [ContinuousMap.homotopic_const_iff](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/continuousmap-homotopic-const-iff--0a2759a6f9440250c952149f.md) | 365 | `result-track:0a2759a6f9440250c952149f3caee454a458b3c008be112a3437476b2e38cb10` |
| 38 | `def` | [evalAt](../../../../../mathematics/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/declarations/evalat--e961cfbd8d0dfb011985b2a1.md) | 376 | `declaration-track:e961cfbd8d0dfb011985b2a1e6c94db213b13588b673b4180f17629f647cb4b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
