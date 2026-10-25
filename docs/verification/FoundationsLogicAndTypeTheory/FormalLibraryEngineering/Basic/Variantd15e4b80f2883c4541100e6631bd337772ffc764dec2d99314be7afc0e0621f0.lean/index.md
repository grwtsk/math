# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Parser` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-pos--26a42f6d4b507ac0da23f052.md) | 29 | `result-track:26a42f6d4b507ac0da23f0526a0e2635c74abb4f8c27836b4f94feadd94bc5db` |
| 2 | `lemma` | [ite_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-nonneg--7adab8185086f5626b22570e.md) | 32 | `result-track:7adab8185086f5626b22570e0f19aafe8944f6951744a8d7ee36d56b7b28ed2a` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-nonneg-of-pos-of-nonneg--df8d0ca8e1fb35a3336641f0.md) | 35 | `result-track:df8d0ca8e1fb35a3336641f0b0111145f4267c778f81603dec0a80b02e11e851` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-nonneg-of-nonneg-of-pos--91fe2d78e3dfefb227f5dd74.md) | 38 | `result-track:91fe2d78e3dfefb227f5dd7445f2d55dd1639f2f2334ee57581ff74885826dbc` |
| 5 | `lemma` | [ite_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-ne-zero--e6419c42d5a22b377f152491.md) | 41 | `result-track:e6419c42d5a22b377f15249164afe87d2976fec1903b6c31bb3548928736e98f` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-ne-zero-of-pos-of-ne-zero--f34e9d814543ec728adb94b6.md) | 43 | `result-track:f34e9d814543ec728adb94b6c92d195b904ecc2b7c4706ad5f45a706dacbe0ef` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/ite-ne-zero-of-ne-zero-of-pos--d4bb3530c93e46a7791184c8.md) | 47 | `result-track:d4bb3530c93e46a7791184c87b58571b7a3566296f5d029948fcd69f8fb08bec` |
| 8 | `def` | [evalIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalite--ba2b5a3fe643be824acd22c4.md) | 55 | `declaration-track:ba2b5a3fe643be824acd22c461892b5b6970dec42b1ab9dce3be089846c979c9` |
| 9 | `lemma` | [le_min_of_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/le-min-of-lt-of-le--76b8703b3f30ed6d319265d6.md) | 89 | `result-track:76b8703b3f30ed6d319265d671e6be58f0ce90aa73f702b659512a475b20c159` |
| 10 | `lemma` | [le_min_of_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/le-min-of-le-of-lt--f9e7811f3ed00d5b532e9cc4.md) | 90 | `result-track:f9e7811f3ed00d5b532e9cc4886ae27bff21c8fda9de52409d4c345c33a8e385` |
| 11 | `lemma` | [min_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/min-ne--2d3d7a35b5e1018b91db45fa.md) | 91 | `result-track:2d3d7a35b5e1018b91db45fae2946ca1857050f2c660b0c77281a716e415dbd9` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/min-ne-of-ne-of-lt--c0bdee3235bbf31e10b749fd.md) | 94 | `result-track:c0bdee3235bbf31e10b749fd3f01df22e32728f6fb57a3e003a796ea1aae4fbb` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/min-ne-of-lt-of-ne--256772a292918116551e21ea.md) | 95 | `result-track:256772a292918116551e21eaf5a1871b6697ac281e7a25c39f7f13152236da37` |
| 14 | `lemma` | [max_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/max-ne--426cb7ccdc4d5de28635ddd6.md) | 97 | `result-track:426cb7ccdc4d5de28635ddd61a3a772aa7a7a115a7a9c4e8995c5b4e8528c1db` |
| 15 | `def` | [evalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalmin--2b4450094f994c3b20798142.md) | 104 | `declaration-track:2b4450094f994c3b207981428e7eec4b292fc121970407b6ca3d3e2958adc2ad` |
| 16 | `def` | [evalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalmax--acdad0705365c2b1070138ce.md) | 123 | `declaration-track:acdad0705365c2b1070138ce9ae236ab9fb597e5728f1be6cf101a2e3bd4f7b6` |
| 17 | `def` | [evalAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evaladd--ab1b494b6e6f34ef4e8063b4.md) | 152 | `declaration-track:ab1b494b6e6f34ef4e8063b41127dd02f21a71c2f7176f52fa312ee35000db72` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/mul-nonneg-of-pos-of-nonneg--eb662317b4b205c20ae68dd6.md) | 175 | `result-track:eb662317b4b205c20ae68dd62363fddea44f3424ac54e276e38efe2409e46171` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/mul-nonneg-of-nonneg-of-pos--d4f06892264b2cf4e27cfca0.md) | 179 | `result-track:d4f06892264b2cf4e27cfca068ece9e3411770df8d0ac7da0a9e6ca2b179f3fa` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/mul-ne-zero-of-ne-zero-of-pos--deb782c8e29cf4fd7a3bb6f1.md) | 183 | `result-track:deb782c8e29cf4fd7a3bb6f152226f799f8271e1bf630680356eff6cf3411197` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/mul-ne-zero-of-pos-of-ne-zero--93d38a3bbcdfa0fdf4b4f806.md) | 187 | `result-track:93d38a3bbcdfa0fdf4b4f8064be8b1518437393c731529d93d9f5b4d0c47af51` |
| 22 | `def` | [evalMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalmul--ea49233725062fc8bf8d58f0.md) | 193 | `declaration-track:ea49233725062fc8bf8d58f0443493305a7489fa3e3b6321a87084d7aec00eba` |
| 23 | `lemma` | [int_div_self_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/int-div-self-pos--5510a6faf2b86e7d4e978a7b.md) | 218 | `result-track:5510a6faf2b86e7d4e978a7bb03be18ed4320c91e388b242b6084f776ca10c82` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/int-div-nonneg-of-pos-of-nonneg--5838ecceaadebd7ac29dbe71.md) | 221 | `result-track:5838ecceaadebd7ac29dbe71ef49b57b131c1ffeccac6ce1ed2156d72c15a1d4` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/int-div-nonneg-of-nonneg-of-pos--2c02a0723e11c644aee13cde.md) | 224 | `result-track:2c02a0723e11c644aee13cde463d40af00775ab4ba9239664112d5ceac785783` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/int-div-nonneg-of-pos-of-pos--327c84ca47110665819b8b8e.md) | 227 | `result-track:327c84ca47110665819b8b8ef36e65db4f8fa65e72b8b67a1606696076e8cb5e` |
| 27 | `def` | [evalIntDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalintdiv--9cc0fdfe3435614b97a78b4d.md) | 232 | `declaration-track:9cc0fdfe3435614b97a78b4da15aec58f46ae076ec3afa8ccf3d415fd64cbc60` |
| 28 | `lemma` | [div_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/div-nonneg-of-pos-of-nonneg--b8522d47a67023c47471bc90.md) | 261 | `result-track:b8522d47a67023c47471bc9013f746bec40e30c4edecdb12ea318ccba65fa5f9` |
| 29 | `lemma` | [div_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/div-nonneg-of-nonneg-of-pos--8dd74542dcfd41086b05f7ea.md) | 264 | `result-track:8dd74542dcfd41086b05f7eaee45eaa5a239421db554812e7fa55e94f06962e4` |
| 30 | `lemma` | [div_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/div-ne-zero-of-pos-of-ne-zero--b0b760eab12d9ab429897f74.md) | 267 | `result-track:b0b760eab12d9ab429897f745f2143b38060f9af627464998779e59f68740ccd` |
| 31 | `lemma` | [div_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/div-ne-zero-of-ne-zero-of-pos--3fc54bbe4701c416cd46e1c1.md) | 270 | `result-track:3fc54bbe4701c416cd46e1c1e04489b703948d24ef0c7473ff27e67a719a8035` |
| 32 | `def` | [evalDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evaldiv--9b6029280f3c14dde8f66bf0.md) | 277 | `declaration-track:9b6029280f3c14dde8f66bf09f5465830bcc6ef4137e7a1b4670e24457402954` |
| 33 | `def` | [evalInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalinv--00f0dacb2b46f7d183a5612a.md) | 298 | `declaration-track:00f0dacb2b46f7d183a5612adc699daefa5908848ed4a14b0abbfdd69ab23deb` |
| 34 | `theorem` | [pow_zero_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/pow-zero-pos--2009484de42666d024d28bfb.md) | 311 | `result-track:2009484de42666d024d28bfb2d7d14814cfa31fa4692153f73b35d0626295216` |
| 35 | `lemma` | [zpow_zero_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/zpow-zero-pos--2044550ac8876553d5d017b7.md) | 314 | `result-track:2044550ac8876553d5d017b7ade56b6aa366246895d90fce0f896d0a0b764303` |
| 36 | `def` | [evalPowZeroNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalpowzeronat--9e44fad91901b84b7912d91c.md) | 320 | `declaration-track:9e44fad91901b84b7912d91cf300124d44da63443e2cdab8f8e4e441f4975bd6` |
| 37 | `def` | [evalPowZeroInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalpowzeroint--f2826e7b4996030f449a2fba.md) | 328 | `declaration-track:f2826e7b4996030f449a2fba57f53e67bd592dbe8b73c1d4adc0f64f49b6ca1b` |
| 38 | `def` | [evalPow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalpow--8456912a8cc3d19b55db3615.md) | 337 | `declaration-track:8456912a8cc3d19b55db3615aedf63da955c727d15f7b0856ac8042c66be93f8` |
| 39 | `theorem` | [abs_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/abs-pos-of-ne-zero--7322f3fd6a4ab57c2f2a58c5.md) | 375 | `result-track:7322f3fd6a4ab57c2f2a58c517ba6d7d332e3dc523d28167e2f24ae973547f7f` |
| 40 | `def` | [evalAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalabs--6e16d8d2d73f334af7716127.md) | 380 | `declaration-track:6e16d8d2d73f334af7716127923e884f5c2fc517b76ca4d941d9cb8917d45e90` |
| 41 | `theorem` | [int_natAbs_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/int-natabs-pos--2ce20df6b64fb4419be969f7.md) | 395 | `result-track:2ce20df6b64fb4419be969f7560e1bb61610c80fe373eb2ee6e95943a854f9e0` |
| 42 | `def` | [evalNatAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalnatabs--6c57ac97282388940c87e65b.md) | 403 | `declaration-track:6c57ac97282388940c87e65b8f9467d7c9ac69e749971660b7bc2e8adbd7da38` |
| 43 | `def` | [evalNatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalnatcast--74cb38eae2a62cfd8a8a577c.md) | 419 | `declaration-track:74cb38eae2a62cfd8a8a577c8f78d25b175bc76b2039919fcabef1bbee694707` |
| 44 | `def` | [evalIntCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalintcast--959e8308008b7f031da6a0d1.md) | 435 | `declaration-track:959e8308008b7f031da6a0d1a2336e765f84b7e64901cf9c8a8668a8fde94c2f` |
| 45 | `def` | [evalNatSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalnatsucc--a5c49cb0686f658a8f1f3a4e.md) | 464 | `declaration-track:a5c49cb0686f658a8f1f3a4ebb83788b9d7da8665c74aa5e785432edac66385c` |
| 46 | `def` | [evalFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/declarations/evalfactorial--f7149d62ae06747b86376a34.md) | 470 | `declaration-track:f7149d62ae06747b86376a34ff1c34ecfe34229a9e381c92fba8e439e8b548a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
