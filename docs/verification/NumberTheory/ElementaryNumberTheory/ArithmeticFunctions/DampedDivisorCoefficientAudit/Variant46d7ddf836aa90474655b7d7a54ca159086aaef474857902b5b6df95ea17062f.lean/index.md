# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorCoefficientAudit.Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad4c5434b98c37dba23395f9bb0ffdad7275268",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad4c5434b98c37dba23395f9bb0ffdad7275268`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean.json)

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
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient--83438db167762343e593e0ac.md) | 20 | `declaration-track:83438db167762343e593e0acd1ac06d8f05c1931e5a8ff575526c71316157e59` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/damping--daad6f8bff6fb91c9466766b.md) | 23 | `declaration-track:daad6f8bff6fb91c9466766b19a32339832686fe4ad3f69fdf9bf107b7ac8cf8` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/damping-multiplicative--8ac996bf670a68b5515fa244.md) | 26 | `result-track:8ac996bf670a68b5515fa2448782a997d4fd14eae5af0119d8b6f393e266d3c8` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/divisorfunction--4952971c0cd60aae17cb91ad.md) | 37 | `declaration-track:4952971c0cd60aae17cb91ad31440ef2bb7867aee275de4dde50b092ddd31a3d` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/divisorfunction-apply--3ad7a148799efb937b7554c4.md) | 40 | `result-track:3ad7a148799efb937b7554c4bd908c28837bd63f9e62c54a022a8c9833bf8b7f` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/divisorfunction-multiplicative--6e132a5c0b9506cd80f0214f.md) | 50 | `result-track:6e132a5c0b9506cd80f0214f2e3eac30f23f0bb40db0358ff7f878e160eb5a97` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/divisorfunction-prime-pow--11b2f643de0cff0af6063103.md) | 54 | `result-track:11b2f643de0cff0af60631033d9a623fd492f35d8b17f964eead41461ed80e15` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--ebecbaae8120ce0805cc8105.md) | 72 | `result-track:ebecbaae8120ce0805cc81053c8f9d10e1ffe0c87e091f3244eb701b395d00f9` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient-nonneg--83c84178c649aca2d2dd3b71.md) | 86 | `result-track:83c84178c649aca2d2dd3b71823be49cbeb39b01922554b3b7fa49d9ff2d835b` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient-le-one--11f83701747ac1feab2cb70c.md) | 98 | `result-track:11f83701747ac1feab2cb70cd33107052954bb1b23ca8c021530d1213f601c1c` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient-zero--fa7d9049a8f6afddfa0b7a75.md) | 110 | `result-track:fa7d9049a8f6afddfa0b7a7571016834f64a2041d9725f250f09c80af84008e0` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variant46d7ddf836aa90474655b7d7a54ca159086aaef474857902b5b6df95ea17062f.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--27ba34085878e508e2d13e6c.md) | 120 | `result-track:27ba34085878e508e2d13e6c08d6abeb78a6de4bb0750e6cb57061daa669d432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
