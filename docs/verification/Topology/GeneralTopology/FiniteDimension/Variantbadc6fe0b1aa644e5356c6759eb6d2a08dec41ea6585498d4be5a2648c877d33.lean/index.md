# Verification target: GRWTSK.Topology.GeneralTopology.FiniteDimension.Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fbed2555f7d8c52c66bbea3df044f694ff0b80a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fbed2555f7d8c52c66bbea3df044f694ff0b80a`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Support` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smooth_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/exists-smooth-tsupport-subset--e81aa8ae97805efe8ee9992c.md) | 49 | `result-track:e81aa8ae97805efe8ee9992c40dd40b758c21978092de93dd18580b8ee3350dc` |
| 2 | `theorem` | [IsOpen.exists_smooth_support_eq](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/isopen-exists-smooth-support-eq--b8ed1dc73699e4e8910527ca.md) | 83 | `result-track:b8ed1dc73699e4e8910527ca4c43e2680496c30b5f332a77201c250f84965975` |
| 3 | `def` | [φ](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/anonymous--ec619aa6c6e388de8c849d22.md) | 207 | `declaration-track:ec619aa6c6e388de8c849d2280e017c664bdc1c61ead556cba99ff59a46968fe` |
| 4 | `theorem` | [u_exists](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-exists--960267cdfd73ebd9844faad6.md) | 216 | `result-track:960267cdfd73ebd9844faad65fb96c0b1069801e047531b3232945aed182cbf2` |
| 5 | `def` | [u](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u--afab0c79d04d182b0bf8de3c.md) | 248 | `declaration-track:afab0c79d04d182b0bf8de3ca3a90714df49370f5dab3313c9e304cf125d9674` |
| 6 | `theorem` | [u_smooth](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-smooth--c5faa3de9f3f18c162d19387.md) | 251 | `result-track:c5faa3de9f3f18c162d19387b865fa12b8a37a8ff27f5a1a6f755a265e113fdc` |
| 7 | `theorem` | [u_continuous](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-continuous--ad74f4116bf939fe27b6b7ca.md) | 254 | `result-track:ad74f4116bf939fe27b6b7ca61cfd8980f0074813900034d6c6f53441720329a` |
| 8 | `theorem` | [u_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-support--bbad38d633d8ebabe82c22ba.md) | 257 | `result-track:bbad38d633d8ebabe82c22ba8ec156763971264f5c8d560310a506b42f935e6c` |
| 9 | `theorem` | [u_compact_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-compact-support--e0d4b539f39f79443113a3c2.md) | 260 | `result-track:e0d4b539f39f79443113a3c2416b6462324fc52f85b2e9f757ccba81d802b544` |
| 10 | `theorem` | [u_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-nonneg--a4ff6bfc89a5b720395c29b8.md) | 266 | `result-track:a4ff6bfc89a5b720395c29b82882c45c2fd9fb5fff7aa82a260a8e24900760af` |
| 11 | `theorem` | [u_le_one](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-le-one--99f877e4c6385ecd42f30558.md) | 269 | `result-track:99f877e4c6385ecd42f3055816438eb4370523cf226e2affbf040011c4417f03` |
| 12 | `theorem` | [u_neg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-neg--5f549206a388a4c23710b1d9.md) | 272 | `result-track:5f549206a388a4c23710b1d95cd68f359ce746a9f5b8449987b939ee75c86d7d` |
| 13 | `theorem` | [u_int_pos](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/u-int-pos--d99c57f018682331c09e7c62.md) | 280 | `result-track:d99c57f018682331c09e7c6239af748da4c81e5480daf95bd2c9984791a234c1` |
| 14 | `def` | [w](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w--2532a68763b2e7fb91288c6e.md) | 287 | `declaration-track:2532a68763b2e7fb91288c6e5c573ddf072d5c16c55798c611609349bc472bf8` |
| 15 | `theorem` | [w_def](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-def--72f337b5d9f7699bdebbc87f.md) | 290 | `result-track:72f337b5d9f7699bdebbc87f4c8cd98f89a22e12514cc097bb5e6b08bbb7d1df` |
| 16 | `theorem` | [w_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-nonneg--b532b68e2afd5e145ac20225.md) | 294 | `result-track:b532b68e2afd5e145ac2022572c4ba68bae47009d5cc2363edc10f5fd86e14a5` |
| 17 | `theorem` | [w_mul_φ_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-mul-nonneg--22e514cc2ed80907d9a0c944.md) | 301 | `result-track:22e514cc2ed80907d9a0c94409de1b003cb50810b4c6609843a8dc09f2853a97` |
| 18 | `theorem` | [w_integral](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-integral--b518ee1048f483f55a0a4525.md) | 306 | `result-track:b518ee1048f483f55a0a4525694aec851bbac790d0c3290b6b8377201a0ced29` |
| 19 | `theorem` | [w_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-support--c605dfeefff9116b21eb0946.md) | 311 | `result-track:c605dfeefff9116b21eb094654ef4e68154837a9602560b841f8ac5f2b204172` |
| 20 | `theorem` | [w_compact_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/w-compact-support--033a214db006d05cd5f34334.md) | 321 | `result-track:033a214db006d05cd5f34334d62b5a4fcde6506ef42adab09ab52fe08f78023e` |
| 21 | `def` | [y](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y--1fbd115948d6f589ca741b8b.md) | 331 | `declaration-track:1fbd115948d6f589ca741b8b0f5c2af6a5faff82180fcb43ecffea98fcb43b00` |
| 22 | `theorem` | [y_neg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-neg--fe012442987f68056bc93495.md) | 334 | `result-track:fe012442987f68056bc93495f27f3d46c49e148e52ba7569983b850c115b58a4` |
| 23 | `theorem` | [y_eq_one_of_mem_closedBall](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-eq-one-of-mem-closedball--69516e22a7ad66ca5ff76dd6.md) | 341 | `result-track:69516e22a7ad66ca5ff76dd62051365fd6ecd10c8e4d3832da749b7f3fb5fbb1` |
| 24 | `theorem` | [y_eq_zero_of_notMem_ball](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-eq-zero-of-notmem-ball--8b4eb85e45df99d09fd31826.md) | 359 | `result-track:8b4eb85e45df99d09fd31826e796044b5d344ecef0d5986f608ff92d35756c0e` |
| 25 | `theorem` | [y_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-nonneg--40d1ec35d08d02a0f97051f8.md) | 378 | `result-track:40d1ec35d08d02a0f97051f884446c1236847a3c937a63b5e0c20ed018a0dd83` |
| 26 | `theorem` | [y_le_one](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-le-one--0c90914534e74a21c2045b53.md) | 381 | `result-track:0c90914534e74a21c2045b5353140622fc350869eba1b4889e3e85ee8a5dda56` |
| 27 | `theorem` | [y_pos_of_mem_ball](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-pos-of-mem-ball--c4d44d6112dc7c6f3061eb6b.md) | 394 | `result-track:c4d44d6112dc7c6f3061eb6bb509cd416a049d5195a04d5f41417172ba792e53` |
| 28 | `theorem` | [y_smooth](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-smooth--d47e132a8f5f5941998fa06f.md) | 436 | `result-track:d47e132a8f5f5941998fa06f4f8121ba67f9270ff6e6fb50c6ea9e4c4630dff1` |
| 29 | `theorem` | [y_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/y-support--4f6b59605121afa67e554f42.md) | 463 | `result-track:4f6b59605121afa67e554f42738762ddff6a15a380bba156fb0194c9d14c336e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variantbadc6fe0b1aa644e5356c6759eb6d2a08dec41ea6585498d4be5a2648c877d33.lean/declarations/instance--60a6e1ea9a4ae266ab7e04bd.md) | 473 | `declaration-track:60a6e1ea9a4ae266ab7e04bd3fa904d7ce9f6d9ef47d9b78b70dcf2ab8062d9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
