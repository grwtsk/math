# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Eval.Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13505da3e5de3e183a738cb712039a59e61e0e84",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13505da3e5de3e183a738cb712039a59e61e0e84`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Arg` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/eval-one-cyclotomic-prime--ba48aafe84461c41e2ee7db7.md) | 31 | `result-track:ba48aafe84461c41e2ee7db7c279ac881f9a12416e17f07c22bead2e6e6ca1d9` |
| 2 | `theorem` | [eval₂_one_cyclotomic_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/eval-one-cyclotomic-prime--4344d53df752514886e555af.md) | 38 | `result-track:4344d53df752514886e555af06b9b6300cad0f707c113322ebb3f0749ca94bce` |
| 3 | `theorem` | [eval_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/eval-one-cyclotomic-prime-pow--9500eaa410b7d6cb956454a7.md) | 43 | `result-track:9500eaa410b7d6cb956454a7f2147d1ee62d5ec1817b66fc72f2780b0fee899f` |
| 4 | `theorem` | [eval₂_one_cyclotomic_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/eval-one-cyclotomic-prime-pow--a5b5e56aa314fe47d8704042.md) | 50 | `result-track:a5b5e56aa314fe47d870404214ec1a64b173f69abf5bab49e444f02de28d2ce3` |
| 5 | `theorem` | [cyclotomic_neg_one_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-neg-one-pos--022e49e557384e7477d83bc5.md) | 54 | `result-track:022e49e557384e7477d83bc5601b77dbebecfc5c41aa8d223ac5ce8473779913` |
| 6 | `theorem` | [cyclotomic_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-pos--dc8197661f80f40990cde783.md) | 72 | `result-track:dc8197661f80f40990cde78326c91b4c8af2df92bb4d0d3d550bae5b36fc643c` |
| 7 | `theorem` | [cyclotomic_pos_and_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-pos-and-nonneg--89add583e1830ed398575e83.md) | 116 | `result-track:89add583e1830ed398575e8396c69858e05251e502e7459833a7ea77421a9306` |
| 8 | `theorem` | [cyclotomic_pos'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-pos--e9b5bfdf89506b4d52bd5fed.md) | 130 | `result-track:e9b5bfdf89506b4d52bd5fed1d257320a39500f6fbf67d6e9e9af987757d1447` |
| 9 | `theorem` | [cyclotomic_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-nonneg--0c871d53c51743d6cee1955a.md) | 136 | `result-track:0c871d53c51743d6cee1955a92cc0d4060c7536f5a03583c5e213a74cb5b4a81` |
| 10 | `theorem` | [eval_one_cyclotomic_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/eval-one-cyclotomic-not-prime-pow--53d5dee0662a0776e2c10a6e.md) | 141 | `result-track:53d5dee0662a0776e2c10a6e471e2671c956922333e8fd4978c5e7bc24925c38` |
| 11 | `theorem` | [sub_one_pow_totient_lt_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/sub-one-pow-totient-lt-cyclotomic-eval--c7249ba1949c88a158e9e8bc.md) | 175 | `result-track:c7249ba1949c88a158e9e8bc32018f93adcd696909beecccfa4e253c9154668a` |
| 12 | `theorem` | [sub_one_pow_totient_le_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/sub-one-pow-totient-le-cyclotomic-eval--32e729a09c2837d5cd40e70d.md) | 225 | `result-track:32e729a09c2837d5cd40e70d5fcd11d7284040d7f7eabf95429baa64abc1e760` |
| 13 | `theorem` | [cyclotomic_eval_lt_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-eval-lt-add-one-pow-totient--e0d6d19d4121ee53e43dff16.md) | 232 | `result-track:e0d6d19d4121ee53e43dff1614ecceb6fcb642cb72dc6a3183093e68569ce2d8` |
| 14 | `theorem` | [cyclotomic_eval_le_add_one_pow_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/cyclotomic-eval-le-add-one-pow-totient--509cc4602cbe5f50d652a95f.md) | 299 | `result-track:509cc4602cbe5f50d652a95f06eabf0b75bb646718931900f1de9933f104063b` |
| 15 | `theorem` | [sub_one_pow_totient_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/sub-one-pow-totient-lt-natabs-cyclotomic-eval--6f6c8eb90e7f9d1b7af531b1.md) | 307 | `result-track:6f6c8eb90e7f9d1b7af531b1709fc2a39b5a8bbf7169bf75bc964edcd6040b4a` |
| 16 | `theorem` | [sub_one_lt_natAbs_cyclotomic_eval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/declarations/sub-one-lt-natabs-cyclotomic-eval--a46285a2bbe3396866fe5cb5.md) | 319 | `result-track:a46285a2bbe3396866fe5cb5bf8634f2446169b53576eea187c90253d033293f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
