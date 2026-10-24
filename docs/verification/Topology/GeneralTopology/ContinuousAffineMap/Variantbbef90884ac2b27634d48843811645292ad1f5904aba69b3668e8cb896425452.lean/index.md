# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousAffineMap.Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d0faccfec6f722538b70738c150dedd538c6c98",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d0faccfec6f722538b70738c150dedd538c6c98`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/continuousaffinemap--0885d538add2c96f224c807f.md) | 40 | `declaration-track:0885d538add2c96f224c807f8e18a3a413d8ade50b2ad3429b59abfebd591fc5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--204b1a78227a04abe5ef2245.md) | 54 | `declaration-track:204b1a78227a04abe5ef2245d89c9d29f904fc08490bc80cd5d40b8d613a7cac` |
| 3 | `theorem` | [toAffineMap_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/toaffinemap-injective--ec799e242509fbd42740af0b.md) | 59 | `result-track:ec799e242509fbd42740af0bfb1c2c6d9f8d49bb38ca89ba33efed38dffd3276` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--0a0ed6692b1ffdedfa574fde.md) | 65 | `declaration-track:0a0ed6692b1ffdedfa574fde82e37502f451ce5baca6c3ee821a2a4a8282cdb7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--43cd7c4eaae0b773ca5b36aa.md) | 69 | `declaration-track:43cd7c4eaae0b773ca5b36aa9bfc12c1dcebfb102eba528a433cfddb316c2baf` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/tofun-eq-coe--872a56a0399b334dd667c8aa.md) | 72 | `result-track:872a56a0399b334dd667c8aa8749ef9a5993e21651b6e607004cc5b68ca9a544` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-injective--f511147037a8cca201d9931b.md) | 74 | `result-track:f511147037a8cca201d9931bbee6c99d06b9183e7824274e0c7a1164a836ac42` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/ext--5344735d421659bb6d5bd883.md) | 78 | `result-track:5344735d421659bb6d5bd88335dacc7a957c21a3bc08ae11a19a41fac3ea653c` |
| 9 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/congr-fun--b79aa6595479552086814533.md) | 81 | `result-track:b79aa6595479552086814533527ad09f6cb469f31558c5173fb11a12756c633c` |
| 10 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/tocontinuousmap--c5fe1a0f3c126a887341c6d1.md) | 85 | `declaration-track:c5fe1a0f3c126a887341c6d1fb3e9c6805497e76cd9dce904ef8790578c8637b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--c677bd691fe011fc4ba3898b.md) | 88 | `declaration-track:c677bd691fe011fc4ba3898b79c7cf8973e00ae228c7825baeefc25013684318` |
| 12 | `theorem` | [toContinuousMap_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/tocontinuousmap-coe--6ba76da51c81e72b5129110b.md) | 92 | `result-track:6ba76da51c81e72b5129110b0e03f214b40315e7b3faeb7356e8635f4e47c801` |
| 13 | `theorem` | [coe_toAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-toaffinemap--988046c23995aad317f285f3.md) | 95 | `result-track:988046c23995aad317f285f33774e635de7b2f513bcb84adec2ed41dd3102a68` |
| 14 | `theorem` | [coe_to_continuousMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-to-continuousmap--8f20429c8a35cc3eb0836747.md) | 98 | `result-track:8f20429c8a35cc3eb083674788b139a29a1cf2a09f741810505808ca8d611a47` |
| 15 | `theorem` | [to_continuousMap_injective](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/to-continuousmap-injective--d0d2932f94eb15564a7bde72.md) | 100 | `result-track:d0d2932f94eb15564a7bde72af28b7d5b9db8e703a5edddcc03055036ff25c09` |
| 16 | `theorem` | [coe_toAffineMap_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-toaffinemap-mk--74567916c077e6c71bc657dd.md) | 106 | `result-track:74567916c077e6c71bc657dd6930da93e2ad2fdc4e442d7d172537726c6fc3b0` |
| 17 | `theorem` | [coe_continuousMap_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-continuousmap-mk--3032df76d89b354208b285bd.md) | 109 | `result-track:3032df76d89b354208b285bdf58f3cfa7d70ac2965e37155921088855a30c36a` |
| 18 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-mk--d87e8ed5b16daa22f177de0c.md) | 112 | `result-track:d87e8ed5b16daa22f177de0c385a604c9d3b0d7dd8a8823a687bf5ddf788e333` |
| 19 | `theorem` | [mk_coe](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/mk-coe--f8988853a3591c99f0116ab9.md) | 115 | `result-track:f8988853a3591c99f0116ab9fdb44b02545c253c560d132e35f99d000be5fea3` |
| 20 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/continuous--36830e150bccb7ceeedfdcde.md) | 120 | `result-track:36830e150bccb7ceeedfdcde5255e1b887887eb54f68560309433c9c7005639c` |
| 21 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/const--b42c5311a90a87763a96dcde.md) | 125 | `declaration-track:b42c5311a90a87763a96dcded46a9e5b87cff0bfb7f190c6f87051840c7d501a` |
| 22 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-const--689b10cbbf2bf04a1edfbb93.md) | 131 | `result-track:689b10cbbf2bf04a1edfbb93157e4e9de1bde43a764380ddfff7eb180a2d4e47` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--70ef85c25ca9ad357a0e5a7f.md) | 133 | `declaration-track:70ef85c25ca9ad357a0e5a7f64f48cd0ec0e1701f7b6e4245977239145097084` |
| 24 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/comp--079bf929e19b7e6c178c72e9.md) | 140 | `declaration-track:079bf929e19b7e6c178c72e9be4627f0992a05ad7d46d9ad707b804e98044319` |
| 25 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-comp--1efcd07728b20303a002dbd3.md) | 144 | `result-track:1efcd07728b20303a002dbd3aac60966015d4e20d6641995465d5740dd5c2015` |
| 26 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/comp-apply--e51a9646756ed9e8a3d20f56.md) | 147 | `result-track:e51a9646756ed9e8a3d20f56ad452a48ba4086d6b81cea4f95b408673f901b12` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--3526cac475634611fb2128f9.md) | 154 | `declaration-track:3526cac475634611fb2128f94871efaf6423ae2ef6ea04bdef42f5d0b5e8648b` |
| 28 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-zero--82cc0eb5290c7d0c43e78ff5.md) | 158 | `result-track:82cc0eb5290c7d0c43e78ff525323b26ff59d718d08d1dad32796cc43198e89a` |
| 29 | `theorem` | [zero_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/zero-apply--7e1943ae995be76db8d73f9d.md) | 160 | `result-track:7e1943ae995be76db8d73f9dd63a2845152ab0737c232238e52a062d5a0fc519` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--652a1e1ca07329825dfef80b.md) | 167 | `declaration-track:652a1e1ca07329825dfef80b59f08ae9de480811cd88bbce65c09377a1ecc4a1` |
| 31 | `theorem` | [coe_smul](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-smul--270022de573d15ce169e0a8e.md) | 171 | `result-track:270022de573d15ce169e0a8ea50e4910a3b7ea6595d6380238d9a780ac7871e6` |
| 32 | `theorem` | [smul_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/smul-apply--998d018d2ef59bba976bc1a7.md) | 173 | `result-track:998d018d2ef59bba976bc1a7b81c2eb0c87a3444de358fbbe5ad34a63c2f9b8a` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--edc174867b4de6d47c85a566.md) | 175 | `declaration-track:edc174867b4de6d47c85a56694e06f11f83b72b79bec0bf51cbff34e1aee8005` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--ab3134fa50bd16aaac228cf9.md) | 178 | `declaration-track:ab3134fa50bd16aaac228cf9f990a2dc32acc49cd32136bbb516f5948d19be43` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--419facbaa59dc409a3a66ae6.md) | 185 | `declaration-track:419facbaa59dc409a3a66ae6274f768dbe4570e1b18d97ada64c219754bdece2` |
| 36 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-add--34c2a9a348453ed303c63d6d.md) | 189 | `result-track:34c2a9a348453ed303c63d6d2f57cbf3f93c499ad8219610ce697359fa64c516` |
| 37 | `theorem` | [add_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/add-apply--18638eb04c883ebb56e1d603.md) | 191 | `result-track:18638eb04c883ebb56e1d60397fdd66eee57baad1d42b3462621c39892eda986` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--ff968599218b088cf8e49780.md) | 193 | `declaration-track:ff968599218b088cf8e49780370dcabd399d798818c1aadd257d9eabb700506e` |
| 39 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-sub--020c490185c0a13ace5ef0ca.md) | 197 | `result-track:020c490185c0a13ace5ef0ca0c612c9a9370950b42d1348a46804cd5eb7e7a87` |
| 40 | `theorem` | [sub_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/sub-apply--44f75b6089119f01fb309f5a.md) | 199 | `result-track:44f75b6089119f01fb309f5a83357344b24db68fd67f7a1d94e143f99e3a016c` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--4ca9360b3b6163260c46aeda.md) | 201 | `declaration-track:4ca9360b3b6163260c46aedae07eb97d70a80f9dd9b5224b57785f42c028ed9b` |
| 42 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-neg--2c57ce316b392443c4f37b0b.md) | 205 | `result-track:2c57ce316b392443c4f37b0bdcc18c4fe15a94d661e90fb7f15a071b657f0020` |
| 43 | `theorem` | [neg_apply](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/neg-apply--fcff35fb2b1cae2057a4e74e.md) | 207 | `result-track:fcff35fb2b1cae2057a4e74eb9553c0eb7017c7d3680211e7c8eaab702661788` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--825f98f214f4290e5695faab.md) | 209 | `declaration-track:825f98f214f4290e5695faab96d720340e08b222c0997272ac9c32cc534f92d5` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--62be887a45060eadaeb94c67.md) | 213 | `declaration-track:62be887a45060eadaeb94c674a8b633176d5242918770c73a2887f4a61ae9dab` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/instance--f8c7627d2fa6e29ac9ca40a6.md) | 218 | `declaration-track:f8c7627d2fa6e29ac9ca40a64c7fb2917b4497d0d7bd6c789cc6e7a4fdca8054` |
| 47 | `def` | [toContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/tocontinuousaffinemap--70abd0b954611a3b362b2144.md) | 233 | `declaration-track:70abd0b954611a3b362b2144dff0f6bc6aeffde121d3db9e4c36ce19f6981d46` |
| 48 | `theorem` | [coe_toContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/coe-tocontinuousaffinemap--08c4ade91a26c8d0c2572f0e.md) | 240 | `result-track:08c4ade91a26c8d0c2572f0e47824e6a66434a90d1375dbe70231c733e78518a` |
| 49 | `theorem` | [toContinuousAffineMap_map_zero](../../../../../mathematics/Topology/GeneralTopology/ContinuousAffineMap/Variantbbef90884ac2b27634d48843811645292ad1f5904aba69b3668e8cb896425452.lean/declarations/tocontinuousaffinemap-map-zero--6327ceffd69eb3f226c1d65c.md) | 243 | `result-track:6327ceffd69eb3f226c1d65c71d883308e3111499cbcca563261c3862181428c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
