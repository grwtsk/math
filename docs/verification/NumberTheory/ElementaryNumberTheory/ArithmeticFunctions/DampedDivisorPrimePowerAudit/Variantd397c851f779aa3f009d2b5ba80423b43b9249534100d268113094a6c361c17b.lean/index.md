# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePowerAudit.Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dd62d544840a30cf1cf13331810ba7f56022433",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dd62d544840a30cf1cf13331810ba7f56022433`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient--59499e1c325877918b40f000.md) | 21 | `declaration-track:59499e1c325877918b40f000089656d06ff61ef02375ee7c41b569a7f77b5754` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/damping--71b32776fe9c713b60cf26bc.md) | 24 | `declaration-track:71b32776fe9c713b60cf26bcd943a738f7799d3e0e0d38651986848cd862afb8` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/damping-multiplicative--0b3957d9556de8b72cdab146.md) | 27 | `result-track:0b3957d9556de8b72cdab1462f7b82a30f210a3ece32cafa8d61a55e3f71257f` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/divisorfunction--7aac00ce778a9629642af03c.md) | 38 | `declaration-track:7aac00ce778a9629642af03c76d3eb02b1b2f8cf288a27fdd67604bd108714a2` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/divisorfunction-apply--93944db644967ed8243cf1f5.md) | 41 | `result-track:93944db644967ed8243cf1f57dff6e6ca42817b3fdc87fa3be1ac3ae69a7a153` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/divisorfunction-multiplicative--0cc5e3254c3ac139f67457bf.md) | 51 | `result-track:0cc5e3254c3ac139f67457bf580f9eafa78e158a9cd1471e8fb38e394950e753` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/divisorfunction-prime-pow--0c7f758a99f57ff8e6979480.md) | 55 | `result-track:0c7f758a99f57ff8e6979480090dc675bbe17d1d72520b65c35ba2c5f724c309` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--8dd377a976bbc5e5f07d86c7.md) | 73 | `result-track:8dd377a976bbc5e5f07d86c7be9fa62dd6fb677e18ed27ecd56669768423f085` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-nonneg--43cdfe26ea4f49f3fd122725.md) | 87 | `result-track:43cdfe26ea4f49f3fd1227251b73b9a9dd8275e7ae25a59e76ebad9c11a2025c` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-le-one--caa1c9568d45e9dd9a8ede49.md) | 99 | `result-track:caa1c9568d45e9dd9a8ede498235e1eb1392253c136fac47c9f5989a48a05bdb` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-zero--cbac314f64dfa391638f9421.md) | 111 | `result-track:cbac314f64dfa391638f9421e8d05202b3f55c59167b40640be0b5cbebe1e1a6` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--76aecb903f581da068c2ad86.md) | 121 | `result-track:76aecb903f581da068c2ad86306e16b4481e9cbe74dc5f4a1afde410bfe31e2b` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-prime-pow--ccce659873b9a59abf6bd950.md) | 137 | `result-track:ccce659873b9a59abf6bd950eb38203f9a7c970cffded4f3781d8199e92aa047` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--74cb1e25e3c0dffd5304967c.md) | 144 | `result-track:74cb1e25e3c0dffd5304967c82b0b36745980a75b8863c5b882f7bebea54b57e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
