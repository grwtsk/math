# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorPrimePowerAudit.Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ce6d7eaea5ceb2900d17a02fa0d1d2296c6179",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ce6d7eaea5ceb2900d17a02fa0d1d2296c6179`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient--c11e55ae66bc229b582f90ec.md) | 13 | `declaration-track:c11e55ae66bc229b582f90ec81bfe229f5179acde8d82c00a382b4b26603fcd9` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/damping--42b7d3c9193225d95733f15f.md) | 16 | `declaration-track:42b7d3c9193225d95733f15f32d968a43dc65f6f265bb7259b75a088ec5447e2` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/damping-multiplicative--f8081e104c6edc3686f1817d.md) | 19 | `result-track:f8081e104c6edc3686f1817dae27e45ff1a9c02f74ac4ab6a95ae32b703dc1bd` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/divisorfunction--7db4d88f545f7c7bbb1a4e3b.md) | 30 | `declaration-track:7db4d88f545f7c7bbb1a4e3bbf898f181ff279e50a0e44374a2ea697d3afdf86` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/divisorfunction-apply--ef7b139ca44c9c3c55507a30.md) | 33 | `result-track:ef7b139ca44c9c3c55507a307491755a84a5364af3cafe8cc7d368d709deaa24` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/divisorfunction-multiplicative--1beea004a6b5a19fa22da421.md) | 43 | `result-track:1beea004a6b5a19fa22da4218a69d50f93fcd3957e08cb333cb5bb0c226012ab` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/divisorfunction-prime-pow--329545acf4676dd00913cf60.md) | 47 | `result-track:329545acf4676dd00913cf60f8680b841e46407d81b78ae211183a86a0bea179` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--705e26e408098882aad292c7.md) | 65 | `result-track:705e26e408098882aad292c7ce5c7145de7b7d11b69bb547fae9792d42f9becf` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-nonneg--54df5181c087cb6d8922673c.md) | 79 | `result-track:54df5181c087cb6d8922673c226f848768b0ef5057c1370ac49c90b6dfbb6ee6` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-le-one--8e259c1c2c8a3797cf6036ef.md) | 91 | `result-track:8e259c1c2c8a3797cf6036efd92bac6f69d940d98b46a15ad95f1ceafe868932` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-zero--b29b5b21c76fd476827c385c.md) | 103 | `result-track:b29b5b21c76fd476827c385ce34dedef6656f2c58f1e99a74b32957adde4b09b` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--43caed17af8902834162b970.md) | 113 | `result-track:43caed17af8902834162b970830c8d20b27feb6a8293830201be3caefb665036` |
| 13 | `theorem` | [dampedDivisorCoefficient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-prime-pow--7675c46beed2ed8bd0f05184.md) | 129 | `result-track:7675c46beed2ed8bd0f051844efe1930449c472d6c11b46ec6f167d1f52fcdd0` |
| 14 | `theorem` | [dampedDivisorCoefficient_le_sq_of_not_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/declarations/dampeddivisorcoefficient-le-sq-of-not-prime-pow--d3bb815389adf0a8e517d4d0.md) | 136 | `result-track:d3bb815389adf0a8e517d4d0cb8f7098d3ebfe63bbe9897220376be8b862e5a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
