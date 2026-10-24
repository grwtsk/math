# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c316389c229be98b57ce9dee1baa12fdf27d128e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c316389c229be98b57ce9dee1baa12fdf27d128e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rangeSingleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/rangesingleton--8f4958fcad90bacd0b7f7b44.md) | 48 | `declaration-track:8f4958fcad90bacd0b7f7b44397267c7a2448dcb5e1e4d52d3cf7bb1f46d49bb` |
| 2 | `theorem` | [mem_rangeSingleton_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/mem-rangesingleton-apply-iff--6145e61b295e013184c6c202.md) | 55 | `result-track:6145e61b295e013184c6c202c4b2982e8ae26d669b952bafa6d509ce7dd3b4d8` |
| 3 | `def` | [rangeIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/rangeicc--1b1ccbb1977b846392c0f4d5.md) | 67 | `declaration-track:1b1ccbb1977b846392c0f4d5593f8e546a311371863f345073e523a48137c546` |
| 4 | `lemma` | [coe_rangeIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/coe-rangeicc--994e09b2249c90bcce3b10d6.md) | 74 | `result-track:994e09b2249c90bcce3b10d675081f3842a32e2a16e117b905453814b082830b` |
| 5 | `theorem` | [rangeIcc_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/rangeicc-support--ac04f009f15620f737d4b41c.md) | 77 | `result-track:ac04f009f15620f737d4b41cf1c748c1a4fd6ea0bc71d1972198c349adcbaed4` |
| 6 | `theorem` | [mem_rangeIcc_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/mem-rangeicc-apply-iff--9db222269e4e2c94d5de156f.md) | 80 | `result-track:9db222269e4e2c94d5de156fd4c657d70ebdb5ffc259f965393ef1cb85dafc3a` |
| 7 | `instance` | [instLocallyFiniteOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/instlocallyfiniteorder--1becc3db75c0beafe8c88b92.md) | 89 | `declaration-track:1becc3db75c0beafe8c88b929f954e63539dbad0c2240c4c52d473d796238a6b` |
| 8 | `theorem` | [Icc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/icc-eq--73e082d03ce87e63363fd49a.md) | 97 | `result-track:73e082d03ce87e63363fd49ac59e04cfc81445eb18d27308ef740490af6069a4` |
| 9 | `theorem` | [card_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-icc--4ef8b295d6b8a0b09dbc1a97.md) | 99 | `result-track:4ef8b295d6b8a0b09dbc1a975c358c8430f75560cee7f93a4ce2ecec30319da9` |
| 10 | `theorem` | [card_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-ico--dd28ffff0f213b3159931eec.md) | 102 | `result-track:dd28ffff0f213b3159931eec01b15196f0575b9f1a8898537e2cf44b0233d933` |
| 11 | `theorem` | [card_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-ioc--ab38a57fdf0dbf06314bd4f0.md) | 105 | `result-track:ab38a57fdf0dbf06314bd4f05e56abd6385fe875045fdf457d3fa11ab65bc600` |
| 12 | `theorem` | [card_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-ioo--1d341e1f34934a1897ad28d6.md) | 108 | `result-track:1d341e1f34934a1897ad28d62d12765d0f6cd57bc1c99278433327e2a1ae2e71` |
| 13 | `theorem` | [card_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-uicc--d9f71727ebeee5b8f22d0137.md) | 117 | `result-track:d9f71727ebeee5b8f22d0137f7149d487415b812fa35cdb28e8cea3eb7432186` |
| 14 | `theorem` | [card_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-iic--629b95aef51635bd26c0f60d.md) | 129 | `result-track:629b95aef51635bd26c0f60db59a8f7ba189c7cc0e6b10cf4b77115b76ba14bf` |
| 15 | `theorem` | [card_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variante93dc68ee78d5c029299359437b39aac2c0b0e3f1416f8ee338703d548550c4b.lean/declarations/card-iio--aadaaed1ad67db71b2f4d317.md) | 133 | `result-track:aadaaed1ad67db71b2f4d31745704cc8718bee2f895e202dda9a0c2a4ea53d97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
