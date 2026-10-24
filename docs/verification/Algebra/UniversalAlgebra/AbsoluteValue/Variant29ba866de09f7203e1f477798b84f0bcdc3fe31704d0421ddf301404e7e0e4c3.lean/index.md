# Verification target: GRWTSK.Algebra.UniversalAlgebra.AbsoluteValue.Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393730a428c9570d90add9a76ea4d819205a6566",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393730a428c9570d90add9a76ea4d819205a6566`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/absolutevalue--6539cfe63adb4ccfc5ad656c.md) | 33 | `declaration-track:6539cfe63adb4ccfc5ad656c55661c560383602ee8a4bfc3d117dd607ce9114b` |
| 2 | `instance` | [zeroHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/zerohomclass--7b3df4e6afefe0eab2069455.md) | 52 | `declaration-track:7b3df4e6afefe0eab206945538b049a4dc040ce4d278823e45a3d8f199d2ddc0` |
| 3 | `instance` | [mulHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/mulhomclass--3364f2228a604e296ac27bc0.md) | 58 | `declaration-track:3364f2228a604e296ac27bc056bc229401d227d2afb1ce496a7c397543032dec` |
| 4 | `instance` | [nonnegHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/nonneghomclass--efcdf2f5ffe38d8bed0f9218.md) | 62 | `declaration-track:efcdf2f5ffe38d8bed0f921827b421ea708787feaba68fb4c2773dfacdac57e3` |
| 5 | `instance` | [subadditiveHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/subadditivehomclass--2b9fa4ed7245836f97802b9f.md) | 66 | `declaration-track:2b9fa4ed7245836f97802b9ffc5fa47ccbed2bc25f7091f6ff54f51374a1375d` |
| 6 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/coe-mk--cbc841e198197d92a7d736b3.md) | 71 | `result-track:cbc841e198197d92a7d736b3dc58ce32b6ece7483f0f3a3398bbe533d2b2cd03` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/ext--0f396e0ca5b830b56fd2e822.md) | 76 | `result-track:0f396e0ca5b830b56fd2e8228b6e46cee794be3af521507106aefc646405f440` |
| 8 | `def` | [Simps.apply](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/simps-apply--e29bb345d054262402d7c96e.md) | 81 | `declaration-track:e29bb345d054262402d7c96effc5e54bbf34c2a6876ecbc7a83e3f80eead0282` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/instance--60af34d00487f52e28643c41.md) | 89 | `declaration-track:60af34d00487f52e28643c41aa2abd19ba8ab2761ea66f8729c8fc2b3b9bd994` |
| 10 | `theorem` | [coe_toMulHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/coe-tomulhom--39e35cf14d7ea63e45b0ac57.md) | 93 | `result-track:39e35cf14d7ea63e45b0ac57f32230bb4b335619379512b538ed153642b15298` |
| 11 | `theorem` | [nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/nonneg--eddf9895c922baaadfb809c7.md) | 97 | `result-track:eddf9895c922baaadfb809c74a54922c00d1cd0547b1dc39764f5eb712d08162` |
| 12 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/eq-zero--2c84675c1b97f8e871f47951.md) | 102 | `result-track:2c84675c1b97f8e871f479514272f42c115f2e8e4087529f398c664fbd702145` |
| 13 | `theorem` | [add_le](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/add-le--60819465181854b904555680.md) | 106 | `result-track:60819465181854b9045556807c4d36905d4eed659c486f62063e64bc1119456e` |
| 14 | `theorem` | [map_mul](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-mul--16bcfa8be3376a8673508301.md) | 111 | `result-track:16bcfa8be3376a86735083015890fe3662f5782f7446cb988f643b83aedc66d0` |
| 15 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/ne-zero-iff--801aa55329b928cb1ff62695.md) | 115 | `result-track:801aa55329b928cb1ff62695fb03d10c0a4b8a3eb936598732e5118db6fa9505` |
| 16 | `theorem` | [pos](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/pos--7e51cff2b4a5a7070c342eac.md) | 119 | `result-track:7e51cff2b4a5a7070c342eacd0f11c15e643de755bc43e6e6822ec8598247dbd` |
| 17 | `theorem` | [pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/pos-iff--97a6a8c892fc2ed93e0e3226.md) | 124 | `result-track:97a6a8c892fc2ed93e0e3226b6f6cb20943b6f1412234b07d9e031141f5a5c9c` |
| 18 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/ne-zero--12bd3eca7cd15c68b55f6d92.md) | 128 | `result-track:12bd3eca7cd15c68b55f6d92ec6ab6d785786d991e809f4b0344ef66606e6131` |
| 19 | `theorem` | [map_one_of_isLeftRegular](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-one-of-isleftregular--589d070c07c5d83182ed7abb.md) | 132 | `result-track:589d070c07c5d83182ed7abb0b9ff2f070e9b10e310c35fa3f24a5cfa5e9b972` |
| 20 | `theorem` | [map_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-zero--7a1216f5b4eb478949da253c.md) | 137 | `result-track:7a1216f5b4eb478949da253c114a2dd128d03cc074761ad95b3b38ddb9051225` |
| 21 | `theorem` | [sub_le](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/sub-le--6e6b2252c0f1df27cc701439.md) | 147 | `result-track:6e6b2252c0f1df27cc7014397a2ed6f9d8835bec3969c1f9b679dacbb6fdba6e` |
| 22 | `theorem` | [map_sub_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-sub-eq-zero-iff--19a41822b303b2bafaf92a74.md) | 152 | `result-track:19a41822b303b2bafaf92a745b8009713d940beb1b4b236e224950facd2234c0` |
| 23 | `theorem` | [map_one](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-one--dd98990b135ea13034e7814c.md) | 173 | `result-track:dd98990b135ea13034e7814ca149ab957c4a16c5f04e0eff60d395a0fc8f74e8` |
| 24 | `instance` | [monoidWithZeroHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/monoidwithzerohomclass--37909f92007e2e8b6d76a84a.md) | 177 | `declaration-track:37909f92007e2e8b6d76a84a6c9cfe276d78a46cef62808345cdcdf0b93d7268` |
| 25 | `def` | [toMonoidWithZeroHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/tomonoidwithzerohom--bc24b55080729511af7b02e9.md) | 183 | `declaration-track:bc24b55080729511af7b02e9cf7e45fdb48806ae288762aff895e1a22a0db520` |
| 26 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/coe-tomonoidwithzerohom--da126e9c4b59849a2ba0881c.md) | 188 | `result-track:da126e9c4b59849a2ba0881cc20fa4d146b9ea31cc8034213744e8cce2f31865` |
| 27 | `def` | [toMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/tomonoidhom--a53c7bda8f5138517b2426d7.md) | 193 | `declaration-track:a53c7bda8f5138517b2426d74dd374c2d987e7d63b09649fc4e70fd0d3371e90` |
| 28 | `theorem` | [coe_toMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/coe-tomonoidhom--9954df0b8588316e7d4e389e.md) | 198 | `result-track:9954df0b8588316e7d4e389e12cdf9373db5e7734dbb3242e63221d053751b0b` |
| 29 | `theorem` | [map_pow](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-pow--184e3fe1c2a9ef36f00b26fd.md) | 203 | `result-track:184e3fe1c2a9ef36f00b26fd6e1207dc463398cdcc9d637da9b334ba8b920c42` |
| 30 | `theorem` | [le_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/le-sub--ef31c2866d173315cccbf043.md) | 215 | `result-track:ef31c2866d173315cccbf0438ae857f136358aae9163a255708962509de94893` |
| 31 | `theorem` | [map_neg](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-neg--2c9866fb89cab3d946676b1a.md) | 230 | `result-track:2c9866fb89cab3d946676b1a95fc8feb3850f9867cf242f4928396370c1cc063` |
| 32 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/map-sub--61466c1ff7983f7e1e4dc946.md) | 237 | `result-track:61466c1ff7983f7e1e4dc9469a365d0b51d28edf92711c0b20722eddaa96cb0f` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/instance--2a384aba9b87a243f3d61ffc.md) | 242 | `declaration-track:2a384aba9b87a243f3d61ffc750f92104cdc1e1ace157b37d94d68a859a92c72` |
| 34 | `def` | [abs](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abs--4595c0f88b670ac820064e9a.md) | 255 | `declaration-track:4595c0f88b670ac820064e9ab1ba4d8d8966e9749ffb2728d4b2dc0141904e69` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/instance--e6b3b28bea1e2fd1b6bd63ff.md) | 265 | `declaration-track:e6b3b28bea1e2fd1b6bd63ff3d54615cd9d1bb8739b057927b119194545b6f78` |
| 36 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abs-abv-sub-le-abv-sub--2d14c19fdb67dab8529ffe1f.md) | 274 | `result-track:2d14c19fdb67dab8529ffe1f7f0d8824506138c1cffb147fe311a7f9384341cd` |
| 37 | `class` | [IsAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/isabsolutevalue--f5ade14716af828abdc919a5.md) | 290 | `declaration-track:f5ade14716af828abdc919a5248915402f33d4782330d7d5f91ba1dc0418a70a` |
| 38 | `lemma` | [abv_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-nonneg--819e5e69f903e28fb816bf96.md) | 309 | `result-track:819e5e69f903e28fb816bf960093c68939784c90021c69b232f213e222d9ac1e` |
| 39 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/mathlib-meta-positivity-evalabv--ff5cc6cc7e1dc312fddc3f5e.md) | 315 | `declaration-track:ff5cc6cc7e1dc312fddc3f5eced09d75b3e8573759c28d95f1c7833aaefe3db4` |
| 40 | `lemma` | [abv_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-eq-zero--d14df05bfe33947aa225d108.md) | 320 | `result-track:d14df05bfe33947aa225d108c32dc08f57d76501494008a0313cc7066b94c952` |
| 41 | `lemma` | [abv_add](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-add--07a0b2dfe02102d7f4b06748.md) | 323 | `result-track:07a0b2dfe02102d7f4b067486c40d2468113688b2a4faa9d0ee1cb5bd262741d` |
| 42 | `lemma` | [abv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-mul--d840fb9c0a76f0dca1704b7b.md) | 326 | `result-track:d840fb9c0a76f0dca1704b7bcbfb032281ba21dd7b5d2576577e7d3baceaf1ca` |
| 43 | `instance` | [_root_.AbsoluteValue.isAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/root-absolutevalue-isabsolutevalue--313d49928a819f4e25425c38.md) | 330 | `declaration-track:313d49928a819f4e25425c38dc5ace6fe0569ca702e48641b1e323229ee7a33d` |
| 44 | `def` | [toAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/toabsolutevalue--feaece63434f7b3f2794a3c3.md) | 339 | `declaration-track:feaece63434f7b3f2794a3c3c86a3d5d50a0f6807e8f814a117b2646f0cf10cd` |
| 45 | `theorem` | [abv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-zero--8a7001409e97c29a1d49ad41.md) | 349 | `result-track:8a7001409e97c29a1d49ad41acc247ed383e0825dac2ccf7033c90eebf56e451` |
| 46 | `theorem` | [abv_pos](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-pos--c888673295abda3f95a98898.md) | 353 | `result-track:c888673295abda3f95a98898f1e25ab3254c6ab729397267c5d05036ad57ae55` |
| 47 | `instance` | [abs_isAbsoluteValue](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abs-isabsolutevalue--b3f91726724cfb0502a47b83.md) | 363 | `declaration-track:b3f91726724cfb0502a47b837f921777106886d4debf2dd1d9853b2fcbeef9a8` |
| 48 | `theorem` | [abv_one](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-one--fcc42d22610d33934f206c2f.md) | 379 | `result-track:fcc42d22610d33934f206c2f3c67c19b7c509f0f5a986a36c3fb49aea45d5323` |
| 49 | `def` | [abvHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abvhom--28fd0540bfb046f341df35c2.md) | 384 | `declaration-track:28fd0540bfb046f341df35c282a7548fb1ef2ecc301fc42ff1577a96b14383e5` |
| 50 | `theorem` | [abv_pow](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-pow--c49b7eaa40087a7e3e026957.md) | 388 | `result-track:c49b7eaa40087a7e3e0269571cacbbf61807744797a99060061e58e1656d8ebb` |
| 51 | `theorem` | [abv_sub_le](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-sub-le--3d7b12e7df5560534f0bdb2a.md) | 399 | `result-track:3d7b12e7df5560534f0bdb2a739b79688f4a0ae387fa9d0eb01023b81e41c766` |
| 52 | `theorem` | [sub_abv_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/sub-abv-le-abv-sub--f37fb17ad83ee2f431afebdb.md) | 403 | `result-track:f37fb17ad83ee2f431afebdb4d711e24232304f61dee5b2ff7b14e6dfb800d88` |
| 53 | `theorem` | [abv_neg](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-neg--033dd4731e847f9ba5c53056.md) | 421 | `result-track:033dd4731e847f9ba5c53056f4e5bc4ee1704b1f2bcdcb67bddcda8517095e90` |
| 54 | `theorem` | [abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-sub--0ce95e17f2795a20fd1a8e2d.md) | 425 | `result-track:0ce95e17f2795a20fd1a8e2d7e5c8cf1127844165682c21753b7dfb1556c4788` |
| 55 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abs-abv-sub-le-abv-sub--580003e41e333bf4857c27f0.md) | 441 | `result-track:580003e41e333bf4857c27f02d8ce5154ddad761f6ed7e853544f333e441278d` |
| 56 | `theorem` | [abv_one'](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-one--f08dc8a00f24e34f536be446.md) | 457 | `result-track:f08dc8a00f24e34f536be446563cf356bdc2de42a00f04fbce5c8645a5b73fb3` |
| 57 | `def` | [abvHom'](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abvhom--2aaddb8ec55573faae9b0167.md) | 463 | `declaration-track:2aaddb8ec55573faae9b016794972d89098e42eb430e8dff48bed828fe8457c6` |
| 58 | `theorem` | [abv_inv](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-inv--fde9fda034f4b5be5bb3f23d.md) | 473 | `result-track:fde9fda034f4b5be5bb3f23d609bf577d0e6318112370a5ae3cabe4aa6a70a6a` |
| 59 | `theorem` | [abv_div](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant29ba866de09f7203e1f477798b84f0bcdc3fe31704d0421ddf301404e7e0e4c3.lean/declarations/abv-div--15a61f5cd024bcfb1259c0e8.md) | 477 | `result-track:15a61f5cd024bcfb1259c0e8be76d2b47de48a82ab9a303decda2f60a5e1f0ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
