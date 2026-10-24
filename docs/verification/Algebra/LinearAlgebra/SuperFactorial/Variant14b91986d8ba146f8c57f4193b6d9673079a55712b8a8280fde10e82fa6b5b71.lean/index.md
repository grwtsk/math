# Verification target: GRWTSK.Algebra.LinearAlgebra.SuperFactorial.Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "483a5019a24f8a8e050476add10bd475ed42c2d5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `483a5019a24f8a8e050476add10bd475ed42c2d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial--d7b6c6279a3140dbc76ab07c.md) | 35 | `declaration-track:d7b6c6279a3140dbc76ab07c4af53d316cf95e09be6f99ac2adae15a00c94021` |
| 2 | `theorem` | [superFactorial_zero](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-zero--0269a8842bdb4242aaff5ab9.md) | 45 | `result-track:0269a8842bdb4242aaff5ab94eb74f1bcf2e6958ee58f9bc2d2a542f7bfa5ea6` |
| 3 | `theorem` | [superFactorial_succ](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-succ--c1ec268473eaeb12b57e9599.md) | 48 | `result-track:c1ec268473eaeb12b57e9599034bbef6c4670671cefa6d23b8cdb865f76c527b` |
| 4 | `theorem` | [superFactorial_one](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-one--83c1ad78ad821fef650afbed.md) | 52 | `result-track:83c1ad78ad821fef650afbed096e8d489dd2b30387c83fdab5b86f6623df7103` |
| 5 | `theorem` | [superFactorial_two](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-two--974bf1034507e4039500fd8e.md) | 56 | `result-track:974bf1034507e4039500fd8e1c9c2e9e66d2eb1f0e18a445c36ecff2188791b2` |
| 6 | `theorem` | [prod_Icc_factorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/prod-icc-factorial--ca9a803c3bf3c5140190457b.md) | 62 | `result-track:ca9a803c3bf3c5140190457bf95ae169d6b3bceb60100fef6cc7ecf34482d018` |
| 7 | `theorem` | [prod_range_factorial_succ](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/prod-range-factorial-succ--baff735a6897612b9247ffa4.md) | 69 | `result-track:baff735a6897612b9247ffa48f77933b39ad41928a297e2ca20cee64ccc52b24` |
| 8 | `theorem` | [prod_range_succ_factorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/prod-range-succ-factorial--0917c2d592737d0221281d11.md) | 73 | `result-track:0917c2d592737d0221281d118ad9a3523a6cd4ce44dec16206e57ee999a2b48b` |
| 9 | `theorem` | [det_vandermonde_id_eq_superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/det-vandermonde-id-eq-superfactorial--06d27c06859225a537d24c18.md) | 80 | `result-track:06d27c06859225a537d24c1880ac03c658d26a8c3248003c89c40f726d609232` |
| 10 | `theorem` | [superFactorial_two_mul](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-two-mul--dcf87b3b5b02155ad9323042.md) | 93 | `result-track:dcf87b3b5b02155ad93230429c0bc4dbb228b4f258823e27dd3b3226a330ee04` |
| 11 | `theorem` | [superFactorial_four_mul](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-four-mul--fd7a6d2bea0b604eadc99c26.md) | 101 | `result-track:fd7a6d2bea0b604eadc99c261e102a017613dcf817b6dd578fc9a862edb87985` |
| 12 | `theorem` | [matrixOf_eval_descPochhammer_eq_mul_matrixOf_choose](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/matrixof-eval-descpochhammer-eq-mul-matrixof-choose--a934f61acf22a8b979ef3bae.md) | 109 | `result-track:a934f61acf22a8b979ef3bae9dfec6f8f2440372ebea1bdf44acfa33dc920544` |
| 13 | `theorem` | [superFactorial_dvd_vandermonde_det](../../../../../mathematics/Algebra/LinearAlgebra/SuperFactorial/Variant14b91986d8ba146f8c57f4193b6d9673079a55712b8a8280fde10e82fa6b5b71.lean/declarations/superfactorial-dvd-vandermonde-det--2795848d693d8cd956883c9e.md) | 119 | `result-track:2795848d693d8cd956883c9e83b19d9632ab6e3e2abc6baff6ffa5579c722cf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
