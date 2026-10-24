# Verification target: GRWTSK.NumberTheory.Moebius.PrimeFactorFilters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93f40c8579ed255545301f8961f6e29a2d12cb4a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93f40c8579ed255545301f8961f6e29a2d12cb4a`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimeFactorFilters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimeFactorFilters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/causalshift--070377a4070cea504a8b0b0f.md) | 16 | `declaration-track:070377a4070cea504a8b0b0fd7f6f62a919903de1ca7868cbf211ecd5bbbe5c6` |
| 2 | `def` | [baseNote](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/basenote--392c60ce32a7798a04293ebf.md) | 19 | `declaration-track:392c60ce32a7798a04293ebf93e7638f81952e4b5a6e25cee820b9eb281add7d` |
| 3 | `def` | [primeNoteFilter](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/primenotefilter--652c08cc07108690ed697985.md) | 21 | `declaration-track:652c08cc07108690ed6979852e95853c96a983860f1cc5807bb8ee434c30473c` |
| 4 | `theorem` | [causalShift_add](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/causalshift-add--bdc4e376a56a3686ec1f0fd9.md) | 24 | `result-track:bdc4e376a56a3686ec1f0fd976f1c325d5f5868a86c8a6bd7b8f83754caf3440` |
| 5 | `theorem` | [pickupResponse_eq_causal_note](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/pickupresponse-eq-causal-note--17b098b22870511d78327293.md) | 34 | `result-track:17b098b22870511d78327293b63ad24bab0170c26be44dfebc9079028ea65776` |
| 6 | `theorem` | [pickupResponse_mul](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/pickupresponse-mul--e1f7006838bd747d326cc9b7.md) | 53 | `result-track:e1f7006838bd747d326cc9b7a4623267fcc2f4a6f3f0e183113d9d845e5d53ae` |
| 7 | `def` | [primeNoteCascade](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/primenotecascade--5aaaba9050b60c645605a6a2.md) | 70 | `declaration-track:5aaaba9050b60c645605a6a2a03e5a9ca0fa99c57221f6ed084ba369211cbd9b` |
| 8 | `theorem` | [prime_product_pos](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/prime-product-pos--abd9561758b47a3dfe18be65.md) | 73 | `result-track:abd9561758b47a3dfe18be653b1588bfe0b54270e6d2c2897f77c5943ce6e23a` |
| 9 | `theorem` | [prime_product_squarefree](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/prime-product-squarefree--761eb4375ea7057969e5b10d.md) | 77 | `result-track:761eb4375ea7057969e5b10d1dba205ec6de08c37be90fc59754df4b31b66a50` |
| 10 | `theorem` | [primeNoteCascade_empty](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/primenotecascade-empty--d11c36a10b595e0696e460f4.md) | 89 | `result-track:d11c36a10b595e0696e460f4ca4ffe1045e42bfd1cb235ade4247cf52fe46c87` |
| 11 | `theorem` | [primeNoteCascade_insert](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/primenotecascade-insert--da19305adb6c4eddd3545997.md) | 94 | `result-track:da19305adb6c4eddd354599703f08cf4cb5e54a9ac001f2f234bfdaab955f482` |
| 12 | `def` | [pickupPrimes](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/pickupprimes--9bcaf8d3fc1f7468fa0fc665.md) | 126 | `declaration-track:9bcaf8d3fc1f7468fa0fc665089114e2f1de55f203bc1b2ac68f19e5a7430c79` |
| 13 | `theorem` | [pickup_eq_prime_note_cascade](../../../../mathematics/NumberTheory/Moebius/PrimeFactorFilters.lean/declarations/pickup-eq-prime-note-cascade--83e1a27a71d6b89e09315c74.md) | 129 | `result-track:83e1a27a71d6b89e09315c74e37ccd3c0b39d4efca3e398809f91482d60fdfe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
