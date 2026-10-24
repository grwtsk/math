# Verification target: GRWTSK.Topology.GeneralTopology.Body.Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09fdf4e500a3c288e6056bac584e76813ed455a2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09fdf4e500a3c288e6056bac584e76813ed455a2`.

Source path: `GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexBody](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/convexbody--1a6beb428211da0337e76f77.md) | 40 | `declaration-track:1a6beb428211da0337e76f770901801495ac485ed6d1ca544360e767e7f13b85` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--2ea72da1d9caafe244002b04.md) | 56 | `declaration-track:2ea72da1d9caafe244002b0432ec0a933b845f127aebd89782d697ef4726152f` |
| 3 | `theorem` | [convex](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/convex--11adb25d0223af987e02e461.md) | 63 | `result-track:11adb25d0223af987e02e4616f927280388260d63c57eaa4b1372aa431f67bd4` |
| 4 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/iscompact--2374551d5697af1cbf5c26a5.md) | 66 | `result-track:2374551d5697af1cbf5c26a501a4871ba72c6719c105a241c28c82bfe4fda478` |
| 5 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/isclosed--1e9518b65f055587f35a18af.md) | 69 | `result-track:1e9518b65f055587f35a18af2fceca6065831dd17aa7e6f687666c65f62f625c` |
| 6 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/nonempty--d5d852b8fa8f9eff6c9644ea.md) | 72 | `result-track:d5d852b8fa8f9eff6c9644ea00c077272f4bcc14ec3e96f929ad1e238ce001ea` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/ext--5d043acd7c4dff1e1383b186.md) | 76 | `result-track:5d043acd7c4dff1e1383b1865ff0740cdf021dbcb084bf8e15206d558f792ecc` |
| 8 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-mk--95f8b8e3be0c7ce8db3ce2ff.md) | 80 | `result-track:95f8b8e3be0c7ce8db3ce2ffbeac76f7e669232e8e8d92d129351263b7de86b4` |
| 9 | `theorem` | [zero_mem_of_symmetric](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/zero-mem-of-symmetric--f2ff860a7fa3d979d8317bf1.md) | 84 | `result-track:f2ff860a7fa3d979d8317bf19a4b67d6be1c84270e115359d58887897676cfea` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--cd4f12018cebca55559baafd.md) | 92 | `declaration-track:cd4f12018cebca55559baafd62d2ff67ceb33628b7ecb90b8b28ea86e819f95f` |
| 11 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-zero--1dbeafb20927a3ba2b413395.md) | 96 | `result-track:1dbeafb20927a3ba2b4133954591334042811290efd02dc92357200c40787036` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--0edf849005516d54accf26e3.md) | 99 | `declaration-track:0edf849005516d54accf26e345a54c6c47aa054efd69fb53fac8af0617614d7d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--aee0175249ff496da03f2415.md) | 104 | `declaration-track:aee0175249ff496da03f24155522c60f5af1b4df5e0ca865f9a0b522e6734389` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--fed4690477622ea0de28ff45.md) | 109 | `declaration-track:fed4690477622ea0de28ff4596300f5a85bc69c9c62d8b1dfef7f5ec03ae758a` |
| 15 | `theorem` | [coe_nsmul](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-nsmul--0161bac22621629f84a67aa8.md) | 113 | `result-track:0161bac22621629f84a67aa842d9247301cc78200487b652566a952ece22ebea` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--656d426f3083e27bc75ba9aa.md) | 117 | `declaration-track:656d426f3083e27bc75ba9aabe5833001b98e1299082439abb7183febaa115d7` |
| 17 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-add--0f265a1a98dbecbda1703415.md) | 121 | `result-track:0f265a1a98dbecbda17034159df55576769fbb004c62d0374d1e933ca6674c5c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--a72bd63a61ee030a3a07d796.md) | 124 | `declaration-track:a72bd63a61ee030a3a07d796154c8b62a8378bb39694f0154304ecaee524e10b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--8404aee16a3ade977baf8f75.md) | 131 | `declaration-track:8404aee16a3ade977baf8f75325d7ffe5159dfafaff94acc7801d65f17fc7682` |
| 20 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-smul--16c2baeec7b3e5c6a24d5505.md) | 135 | `result-track:16c2baeec7b3e5c6a24d5505e8ab42e07a47291945e2b916a1391906a83e7e07` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--b1f29bd5c7fdbd557e2b671d.md) | 140 | `declaration-track:b1f29bd5c7fdbd557e2b671d4d7941719a772663b4e6e619ef2ea9ce3e1f2696` |
| 22 | `theorem` | [coe_smul'](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/coe-smul--f7f5d26429a136987d8f0351.md) | 144 | `result-track:f7f5d26429a136987d8f03515e21ed0701fe3c6b6221a018df43e2ea4513f43d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--d7adaf88c81485ebd8629bf5.md) | 149 | `declaration-track:d7adaf88c81485ebd8629bf532d4c702f92f8cf89bcfb6b6d9ce52bb95124bb0` |
| 24 | `theorem` | [smul_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/smul-le-of-le--04f7329e3aa1f9b4c69be434.md) | 153 | `result-track:04f7329e3aa1f9b4c69be434bb0e60832d9b472a91f6b6ee2a364249c9c2780c` |
| 25 | `theorem` | [isBounded](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/isbounded--fc7111fb751b2d7fbc474df0.md) | 171 | `result-track:fc7111fb751b2d7fbc474df0458eba07e4fefad9795b5bb577ff4ee03cf81d58` |
| 26 | `theorem` | [hausdorffEdist_ne_top](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/hausdorffedist-ne-top--14b71d248f9446b96d80a32c.md) | 174 | `result-track:14b71d248f9446b96d80a32cd61ba14f4b90c0bb7fd1f8736399f9e8840ea8af` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--12a77bb1d6249ba32b3844d3.md) | 180 | `declaration-track:12a77bb1d6249ba32b3844d3bc96b78f65d5f34b66bae07fb790935cb1941d6b` |
| 28 | `theorem` | [hausdorffDist_coe](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/hausdorffdist-coe--f15260a1b13c960be7ebaa8f.md) | 187 | `result-track:f15260a1b13c960be7ebaa8f3c57e4626c90be640960f661e11bbb83dd71251f` |
| 29 | `theorem` | [hausdorffEdist_coe](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/hausdorffedist-coe--9d09a46203a219aa1e78b82a.md) | 191 | `result-track:9d09a46203a219aa1e78b82a357bc751520be81108ee5c8c40a588ca2a727717` |
| 30 | `theorem` | [iInter_smul_eq_self](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/iinter-smul-eq-self--a5ac876381afa7a4201da52a.md) | 200 | `result-track:a5ac876381afa7a4201da52a7639598033a6e1caf6cf1683a198fa3438b5aeaa` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/declarations/instance--37b2007b19fd40d8de06b287.md) | 228 | `declaration-track:37b2007b19fd40d8de06b28738eda53783f2bfe69d1d8fc6f74911d8ebb9d541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
