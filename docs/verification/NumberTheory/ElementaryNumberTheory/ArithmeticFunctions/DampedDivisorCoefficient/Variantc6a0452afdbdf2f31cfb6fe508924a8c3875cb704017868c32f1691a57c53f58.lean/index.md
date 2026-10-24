# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DampedDivisorCoefficient.Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f917a8d23a619afa29ef0078b187e3b16324a840",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f917a8d23a619afa29ef0078b187e3b16324a840`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean.json)

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
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient--929b5dc167e61aed61bf58bd.md) | 20 | `declaration-track:929b5dc167e61aed61bf58bda4b3fa166ba2bd5c6d94bfe84920e84816af70d1` |
| 2 | `def` | [damping](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/damping--ace31dbd10961b049c18c43a.md) | 23 | `declaration-track:ace31dbd10961b049c18c43a06454eb977f09e24a7ba8a1695fb406a4c0307a9` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/damping-multiplicative--8c3e50724f9500336d1939e6.md) | 26 | `result-track:8c3e50724f9500336d1939e60d71ccfbd4ca24958f744430a3169caf7075ccc8` |
| 4 | `def` | [divisorFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/divisorfunction--62594755015f044f76b034f9.md) | 37 | `declaration-track:62594755015f044f76b034f9e2b5e72e4fa33c678a138b145f6e02072a2c04ca` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/divisorfunction-apply--8e5f41691f36da96ee0e9232.md) | 40 | `result-track:8e5f41691f36da96ee0e9232c325b7e014fe95a77bb5492c8987b68ad9a59291` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/divisorfunction-multiplicative--6a399a643a7359fdb2b8c98f.md) | 50 | `result-track:6a399a643a7359fdb2b8c98f98537c5d2be92cd3e980a979d147856eaa0f5c06` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/divisorfunction-prime-pow--140d5c975f9263bcb20c62f8.md) | 54 | `result-track:140d5c975f9263bcb20c62f8ffc354bd6d63b96911ffb06650e0f9a496e543eb` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod--5327d6d5260a26c52999deeb.md) | 72 | `result-track:5327d6d5260a26c52999deeb5b8fc34ce0e3c0a167f6e22734cce8896549b107` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient-nonneg--b90bf185fbab4f088cbb8647.md) | 86 | `result-track:b90bf185fbab4f088cbb86475042dbfc56ae77c17d06e7a8dd90d8edafa68bf2` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient-le-one--f5b6a9ab2b17dbb99646bc37.md) | 98 | `result-track:f5b6a9ab2b17dbb99646bc3725626685ea3d05a113056ea4cf6343977ffa8faa` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient-zero--5bb356a2ea12972115dc58a2.md) | 110 | `result-track:5bb356a2ea12972115dc58a2d8c9729253307c2f1b15281fe6568dd62fda3350` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variantc6a0452afdbdf2f31cfb6fe508924a8c3875cb704017868c32f1691a57c53f58.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff--581bf35361a150a88cfb29ea.md) | 120 | `result-track:581bf35361a150a88cfb29ea5b7797b9689b9fea83a0f013a9c11df882920ca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
