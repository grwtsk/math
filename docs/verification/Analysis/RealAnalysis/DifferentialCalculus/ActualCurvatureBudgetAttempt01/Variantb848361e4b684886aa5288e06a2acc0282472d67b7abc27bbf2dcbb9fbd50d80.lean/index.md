# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt01.Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2a16ea11b89687433b82cd7eb958f9481317792",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2a16ea11b89687433b82cd7eb958f9481317792`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/criticalprimetest-second-deriv--c41b991ff35527628294938b.md) | 21 | `result-track:c41b991ff35527628294938b2b92a39bdbdad30555f262db40f9c46f4eda9a11` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/criticalprimetest-deriv-zero-after--99814145dedeeec2516ae598.md) | 36 | `result-track:99814145dedeeec2516ae598461fcc12975b94addd99bc7cee039305a84585ea` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/criticalprimetest-second-deriv-zero-after--4f5758ea26b24a9c0822f02f.md) | 44 | `result-track:4f5758ea26b24a9c0822f02f36377f325e53998181dae49839953f18b1f29e76` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/criticalprimetest-second-deriv-abs-le--f4487850eecac2ec68c016be.md) | 52 | `result-track:f4487850eecac2ec68c016bef2260845149b2e78c4a41c2966bc8e4c3535bb05` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--eeb28fbf2cbf175bdbbcec14.md) | 82 | `result-track:eeb28fbf2cbf175bdbbcec1466609d9258c15a69c1a0db08c5a52d0a209d9709` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/mass-ratio-bounds--7f9de170596461e6e3dd6c66.md) | 90 | `result-track:7f9de170596461e6e3dd6c66c2bb60c752c759965c6f2a8cfe0437160176a144` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/pairedtailcurvature-abs-le--b46c4df1ba8d496359bdcdd7.md) | 97 | `result-track:b46c4df1ba8d496359bdcdd7aacc269c24e305dd30b58553331a162a826475e9` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/curvaturevariation--109e70e3ed1fa159d74c5be3.md) | 126 | `declaration-track:109e70e3ed1fa159d74c5be3c5cef0af87a93c4e655911d5e0bd0afbd8defe1c` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/curvaturevariation-nonneg--7b8bfca2666c36862043793a.md) | 128 | `result-track:7b8bfca2666c36862043793a5162b509848519403fd6883d0fdefb5d4e60e7d6` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variantb848361e4b684886aa5288e06a2acc0282472d67b7abc27bbf2dcbb9fbd50d80.lean/declarations/curvaturevariation-le--3250852221ab83fe81ea8137.md) | 131 | `result-track:3250852221ab83fe81ea813765eba33fa8312e3b41422a57da7f5ae80b9bc5e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
