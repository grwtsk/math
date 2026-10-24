# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ContinuousAffineMap.Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e1ee3c37d614e9ef13ac23d89f160671c0f063d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e1ee3c37d614e9ef13ac23d89f160671c0f063d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousAffineMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/contlinear--861cddf97b194472f05a4412.md) | 52 | `declaration-track:861cddf97b194472f05a4412a21172418e44433c6399776a6a3461caa5f4ff44` |
| 2 | `theorem` | [coe_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/coe-contlinear--aa159794dae2b4aef0129a9c.md) | 58 | `result-track:aa159794dae2b4aef0129a9cd89bedd726d80d124a1c35acc7cc6489f73e81ec` |
| 3 | `theorem` | [coe_contLinear_eq_linear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/coe-contlinear-eq-linear--dbc27d9e4a318c8f1705c555.md) | 62 | `result-track:dbc27d9e4a318c8f1705c555b1acac9a713af6c574c9098e0fe4cac49d6ed163` |
| 4 | `theorem` | [coe_mk_const_linear_eq_linear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/coe-mk-const-linear-eq-linear--a2f80a148e492e20ec1b1403.md) | 66 | `result-track:a2f80a148e492e20ec1b1403e874eacc69977cd4a1c12a6d2a7f66d43c8dea56` |
| 5 | `theorem` | [coe_linear_eq_coe_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/coe-linear-eq-coe-contlinear--6fd9fde6b13f6a3967088a32.md) | 70 | `result-track:6fd9fde6b13f6a3967088a3272543d8d9d8f302c306d9bc2c9a724516ec38860` |
| 6 | `theorem` | [comp_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/comp-contlinear--b52efa255361c82580ec4cb6.md) | 75 | `result-track:b52efa255361c82580ec4cb6b47ce394a4d6d268583ba13bc5f9e8490abacb72` |
| 7 | `theorem` | [map_vadd](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/map-vadd--6163c1549c042e665a2b956a.md) | 80 | `result-track:6163c1549c042e665a2b956ab66e1aa2341adf150c290ac98f43661aba781668` |
| 8 | `theorem` | [contLinear_map_vsub](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/contlinear-map-vsub--63ee966711210df64df6746d.md) | 84 | `result-track:63ee966711210df64df6746d8a16ebdcae3e87dab4da18f89bc7bc81462e96d8` |
| 9 | `theorem` | [const_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/const-contlinear--93fb4be74871de1d6406080c.md) | 88 | `result-track:93fb4be74871de1d6406080cfc81e345d56404c2ba7969ba1600e74ca7a320af` |
| 10 | `theorem` | [contLinear_eq_zero_iff_exists_const](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/contlinear-eq-zero-iff-exists-const--3c8d2a0b48845b01e3b034a1.md) | 91 | `result-track:3c8d2a0b48845b01e3b034a19cd888b89d078185c8b88861e0679bbe25be9066` |
| 11 | `theorem` | [to_affine_map_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/to-affine-map-contlinear--2162fcb3c11bd050fe4601bc.md) | 106 | `result-track:2162fcb3c11bd050fe4601bc960a4f6f34f3e4b6fe72985f2344b3ebc17a84f3` |
| 12 | `theorem` | [zero_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/zero-contlinear--2ef3ae8c0536f08f38bfea12.md) | 111 | `result-track:2ef3ae8c0536f08f38bfea120e6d0796f9a362dbf359b9a7636ae04471a59c2c` |
| 13 | `theorem` | [add_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/add-contlinear--27eb140bd8ef6be4cff8053a.md) | 115 | `result-track:27eb140bd8ef6be4cff8053aa67b098b045db7a5f474eb4754a0098d11cbdbee` |
| 14 | `theorem` | [sub_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/sub-contlinear--94f62d5a9a9c254b53a046f5.md) | 119 | `result-track:94f62d5a9a9c254b53a046f5d878e2d2c6950f6dc5742639922e202851ef2df9` |
| 15 | `theorem` | [neg_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/neg-contlinear--28220926f3cd9f2580edd337.md) | 123 | `result-track:28220926f3cd9f2580edd337de7720296a3f6700c90435e4fa3a73caf033c300` |
| 16 | `theorem` | [smul_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/smul-contlinear--2f2d40bb4758fe4b5c7aebfe.md) | 127 | `result-track:2f2d40bb4758fe4b5c7aebfee97e6c2ce9437fb360e918ae2f69458cde1b5ff0` |
| 17 | `theorem` | [decomp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/decomp--0118430a96170d20e437fe6c.md) | 130 | `result-track:0118430a96170d20e437fe6c5860a19d1b5d22b935fdf217ec074f10c49657a1` |
| 18 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/instance--e0c78fc0b1e3783e53799316.md) | 137 | `declaration-track:e0c78fc0b1e3783e5379931647ec3722f4db8143d4095c5778802fb98e55a630` |
| 19 | `lemma` | [vadd_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/vadd-apply--48fa7f5fb775e187c9591ea0.md) | 145 | `result-track:48fa7f5fb775e187c9591ea07c43919c7aec9d9cb70a9ad07cc61297ccaadd10` |
| 20 | `lemma` | [vsub_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/vsub-apply--000eacee6be6da39606a5e4d.md) | 148 | `result-track:000eacee6be6da39606a5e4dbad6e3ed79542e146fcbed66b2433aa9c87568f0` |
| 21 | `lemma` | [vadd_toAffineMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/vadd-toaffinemap--a97ad1a33732d1f5661b569e.md) | 151 | `result-track:a97ad1a33732d1f5661b569ec16b10bda39a1eeb60a13884585653e2bd5b2a76` |
| 22 | `lemma` | [vsub_toAffineMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/vsub-toaffinemap--759c4f6ac3bcf75d5407fd62.md) | 155 | `result-track:759c4f6ac3bcf75d5407fd6272cc782ec1aa03f1c15fb4e582f9798b00d63a47` |
| 23 | `instance` | [hasNorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/hasnorm--6cc4c2628f103eb6c7fdfa67.md) | 165 | `declaration-track:6cc4c2628f103eb6c7fdfa675df74b876e665e772e49369dee2ccbb3fa1dc1ed` |
| 24 | `theorem` | [norm_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/norm-def--b9e15fe49703866f09de61c7.md) | 168 | `result-track:b9e15fe49703866f09de61c75870a232992e178d334c53dd62902b3fd1951e0b` |
| 25 | `theorem` | [norm_contLinear_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/norm-contlinear-le--df6eb7dea580938e65391ea8.md) | 171 | `result-track:df6eb7dea580938e65391ea8b939a81d8c448161f6862ddfc4e93e6eab61b87c` |
| 26 | `theorem` | [norm_image_zero_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/norm-image-zero-le--0275e4e7f8ecda9acca50baa.md) | 174 | `result-track:0275e4e7f8ecda9acca50baa38965b86ac30133d5ba28a35069f55ff7d54393a` |
| 27 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/norm-eq--235064bc741a911fc829dda0.md) | 178 | `result-track:235064bc741a911fc829dda0137639e5431a97648c27a596ebf293f0e7bc9a90` |
| 28 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/instance--528c4204498eb3322af90618.md) | 184 | `declaration-track:528c4204498eb3322af90618da577e16fdb3aa6d6c0b0c959a419141f1d62314` |
| 29 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/instance--0855d5002166aba97ddd7238.md) | 208 | `declaration-track:0855d5002166aba97ddd7238f5394cb5ae097b306535bfd504627331b7abca3f` |
| 30 | `theorem` | [norm_comp_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/norm-comp-le--e68957f5ffbbc84342148d1c.md) | 213 | `result-track:e68957f5ffbbc84342148d1cb0a6da9f483e52a6e1712591a84e3dc8f1f17e5b` |
| 31 | `def` | [toConstProdContinuousLinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/toconstprodcontinuouslinearmap--039b7f422d44cbd82dc08826.md) | 236 | `declaration-track:039b7f422d44cbd82dc0882689ea79d20b2773c553bc3b2506682b9bc9a71d2e` |
| 32 | `theorem` | [toConstProdContinuousLinearMap_fst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/toconstprodcontinuouslinearmap-fst--1be9dc44f2db01f26a056183.md) | 249 | `result-track:1be9dc44f2db01f26a056183125ea655b3bc84c4d29d648b24e3af8502c6de0a` |
| 33 | `theorem` | [toConstProdContinuousLinearMap_snd](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean/declarations/toconstprodcontinuouslinearmap-snd--81f912b991249a9d7216cfbb.md) | 254 | `result-track:81f912b991249a9d7216cfbb94d42487eddfcb8c5738d8f2ba44bc84ab41db05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
