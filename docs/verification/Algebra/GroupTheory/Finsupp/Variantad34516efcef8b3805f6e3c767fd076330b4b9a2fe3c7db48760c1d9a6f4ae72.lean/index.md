# Verification target: GRWTSK.Algebra.GroupTheory.Finsupp.Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c0672afa34c34dab46e38a528f557082cbde665",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c0672afa34c34dab46e38a528f557082cbde665`.

Source path: `GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instadd--88457c7448effd16d9e8e4b7.md) | 25 | `declaration-track:88457c7448effd16d9e8e4b7c7f492bc451da0ef1fb4388732633203cd02ad35` |
| 2 | `lemma` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/coe-add--eda17b24d4009b94be186117.md) | 27 | `result-track:eda17b24d4009b94be18611713ed90b75f9d8580e22faf15f40e244954b9e683` |
| 3 | `lemma` | [add_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/add-apply--e731894500d309cabc2d2af4.md) | 29 | `result-track:e731894500d309cabc2d2af4921b83822a4858bdae8c5a9031e391231244e2a4` |
| 4 | `lemma` | [support_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/support-add--00345586605d2f4c1d73e541.md) | 31 | `result-track:00345586605d2f4c1d73e541f62c448f2b60d373367c54d745e7db812de40eed` |
| 5 | `lemma` | [support_add_eq](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/support-add-eq--6c55ea4e570e039812afe581.md) | 33 | `result-track:6c55ea4e570e039812afe581450d02bbc22169a8fb795d6a0f5f4b6f83309994` |
| 6 | `instance` | [instAddZeroClass](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instaddzeroclass--0784c4b03c7a7a557ddf9264.md) | 44 | `declaration-track:0784c4b03c7a7a557ddf9264b97ccb019d6bcaf0d0c4fdb9e622ec28b3a71b2e` |
| 7 | `instance` | [instIsLeftCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instisleftcanceladd--ce246d737275ab415465bb02.md) | 47 | `declaration-track:ce246d737275ab415465bb027d6e0f07e963844bb204cc4c607f9c77d4acfbe4` |
| 8 | `def` | [addEquivFunOnFinite](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/addequivfunonfinite--3d2e040b6f183cca1e9479c8.md) | 52 | `declaration-track:3d2e040b6f183cca1e9479c887d4815a6624eaf153302aede2a2e81f66d127b8` |
| 9 | `def` | [_root_.AddEquiv.finsuppUnique](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/root-addequiv-finsuppunique--1d9c3cfc34e3d3e6031f55c7.md) | 58 | `declaration-track:1d9c3cfc34e3d3e6031f55c7abcee6fd459f9dfbba86ccdfe4b4b49a9de02cb0` |
| 10 | `instance` | [instIsRightCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instisrightcanceladd--2fe5053577b57d5f15551399.md) | 63 | `declaration-track:2fe5053577b57d5f155513991948007df0bd2c23469bc3413f8295510fadaaf9` |
| 11 | `instance` | [instIsCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instiscanceladd--8d8d9bb13ee56c5a1567e6e7.md) | 66 | `declaration-track:8d8d9bb13ee56c5a1567e6e7339da744364a30c0f410fb88b9decfafc2f75f21` |
| 12 | `def` | [applyAddHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/applyaddhom--e8d9732b593fd54486d9ac52.md) | 73 | `declaration-track:e8d9732b593fd54486d9ac52e74e7309fbae7f661a1569405f7fcc6461c05bf7` |
| 13 | `def` | [coeFnAddHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/coefnaddhom--9d0f16d33836aab2f13744c1.md) | 80 | `declaration-track:9d0f16d33836aab2f13744c130dbd6e86935739f15112aa77e3173eaa5ead306` |
| 14 | `lemma` | [mapRange_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-add--e82f71d217d0759646da296b.md) | 85 | `result-track:e82f71d217d0759646da296ba19e0d4e4f5abb26eb5f60f0dfd2f5de7ecec3cc` |
| 15 | `lemma` | [mapRange_add'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-add--1f317904dc46089ce5befd17.md) | 89 | `result-track:1f317904dc46089ce5befd17fd0930aa3f5d4a2bcc0dc7c0cfbcca57d981b881` |
| 16 | `def` | [embDomain.addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/embdomain-addmonoidhom--da62577f0a2df74142573ba6.md) | 95 | `declaration-track:da62577f0a2df74142573ba6d1956ca3e11e902327fadd92e5618fab5cfc73ad` |
| 17 | `lemma` | [embDomain_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/embdomain-add--0ffbb421c76b3f2eab26815e.md) | 107 | `result-track:0ffbb421c76b3f2eab26815ec7fa981539ee5ff2317c2a5603a9220ce5dd2706` |
| 18 | `instance` | [instNatSMul](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instnatsmul--61f9ce1f93fd804d3fd074bc.md) | 117 | `declaration-track:61f9ce1f93fd804d3fd074bc26487ddb5bf65dc784e209f33c891610322876d5` |
| 19 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instaddmonoid--21ca12da7367d45cd6b4e688.md) | 119 | `declaration-track:21ca12da7367d45cd6b4e68893b5c31a3e53b277722d2f4420d6945ac33d6bd4` |
| 20 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instaddcommmonoid--5f03ef6219f3a4fabf0cf471.md) | 124 | `declaration-track:5f03ef6219f3a4fabf0cf47122734248c34c9939dbf550d36ebdb4e00e747b3f` |
| 21 | `instance` | [instNeg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instneg--55d8cebd6fce8b3a132584ed.md) | 128 | `declaration-track:55d8cebd6fce8b3a132584edb911dd50ddcb076dbd199223d8990d950d4e9803` |
| 22 | `lemma` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/coe-neg--41a27b03245451ef5e2f23e0.md) | 130 | `result-track:41a27b03245451ef5e2f23e0ef5bd47bef2358923fc61355b1bb4216255063aa` |
| 23 | `lemma` | [neg_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/neg-apply--e6414c4087bc08bdcde2ee92.md) | 132 | `result-track:e6414c4087bc08bdcde2ee92ed91b4fb4d4b2c9960f5f646a2c491872443f655` |
| 24 | `lemma` | [mapRange_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-neg--0b660bd793bc360f2e413930.md) | 135 | `result-track:0b660bd793bc360f2e4139309d41469cd6bad1204eacfecc9881b17305435e13` |
| 25 | `lemma` | [mapRange_neg'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-neg--065b9c2bb5cf40eb042f9354.md) | 139 | `result-track:065b9c2bb5cf40eb042f9354e151b85215b5f4b5ecfe96689a75733c5600fd11` |
| 26 | `instance` | [instSub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instsub--a407182612c1aa1a44c034de.md) | 144 | `declaration-track:a407182612c1aa1a44c034de382f1d31aec946efbaeaeba0a370d37f9ffa4a22` |
| 27 | `lemma` | [coe_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/coe-sub--ab9d365342fdb597bfe3bac4.md) | 147 | `result-track:ab9d365342fdb597bfe3bac48ee41ac65d3352d3077ecab1adb9fcf72c02e256` |
| 28 | `lemma` | [sub_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/sub-apply--4bf305b93110e0536b86752f.md) | 149 | `result-track:4bf305b93110e0536b86752f7d5c170f73d7006eb8ecdf81eb342fb667462571` |
| 29 | `lemma` | [mapRange_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-sub--1f3e6e46cd595549ff328650.md) | 151 | `result-track:1f3e6e46cd595549ff328650264341e11992b438e95c8e16b656eeb23105be7f` |
| 30 | `lemma` | [mapRange_sub'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/maprange-sub--97e2e28e501bbec7bf49baff.md) | 156 | `result-track:97e2e28e501bbec7bf49baff190cb01024fa3404c009270ded8ed302100dfecb` |
| 31 | `instance` | [instIntSMul](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instintsmul--1ead034c994ca9e6d89433bb.md) | 163 | `declaration-track:1ead034c994ca9e6d89433bbc1113827d71143564962931d5ec81c8aff9a92f6` |
| 32 | `instance` | [instAddGroup](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instaddgroup--25aa8e540785f7a4b866eedb.md) | 166 | `declaration-track:25aa8e540785f7a4b866eedbd0243b2c2fc88320eb1c0985da434428d8970c39` |
| 33 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/instaddcommgroup--08db57ee7abdc128c6ec2a97.md) | 170 | `declaration-track:08db57ee7abdc128c6ec2a97d659c0925c7037daf38f178a336e1ec8c6ac5bb3` |
| 34 | `lemma` | [support_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/support-neg--183e251e6efd43d26878d681.md) | 175 | `result-track:183e251e6efd43d26878d681857fbb32c4b1b0888f76c6db8ef913f77c7669d4` |
| 35 | `lemma` | [support_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/declarations/support-sub--583fe5e92da6f17a7873af8e.md) | 182 | `result-track:583fe5e92da6f17a7873af8eb154418dc8101e77359c1406f8e9268f91c00bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
