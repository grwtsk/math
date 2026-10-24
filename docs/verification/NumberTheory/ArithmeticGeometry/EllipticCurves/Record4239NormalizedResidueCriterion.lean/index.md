# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NormalizedResidueCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272ec3d79e816176fe68f37dad3f9ea2e83558c1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272ec3d79e816176fe68f37dad3f9ea2e83558c1`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteSourceLocalization`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239EulerBitComparison`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeConditionalRank`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeConditionalRank.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceReducedSquareClass](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/sourcereducedsquareclass--a0086d4ec3eeb1dc97334715.md) | 47 | `declaration-track:a0086d4ec3eeb1dc97334715bf46acc11ad1ec2f98c58c384d7a367c609402b9` |
| 2 | `def` | [sourceReducedQuadraticBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/sourcereducedquadraticbit--9c0656fc410bdc3c258db401.md) | 55 | `declaration-track:9c0656fc410bdc3c258db401bc567fdcf9e51861f3f1d12779012c28242dea64` |
| 3 | `theorem` | [sourceReducedQuadraticBit_eq_sourceQuadraticBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/sourcereducedquadraticbit-eq-sourcequadraticbit--c4b62261cac15542932b92a4.md) | 63 | `result-track:c4b62261cac15542932b92a4bae3503324bf6d0b26cd696b3d42aaf56ae1d69f` |
| 4 | `structure` | [NormalizedResidueDescentEvidence](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/normalizedresiduedescentevidence--c9061a0761b63fd63bf057bc.md) | 72 | `declaration-track:c9061a0761b63fd63bf057bc9784dbbd004e6e2ee51c23e1d08cb2068216137e` |
| 5 | `def` | [NormalizedResidueDescentEvidence.localQuadraticCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/normalizedresiduedescentevidence-localquadraticcharacter--2062e7bad0676df217be52eb.md) | 85 | `declaration-track:2062e7bad0676df217be52eb57f5d553bc55207fc3c506ee07a3e5e6c861fe58` |
| 6 | `theorem` | [NormalizedResidueDescentEvidence.localQuadraticCharacter_point](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/normalizedresiduedescentevidence-localquadraticcharacter-point--dc5079c7d8545790ba53bda8.md) | 94 | `result-track:dc5079c7d8545790ba53bda8018657ef563dcf456c1006391b7280084ae4fd18` |
| 7 | `def` | [NormalizedResidueDescentEvidence.toNativeDescentEvidence](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/normalizedresiduedescentevidence-tonativedescentevidence--4a1c2b29bb3c2c1233b800f2.md) | 110 | `declaration-track:4a1c2b29bb3c2c1233b800f2f05627f3982310e5c4da01b0311f71da80c3a4ad` |
| 8 | `theorem` | [nativePoints_linearIndependent_of_normalizedResidue](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/nativepoints-linearindependent-of-normalizedresidue--7e7a8937ee2e2312466b315e.md) | 123 | `result-track:7e7a8937ee2e2312466b315e21c59ff5394c6acebc01532dee5265e8009fa8fb` |
| 9 | `theorem` | [nativeCurve_finrank_ge_32_of_normalizedResidue](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NormalizedResidueCriterion.lean/declarations/nativecurve-finrank-ge-32-of-normalizedresidue--a91f99da07b94cf6e6dac292.md) | 131 | `result-track:a91f99da07b94cf6e6dac292a6fd264fa1c02e42c5bc2dbfedf8b6e68d72fa56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
