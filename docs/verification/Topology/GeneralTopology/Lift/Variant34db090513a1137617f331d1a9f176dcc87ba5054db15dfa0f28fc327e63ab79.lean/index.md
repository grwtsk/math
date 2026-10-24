# Verification target: GRWTSK.Topology.GeneralTopology.Lift.Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6477d1b05017bbade6769a3774af54a9a59c471",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6477d1b05017bbade6769a3774af54a9a59c471`.

Source path: `GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_top](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-top--4e8da127a253f060d1c81aa2.md) | 26 | `result-track:4e8da127a253f060d1c81aa2fab500c29d9db8fc86e1ccb4cebe4e306f278460` |
| 2 | `theorem` | [HasBasis.mem_lift_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/hasbasis-mem-lift-iff--3d7e9c136535298e04aa0b3c.md) | 37 | `result-track:3d7e9c136535298e04aa0b3cdff8cc738ec8a36fcb411e867201b94ec4362508` |
| 3 | `theorem` | [HasBasis.lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/hasbasis-lift--f8f70adb374c89665dcaf387.md) | 56 | `result-track:f8f70adb374c89665dcaf387a9c5d3780b0358f3699446ba5c38f4b6c8ba5ec0` |
| 4 | `theorem` | [mem_lift_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/mem-lift-sets--235098af05ffdc9c1b943260.md) | 63 | `result-track:235098af05ffdc9c1b9432600ccce6a0cc3b5807b9dd47b101b2d5dc196ba7e7` |
| 5 | `theorem` | [sInter_lift_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/sinter-lift-sets--e6388d69f6c4d65e4ea65cd4.md) | 67 | `result-track:e6388d69f6c4d65e4ea65cd4e3e62cbd964ecbed5139d9ef0b195f7dfed6d765` |
| 6 | `theorem` | [mem_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/mem-lift--f2c09a5d96de325295d4a3ff.md) | 72 | `result-track:f2c09a5d96de325295d4a3ff18dd86ce01fc1dee2977170502069e5c8a7f2362` |
| 7 | `theorem` | [lift_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-le--71fa0b89946e7633ff2d6d13.md) | 76 | `result-track:71fa0b89946e7633ff2d6d1394c3c63b6c58a24731a80b11de8f0666e27ad81e` |
| 8 | `theorem` | [le_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/le-lift--3d564810a86c1114ce825462.md) | 80 | `result-track:3d564810a86c1114ce8254620eacb4c91678c222a591483fdf0f33a70d7a5e10` |
| 9 | `theorem` | [lift_mono](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-mono--e26baba117f8961eb9f296ce.md) | 84 | `result-track:e26baba117f8961eb9f296ce2e89bb99269f85db76233bffb78119da19f64358` |
| 10 | `theorem` | [lift_mono'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-mono--4bdb83b1eaf7711422ebc368.md) | 87 | `result-track:4bdb83b1eaf7711422ebc368ea436acc92693702513aabd0d9878fc0a18f330b` |
| 11 | `theorem` | [tendsto_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/tendsto-lift--cccc0d84ed0066b24e297fc1.md) | 89 | `result-track:cccc0d84ed0066b24e297fc1959de5c2831fc2766bcc1bef972ea32fb5875768` |
| 12 | `theorem` | [map_lift_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/map-lift-eq--d9959becff9e86ac1b2503ed.md) | 93 | `result-track:d9959becff9e86ac1b2503ed665de6c32b6e3332914fe19935efc8d8963ede86` |
| 13 | `theorem` | [comap_lift_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/comap-lift-eq--373cfa1f80763defebe33f2f.md) | 98 | `result-track:373cfa1f80763defebe33f2fbf4a61d7d48af7f5252a0482fd3ce6a56d008980` |
| 14 | `theorem` | [comap_lift_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/comap-lift-eq2--8aa3593b19e6cfdbcf5a7fcb.md) | 101 | `result-track:8aa3593b19e6cfdbcf5a7fcb74b49b9f2a2fb1fff1377b1950c7356c63c46897` |
| 15 | `theorem` | [lift_map_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-map-le--70cac138837de4f16d58b8bc.md) | 106 | `result-track:70cac138837de4f16d58b8bcff3016b359eab471daddbceee5e6bce6967fe119` |
| 16 | `theorem` | [map_lift_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/map-lift-eq2--d1f6ddaf6562bd6014ad6f4c.md) | 109 | `result-track:d1f6ddaf6562bd6014ad6f4cf276b881a73decc961246590c751bb1a1e5e3064` |
| 17 | `theorem` | [lift_comm](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-comm--391bd1bedb1ef3475e587183.md) | 113 | `result-track:391bd1bedb1ef3475e58718344bfaf7626f8915ee85dcd118a1766473a7a4228` |
| 18 | `theorem` | [lift_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-assoc--b23e52ee6786f8baf3e65371.md) | 121 | `result-track:b23e52ee6786f8baf3e6537148332ca1ae1fa8efa37d73bbed7674da9c06baaa` |
| 19 | `theorem` | [lift_lift_same_le_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-same-le-lift--dc8e5c26766ace28b8c10afd.md) | 130 | `result-track:dc8e5c26766ace28b8c10afd4c7c5ed0ca2f2ae89f373e4547825e00b93fce25` |
| 20 | `theorem` | [lift_lift_same_eq_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-same-eq-lift--6dbbdb32fc2b038cbce3b087.md) | 134 | `result-track:6dbbdb32fc2b038cbce3b0877216bd08cbe199ad6447c9a47a09b9213eaea316` |
| 21 | `theorem` | [lift_principal](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-principal--ae22333257c35ed8f972b450.md) | 142 | `result-track:ae22333257c35ed8f972b450790220e03d4d3cd96459050d3279acfb931d15ab` |
| 22 | `theorem` | [monotone_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/monotone-lift--06adfc155cba84a38b46b659.md) | 145 | `result-track:06adfc155cba84a38b46b6598498956aefa22411354f2f23ac4822cfe77e1e34` |
| 23 | `theorem` | [lift_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-nebot-iff--abed73689744987800104143.md) | 148 | `result-track:abed7368974498780010414319c53d495b79277eb2cc5215f7ebf794f556da16` |
| 24 | `theorem` | [lift_const](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-const--9ad6e630cbb506b9f2d70dc0.md) | 152 | `result-track:9ad6e630cbb506b9f2d70dc0301a5003cc95453018eab761c761d9ea27ef0f9c` |
| 25 | `theorem` | [lift_inf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-inf--a110123022c3e32ca7885de5.md) | 156 | `result-track:a110123022c3e32ca7885de541cba841360e88e3521f97248fed23d440bddbef` |
| 26 | `theorem` | [lift_principal2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-principal2--c5bfea25abf99faac583ecf4.md) | 160 | `result-track:c5bfea25abf99faac583ecf41ffc83b5fe70c5ba00a9f5e8caf8da607a6a2871` |
| 27 | `theorem` | [lift_iInf_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf-le--5907974b84e808b5967fa50f.md) | 164 | `result-track:5907974b84e808b5967fa50f5739dfeb2cf623f0fdad824c0695f4bea1ee3dbf` |
| 28 | `theorem` | [lift_iInf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf--af01051a501f40b6ab410fa2.md) | 168 | `result-track:af01051a501f40b6ab410fa2cad256758ccabae4756829b4f9b95f099c18ce09` |
| 29 | `theorem` | [lift_iInf_of_directed](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf-of-directed--221041d681b3c6481fb5f0d9.md) | 181 | `result-track:221041d681b3c6481fb5f0d980bdaa13eda0b4dc5566411938ff12c335a6e4c6` |
| 30 | `theorem` | [lift_iInf_of_map_univ](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf-of-map-univ--d934aa31901a7f32d9c6f497.md) | 187 | `result-track:d934aa31901a7f32d9c6f4970e8aadd558f87ef48bcc06fe28e9b97558ff6504` |
| 31 | `theorem` | [lift'_top](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-top--9784c720375448abab17b0b5.md) | 201 | `result-track:9784c720375448abab17b0b526093f19812e7aa4b2d21a1add9814a7e1078d18` |
| 32 | `theorem` | [mem_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/mem-lift--0f7c70fec713e484b39483b0.md) | 204 | `result-track:0f7c70fec713e484b39483b02e77e2bb0a0df92b4031757594683a6058b839c3` |
| 33 | `theorem` | [tendsto_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/tendsto-lift--6d7ac528e775aa6b11b191e9.md) | 207 | `result-track:6d7ac528e775aa6b11b191e9ede33ac2c697403d204816b5c5d0174124f0d1a3` |
| 34 | `theorem` | [HasBasis.lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/hasbasis-lift--4b742e3a35fdcdb39baa6c91.md) | 211 | `result-track:4b742e3a35fdcdb39baa6c91c214bea496c7c341f7be26567469f97827d2deeb` |
| 35 | `theorem` | [mem_lift'_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/mem-lift-sets--9a5590a285b9885ddd84cd18.md) | 216 | `result-track:9a5590a285b9885ddd84cd1827feed6ff22735ae204207ce8756f7be9e80273a` |
| 36 | `theorem` | [eventually_lift'_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/eventually-lift-iff--613cbde330f2e2df0605a8fb.md) | 219 | `result-track:613cbde330f2e2df0605a8fb54db67bac3b599e024c4d5e21cc941a787871c8b` |
| 37 | `theorem` | [sInter_lift'_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/sinter-lift-sets--46cf9af2394759847d4d7a89.md) | 223 | `result-track:46cf9af2394759847d4d7a89b98c0276f6fc36784744d78545c5ee8eab546a5d` |
| 38 | `theorem` | [lift'_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-le--1e4b87b8a71cb1cf28427ea2.md) | 226 | `result-track:1e4b87b8a71cb1cf28427ea249d85d968f5a05e825b458299896cdb458fe9d2e` |
| 39 | `theorem` | [lift'_mono](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-mono--126c16ee6afdca8cea78f3b9.md) | 230 | `result-track:126c16ee6afdca8cea78f3b9b74602a0eecd8ac7323edb5e65fd8df08ec30faa` |
| 40 | `theorem` | [lift'_mono'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-mono--3c27dda3833526aa10a9e35c.md) | 233 | `result-track:3c27dda3833526aa10a9e35cf3d474217a79a17ef683b37d42ef812a7887b204` |
| 41 | `theorem` | [lift'_cong](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-cong--593c33369507fc9f996c595c.md) | 236 | `result-track:593c33369507fc9f996c595c8e31429e1286da595a48158213be4556ac7ea44f` |
| 42 | `theorem` | [map_lift'_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/map-lift-eq--c56c0fafd8ee4c687fef7dae.md) | 240 | `result-track:c56c0fafd8ee4c687fef7dae851d130c92514839ce95579da78c34606d076001` |
| 43 | `theorem` | [lift'_map_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-map-le--dc8dfbcf3383931f95f56aba.md) | 245 | `result-track:dc8dfbcf3383931f95f56aba5f85455f5fed52ea2d7f542dfc82f186d9986bbd` |
| 44 | `theorem` | [map_lift'_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/map-lift-eq2--02f8a3e4e389a0ecc0122640.md) | 248 | `result-track:02f8a3e4e389a0ecc01226409e22f19aed994147e28deba7245ff1d86dcbb69c` |
| 45 | `theorem` | [comap_lift'_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/comap-lift-eq--24d536b743ecf13d11239d75.md) | 252 | `result-track:24d536b743ecf13d11239d75ebdac01aa87bd2a217e0f5050b2f87ba78a7a79c` |
| 46 | `theorem` | [comap_lift'_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/comap-lift-eq2--151834e333cc06ce6b6a59a9.md) | 255 | `result-track:151834e333cc06ce6b6a59a92889f7491c1f88cf64af65fb9a9464604eae6e41` |
| 47 | `theorem` | [lift'_principal](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-principal--c87a22706087195157eb59d8.md) | 259 | `result-track:c87a22706087195157eb59d89fa067a0c77f4ae8449377f287ddb3afe4d906cd` |
| 48 | `theorem` | [lift'_pure](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-pure--e26bdc0f6d6e3a6d2f4e7009.md) | 262 | `result-track:e26bdc0f6d6e3a6d2f4e70099dc5044defebf5973c288cf8277dc659595e69b7` |
| 49 | `theorem` | [lift'_bot](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-bot--16835ee2e2f47e9dab851147.md) | 265 | `result-track:16835ee2e2f47e9dab851147fd138b08bd1e08c7eb0c607934ab45c36e55190a` |
| 50 | `theorem` | [le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/le-lift--214be8442487184ec33de258.md) | 268 | `result-track:214be8442487184ec33de2589850932d45f0a2398c9929dc3daad90c2165e6de` |
| 51 | `theorem` | [principal_le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/principal-le-lift--373e96263c78a6bc33bf2054.md) | 272 | `result-track:373e96263c78a6bc33bf2054fe51fd42bb11e55440482d43e8e056aa78e285a3` |
| 52 | `theorem` | [monotone_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/monotone-lift--73e3601a602e9998be500784.md) | 275 | `result-track:73e3601a602e9998be500784ef726b856c38977271947001b738d24082aa723f` |
| 53 | `theorem` | [lift_lift'_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-assoc--63f0fdfc2174ab1b06ac6cf9.md) | 278 | `result-track:63f0fdfc2174ab1b06ac6cf99340815a520b0a888e6b5d856ba92d388898f043` |
| 54 | `theorem` | [lift'_lift'_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-assoc--f2d95fdd769f41f0afdb0ed8.md) | 284 | `result-track:f2d95fdd769f41f0afdb0ed8cc539739c6ee3a9e5511aa1d77f6640f1f4b6684` |
| 55 | `theorem` | [lift'_lift_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-assoc--08a57eeb9e815caeba60ff21.md) | 288 | `result-track:08a57eeb9e815caeba60ff21cf5b8648bd9fc0a4452868dc52c984b149b00cdf` |
| 56 | `theorem` | [lift_lift'_same_le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-same-le-lift--99532244dfd72e588f1dfca7.md) | 292 | `result-track:99532244dfd72e588f1dfca7789a134c8640d122046939efdbf8899a92d8eef6` |
| 57 | `theorem` | [lift_lift'_same_eq_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-lift-same-eq-lift--9f7eb4b065418a94c7d58faa.md) | 296 | `result-track:9f7eb4b065418a94c7d58faa5a7fb1544635cc19ce841be92cb2f0f7be2f97d9` |
| 58 | `theorem` | [lift'_inf_principal_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-inf-principal-eq--7500d4aa23497a3dfccd1f93.md) | 302 | `result-track:7500d4aa23497a3dfccd1f935b523e1a06f164ea698ac8ab13c934b954107823` |
| 59 | `theorem` | [lift'_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-nebot-iff--103bec38b19c632ded98c7df.md) | 306 | `result-track:103bec38b19c632ded98c7dfbef5d2455147adafcbb98df1fec14f42f326fba5` |
| 60 | `theorem` | [lift'_id](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-id--063d63b6b2e0afa3b0b15b76.md) | 312 | `result-track:063d63b6b2e0afa3b0b15b76634b41032bd9cbd04361abeae6ccf6cd3f2b9266` |
| 61 | `theorem` | [lift'_iInf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf--7c136f3d44d9556892ee703b.md) | 315 | `result-track:7c136f3d44d9556892ee703b699f38220d8231436a7b8e1732df8ef1b9acb7ea` |
| 62 | `theorem` | [lift'_iInf_of_map_univ](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-iinf-of-map-univ--a3cbc7adb8cb89fc016fc357.md) | 319 | `result-track:a3cbc7adb8cb89fc016fc357d1d8eb3dcb6ce999b9727b40b2a57a008f984c85` |
| 63 | `theorem` | [lift'_inf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-inf--bebb6770eb102d0a8dbc6c65.md) | 325 | `result-track:bebb6770eb102d0a8dbc6c652dbfe678870994ebea562e44f048acc691738f82` |
| 64 | `theorem` | [lift'_inf_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/lift-inf-le--7cb2896c8325c3ccf0bba2c4.md) | 331 | `result-track:7cb2896c8325c3ccf0bba2c48d19141d44dfebbf4a00405ecd711f4cc9238f19` |
| 65 | `theorem` | [comap_eq_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/comap-eq-lift--bd723b7a13852d6b8e9372ae.md) | 335 | `result-track:bd723b7a13852d6b8e9372ae379f8cd0b34733af91ac744739290a890988dcfb` |
| 66 | `theorem` | [prod_def](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/prod-def--7bef120d78a051f91253a6ec.md) | 344 | `result-track:7bef120d78a051f91253a6ecda4b50a0841b83d3571803df459baf6d35d94a13` |
| 67 | `theorem` | [prod_same_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/prod-same-eq--7569a5f5b1ece60e10ac5116.md) | 351 | `result-track:7569a5f5b1ece60e10ac5116fc796e645baa966dafa880f798e136b4104a9067` |
| 68 | `theorem` | [tendsto_prod_self_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/tendsto-prod-self-iff--d5a17d28b5b8000dc3a71377.md) | 354 | `result-track:d5a17d28b5b8000dc3a71377239d890c8c7243c81ec2677d8bacba7a8cb25030` |
| 69 | `theorem` | [prod_lift_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/prod-lift-lift--de290da808625e3256b90967.md) | 360 | `result-track:de290da808625e3256b90967454fcac48e8091a830965bbf4c8032c460995944` |
| 70 | `theorem` | [prod_lift'_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/declarations/prod-lift-lift--e6ed85e70fb1a9f558ea4ba2.md) | 369 | `result-track:e6ed85e70fb1a9f558ea4ba2f2b32c04dc81eca52bfccf1d8dd9306b186e42de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
