# Verification target: GRWTSK.Topology.GeneralTopology.Exposed.Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e`.

Source path: `GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.OrderClosed` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/isexposed--aa83a93ee06ca9b246e8d0dc.md) | 59 | `declaration-track:aa83a93ee06ca9b246e8d0dc54d4cd5f89c187cc0f4656e675e19541f35f091c` |
| 2 | `def` | [ContinuousLinearMap.toExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/continuouslinearmap-toexposed--b84e85eabd2b142be8fbad7a.md) | 71 | `declaration-track:b84e85eabd2b142be8fbad7a794ca490ff188c19cdf61f1d0d06e849356fc8f8` |
| 3 | `theorem` | [ContinuousLinearMap.toExposed.isExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/continuouslinearmap-toexposed-isexposed--c60d5fb9b5a5818cf2cf84c3.md) | 74 | `result-track:c60d5fb9b5a5818cf2cf84c3ad1b10372d62b4a07897e2a20adf2972c768a07a` |
| 4 | `theorem` | [isExposed_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/isexposed-empty--d69bf0817c8b37aca6375824.md) | 76 | `result-track:d69bf0817c8b37aca637582436a1b6bd3c3a3ba34f98771c7e671a1389b11250` |
| 5 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/subset--4a5976ba151055871b1ea50b.md) | 82 | `result-track:4a5976ba151055871b1ea50b873b2f10fbd448c650b0709413e752f97e097b30` |
| 6 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/refl--3317d77a345d89bd2c3c02f1.md) | 88 | `result-track:3317d77a345d89bd2c3c02f16d63fffc3e347d07bed39673b187950ee25d2ef4` |
| 7 | `theorem` | [antisymm](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/antisymm--0069dad760c0be9446cbed07.md) | 91 | `result-track:0069dad760c0be9446cbed07f95089e00059900f240e15acf9d0f2229ce26ab1` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/mono--8d8e0e0ffdfb004e92aea199.md) | 98 | `result-track:8d8e0e0ffdfb004e92aea199e8ca31d2657082f8b1342e039ddba8725ace3050` |
| 9 | `theorem` | [eq_inter_halfSpace'](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/eq-inter-halfspace--c2841f411a6eecd4eb3d5d4b.md) | 107 | `result-track:c2841f411a6eecd4eb3d5d4b5b702b003a125642fb7b148e819268575f7de3ba` |
| 10 | `theorem` | [eq_inter_halfSpace](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/eq-inter-halfspace--e479efc6ba48480764b2751a.md) | 118 | `result-track:e479efc6ba48480764b2751aa1c8fa6095e0ab4892636474a597704e07df4df0` |
| 11 | `theorem` | [inter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/inter--3b29839765b470a7232578d4.md) | 130 | `result-track:3b29839765b470a7232578d40b942c1bf5cb7777035b7ead0e744287949d3821` |
| 12 | `theorem` | [sInter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/sinter--be071848d8e048a5f66cd4db.md) | 145 | `result-track:be071848d8e048a5f66cd4db8ba307c4d952cb460c0629c1d6aa83edfa9bf508` |
| 13 | `theorem` | [inter_left](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/inter-left--fcf9a4ff9c7717761b24dde0.md) | 158 | `result-track:fcf9a4ff9c7717761b24dde0109499189d8c17b641ec25a19e3d625d05c23aa6` |
| 14 | `theorem` | [inter_right](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/inter-right--7dfca7692a4609747a00817c.md) | 164 | `result-track:7dfca7692a4609747a00817ccef586dcb0a0257282f335daddca1104ef77a4ba` |
| 15 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/isclosed--42c9e2f67ee3d28acc04e58b.md) | 168 | `result-track:42c9e2f67ee3d28acc04e58ba9db5c7f753ae991751b09deddd84eacfd932bdf` |
| 16 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/iscompact--242740b44fca6be2a295fd4b.md) | 175 | `result-track:242740b44fca6be2a295fd4b6113688ac6d97018e3dcf6c03db43c91b062f405` |
| 17 | `def` | [Set.exposedPoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/set-exposedpoints--ff905326ec308e05115213de.md) | 184 | `declaration-track:ff905326ec308e05115213defe43fdc781a24116b788d946b9b90484823ec5a3` |
| 18 | `theorem` | [exposed_point_def](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/exposed-point-def--22f35eff19c79e4c17fdc69a.md) | 187 | `result-track:22f35eff19c79e4c17fdc69a983f3149990ed281baccecdcf66b6f0eab395fae` |
| 19 | `theorem` | [exposedPoints_subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/exposedpoints-subset--2b4609407ab470aef774ff83.md) | 191 | `result-track:2b4609407ab470aef774ff8312008b87a91e94d956d8a070973c01264a8602ee` |
| 20 | `theorem` | [exposedPoints_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/exposedpoints-empty--0d2e6775c0ed4cb30ba64bea.md) | 194 | `result-track:0d2e6775c0ed4cb30ba64bea04fbcb9d9021fb29d984021c7323dbe8a739f7e3` |
| 21 | `theorem` | [mem_exposedPoints_iff_exposed_singleton](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/mem-exposedpoints-iff-exposed-singleton--873921c7fd6c25738c6f254c.md) | 198 | `result-track:873921c7fd6c25738c6f254c90228d362ade5f8a4de9d3415fa32b257b486def` |
| 22 | `theorem` | [convex](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/convex--ed54dd89a342c5d8647655a6.md) | 221 | `result-track:ed54dd89a342c5d8647655a64f2dae517b9897309fd43d9b3d49131813c668f1` |
| 23 | `theorem` | [isExtreme](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/isextreme--d807adf5b27c3e43a9bb86c9.md) | 230 | `result-track:d807adf5b27c3e43a9bb86c9ab2b8b7125f08ae3ec6ce7aa72c39bd7db1fe576` |
| 24 | `theorem` | [exposedPoints_subset_extremePoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/declarations/exposedpoints-subset-extremepoints--4ccc2065b6f1688b099a1dec.md) | 244 | `result-track:4ccc2065b6f1688b099a1decde4e0299924eda20ae0fab9d1fdf7e0fc59a5f52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
