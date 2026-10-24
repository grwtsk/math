# Verification target: GRWTSK.Topology.GeneralTopology.Circle.Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc362fd6afe41331478749d2a6190233fbb8e816",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc362fd6afe41331478749d2a6190233fbb8e816`.

Source path: `GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/circle--204e746e4675e920fd3340c3.md) | 52 | `declaration-track:204e746e4675e920fd3340c3d6d96e93fb473d9e08b0789bcb3cbad4a4353e98` |
| 2 | `theorem` | [mem_circle_iff_abs](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/mem-circle-iff-abs--eb610573bf9901a3f4bef872.md) | 57 | `result-track:eb610573bf9901a3f4bef8724eff2a0a6907a4fc974b091082f9296fb7dc4c37` |
| 3 | `theorem` | [circle_def](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/circle-def--7a8f5bbc6c531583496b12c9.md) | 61 | `result-track:7a8f5bbc6c531583496b12c9e93eccd48da5f89bcde0ad0082988d9c50735521` |
| 4 | `theorem` | [abs_coe_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/abs-coe-circle--a4684004665f27973b837e69.md) | 66 | `result-track:a4684004665f27973b837e691c7098fdb1d4deba8ce6919a2177ba1c6153b477` |
| 5 | `theorem` | [mem_circle_iff_normSq](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/mem-circle-iff-normsq--995d68dfe28aa511e08d57cc.md) | 70 | `result-track:995d68dfe28aa511e08d57cc59d8069b36e1999e95030d4e1ba757312b469112` |
| 6 | `theorem` | [normSq_eq_of_mem_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/normsq-eq-of-mem-circle--6a947e2981595d54ce004a39.md) | 74 | `result-track:6a947e2981595d54ce004a399deaee8d935b1705dd992c5f981e7a36b5200bdd` |
| 7 | `theorem` | [ne_zero_of_mem_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/ne-zero-of-mem-circle--969e86c175b04a813ba68332.md) | 77 | `result-track:969e86c175b04a813ba68332f9ae9cdf36115b5af27f6752f7d4827ec07fb8c3` |
| 8 | `instance` | [commGroup](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/commgroup--80c2ff475d49ef253ca895e8.md) | 81 | `declaration-track:80c2ff475d49ef253ca895e8e8c16208e5610241668033ebcb33d940caf18bbf` |
| 9 | `theorem` | [coe_inv_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/coe-inv-circle--f5876cb60a79656350bb6cc9.md) | 85 | `result-track:f5876cb60a79656350bb6cc980bf560178feb0f9be635d852e2a00f5a3f15ed9` |
| 10 | `theorem` | [coe_inv_circle_eq_conj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/coe-inv-circle-eq-conj--e1972ba352c531df7234fe8d.md) | 89 | `result-track:e1972ba352c531df7234fe8d0e6abbe04502cc49fb7c3be09a427d59377bbfd4` |
| 11 | `theorem` | [coe_div_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/coe-div-circle--fcda07e66b28d773a6863aee.md) | 94 | `result-track:fcda07e66b28d773a6863aee5cf4229dce5a811e1a9c9704c710f90189cf5dcf` |
| 12 | `def` | [circle.toUnits](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/circle-tounits--3c15f5a38214c23d719e47aa.md) | 99 | `declaration-track:3c15f5a38214c23d719e47aae4066b6f47eb1ff965e59e83ef9be894472b8383` |
| 13 | `theorem` | [circle.toUnits_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/circle-tounits-apply--bdf743354aa5be9555b3ff47.md) | 105 | `result-track:bdf743354aa5be9555b3ff47553be8eac17b35a0abc1955d9a18049ebf6cf1ee` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/instance--cf1d2ca7109d40e824d200f4.md) | 110 | `declaration-track:cf1d2ca7109d40e824d200f4517bca6feec82e5db0bdb77ca45baccdfa4b254f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/instance--ca958096c84cb8489199e6ae.md) | 113 | `declaration-track:ca958096c84cb8489199e6ae5ccb2d95886c66aad8570d2b099f325db916daa7` |
| 16 | `def` | [circle.ofConjDivSelf](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/circle-ofconjdivself--eac693711079e7ca489c80c9.md) | 118 | `declaration-track:eac693711079e7ca489c80c9cfed7dbc81b501ae4251145d4b1258c51adf9fd0` |
| 17 | `def` | [expMapCircle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle--754f8e7fafbddb72cdb9d1ee.md) | 124 | `declaration-track:754f8e7fafbddb72cdb9d1eedf2280e7c362844938bd802a299c2eec5b6e07b0` |
| 18 | `theorem` | [expMapCircle_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle-apply--df5e26549644dddf44842c56.md) | 129 | `result-track:df5e26549644dddf44842c56fd801237d0ee75155af208355c73d8d430722379` |
| 19 | `theorem` | [expMapCircle_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle-zero--a5f34e94e554f55d490a424c.md) | 134 | `result-track:a5f34e94e554f55d490a424c37d0773ef846d05034dfa52f1b36c10c397569e0` |
| 20 | `theorem` | [expMapCircle_add](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle-add--3054a2e77436c0a21d9ec317.md) | 140 | `result-track:3054a2e77436c0a21d9ec317eeb8952a0c8d08f7b08ff00f552df4e6c4af8365` |
| 21 | `def` | [expMapCircleHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcirclehom--43d24ec0c24ff5d9b64c7f55.md) | 148 | `declaration-track:43d24ec0c24ff5d9b64c7f5556d3fa0f8b4a0be6533dc5005f23b0de69659b21` |
| 22 | `theorem` | [expMapCircle_sub](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle-sub--0688610fd6084189f20194b6.md) | 155 | `result-track:0688610fd6084189f20194b690e8e2ffa5d2014f556c10ec5b07817f99a38285` |
| 23 | `theorem` | [expMapCircle_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/declarations/expmapcircle-neg--ce72cf734a9e94c69da0839f.md) | 160 | `result-track:ce72cf734a9e94c69da0839f9a6cc82c4d9f16f0ad272c74ba5a06a489b76b56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
