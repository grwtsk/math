# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Factorization.Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2938e6c6f32e6f6746349a69dec22d8b754340e4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2938e6c6f32e6f6746349a69dec22d8b754340e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Central` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_choose_le_log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-choose-le-log--d567144821c7581f26a259df.md) | 42 | `result-track:d567144821c7581f26a259df3b547b19b43dd0fa306c6f22aa6d6c695dac9309` |
| 2 | `theorem` | [pow_factorization_choose_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/pow-factorization-choose-le--360d4b43b46c6a40a0fd5a1e.md) | 56 | `result-track:360d4b43b46c6a40a0fd5a1e8128a017d3d6781d02233d82c8fbc0689d1a20cc` |
| 3 | `theorem` | [factorization_choose_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-choose-le-one--a96fce095fcc41756053aae5.md) | 61 | `result-track:a96fce095fcc41756053aae5f65371425046110f68c9b1ce29c7666f7ad3ca2e` |
| 4 | `theorem` | [factorization_choose_of_lt_three_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-choose-of-lt-three-mul--1e6ab2f5f0f2baaa9f5f51b2.md) | 66 | `result-track:1e6ab2f5f0f2baaa9f5f51b25d89eb84a2536e44c506c22251087f3e81caa065` |
| 5 | `theorem` | [factorization_centralBinom_of_two_mul_self_lt_three_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-centralbinom-of-two-mul-self-lt-three-mul--06714049a457cfef07879d7c.md) | 98 | `result-track:06714049a457cfef07879d7c85f127686b983b3754f8dae0ca18e6a1659c5c5f` |
| 6 | `theorem` | [factorization_factorial_eq_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-factorial-eq-zero-of-lt--8c7932dc190251747ec1047d.md) | 104 | `result-track:8c7932dc190251747ec1047d405f02aeb3af4fd8e3c488d24a88c962666d089b` |
| 7 | `theorem` | [factorization_choose_eq_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-choose-eq-zero-of-lt--99a20da72e369a0d854cbd39.md) | 109 | `result-track:99a20da72e369a0d854cbd39819d0e37a95efd966ccd44db38c6f768abc89029` |
| 8 | `theorem` | [factorization_centralBinom_eq_zero_of_two_mul_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/factorization-centralbinom-eq-zero-of-two-mul-lt--df3a936abc0dfb678679daea.md) | 117 | `result-track:df3a936abc0dfb678679daeabcf79d0cb7575e5fe58f50fec74886a4bc5a74b2` |
| 9 | `theorem` | [le_two_mul_of_factorization_centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/le-two-mul-of-factorization-centralbinom-pos--e2f1d98a32e7298e8edac4ad.md) | 122 | `result-track:e2f1d98a32e7298e8edac4adde0102c291ade5b3869d2970af00c46a092588bf` |
| 10 | `theorem` | [prod_pow_factorization_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/prod-pow-factorization-choose--c1913a963d9b744005a008c2.md) | 127 | `result-track:c1913a963d9b744005a008c2febb92f7504da455a8c4cafc6fb4f045b5cfff50` |
| 11 | `theorem` | [prod_pow_factorization_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variantf311f49bfed942ccce829c6575e024de8f8fd4e89b46eed75155e45fab0fbd02.lean/declarations/prod-pow-factorization-centralbinom--c8689d45876ed1a7f8f1872c.md) | 141 | `result-track:c8689d45876ed1a7f8f1872c89c8d379ec2dc9467f6d60aa7de144674cf4a3d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
