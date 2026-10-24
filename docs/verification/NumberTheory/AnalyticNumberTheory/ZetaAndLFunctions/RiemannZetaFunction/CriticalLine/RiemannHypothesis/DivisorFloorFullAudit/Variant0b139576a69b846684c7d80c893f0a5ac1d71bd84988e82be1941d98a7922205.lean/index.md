# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorFullAudit.Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "486ed2e5d2483eee0c070116c2eeed20c956daed",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `486ed2e5d2483eee0c070116c2eeed20c956daed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/dampeddivisorcoefficient--0d34b0a67a7df8ea4ac6fecd.md) | 7 | `declaration-track:0d34b0a67a7df8ea4ac6fecd5a3c8e726a31693ce21bc795730bf330c242b8af` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/floor-sum-divisors--56f99882a22e696d625a5321.md) | 24 | `result-track:56f99882a22e696d625a532182471953055371f04ccd0bf2066d0e63d81aee89` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/divisor-prefix-eq-floor--b7f2008fd29a228f7d48f374.md) | 54 | `result-track:b7f2008fd29a228f7d48f37459e794476b5c6d0647c801359c514c36a61ac949` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/residual-floor--ead1c7b58f5b1106a8ff64a9.md) | 60 | `result-track:ead1c7b58f5b1106a8ff64a923e0dd2d010624e4593f8929e6ae65bd2855b11b` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/damped-floor--4eea9fa47022c4578fb6192f.md) | 75 | `result-track:4eea9fa47022c4578fb6192f3b1fa6624e823723c30cfe2199de1e65650d947e` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--dc00bd77235fb4f571fba7df.md) | 87 | `result-track:dc00bd77235fb4f571fba7df1f2b09e159b71cc2309ea2579b43acd2919628ff` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/arithmeticresidual-eq-divisor-prefix--b8ce375219a561295ae64cb6.md) | 100 | `result-track:b8ce375219a561295ae64cb65b72b001e7f0a5b2cdcff78babf83bd98338f8d3` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--fdc4500e016e72606c8095ed.md) | 111 | `result-track:fdc4500e016e72606c8095ed2d69df59b3ce7a6b7fccc0a8cac819e0b2167a9f` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/declarations/arithmeticresidual-zero-damping-endpoint--39e4adcfa27524da20af8d9d.md) | 121 | `result-track:39e4adcfa27524da20af8d9d7ae7ac5f162455352507fafb251ce9dc9edce107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
