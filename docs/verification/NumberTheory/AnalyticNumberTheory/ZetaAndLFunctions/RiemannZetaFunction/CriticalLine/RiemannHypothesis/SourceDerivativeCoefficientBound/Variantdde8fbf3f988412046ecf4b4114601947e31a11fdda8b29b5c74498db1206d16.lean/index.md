# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDerivativeCoefficientBound.Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc6ff9e5952cc681ddf4a041695d2e5f60acddb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc6ff9e5952cc681ddf4a041695d2e5f60acddb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/normpolynomial--86b88a7d47f3c46892021039.md) | 27 | `declaration-track:86b88a7d47f3c46892021039cb8e51e112dcdb122059a91b5232ce14ad91af03` |
| 2 | `def` | [derivativePolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/derivativepolynomial--7c14d10632fe24699400b279.md) | 32 | `declaration-track:7c14d10632fe24699400b2790fd11fae7943b7997e5e99baa335aa5b6d69b63a` |
| 3 | `def` | [squaredCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/squaredcoefficient--70c368612823641807206c7d.md) | 37 | `declaration-track:70c368612823641807206c7df4fbb97346a9a64b2e379041006ba785501d08fd` |
| 4 | `theorem` | [normPolynomial_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/normpolynomial-pos--e32737780f6ba4d001c0ecee.md) | 39 | `result-track:e32737780f6ba4d001c0eceed5faed0eb84a94f75a9d44b067d18d1d519f3b19` |
| 5 | `theorem` | [exact_coefficient_gap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/exact-coefficient-gap--324616d61dc116acbfcb94be.md) | 44 | `result-track:324616d61dc116acbfcb94be2ade2df5e843703bc00ff01f3f0cbf5226bcca70` |
| 6 | `theorem` | [derivativePolynomial_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/derivativepolynomial-le--d9013d87dc8b2bd9ce0fb653.md) | 50 | `result-track:d9013d87dc8b2bd9ce0fb65398d9cbd071d3da99e72bf9bd9803500c86af2fc0` |
| 7 | `theorem` | [exact_ratio_upper_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/exact-ratio-upper-bound--198837e77cb1adb1601659a1.md) | 60 | `result-track:198837e77cb1adb1601659a1757c33d7cab99adb4016f7f2df4c980ea130cfe4` |
| 8 | `theorem` | [squaredCoefficient_lt_twenty_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantdde8fbf3f988412046ecf4b4114601947e31a11fdda8b29b5c74498db1206d16.lean/declarations/squaredcoefficient-lt-twenty-five--fe7722c3daeeb23671d54dca.md) | 65 | `result-track:fe7722c3daeeb23671d54dcad4bd8b9b384871360c6a9ed853cc3f5db42b0909` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
