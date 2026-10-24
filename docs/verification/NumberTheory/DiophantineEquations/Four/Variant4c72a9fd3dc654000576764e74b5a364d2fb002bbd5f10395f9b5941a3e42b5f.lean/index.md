# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Four.Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cc612b90563ce65864f7a5a0595a316f26dd869",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cc612b90563ce65864f7a5a0595a316f26dd869`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PythagoreanTriples` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fermat42](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/fermat42--6bef83e5695fd0e21e7fe7bc.md) | 32 | `declaration-track:6bef83e5695fd0e21e7fe7bc572c4138037bf83c6168963f6442f649a0e50c4e` |
| 2 | `theorem` | [comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/comm--53b12f69b28825f45213c3e5.md) | 37 | `result-track:53b12f69b28825f45213c3e53fa8733b5abebc5f7c8c4cae7cf3b6a4575335a1` |
| 3 | `theorem` | [mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/mul--be7bd27a35a50870193deafd.md) | 42 | `result-track:be7bd27a35a50870193deafdbefba10328166d51158e18a3b4687670507f3e10` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/ne-zero--a16fd271929ca06935414fbd.md) | 61 | `result-track:a16fd271929ca06935414fbd2c308a3a82d244cd10cc4fd7e6c8d64de16f76f0` |
| 5 | `def` | [Minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/minimal--4202535ebb4734aebe672f55.md) | 69 | `declaration-track:4202535ebb4734aebe672f55778ca8bf6abecc7414b40760c5788a76b6dcec9b` |
| 6 | `theorem` | [exists_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/exists-minimal--d569379c5b7efc9e51f2ab9f.md) | 73 | `result-track:d569379c5b7efc9e51f2ab9f5a81163e1e117a321fcf71b66917f57f9b620619` |
| 7 | `theorem` | [coprime_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/coprime-of-minimal--e82516a504d72c3b6adb1636.md) | 90 | `result-track:e82516a504d72c3b6adb1636484213e5f66bafa424215ae38a1d8e6ac9b2ff3a` |
| 8 | `theorem` | [minimal_comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/minimal-comm--7fbb173023c5d78ff0f9d8d3.md) | 109 | `result-track:7fbb173023c5d78ff0f9d8d3a2ef4e695d5e07306167b15fb101c7113d950a1b` |
| 9 | `theorem` | [neg_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/neg-of-minimal--f52cc51e9656f388cdf2afdf.md) | 113 | `result-track:f52cc51e9656f388cdf2afdf802c749599b016ca964b7b1225503bcfb7145466` |
| 10 | `theorem` | [exists_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/exists-odd-minimal--0bb9884d017efb9752d2ff84.md) | 122 | `result-track:0bb9884d017efb9752d2ff84907553407673d288b916d35a8762081e1643a95e` |
| 11 | `theorem` | [exists_pos_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/exists-pos-odd-minimal--c71f5f5d9c1a9eb0b84c4658.md) | 138 | `result-track:c71f5f5d9c1a9eb0b84c465800bc2b9d05c0014c16263b5fccabbe9a38a61905` |
| 12 | `theorem` | [Int.isCoprime_of_sq_sum](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/int-iscoprime-of-sq-sum--0b39a6e6b02dab47f336e630.md) | 150 | `result-track:0b39a6e6b02dab47f336e63035ac9f68ac27806ad64de1191c9b8540e15ddb2e` |
| 13 | `theorem` | [Int.isCoprime_of_sq_sum'](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/int-iscoprime-of-sq-sum--a2b24379ae4356ea39220148.md) | 156 | `result-track:a2b24379ae4356ea3922014826aae5e6122443c6c361e233a2880c4cf462f18f` |
| 14 | `theorem` | [not_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/not-minimal--5c27f6a2836d1c34b73ea053.md) | 167 | `result-track:5c27f6a2836d1c34b73ea05369684c445e41097440cd068085be24734bae5c17` |
| 15 | `theorem` | [not_fermat_42](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/not-fermat-42--f80fb7c36f01bc22253909b9.md) | 296 | `result-track:f80fb7c36f01bc22253909b9b0c270fa4c95278daf4a2a15458c7f47e79cd914` |
| 16 | `theorem` | [fermatLastTheoremFour](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/fermatlasttheoremfour--b6111750b9bfaa95c13546b6.md) | 306 | `result-track:b6111750b9bfaa95c13546b6f23e5fc072b7da42acc79c71e804d854f569e8a0` |
| 17 | `theorem` | [FermatLastTheorem.of_odd_primes](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/declarations/fermatlasttheorem-of-odd-primes--efbed152091d317feafca979.md) | 315 | `result-track:efbed152091d317feafca97967124fb4c621e05ae8f6c992e62dd958134e14cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
