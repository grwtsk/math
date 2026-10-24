# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RootsExtrema.Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "724dd1124087dcbceb37803144d7e849716a8ef5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `724dd1124087dcbceb37803144d7e849716a8ef5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arcosh` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Chebyshev.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Niven` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_T_real_mem_Icc](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/eval-t-real-mem-icc--7ec78fefbbb25b9009031ccd.md) | 41 | `result-track:7ec78fefbbb25b9009031ccd60f89ec304daf03040015322ce21bac640233587` |
| 2 | `theorem` | [abs_eval_T_real_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/abs-eval-t-real-le-one--726e1ec05ebd1cd074b04844.md) | 46 | `result-track:726e1ec05ebd1cd074b04844075da95bfeaf5a7a0457855af136ff1e54ed5115` |
| 3 | `theorem` | [one_le_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-le-eval-t-real--9807fdf2e6459c906c7c6e61.md) | 57 | `result-track:9807fdf2e6459c906c7c6e61920d88d5211d5bffd7a7815ec259b9765f666ba4` |
| 4 | `theorem` | [one_lt_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-lt-eval-t-real--b335c5cadf9131bd86ad4432.md) | 61 | `result-track:b335c5cadf9131bd86ad4432329f790d6ce534da6b141ff928711b5ff7a0e9a7` |
| 5 | `theorem` | [one_le_negOnePow_mul_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-le-negonepow-mul-eval-t-real--2cc44a289fb541902c2c3c6f.md) | 67 | `result-track:2cc44a289fb541902c2c3c6f3754bf4a9c2ac75ced70b287d79d977bfa5a3a3f` |
| 6 | `theorem` | [one_lt_negOnePow_mul_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-lt-negonepow-mul-eval-t-real--1e8c6a1088d084bf6faca1f9.md) | 74 | `result-track:1e8c6a1088d084bf6faca1f956c7848c31db95fd8d6b119bf8c387796d6c0d11` |
| 7 | `theorem` | [one_le_abs_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-le-abs-eval-t-real--f3740019a5b23b43a6c19171.md) | 81 | `result-track:f3740019a5b23b43a6c1917150d4e2165ebfc39249de8ba68ab3d5cc30aebdda` |
| 8 | `theorem` | [one_lt_abs_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/one-lt-abs-eval-t-real--947a9e18f21070463fb192ce.md) | 87 | `result-track:947a9e18f21070463fb192ceccf25438e1f423daa767bb2926971cb476678472` |
| 9 | `theorem` | [abs_eval_T_real_le_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/abs-eval-t-real-le-one-iff--fbe8fdff0e39ac31dd30c2a0.md) | 93 | `result-track:fbe8fdff0e39ac31dd30c2a0fe35658cbe0cd30ba837293e8c26e7e989529952` |
| 10 | `theorem` | [abs_eval_T_real_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/abs-eval-t-real-eq-one-iff--80d375f2c026cd4125c9ee36.md) | 97 | `result-track:80d375f2c026cd4125c9ee36f0daabbaf184bc67c388daa8b80181f822064e8f` |
| 11 | `theorem` | [eval_T_real_cos_int_mul_pi_div](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/eval-t-real-cos-int-mul-pi-div--2005fdcd81f20b7170def3a4.md) | 119 | `result-track:2005fdcd81f20b7170def3a43b564820cafdf41974740883963af47e8206e3ca` |
| 12 | `theorem` | [eval_T_real_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/eval-t-real-eq-one-iff--45d6322b1fb5ec64d89e319e.md) | 125 | `result-track:45d6322b1fb5ec64d89e319e74483ce636ecf08b4399cf86f3f4edd356b85dfe` |
| 13 | `theorem` | [eval_T_real_eq_neg_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/eval-t-real-eq-neg-one-iff--0ee9cee574aec0556cc0cd3b.md) | 139 | `result-track:0ee9cee574aec0556cc0cd3bbaca0b1edc60a1382eab74d0683fecc53a150fa8` |
| 14 | `theorem` | [roots_T_real_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/roots-t-real-nodup--36d31d239a54ff24687789c8.md) | 153 | `result-track:36d31d239a54ff24687789c8715da761a8519de5b86e7fd1d8985ad11361c115` |
| 15 | `theorem` | [roots_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/roots-t-real--40c27f858b3a178ac5834807.md) | 163 | `result-track:40c27f858b3a178ac583480749931f22a14a8bf1da5b1be0bdbcdc82e2a13569` |
| 16 | `theorem` | [rootMultiplicity_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/rootmultiplicity-t-real--4c9de0e2578d4a0fa8c12677.md) | 177 | `result-track:4c9de0e2578d4a0fa8c12677c49f5ce889905a73e5bfc9f04d993546a2887957` |
| 17 | `theorem` | [roots_U_real_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/roots-u-real-nodup--e0844b4800e6a1ef21062f79.md) | 182 | `result-track:e0844b4800e6a1ef21062f79c2c32b018ebbd36b9aa5ff9b2f1d2e903eae7368` |
| 18 | `theorem` | [roots_U_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/roots-u-real--924d4dd2178656d8c2a7bc6e.md) | 194 | `result-track:924d4dd2178656d8c2a7bc6e88c225de1a533dcf4425ea9d54629e2ff010a052` |
| 19 | `theorem` | [rootMultiplicity_U_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/rootmultiplicity-u-real--e9bc4a6a80d243d65f6d1519.md) | 214 | `result-track:e9bc4a6a80d243d65f6d15196ad16bd607dfab9800540b37fcce5f51452030b9` |
| 20 | `theorem` | [isLocalMax_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/islocalmax-t-real--5487cc3a37f62877903e9e12.md) | 219 | `result-track:5487cc3a37f62877903e9e125b3f4642b767c945af0e22af6f846d8472f40848` |
| 21 | `theorem` | [isLocalMin_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/islocalmin-t-real--99336323d0e65d642608561c.md) | 235 | `result-track:99336323d0e65d642608561c4874f1a991d3c3c53d96aff870f59edab68ebeaf` |
| 22 | `theorem` | [isLocalExtr_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/islocalextr-t-real--70297f27fe0b78fee36953f7.md) | 252 | `result-track:70297f27fe0b78fee36953f7a7a2572bcc2a36149076fb4fc9976f6351b18996` |
| 23 | `theorem` | [isLocalExtr_T_real_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/islocalextr-t-real-iff--950cc703e2ea0e496b798bf0.md) | 258 | `result-track:950cc703e2ea0e496b798bf0c2bbf97a067bb22af9c353e6c42fc2d11ab2fc37` |
| 24 | `theorem` | [isMaxOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/ismaxon-t-real--de8d213993cbe66689df08f2.md) | 279 | `result-track:de8d213993cbe66689df08f258c8b7091f5bd0fbcacede0303e3c1ddc7737024` |
| 25 | `theorem` | [isMinOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/isminon-t-real--5cd400ce451a78beb163477d.md) | 284 | `result-track:5cd400ce451a78beb163477d2caeeede1de8201d3f7700be150f4e64ab434283` |
| 26 | `theorem` | [isExtrOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/isextron-t-real--97ac5cb21f5556a9d35224ae.md) | 290 | `result-track:97ac5cb21f5556a9d35224aecd8c1b487ade3ff572fca6787f5f031a68fa960e` |
| 27 | `theorem` | [isExtrOn_T_real_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/isextron-t-real-iff--abff96cd6c80666ed4cef793.md) | 296 | `result-track:abff96cd6c80666ed4cef7932eb578b2d3e679e973443bd91ef992efa9b9f698` |
| 28 | `theorem` | [irrational_of_isRoot_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/irrational-of-isroot-t-real--21a901df73c2e719be7458be.md) | 315 | `result-track:21a901df73c2e719be7458be41f256fc151bcfdad5c4d294d3b337628a3548fb` |
| 29 | `theorem` | [abs_iterate_derivative_T_real_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/declarations/abs-iterate-derivative-t-real-le--3362ace225125669f2f9b23f.md) | 332 | `result-track:3362ace225125669f2f9b23f280c1cf5b78b2244326b48d7bb5b79113f945d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
