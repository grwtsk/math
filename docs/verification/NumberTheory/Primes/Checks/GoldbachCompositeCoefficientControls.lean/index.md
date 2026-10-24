# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachCompositeCoefficientControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0b36b8203dea86f5185b5e7f902722d91e0ce1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0b36b8203dea86f5185b5e7f902722d91e0ce1`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail`](../../../../../mathematics/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ramanujan_six_ten_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/ramanujan-six-ten-control--b4934aeb09e84486ad6d4d6c.md) | 37 | `result-track:b4934aeb09e84486ad6d4d6c2547de63ca8b9c912e7e2bc94f8620c05d0811b1` |
| 2 | `theorem` | [ramanujan_six_eighteen_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/ramanujan-six-eighteen-control--5f939903b34ae7722ba6418e.md) | 50 | `result-track:5f939903b34ae7722ba6418e586fc9efc7b0bc8b92a5db76735a9a2420a492e6` |
| 3 | `theorem` | [coefficient_four_zero_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/coefficient-four-zero-control--5b996dfbb359b159a9623dd8.md) | 63 | `result-track:5b996dfbb359b159a9623dd84cf1e22e334f274b927167bc83cd7f91c2292cb0` |
| 4 | `theorem` | [coefficient_six_multiplicative_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/coefficient-six-multiplicative-control--b5d5702c6a56d961e321ec2a.md) | 71 | `result-track:b5d5702c6a56d961e321ec2ae9533856e8bb4cd6bc090a16ffd5854872230f15` |
| 5 | `theorem` | [coefficient_six_ten_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/coefficient-six-ten-control--ba224a6e8199d9b62842a93f.md) | 81 | `result-track:ba224a6e8199d9b62842a93f58fb91423a38f8d59c57e8b03de758011c3746f0` |
| 6 | `theorem` | [coefficient_six_eighteen_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/coefficient-six-eighteen-control--f3f4bbdfdc29fae6d986d832.md) | 90 | `result-track:f3f4bbdfdc29fae6d986d83214613c788d3521730662b3c35efd946075a70f2a` |
| 7 | `theorem` | [primorial_three_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/primorial-three-control--7ede594be311ef14ad3a832f.md) | 105 | `result-track:7ede594be311ef14ad3a832fea6e5bbd8a29b03641b5358a99723964240a0998` |
| 8 | `theorem` | [primorial_tail_three_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/primorial-tail-three-control--9bef85f83497f804284bdf8d.md) | 110 | `result-track:9bef85f83497f804284bdf8da5dc7eb82230b8a0b8991bbdb5a4895087f26f01` |
| 9 | `theorem` | [euler_range_tail_ten_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/euler-range-tail-ten-control--a344cfbdf4d347f2711cdb48.md) | 115 | `result-track:a344cfbdf4d347f2711cdb4829030800871e9c9d4beec5ea3a65b4f637eca2c5` |
| 10 | `theorem` | [coefficient_tail_three_ten_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/coefficient-tail-three-ten-control--f4089ad33e68ccef7f962348.md) | 125 | `result-track:f4089ad33e68ccef7f96234821fa7586fec6b5f7c6aa1d25ed9d5d359080caf8` |
| 11 | `theorem` | [euler_value_three_ten_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/euler-value-three-ten-control--8e517e6793abfc0a3bf2ccd2.md) | 134 | `result-track:8e517e6793abfc0a3bf2ccd24188bc31fd7ed5ac862c94ea65c14d593b44d334` |
| 12 | `theorem` | [tail_norm_nonnegative_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/tail-norm-nonnegative-control--10d0dcb6e28fa4b513bd96ee.md) | 155 | `result-track:10d0dcb6e28fa4b513bd96eee3ffa47a7779b5d0a93c58fb050974fd248823f6` |
| 13 | `theorem` | [fejer_euler_tail_comparison_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/fejer-euler-tail-comparison-control--7072658e9fe8942fa6e839c5.md) | 161 | `result-track:7072658e9fe8942fa6e839c5b1045432a34ed5b323a712a965e38b41fb96940d` |
| 14 | `theorem` | [finite_tail_not_automatic_margin_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/finite-tail-not-automatic-margin-control--bc7c294170521f4885636958.md) | 172 | `result-track:bc7c294170521f488563695851853eec440bb88537037b71436eb638163aab66` |
| 15 | `theorem` | [composite_coefficients_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/composite-coefficients-not-goldbach-witness--90e5a777fd488fed27ba1dbf.md) | 196 | `result-track:90e5a777fd488fed27ba1dbfe27dbf3b25b46d28fa667e532f1a2356375cfb2b` |
| 16 | `theorem` | [strict_euler_tail_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachCompositeCoefficientControls.lean/declarations/strict-euler-tail-margin-rejected--3865d2a7465902210e0c80c9.md) | 208 | `result-track:3865d2a7465902210e0c80c900cbf212d25b8d5bdc5912b5dd3b75ce8da62d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
