# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Eval.Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca71a80e702377fbfb69a851150ab4857ffcb82",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca71a80e702377fbfb69a851150ab4857ffcb82`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Arg` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/eval-one-cyclotomic-prime--071b235e43fc5bb0148bc1d7.md) | 39 | `result-track:071b235e43fc5bb0148bc1d762bf982086ec3983d17cdba50e11dbcfd13cf7a4` |
| 2 | `theorem` | [eval₂_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/eval-one-cyclotomic-prime--ad80c29ba05e4b794ce68ab4.md) | 46 | `result-track:ad80c29ba05e4b794ce68ab42ed7ecf0c97383ba85eb45ecfdb9797e67d7e1a5` |
| 3 | `theorem` | [eval_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/eval-one-cyclotomic-prime-pow--db8f1d822790e24c9c0fdd99.md) | 51 | `result-track:db8f1d822790e24c9c0fdd99c060c7f49888453aa6c21fde8bc8ad5e1e245383` |
| 4 | `theorem` | [eval₂_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/eval-one-cyclotomic-prime-pow--1322d73e571f6d11a3a62a14.md) | 58 | `result-track:1322d73e571f6d11a3a62a146ff6d7e4a167136050ca8700f0093a9069e0af55` |
| 5 | `theorem` | [cyclotomic_neg_one_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-neg-one-pos--eff3175294db6dae41a83e5a.md) | 62 | `result-track:eff3175294db6dae41a83e5a568f764ca8b4fb0a6eea935ba6f25a39fd418b7b` |
| 6 | `theorem` | [cyclotomic_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-pos--2a676a4811f59931fc0527ea.md) | 80 | `result-track:2a676a4811f59931fc0527eabced758e3d0ae39413fde55fe2f510e00e924b10` |
| 7 | `theorem` | [cyclotomic_pos_and_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-pos-and-nonneg--4859de1a24cc50fa07d6cee0.md) | 124 | `result-track:4859de1a24cc50fa07d6cee0857e20f7430b9b7e4a1921efeb6e932db2e2c99c` |
| 8 | `theorem` | [cyclotomic_pos'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-pos--b8ed10fe8aa63b94a8e5a190.md) | 138 | `result-track:b8ed10fe8aa63b94a8e5a190c0b029942db6ac0f4ffeccf559724f591fbda1f8` |
| 9 | `theorem` | [cyclotomic_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-nonneg--aa2bf2e70f6dbc2e8504f6ca.md) | 144 | `result-track:aa2bf2e70f6dbc2e8504f6ca11855470beae5f5a53d54021f844b2e465fdaa46` |
| 10 | `theorem` | [eval_one_cyclotomic_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/eval-one-cyclotomic-not-prime-pow--79ca7710a44a10a3a89b5396.md) | 149 | `result-track:79ca7710a44a10a3a89b5396bf1130b19c7f635c16f2d8551346c5db2191c9fe` |
| 11 | `theorem` | [sub_one_pow_totient_lt_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/sub-one-pow-totient-lt-cyclotomic-eval--715beef2c342c90fa7be9a24.md) | 183 | `result-track:715beef2c342c90fa7be9a2499dc606bcaa60952243c2f42c28bd980519c9c01` |
| 12 | `theorem` | [sub_one_pow_totient_le_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/sub-one-pow-totient-le-cyclotomic-eval--9510ea3566a650f98cf9b220.md) | 233 | `result-track:9510ea3566a650f98cf9b220a63a0b5468e38db563c3e7d1df82f15f3ba65687` |
| 13 | `theorem` | [cyclotomic_eval_lt_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-eval-lt-add-one-pow-totient--a515f5583c0d212c003483c5.md) | 240 | `result-track:a515f5583c0d212c003483c542ab988cd2ff6dbf46e648737ba6cf5424e8f49c` |
| 14 | `theorem` | [cyclotomic_eval_le_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/cyclotomic-eval-le-add-one-pow-totient--61bb0d3f935e894d867397c3.md) | 307 | `result-track:61bb0d3f935e894d867397c3097ed1355083aa51c83754e4dfbab0b6f53cf09f` |
| 15 | `theorem` | [sub_one_pow_totient_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/sub-one-pow-totient-lt-natabs-cyclotomic-eval--45b6f08c706fa12972a36d2a.md) | 315 | `result-track:45b6f08c706fa12972a36d2a91edc32ac02beeb4f48d6d0f5b34375d423198e5` |
| 16 | `theorem` | [sub_one_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant5f4ef4eeaf964726012102b167549102b5dd8e43cfa6f28bae7f5b47af5465c6.lean/declarations/sub-one-lt-natabs-cyclotomic-eval--3fd5041f31c1cb8f22bcb66b.md) | 327 | `result-track:3fd5041f31c1cb8f22bcb66b9adf9cb47fae5e1a6a5846b0c0bd84c18743d1d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
