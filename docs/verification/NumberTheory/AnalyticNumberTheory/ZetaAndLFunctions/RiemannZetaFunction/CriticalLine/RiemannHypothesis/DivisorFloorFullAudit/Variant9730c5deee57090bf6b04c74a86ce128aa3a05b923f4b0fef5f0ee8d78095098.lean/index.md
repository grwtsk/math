# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorFullAudit.Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ed409e8c85993c0fb7eb7c563d73b7d22f9f16a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ed409e8c85993c0fb7eb7c563d73b7d22f9f16a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/dampeddivisorcoefficient--c0a147848696880be4d54a81.md) | 15 | `declaration-track:c0a147848696880be4d54a81b336c9e8bf04677e6272d706399e5455a56d24e2` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/floor-sum-divisors--1c4167bc79d6ddd562cd3a07.md) | 32 | `result-track:1c4167bc79d6ddd562cd3a07b12241719bef6640f0f69a801a4c0a2d6573e5a6` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/divisor-prefix-eq-floor--df888471456228699b02d7e5.md) | 62 | `result-track:df888471456228699b02d7e5ef4a87f1907fe43a80848c1f0a80604360927875` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/residual-floor--c4520045cc9adb8763491f8b.md) | 68 | `result-track:c4520045cc9adb8763491f8bcc452aa6a2dd023f040e1aca1781faed19a5d7ee` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/damped-floor--024b4350d5050ab7fda50f5e.md) | 83 | `result-track:024b4350d5050ab7fda50f5e8d2f8b79160148ae8e6bebec6a54d2ac6fa7d07c` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--3bf455f924c2da7f87205b10.md) | 95 | `result-track:3bf455f924c2da7f87205b10787900f6a2385962338d0b9c3f494e46fc7fb735` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/arithmeticresidual-eq-divisor-prefix--ecc5e5b13bb00205b19ae8a3.md) | 108 | `result-track:ecc5e5b13bb00205b19ae8a3cb5be7d609d8f844580cc7b1cb9d262c72de30e1` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--090e5916645c744923b357a3.md) | 119 | `result-track:090e5916645c744923b357a31f68edf5521133f1c5e04e131baca0bb55cb3d3c` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant9730c5deee57090bf6b04c74a86ce128aa3a05b923f4b0fef5f0ee8d78095098.lean/declarations/arithmeticresidual-zero-damping-endpoint--21c09dd8d8074aeb951856b9.md) | 129 | `result-track:21c09dd8d8074aeb951856b98e4536c2e89d80e9fc3693280d5e27f74df56710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
