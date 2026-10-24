# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUpperSupport.Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c628bb8509d44c1027ede3e02c0452bbe15255d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c628bb8509d44c1027ede3e02c0452bbe15255d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaRemainder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceSamplingKernel_zero_of_two_mul_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/sourcesamplingkernel-zero-of-two-mul-ge--356ee777b5feb82b747a8aa2.md) | 22 | `result-track:356ee777b5feb82b747a8aa2e5ff38c55d3a7284d9184b28697bd1085df92f47` |
| 2 | `theorem` | [thetaKernel_zero_of_two_mul_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/thetakernel-zero-of-two-mul-ge--367356d4cadec2a8c6ba21a5.md) | 34 | `result-track:367356d4cadec2a8c6ba21a510f28464151ba608304186359ceb8ec9a11d503b` |
| 3 | `theorem` | [thetaKernel_eq_sourceSamplingKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/thetakernel-eq-sourcesamplingkernel--9a62795f45628c7c0967a616.md) | 46 | `result-track:9a62795f45628c7c0967a616636c2356945ffc3c923e717b9f5d5e04ec4a49c7` |
| 4 | `theorem` | [sourceSamplingKernel_eq_two_channels](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/sourcesamplingkernel-eq-two-channels--6270f0566e04c86512053682.md) | 66 | `result-track:6270f0566e04c86512053682fb3c6649007dc5acd41ec56e7f70f12048a52663` |
| 5 | `theorem` | [thetaKernel_eq_two_channels](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/thetakernel-eq-two-channels--d70089972ff91ebd30ecb789.md) | 106 | `result-track:d70089972ff91ebd30ecb789debf788abc5740949464d68241386f7d3b00a276` |
| 6 | `theorem` | [thetaRemainder_eq_neg_rankOne_of_two_mul_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantb6b3428d720fc9ecf9990c4468ff22e0929d9cc76ec09bfcdb8afa2490742fc4.lean/declarations/thetaremainder-eq-neg-rankone-of-two-mul-ge--e6f7265dae154bfb531e607e.md) | 118 | `result-track:e6f7265dae154bfb531e607e3716813aed346528a665e48210329c46df365c5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
