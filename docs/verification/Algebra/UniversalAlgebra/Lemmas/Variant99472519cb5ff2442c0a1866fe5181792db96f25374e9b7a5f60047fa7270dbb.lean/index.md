# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cadf2cb86009a1f908394aa84fddc71fba74dafe",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cadf2cb86009a1f908394aa84fddc71fba74dafe`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ineq` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_irrefl](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/lt-irrefl--b496eb97c3fbde5c70d6c7c3.md) | 33 | `result-track:b496eb97c3fbde5c70d6c7c3d0ef01632b83070fb3e1c6ea2451b0e174846d19` |
| 2 | `theorem` | [eq_of_eq_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/eq-of-eq-of-eq--4509a4b6eaadd1cbfc31d0ef.md) | 35 | `result-track:4509a4b6eaadd1cbfc31d0ef3c9fb3a0e067e70a0ab7e8f2466395408f87a60b` |
| 3 | `theorem` | [zero_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/zero-lt-one--7402c762ad32785501bacf41.md) | 41 | `result-track:7402c762ad32785501bacf413c166388b12de4a252d91d8fa1206cce96e0de2f` |
| 4 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/le-of-eq-of-le--d9cf78a6bf74ad4c2533e443.md) | 44 | `result-track:d9cf78a6bf74ad4c2533e44309e947848561e313a095803f90abf3722aee7cde` |
| 5 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/lt-of-eq-of-lt--fdb844acc7d9360632e7aefd.md) | 47 | `result-track:fdb844acc7d9360632e7aefddbea11c832421834bda5e10ac24ca36190c614e6` |
| 6 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/le-of-le-of-eq--ac4a379e744f9bf78e919d70.md) | 50 | `result-track:ac4a379e744f9bf78e919d7066577157d5427140888783f967e06477a573913a` |
| 7 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/lt-of-lt-of-eq--df55cf398f4c5c0f2234d662.md) | 53 | `result-track:df55cf398f4c5c0f2234d6629bc12b490b68e6efab17adffe732d0ba84a3a6d0` |
| 8 | `theorem` | [add_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/add-nonpos--d217d5111a7c04b1d0b22636.md) | 56 | `result-track:d217d5111a7c04b1d0b2263671dae304f720801f2c59d2a4bb635d6672a1c908` |
| 9 | `theorem` | [add_lt_of_le_of_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/add-lt-of-le-of-neg--3a776c20f3cac3a2917fa373.md) | 60 | `result-track:3a776c20f3cac3a2917fa373bcf9ded5cba60672d5092fd9c3de1cb3cccaba9a` |
| 10 | `theorem` | [add_lt_of_neg_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/add-lt-of-neg-of-le--c4b51e634a84fa05cf679448.md) | 64 | `result-track:c4b51e634a84fa05cf679448d38735bc1932c56069fee72b2ef6504d9061fba5` |
| 11 | `theorem` | [add_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/add-neg--e870b79ce2f51c7815c23a2d.md) | 68 | `result-track:e870b79ce2f51c7815c23a2d08e410e3352ef7a9aadca80e27db1fc2a16ea471` |
| 12 | `lemma` | [natCast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/natcast-nonneg--e35149828b412ce921dd04f7.md) | 73 | `result-track:e35149828b412ce921dd04f76eca0c5817f2b3075a9c233bded98dcbb623bd75` |
| 13 | `theorem` | [mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/mul-eq--b555c7706226746cec0fdb6e.md) | 77 | `result-track:b555c7706226746cec0fdb6ef151d1e6a11c280a4e611c2513d7808f1d71c456` |
| 14 | `theorem` | [mul_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/mul-neg--8ddcef7d79f680bd5bd9b22f.md) | 85 | `result-track:8ddcef7d79f680bd5bd9b22fb4aa40b2c85ccd6008a4c27dfb36851a71780676` |
| 15 | `theorem` | [mul_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/mul-nonpos--f0adaa4f695fe9ba8a8e72ea.md) | 89 | `result-track:f0adaa4f695fe9ba8a8e72ea0dbb3beb978d346dbc53ce29af3b40ba581fc9d8` |
| 16 | `theorem` | [sub_nonpos_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/sub-nonpos-of-le--28a53224bdd5b4de65647248.md) | 93 | `result-track:28a53224bdd5b4de65647248f6272c9957bf7af15fd3f278abc58e1fe8b3f6f9` |
| 17 | `theorem` | [sub_neg_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/sub-neg-of-lt--8f4bc391595d3309dd378582.md) | 96 | `result-track:8f4bc391595d3309dd3785827dc4511223bca8e98c6686ff2d58fabd0451d02d` |
| 18 | `def` | [_root_.GRWTSK.Algebra.UniversalAlgebra.LtIrrefl.Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.Mathlib.Ineq.toConstMulName](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/root-grwtsk-algebra-universalalgebra-ltirrefl-variant5a9acdbd9a3f45c3771--e7cb08405db9ac8e065a7891.md) | 103 | `declaration-track:e7cb08405db9ac8e065a78911babb606fb9de57a65b2f789944c7adc15c66cc1` |
| 19 | `lemma` | [eq_of_not_lt_of_not_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/eq-of-not-lt-of-not-gt--9db9a3160f8a2cea8fbc46d3.md) | 108 | `result-track:9db9a3160f8a2cea8fbc46d38d41921214e6741b75b9647acdc5d43eeb429e3e` |
| 20 | `lemma` | [mul_zero_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/mul-zero-eq--eca73e50d78e609e7f52e205.md) | 113 | `result-track:eca73e50d78e609e7f52e205637a38f707f0e905108c9ff863a3964cc06d8314` |
| 21 | `lemma` | [zero_mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/zero-mul-eq--aacaa4805aea309ffa58d497.md) | 119 | `result-track:aacaa4805aea309ffa58d497eeab51a493d23c410a5240a8cd9f63a231295111` |
| 22 | `theorem` | [lt_zero_of_zero_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/lt-zero-of-zero-gt--7e468db2200b8b14152dd6a9.md) | 129 | `result-track:7e468db2200b8b14152dd6a9049d44107941cc57e2dae5d5544f47ca1167371c` |
| 23 | `theorem` | [le_zero_of_zero_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant99472519cb5ff2442c0a1866fe5181792db96f25374e9b7a5f60047fa7270dbb.lean/declarations/le-zero-of-zero-ge--20bf01debeb666b527894862.md) | 131 | `result-track:20bf01debeb666b5278948627506d8637f4210216565654795a518cfb838d5d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
