# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Eval.Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ebaaa56386a64dcdf8255008e78bf6978350e94",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ebaaa56386a64dcdf8255008e78bf6978350e94`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Arg` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/eval-one-cyclotomic-prime--e72b3da6b066dd91d00e6fbb.md) | 27 | `result-track:e72b3da6b066dd91d00e6fbb4d4c12208ef0f6fad9060c1c2ada23fcdee60c12` |
| 2 | `theorem` | [eval₂_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/eval-one-cyclotomic-prime--189b69e4ebe1d187d9592266.md) | 32 | `result-track:189b69e4ebe1d187d95922667d99e56ed8fcee54c2ce83b88e6eacb630740381` |
| 3 | `theorem` | [eval_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/eval-one-cyclotomic-prime-pow--c6577d564c52527dfde68269.md) | 36 | `result-track:c6577d564c52527dfde68269b81901db6e92770e569f682976b954812d8bbe3f` |
| 4 | `theorem` | [eval₂_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/eval-one-cyclotomic-prime-pow--644b6ce412c44a55c1dcef7a.md) | 41 | `result-track:644b6ce412c44a55c1dcef7afa961fea88b7846d23044f8fd6d86c20d99697ae` |
| 5 | `theorem` | [cyclotomic_neg_one_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-neg-one-pos--d5b52a3f588f39e6fb91d7be.md) | 44 | `result-track:d5b52a3f588f39e6fb91d7be9951815f03d4c310119a488a20a43ff3fed0c05b` |
| 6 | `theorem` | [cyclotomic_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-pos--7ba1a8579534802b82a12c07.md) | 63 | `result-track:7ba1a8579534802b82a12c0728775b157b6ebac55d967ac48b769c616d257df4` |
| 7 | `theorem` | [cyclotomic_pos_and_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-pos-and-nonneg--4d708afe4734fe8c2a68685f.md) | 107 | `result-track:4d708afe4734fe8c2a68685f321530954a6cd741f85c399dabd62a2216b1b75b` |
| 8 | `theorem` | [cyclotomic_pos'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-pos--56bcf700930051af3a18eaef.md) | 121 | `result-track:56bcf700930051af3a18eaef31273381691d116c3fce245ce2c8f8973d715840` |
| 9 | `theorem` | [cyclotomic_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-nonneg--484752af69d636e461de67c4.md) | 127 | `result-track:484752af69d636e461de67c4bdb5a734038fef4feafc11d8cb4164b9a6d58ee6` |
| 10 | `theorem` | [eval_one_cyclotomic_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/eval-one-cyclotomic-not-prime-pow--c774638a6d5e59f65c5aa514.md) | 132 | `result-track:c774638a6d5e59f65c5aa514420ed8882f9e5468fa3ab155120c26c7e1fc4efc` |
| 11 | `theorem` | [sub_one_pow_totient_lt_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/sub-one-pow-totient-lt-cyclotomic-eval--b5296867457ab228263b44d8.md) | 166 | `result-track:b5296867457ab228263b44d874c9cddf288428543e8d6534baa72dea317443a1` |
| 12 | `theorem` | [sub_one_pow_totient_le_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/sub-one-pow-totient-le-cyclotomic-eval--6d3c254a53215ed2d71feac2.md) | 213 | `result-track:6d3c254a53215ed2d71feac2861a57581319531a82def5357ccdb0f16ff017e3` |
| 13 | `theorem` | [cyclotomic_eval_lt_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-eval-lt-add-one-pow-totient--8fe46d675d3f8dc2ad08d3f1.md) | 219 | `result-track:8fe46d675d3f8dc2ad08d3f1c33fca373fd462e6438c1f67a942fbc70d05cebc` |
| 14 | `theorem` | [cyclotomic_eval_le_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/cyclotomic-eval-le-add-one-pow-totient--d080bcf8f655207cf2e30953.md) | 282 | `result-track:d080bcf8f655207cf2e30953ea9bbc6deebfa03903f839d62b4f6fe9404f9e1d` |
| 15 | `theorem` | [sub_one_pow_totient_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/sub-one-pow-totient-lt-natabs-cyclotomic-eval--63af66317c23fd0ca6b28807.md) | 289 | `result-track:63af66317c23fd0ca6b2880789debbf564e0b3bc40e324c0b23d623cfee5ddab` |
| 16 | `theorem` | [sub_one_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/declarations/sub-one-lt-natabs-cyclotomic-eval--c84586262b62fbc25937380a.md) | 300 | `result-track:c84586262b62fbc25937380a5829d75dfe8fe6ed9e690eae4f09bf4a169d611a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
