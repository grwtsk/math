# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroSummability.Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10a84300ec33de72ee30ab51b0e11d83834b37c0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10a84300ec33de72ee30ab51b0e11d83834b37c0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.ExplicitFormula` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [gammaOf_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/gammaof-re--4d55e2fba1b6ae0ff75ac106.md) | 20 | `result-track:4d55e2fba1b6ae0ff75ac106c07ffcd45c485cf9ace228162050b9fad419622f` |
| 2 | `lemma` | [gammaOf_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/gammaof-im--22a806ff7920ec3fe7f6369f.md) | 23 | `result-track:22a806ff7920ec3fe7f6369f60e1a84b645e566984492f8e0cdaa9e86436e42e` |
| 3 | `lemma` | [abs_im_le_norm_gammaOf](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/abs-im-le-norm-gammaof--a23295ed5e5d3d61c23e4208.md) | 26 | `result-track:a23295ed5e5d3d61c23e4208ebe72872ea31aa5e5ee1ea6da73d6fef2c385e98` |
| 4 | `lemma` | [abs_gammaOf_im_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/abs-gammaof-im-lt--2285be967b3a991615bbcbbf.md) | 30 | `result-track:2285be967b3a991615bbcbbfdbc705ae083db9ef6930ae90eb49774bc6abf32d` |
| 5 | `lemma` | [abs_gammaOf_im_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/abs-gammaof-im-le--b341f3846e91a20c445776f7.md) | 34 | `result-track:b341f3846e91a20c445776f7e64b01bf22ac42c9e87879c8b8461c9a5ba4ab48` |
| 6 | `lemma` | [weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/weight-le--428e091fe3054bc34936476f.md) | 40 | `result-track:428e091fe3054bc34936476f3e346ab918f2efc47c360de623cb3a981d89cff3` |
| 7 | `lemma` | [summable_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/summable-weight--76c3a0d244d26c6ac536f272.md) | 66 | `result-track:76c3a0d244d26c6ac536f272675fb653222311e8b4d4efa869443e963e02e32b` |
| 8 | `def` | [totalWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/totalweight--f709ee872cf2b1d3a5fade84.md) | 77 | `declaration-track:f709ee872cf2b1d3a5fade84f6be2e3936aeeda9e8ac5e1156a7c55af376a717` |
| 9 | `def` | [key](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/key--c5889dc3e96c52fc94fd5505.md) | 82 | `declaration-track:c5889dc3e96c52fc94fd55056535995e1d9a9f87f957f49d16767f99fdddabb5` |
| 10 | `lemma` | [key_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/key-lt--ee3fa7fa8163443ef5637875.md) | 84 | `result-track:ee3fa7fa8163443ef5637875bb3682a74bb9ae3306913e6ca7da1eca395afc73` |
| 11 | `lemma` | [le_key_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/le-key-add-one--5a5d1440f73aef734df319ba.md) | 87 | `result-track:5a5d1440f73aef734df319ba11bc751a74179c626b214661038e0944b91f1679` |
| 12 | `lemma` | [one_add_sq_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/one-add-sq-ge--bf9fa000be9bcbec7de5c946.md) | 91 | `result-track:bf9fa000be9bcbec7de5c9469e613be3c7df24b6668cd89be6f7e4d598346835` |
| 13 | `theorem` | [zero_sum_inv_sq_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/zero-sum-inv-sq-gen--70b0dff374b404b480887e7d.md) | 105 | `result-track:70b0dff374b404b480887e7d8fe38a3677cbd8bbb4049d3f59d349748bb4f449` |
| 14 | `theorem` | [EF_zero_sum_summable_gen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/ef-zero-sum-summable-gen--a44c02022d7e665c0a06521c.md) | 163 | `result-track:a44c02022d7e665c0a06521cfb000ab0a31090cd6c5943e88e7a0de928f043b0` |
| 15 | `theorem` | [zero_sum_inv_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/zero-sum-inv-sq--a8939512be83b824ec37f086.md) | 231 | `result-track:a8939512be83b824ec37f0867dfb75d17e3040dae74c79c6562f6739b4b73417` |
| 16 | `theorem` | [EF_zero_sum_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroSummability/Variant2d2c7095ec2d8c5f37283727633ab48164efd540e1e487edccb19c237de16112.lean/declarations/ef-zero-sum-summable--3b9d91b6eff325a0f3a668bc.md) | 241 | `result-track:3b9d91b6eff325a0f3a668bc820dd3a3637ace9ea8b653e90ab42ac398d6cfee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
