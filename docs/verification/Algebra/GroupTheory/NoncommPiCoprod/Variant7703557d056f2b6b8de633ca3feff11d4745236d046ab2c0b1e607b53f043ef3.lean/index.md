# Verification target: GRWTSK.Algebra.GroupTheory.NoncommPiCoprod.Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33d4b60a80c3869367fa33d7a328c388142cf70b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33d4b60a80c3869367fa33d7a328c388142cf70b`.

Source path: `GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_one_of_noncommProd_eq_one_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/eq-one-of-noncommprod-eq-one-of-isupindep--c70f03d4f764e6eb469af12c.md) | 52 | `result-track:c70f03d4f764e6eb469af12ceb1e63a0f3f26b25c9a1291932d6e43de127ab95` |
| 2 | `def` | [noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod--a46d9353db6a7d8cf53d1f21.md) | 102 | `declaration-track:a46d9353db6a7d8cf53d1f21fd891c0339bd625de39c3fe3a1d4023a88515092` |
| 3 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-mulsingle--d1b3f446b5080f144329fec4.md) | 117 | `result-track:d1b3f446b5080f144329fec4d3dc2a6fa62ffe1ad0eecdb49b962ed4293b107e` |
| 4 | `def` | [noncommPiCoprodEquiv](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprodequiv--9ada543483ab90307a3b1210.md) | 142 | `declaration-track:9ada543483ab90307a3b12105571b3a8e18475e4d725efc932977210c5cd96c0` |
| 5 | `theorem` | [noncommPiCoprod_mrange](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-mrange--c2f88379c7aab21f87a019da.md) | 156 | `result-track:c2f88379c7aab21f87a019da413c779a7f41ffd457cc63ed070b26d07838e57c` |
| 6 | `lemma` | [commute_noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/commute-noncommpicoprod--e79c754a9e720295594eac84.md) | 170 | `result-track:e79c754a9e720295594eac8459e95f487bc54ff86444fb15091ea13fe6e0dfe9` |
| 7 | `lemma` | [noncommPiCoprod_apply](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-apply--1ac0276e28c69179cc5bada2.md) | 180 | `result-track:1ac0276e28c69179cc5bada299116150c5e833fac11f4ef97f1bf049021dcd32` |
| 8 | `theorem` | [comp_noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/comp-noncommpicoprod--e806cf6088525ea1521c38b2.md) | 189 | `result-track:e806cf6088525ea1521c38b2b9b451ee5c09b45167aa69cb96c26d905494f16c` |
| 9 | `theorem` | [noncommPiCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-range--592e9fdd5c46bc0a493ee1d5.md) | 213 | `result-track:592e9fdd5c46bc0a493ee1d59e641ebc8a2f2de2bc98285314f4011e257bdf98` |
| 10 | `theorem` | [injective_noncommPiCoprod_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/injective-noncommpicoprod-of-isupindep--cc4c19c4607ee5dcf9c43f20.md) | 229 | `result-track:cc4c19c4607ee5dcf9c43f20ac224a4c01492bb4ec6263b1a9b7e218fdf2cdfc` |
| 11 | `theorem` | [independent_range_of_coprime_order](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/independent-range-of-coprime-order--5794c99755899107463a641a.md) | 248 | `result-track:5794c99755899107463a641a8ec10f733ea67d67397829610e99b164b1c1550d` |
| 12 | `theorem` | [commute_subtype_of_commute](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/commute-subtype-of-commute--fdca9a6b0e8ce14ca88be1f4.md) | 298 | `result-track:fdca9a6b0e8ce14ca88be1f4cc67fa91877802761310d596877cfcd2e5ba28ef` |
| 13 | `theorem` | [independent_of_coprime_order](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/independent-of-coprime-order--326d84993a942fac798600b6.md) | 306 | `result-track:326d84993a942fac798600b6a96824af1b7fa5d0778e322d7c2c2e08fe4bbb5f` |
| 14 | `def` | [noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod--057268c50dad9a32433b2ff2.md) | 321 | `declaration-track:057268c50dad9a32433b2ff2ade68f7e2ca47b44b37b156a6dfc5f590273a718` |
| 15 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-mulsingle--66fc4deae43bf054c73912d9.md) | 326 | `result-track:66fc4deae43bf054c73912d9e1828ef014bf20de452c2b06e1da6e98a4d740e1` |
| 16 | `theorem` | [noncommPiCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-range--60289b525c5d279ee3603853.md) | 331 | `result-track:60289b525c5d279ee36038535306d17644bfcb7050695f767587dbb09742f760` |
| 17 | `theorem` | [injective_noncommPiCoprod_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/injective-noncommpicoprod-of-isupindep--88d1af4b3375f714d6e18136.md) | 337 | `result-track:88d1af4b3375f714d6e1813616c246ec95379f2614c43971bba1db6610598534` |
| 18 | `theorem` | [noncommPiCoprod_apply](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant7703557d056f2b6b8de633ca3feff11d4745236d046ab2c0b1e607b53f043ef3.lean/declarations/noncommpicoprod-apply--50a4c231c72d9214a2edf272.md) | 347 | `result-track:50a4c231c72d9214a2edf272ea676ef1f85b71360426d7571044d642481c5d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
