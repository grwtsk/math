# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiPrimitiveTransport.Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28f9c2d4e5120345333f1223793d13d437fc8353",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28f9c2d4e5120345333f1223793d13d437fc8353`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualShiftedXiDerivativeAdapter` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFullXiSignedPrimitiveCost` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiLogDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogdensity--90a078862dccd56ae501b69e.md) | 23 | `declaration-track:90a078862dccd56ae501b69e17f6706b9d9d58d4548b88b88b416f57711d0153` |
| 2 | `def` | [actualXiLogPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogprimitive--2245cd9ef3e5a8dc21b187e5.md) | 26 | `declaration-track:2245cd9ef3e5a8dc21b187e57b76b285d1b47d9e5dab12f33b0f972697293c2b` |
| 3 | `theorem` | [actualXiLogDensity_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogdensity-intervalintegrable--98120271d77231e9d49ead9f.md) | 29 | `result-track:98120271d77231e9d49ead9f875403c44a9e588f5dd385fa47df5e8f65a82838` |
| 4 | `theorem` | [actualXiLogPrimitive_at_anchor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogprimitive-at-anchor--6cc90687131fcca515f2f13e.md) | 43 | `result-track:6cc90687131fcca515f2f13ec78da85770efdb9b51ca9fc779a4d46fc167572f` |
| 5 | `theorem` | [actualXiLogPrimitive_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogprimitive-absolutelycontinuous--35e8bc71754f528517a86f1b.md) | 46 | `result-track:35e8bc71754f528517a86f1b90ba2d0d8d2c2f8a29866240d690bafe65c8eba3` |
| 6 | `theorem` | [actualXiLogPrimitive_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actualxilogprimitive-ae-hasderivat--040b6da5cb7ce61a644b8027.md) | 51 | `result-track:040b6da5cb7ce61a644b8027051b66ac857f4a2416772bf8f8f9483621b372ed` |
| 7 | `theorem` | [actual_logarithmic_substitution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actual-logarithmic-substitution--614b38dc437551bb92b94e30.md) | 59 | `result-track:614b38dc437551bb92b94e30ed3e79359b7aa5915d00317d39f4c5eace219bae` |
| 8 | `theorem` | [actual_log_weight_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actual-log-weight-absolutelycontinuous--c006c387ce70d7d16a1fabbf.md) | 78 | `result-track:c006c387ce70d7d16a1fabbf69f8ba2c9e6ab1188bc5e1c96f7934f6f5c4ad4f` |
| 9 | `theorem` | [actual_log_weight_at_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actual-log-weight-at-upper--e291dd55671cd3eadfb24ae6.md) | 85 | `result-track:e291dd55671cd3eadfb24ae676e17b322198acf2a7244e6ee0c1f6da2797aa1f` |
| 10 | `theorem` | [actual_contracted_pairing_eq_primitive_IBP](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/actual-contracted-pairing-eq-primitive-ibp--40382dcfa4dbf92ca37911e4.md) | 92 | `result-track:40382dcfa4dbf92ca37911e4e5ce54f54eaec05641ab247108720c8a45d69e2f` |
| 11 | `theorem` | [contracted_lower_of_actual_primitive_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/declarations/contracted-lower-of-actual-primitive-bound--588a624e419f61825430da57.md) | 114 | `result-track:588a624e419f61825430da5722b392126bfd34f9b37819d220447be3e2b3471d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
