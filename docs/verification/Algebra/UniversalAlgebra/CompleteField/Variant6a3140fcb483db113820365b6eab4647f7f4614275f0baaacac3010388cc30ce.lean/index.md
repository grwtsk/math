# Verification target: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c9f80a6cc53ef2243a1b103a73413a7f6e05d3",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c9f80a6cc53ef2243a1b103a73413a7f6e05d3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/conditionallycompletelinearorderedfield--b9596d8070d0bc1d19dab54b.md) | 67 | `declaration-track:b9596d8070d0bc1d19dab54b11b05b48e8fdb007eafda83d2ab1ac8bbb7f132e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/instance--8f90ea53416cda576a74e55a.md) | 73 | `declaration-track:8f90ea53416cda576a74e55afa0d3a5b9ba50efdb95edb2b8ebfb7c5827bba15` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/instance--099ae819a2b66336bc0c2e3f.md) | 86 | `declaration-track:099ae819a2b66336bc0c2e3f7e07190a2ab8b54d6fac8fec2e0a371f5c8b1bd6` |
| 4 | `def` | [cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap--442c38b660006e0bd37e2ccd.md) | 111 | `declaration-track:442c38b660006e0bd37e2ccd9b6f1797ea8e3576635071cb8e3fa06b951ec34d` |
| 5 | `theorem` | [cutMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-mono--a6234c1c07f430151adaec56.md) | 115 | `result-track:a6234c1c07f430151adaec56ad2b80dc7678f148296f9f549c8e821a2b004d61` |
| 6 | `theorem` | [mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/mem-cutmap-iff--354a1b5cc4408120cebeaede.md) | 121 | `result-track:354a1b5cc4408120cebeaede0bdf545360889320a85cfeb347b9c0cf2294ef19` |
| 7 | `theorem` | [coe_mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/coe-mem-cutmap-iff--821ff22cb9fb9939054f7c58.md) | 125 | `result-track:821ff22cb9fb9939054f7c58f06e2ad0975109a9f1ca38861fb3350a24171ad4` |
| 8 | `theorem` | [cutMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-self--ec1130149a5f7d3d2b125cb1.md) | 129 | `result-track:ec1130149a5f7d3d2b125cb11965ea7b09bd5f631f0e70b56cdc7de484ca263c` |
| 9 | `theorem` | [cutMap_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-coe--5f176205f258e4e65b4947dc.md) | 142 | `result-track:5f176205f258e4e65b4947dc10fd4553d7899ba3f642c235412c6e0d80f4c929` |
| 10 | `theorem` | [cutMap_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-nonempty--1527d5c50db3b6bad44cf755.md) | 148 | `result-track:1527d5c50db3b6bad44cf755f0dc46a14c22f4896074306b63481ad370c1c225` |
| 11 | `theorem` | [cutMap_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-bddabove--6c337733c7f415cfb80a3241.md) | 152 | `result-track:6c337733c7f415cfb80a32414b305680c26b3237ef1c10285fc9a7cabbf45e24` |
| 12 | `theorem` | [cutMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/cutmap-add--b37ecd131581ec895d4e778c.md) | 157 | `result-track:b37ecd131581ec895d4e778c1104c316bb10173d8a212f7a59c0a1076a0bdb3b` |
| 13 | `def` | [inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap--ae31af7b3bb1dd4355125555.md) | 188 | `declaration-track:ae31af7b3bb1dd43551255556818ad51783f39c2343f6d454422c2e5b2cc45bb` |
| 14 | `theorem` | [inducedMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-mono--73f3b8a62d79ca460aa7a2be.md) | 194 | `result-track:73f3b8a62d79ca460aa7a2bea1e8be806ed31896090e474fc3fa28a106705971` |
| 15 | `theorem` | [inducedMap_rat](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-rat--d67736b775c3e895efbb4bc4.md) | 198 | `result-track:d67736b775c3e895efbb4bc46fbd07cc89eab5ebcc1db3a0b11cf567e7f36ac0` |
| 16 | `theorem` | [inducedMap_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-zero--2d3ea2430762b4bc369ba4f9.md) | 210 | `result-track:2d3ea2430762b4bc369ba4f93651733b41d78bbae5571711f85dbee100da8249` |
| 17 | `theorem` | [inducedMap_one](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-one--04e29cb3c576f1a59dd861a9.md) | 214 | `result-track:04e29cb3c576f1a59dd861a9e8c227488b9bbb3f16631818c03690b5ebbb8219` |
| 18 | `theorem` | [inducedMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-nonneg--4b5f8ac806eda961eca3a4bd.md) | 219 | `result-track:4b5f8ac806eda961eca3a4bd610272e90aa83eaf2b47646a959b599ff98ac693` |
| 19 | `theorem` | [coe_lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/coe-lt-inducedmap-iff--1cee6d880367c4da659d4932.md) | 223 | `result-track:1cee6d880367c4da659d4932b2474dfd064cf199273447675bb6f3ab0f181413` |
| 20 | `theorem` | [lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/lt-inducedmap-iff--fa8933bda7d982e21a5dddd9.md) | 232 | `result-track:fa8933bda7d982e21a5dddd98b759d9b2e9560c5d84aa23a0bd9b750f87d217f` |
| 21 | `theorem` | [inducedMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-self--935772a0eb494e04ef05a5d2.md) | 238 | `result-track:935772a0eb494e04ef05a5d21ff3e72f026c7f7f3a179ea367b3ad874a6790f3` |
| 22 | `theorem` | [inducedMap_inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-inducedmap--6b53b8438237b44c59fcc88c.md) | 245 | `result-track:6b53b8438237b44c59fcc88c826392ea1e4b909d94ca3b8edfb71ef9c2c01c85` |
| 23 | `theorem` | [inducedMap_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-inv-self--72a89aaa2e7c29cb5c0465c4.md) | 251 | `result-track:72a89aaa2e7c29cb5c0465c4ff82e6d1c7e6a584ed7036ceda52d8f72cffd341` |
| 24 | `theorem` | [inducedMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedmap-add--fd87da470e0977ec8e7d02b4.md) | 255 | `result-track:fd87da470e0977ec8e7d02b46b940bc3e0913a813b5257359b9227c4b94c6074` |
| 25 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap--a477a79aacc89deb41251421.md) | 265 | `result-track:a477a79aacc89deb41251421bf4aa23027187090b3c62d8f5e9f3e03bbe08746` |
| 26 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--dd50f3abfe1071950bb1e489.md) | 278 | `result-track:dd50f3abfe1071950bb1e489c173d0c57bc854d5c2785a264757ef54b3481735` |
| 27 | `def` | [inducedAddHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedaddhom--2a0ac9f651bf596852459395.md) | 297 | `declaration-track:2a0ac9f651bf5968524593958b7616864be203be160edb78324a098a0ab42cc6` |
| 28 | `def` | [inducedOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedorderringhom--4da71d03cc9147a6804cbd8d.md) | 303 | `declaration-track:4da71d03cc9147a6804cbd8d6429c1ee0f3e9c2df3f079536b35081e8ba31c40` |
| 29 | `def` | [inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedorderringiso--ee22381db35b14fd09cad5a8.md) | 324 | `declaration-track:ee22381db35b14fd09cad5a8e1a451e721a2788c4768804a1bb02d6494868e89` |
| 30 | `theorem` | [coe_inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/coe-inducedorderringiso--3c92b568d42da8a8e67df80d.md) | 339 | `result-track:3c92b568d42da8a8e67df80d7753e82db363ed5bce3e84505f0d401384357258` |
| 31 | `theorem` | [inducedOrderRingIso_symm](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedorderringiso-symm--9cd156faf3dbbe0c4adb56bb.md) | 343 | `result-track:9cd156faf3dbbe0c4adb56bbaff4b78c2544d5ed0e152438f663082446373bb6` |
| 32 | `theorem` | [inducedOrderRingIso_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/inducedorderringiso-self--33082fc8cd953d6cf3e20130.md) | 347 | `result-track:33082fc8cd953d6cf3e20130508c6001edd7a1ac65a3e635818c6afb4d9bdba3` |
| 33 | `instance` | [uniqueOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/uniqueorderringhom--366d3fe1f38a3c54108d2cd7.md) | 355 | `declaration-track:366d3fe1f38a3c54108d2cd79448e6b5a2ba0b1851068389edb3422c382c9449` |
| 34 | `instance` | [uniqueOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/uniqueorderringiso--07895dc52654e1290c43a373.md) | 360 | `declaration-track:07895dc52654e1290c43a373769e4e5d73c91706ce2b8c9385efe316af68c668` |
| 35 | `theorem` | [ringHom_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/ringhom-monotone--8c2ab9673ddd2dcd8068d0e0.md) | 371 | `result-track:8c2ab9673ddd2dcd8068d0e018778187a1ab2fc0b998a3a55aab81e4dfdbc03f` |
| 36 | `instance` | [Real.RingHom.unique](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/declarations/real-ringhom-unique--f460cf4cdf3f7d0503e1e506.md) | 377 | `declaration-track:f460cf4cdf3f7d0503e1e50633957e143ab7897d1a338437311d99c57437f49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
