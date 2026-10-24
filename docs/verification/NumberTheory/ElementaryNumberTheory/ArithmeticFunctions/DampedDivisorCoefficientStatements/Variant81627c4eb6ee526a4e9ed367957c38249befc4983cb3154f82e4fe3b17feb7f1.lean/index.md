# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorCoefficientStatements.Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28c1c4f01f9ad9dc9b3831cd9c4817d7df5d3603",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28c1c4f01f9ad9dc9b3831cd9c4817d7df5d3603`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient--f98f7a60aa5deb6818db89bc.md) | 20 | `declaration-track:f98f7a60aa5deb6818db89bca7a03b44e71e9295ac0fa6bba9f06cd0d838f331` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/damping--c2ac3f6ee6edea872e8c340c.md) | 23 | `declaration-track:c2ac3f6ee6edea872e8c340cc3f6fd1f66560e84881b1404461b5246422df1ad` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/damping-multiplicative--f10551a5eaaea3c9c7ae36cc.md) | 26 | `result-track:f10551a5eaaea3c9c7ae36cc98fb4a893cea9477e7bea9fcd1de4e54d70f70a6` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/divisorfunction--2d269126c13cc930e57b83ac.md) | 37 | `declaration-track:2d269126c13cc930e57b83ac9c90122578e97322ac6193943e5cea0e6f9424b6` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/divisorfunction-apply--a2a1cf3125deaaeb6ff8731b.md) | 40 | `result-track:a2a1cf3125deaaeb6ff8731bf31da77abbf0954b055f5ed1db69ea0305021453` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/divisorfunction-multiplicative--8d60c2901aab4c3ab4cd886b.md) | 50 | `result-track:8d60c2901aab4c3ab4cd886b23dc79fcf8c6d29647fe1518139c767b57fd4293` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/divisorfunction-prime-pow--b3c576340ca7d5b57706c0bd.md) | 54 | `result-track:b3c576340ca7d5b57706c0bdb3cdcfb6814b04c5aeb9c496f364575a39172dff` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--e7c733abf0cd34287b2d830b.md) | 72 | `result-track:e7c733abf0cd34287b2d830b4c1b85db80e5459707032bc9cae74d0efc0b658f` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient-nonneg--c6800fdc3352a27e89e9e609.md) | 86 | `result-track:c6800fdc3352a27e89e9e6094285fe8f7f165cc3a6a2c9fbed45bb73a9a32961` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient-le-one--d19b6fdeddb4ba65f8221167.md) | 98 | `result-track:d19b6fdeddb4ba65f82211679a8db371511e03b6b56be9502230ba3901df353f` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient-zero--1024313113d787ff977341ba.md) | 110 | `result-track:1024313113d787ff977341ba0ac78c824e00fe8f641a5a9ed549b11c6442e5fc` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--c2b3a1f6525dd596b2d8d245.md) | 120 | `result-track:c2b3a1f6525dd596b2d8d245efe135a56013b5b8e77a54cd64da62a947191f12` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--364d94c6c9b2c65b6ec6a6f9.md) | 129 | `declaration-track:364d94c6c9b2c65b6ec6a6f942cd6c8713ca1f61d95d421a123107dba87db5b0` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--210d4bb58a97b4489b5c32e5.md) | 131 | `declaration-track:210d4bb58a97b4489b5c32e5d4965841aa55f14218902936d91910372e4a8f5a` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--cbebe92f0d81416afd2f90bd.md) | 134 | `declaration-track:cbebe92f0d81416afd2f90bda0c2dfa811d9d2633f345a1765341b3875eeeea1` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--42f767c0b7fc48d478cda8c7.md) | 136 | `declaration-track:42f767c0b7fc48d478cda8c7fe0fbf438931f3595e084e120387da03331bcccc` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--e2c5e2839e21011e3b2b8211.md) | 138 | `declaration-track:e2c5e2839e21011e3b2b8211519373680c3cdc9a30a92bfb3d5746edb06d4d9c` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/declarations/example--1ac0fa353ea03b6b00926867.md) | 141 | `declaration-track:1ac0fa353ea03b6b009268672086c35a30808cf97e140741756e20a0d0626ba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
