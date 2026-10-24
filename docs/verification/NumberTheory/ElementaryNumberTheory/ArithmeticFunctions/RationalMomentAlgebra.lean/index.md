# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebe85ff763305a6830ddb4aed4aacf228f54246e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebe85ff763305a6830ddb4aed4aacf228f54246e`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.End` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Moment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/moment--3118076e76092c861d5983ad.md) | 28 | `declaration-track:3118076e76092c861d5983ad3e0ae1d7d5d4c8d00437bf2baa55e18f595fa252` |
| 2 | `def` | [coefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/coefficient--bcda1a0134a42546b2ed799c.md) | 31 | `declaration-track:bcda1a0134a42546b2ed799c37f218e7669f3effce55d8b74d07982d4a49d345` |
| 3 | `theorem` | [coefficient_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/coefficient-apply--b66e47d0825d434ccb584c5e.md) | 37 | `result-track:b66e47d0825d434ccb584c5e0b1a486c832df15fa149c884d246f74c16f539b1` |
| 4 | `theorem` | [coefficient_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/coefficient-mul--54914f893bac41f4b159969b.md) | 42 | `result-track:54914f893bac41f4b159969b35fa1661aa97439f373571ffc3676d9b14cb2765` |
| 5 | `def` | [zetaMoment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/zetamoment--0799b3648493865b1972ded6.md) | 48 | `declaration-track:0799b3648493865b1972ded6652711638c8d61d08504757020eb5f7418d2d346` |
| 6 | `def` | [mobiusMoment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/mobiusmoment--74fc33558355942a9159310d.md) | 52 | `declaration-track:74fc33558355942a9159310dee9e390a819554977bbbb6cafa29ca388f2d019a` |
| 7 | `theorem` | [mobiusMoment_mul_zetaMoment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/mobiusmoment-mul-zetamoment--4cf20ac8b496bbe6776fd423.md) | 57 | `result-track:4cf20ac8b496bbe6776fd4231dddb05c11bfd5fcf8ddecfb725e52b283de4f41` |
| 8 | `theorem` | [zetaMoment_mul_mobiusMoment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/zetamoment-mul-mobiusmoment--5686643274953180974aa206.md) | 64 | `result-track:5686643274953180974aa206aa9c3912750e9aef9308e1c340426f65e540c68e` |
| 9 | `structure` | [Representation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/representation--a2ecbaf64c87cc75d497d4e6.md) | 68 | `declaration-track:a2ecbaf64c87cc75d497d4e6377dfb4b6dd4dd2f3717e936d14365dcde7555a2` |
| 10 | `def` | [zetaOperator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/zetaoperator--e795639a7d437e81c6b5c208.md) | 76 | `declaration-track:e795639a7d437e81c6b5c208c91331084b0d8d2499a4916129224e38e854d1ef` |
| 11 | `def` | [mobiusOperator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/mobiusoperator--1877587924bbc27b43f0b341.md) | 80 | `declaration-track:1877587924bbc27b43f0b341e8657968115a3a22749624988e3c66ba83904d7f` |
| 12 | `theorem` | [mobiusOperator_mul_zetaOperator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/mobiusoperator-mul-zetaoperator--31d5133df44994d07e39dd2d.md) | 84 | `result-track:31d5133df44994d07e39dd2d0ad3bca4c13c07513fa20886ebbf156290c1914e` |
| 13 | `theorem` | [zetaOperator_mul_mobiusOperator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/zetaoperator-mul-mobiusoperator--d970563c44d04afaabaae278.md) | 95 | `result-track:d970563c44d04afaabaae2786b881ab493f6e6f12c6e2861bc548092ff69cf69` |
| 14 | `theorem` | [mobius_zeta_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/mobius-zeta-apply--893b0109d21d05eab688a94e.md) | 106 | `result-track:893b0109d21d05eab688a94e4d886f7692d3fd7ae8c49b400d1eeed0f68b43d1` |
| 15 | `theorem` | [zeta_mobius_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/declarations/zeta-mobius-apply--f2ec4e550895aab04f959799.md) | 113 | `result-track:f2ec4e550895aab04f959799c5b0d56bbdc3406d18d3f88c38a9b2672a51209b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
