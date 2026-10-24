# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b04359237e0bb4496e01ce81574d13c2726acb0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b04359237e0bb4496e01ce81574d13c2726acb0`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.SheafedSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingedSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/ringedspace--f57e456100792b09135525eb.md) | 47 | `declaration-track:f57e456100792b09135525eb9ae3aec644f1328fc50bb14fa2b22cc37b958f65` |
| 2 | `lemma` | [res_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/res-zero--7478840ca0e1c05e946a343b.md) | 55 | `result-track:7478840ca0e1c05e946a343bcf0204f07a79614064386681f1e2ba33a7a2914e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/instance--f74fb4d643ce13d53dfbc314.md) | 61 | `declaration-track:f74fb4d643ce13d53dfbc31406e2adc2cb7175316359d218e927d391a9c04b37` |
| 4 | `lemma` | [exists_res_eq_zero_of_germ_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/exists-res-eq-zero-of-germ-eq-zero--92faf88d31605ad1f245ce3f.md) | 66 | `result-track:92faf88d31605ad1f245ce3f68fd04be326869b8549efaa8975406b528a208de` |
| 5 | `theorem` | [isUnit_res_of_isUnit_germ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/isunit-res-of-isunit-germ--3d72935c612f1e9d3af75e03.md) | 79 | `result-track:3d72935c612f1e9d3af75e03051370a4491d954dd630668ee4df264c6a7e20e5` |
| 6 | `theorem` | [isUnit_of_isUnit_germ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/isunit-of-isunit-germ--57bc69926432fb5d50de5e47.md) | 107 | `result-track:57bc69926432fb5d50de5e4723e7247ce9488527633fba16d081b73db738a041` |
| 7 | `def` | [basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen--49ba17863efb0c94d0ba347e.md) | 153 | `declaration-track:49ba17863efb0c94d0ba347eb7b2895717aeb19771a5cda235b51e762067309a` |
| 8 | `theorem` | [mem_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/mem-basicopen--f1e8c2f0c77dd24a2f62a33e.md) | 166 | `result-track:f1e8c2f0c77dd24a2f62a33e10cee32eece5be065026134656d17292896a6afd` |
| 9 | `theorem` | [mem_basicOpen'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/mem-basicopen--ecfad606978fe4be4f0bfa0a.md) | 172 | `result-track:ecfad606978fe4be4f0bfa0ab3f2b1270fa26f1820a95610321ccda0506e8c12` |
| 10 | `theorem` | [mem_top_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/mem-top-basicopen--8d0d532a77981d236764fe6c.md) | 177 | `result-track:8d0d532a77981d236764fe6cf2f29fa8b32659f3a29206fe3a7375091564c3ef` |
| 11 | `theorem` | [basicOpen_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-le--dce5cea75be2c521586ac06d.md) | 181 | `result-track:dce5cea75be2c521586ac06d3931c38b024974461b12621ca3a8153443d71d19` |
| 12 | `theorem` | [isUnit_res_basicOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/isunit-res-basicopen--47e276eef3b9668b12279816.md) | 185 | `result-track:47e276eef3b9668b122798165d2488a41944ca7676264dc487eb35ad8b7e7b2f` |
| 13 | `theorem` | [basicOpen_res](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-res--b54066848ee78f644224141c.md) | 193 | `result-track:b54066848ee78f644224141c6cdc8b2da555f01b87389bcb362a29a06ca32995` |
| 14 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-res-eq--a6190a623f33b7fa748f0b9c.md) | 209 | `result-track:a6190a623f33b7fa748f0b9c51b173a5f0b4cd471d15a9d37114f6c39b30294e` |
| 15 | `theorem` | [basicOpen_mul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-mul--e105ba0ab7f3297eac48b821.md) | 220 | `result-track:e105ba0ab7f3297eac48b8215dc8daa8e1647ca4af4cfa374a14553ce3853f0d` |
| 16 | `lemma` | [basicOpen_pow](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-pow--59b9521a09d1953ef35da394.md) | 228 | `result-track:59b9521a09d1953ef35da39467fc266ad348c22d8dfc7b36139fc1bb45fd2486` |
| 17 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/basicopen-of-isunit--5a3e09d4f65c1558d2eed963.md) | 235 | `result-track:5a3e09d4f65c1558d2eed963cb1950990e7768e0ef50e6e1fd737f0f57e73bac` |
| 18 | `def` | [zeroLocus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/zerolocus--22e7e0d235b32c14bda9e071.md) | 247 | `declaration-track:22e7e0d235b32c14bda9e071724d07c3db0abe81d037587baefc2bb0f12d096f` |
| 19 | `lemma` | [zeroLocus_isClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/zerolocus-isclosed--e10a5c87d3a55f7a1dd8b7b9.md) | 250 | `result-track:e10a5c87d3a55f7a1dd8b7b97911c1226ab13861155cd862a89a343964de2223` |
| 20 | `lemma` | [zeroLocus_singleton](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/zerolocus-singleton--d9c4412f9296ef82490b44ba.md) | 257 | `result-track:d9c4412f9296ef82490b44ba8b26d2e2d7310de74b139e6daad5d1ae1e1fdb33` |
| 21 | `lemma` | [zeroLocus_empty_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/zerolocus-empty-eq-univ--05acb050eea5950894456059.md) | 262 | `result-track:05acb050eea59508944560591777bcd2caaf6b52ab09a1e4c9903f6ec94ab45c` |
| 22 | `lemma` | [mem_zeroLocus_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/declarations/mem-zerolocus-iff--4b318d804295518ef26e3ace.md) | 267 | `result-track:4b318d804295518ef26e3acedf5e13e492edb696cf82c2826f47169164f2550d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
