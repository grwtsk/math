# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd2cda915a8c7d5746edcdcdfff21c6ae7f7bc8b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd2cda915a8c7d5746edcdcdfff21c6ae7f7bc8b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Even.zpow_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/even-zpow-nonneg--60492f68ad81a73b0a579ad4.md) | 32 | `result-track:60492f68ad81a73b0a579ad44bc256f6d0dfb12efc6fdb358632329e0c3ed22d` |
| 2 | `lemma` | [zpow_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-two-nonneg--6a3c06477209577c6fcc4593.md) | 35 | `result-track:6a3c06477209577c6fcc4593c155595759f9b736a6ba038e4469b69764f90d3a` |
| 3 | `lemma` | [zpow_neg_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-neg-two-nonneg--a8aca47db6e981790a8f1e7b.md) | 37 | `result-track:a8aca47db6e981790a8f1e7bf01232ecc9639bc6b793118bd0d95fdaac2f1d40` |
| 4 | `lemma` | [Even.zpow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/even-zpow-pos--5dd74fcaf17de1c645a69256.md) | 39 | `result-track:5dd74fcaf17de1c645a69256dd8788a959fb1318749a6ba150146856332834e5` |
| 5 | `lemma` | [zpow_two_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-two-pos-of-ne-zero--334dc3ee72d5424f082e6945.md) | 42 | `result-track:334dc3ee72d5424f082e69450162647d639d2aa042d647575f3ddb7c4fb743a3` |
| 6 | `theorem` | [Even.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/even-zpow-pos-iff--33e1ec2856964eddb289a96e.md) | 44 | `result-track:33e1ec2856964eddb289a96e1796026bfefed80a35fcca3f98779017dc587f44` |
| 7 | `theorem` | [Odd.zpow_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/odd-zpow-neg-iff--8b0d10589867e581ceb6e0a7.md) | 48 | `result-track:8b0d10589867e581ceb6e0a77ffb68e65caac7caae1ebfc193933e681f5532c3` |
| 8 | `lemma` | [Odd.zpow_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/odd-zpow-nonneg-iff--cbc1233dc6e6be9b6c8df366.md) | 54 | `result-track:cbc1233dc6e6be9b6c8df3669af3ee7a6c9e9170d793480994ff7f4bf36a4e96` |
| 9 | `theorem` | [Odd.zpow_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/odd-zpow-nonpos-iff--d93b4598901cb32071b8a796.md) | 57 | `result-track:d93b4598901cb32071b8a7966fb716a236d9cd90b009ca76d8b292c3e72eb47c` |
| 10 | `lemma` | [Odd.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/odd-zpow-pos-iff--1c7e113fa27db21b0971fdd4.md) | 62 | `result-track:1c7e113fa27db21b0971fdd4043294c0e4bf52c73398deb63d22b024f70741f6` |
| 11 | `theorem` | [Even.zpow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/even-zpow-abs--ebe0269383e125f2c9e79a2a.md) | 69 | `result-track:ebe0269383e125f2c9e79a2a204d1e2eea1d79ab5b405ad24cc9b38ba062e911` |
| 12 | `lemma` | [zpow_eq_zpow_iff_of_ne_zero₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-zpow-iff-of-ne-zero--28f5c7a80fa83a6fbcde3841.md) | 72 | `result-track:28f5c7a80fa83a6fbcde38411b9b99b80561d6005aee9dd9a4aec89ce67d3d36` |
| 13 | `lemma` | [zpow_eq_zpow_iff_cases₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-zpow-iff-cases--c3a5502ed462b7d6104f31a3.md) | 82 | `result-track:c3a5502ed462b7d6104f31a336b5badd54157947aa5bbe6d2163a870cceb7760` |
| 14 | `lemma` | [zpow_eq_one_iff_of_ne_zero₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-one-iff-of-ne-zero--ef469b055eb1cff6583a4f0a.md) | 85 | `result-track:ef469b055eb1cff6583a4f0a76fa389ced5c2640f32bfd16596d01f4a9ac5621` |
| 15 | `lemma` | [zpow_eq_one_iff_cases₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-one-iff-cases--36e633bcebf22603bd9531a9.md) | 88 | `result-track:36e633bcebf22603bd9531a90de6e41c62966538ce175351e3ca25c74d75d666` |
| 16 | `lemma` | [zpow_eq_neg_zpow_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-neg-zpow-iff--965ad759d41042a5e7b367f1.md) | 91 | `result-track:965ad759d41042a5e7b367f18d280cd3d39c36f24f1717f84b4986cfd8f57059` |
| 17 | `lemma` | [zpow_eq_neg_one_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/zpow-eq-neg-one-iff--5ed5c4e168633bbca174b74b.md) | 100 | `result-track:5ed5c4e168633bbca174b74b40aae5cc7c3019b073cb75508e34fb68dabac85b` |
| 18 | `theorem` | [Nat.cast_le_pow_sub_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/nat-cast-le-pow-sub-div-sub--bd6ff8fcbf7a983bb78e96d2.md) | 106 | `result-track:bd6ff8fcbf7a983bb78e96d20ee80f81fde2e848ecbb50f60955180bad671a2b` |
| 19 | `theorem` | [Nat.cast_le_pow_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/nat-cast-le-pow-div-sub--e8db0ea9fa228432d91440d4.md) | 112 | `result-track:e8db0ea9fa228432d91440d42fa866409e22bbec96c4b3fbdc282124518b59b5` |
| 20 | `def` | [evalZPow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant02a27ab9e960b5282c5aaac36f20ea96f15620306702d89367655a0378712a7b.lean/declarations/evalzpow--1f1a2d9ef84a5a475d7b70e4.md) | 124 | `declaration-track:1f1a2d9ef84a5a475d7b70e4950755467c7475e39c9c57295d6184083408b348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
