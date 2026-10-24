# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio.Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0908809aa8054e335720ced123d7c757db885040",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0908809aa8054e335720ced123d7c757db885040`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundary_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/boundary-sub--ca1e8e1cf92319c570aafc0e.md) | 17 | `result-track:ca1e8e1cf92319c570aafc0e3e78df1df669ff87fd0bcf58fb9d100a91fe199d` |
| 2 | `theorem` | [cross_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/cross-nonneg--cd7504a3d6bc3ab4bdc4904f.md) | 33 | `result-track:cd7504a3d6bc3ab4bdc4904f0155cb6553113a44f1c1a6077c712c97ef256d2f` |
| 3 | `theorem` | [weighted_deriv_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/weighted-deriv-integral--92d003832d9cb9399e411f67.md) | 41 | `result-track:92d003832d9cb9399e411f67c978d65644732fe8b2c792e5c035fce8f527210c` |
| 4 | `theorem` | [weighted_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/weighted-identity--baa52c1f69b523bfece67046.md) | 61 | `result-track:baa52c1f69b523bfece67046156c4110d720e9041d38cd72a2677d9583ccad4f` |
| 5 | `theorem` | [weighted_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/weighted-nonneg--4777f2e7958e5bcd8084e9d0.md) | 83 | `result-track:4777f2e7958e5bcd8084e9d0a198c9125cabf6674c742972954d2dae8e2b38c4` |
| 6 | `theorem` | [ratio_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/ratio-deriv--9798e27b45457edce1b587ac.md) | 93 | `result-track:9798e27b45457edce1b587ac40bf5a2fdec7307e6e7c04de50bf4815865fa7b2` |
| 7 | `theorem` | [ratio_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/ratio-deriv-nonpos--81a209d20e8e418649b83f08.md) | 103 | `result-track:81a209d20e8e418649b83f08da875d749d82ac731c42b41c03ee0a3bf5d68671` |
| 8 | `theorem` | [ratio_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/ratio-antitone--7f5e60b2d0c3b613488a2010.md) | 113 | `result-track:7f5e60b2d0c3b613488a2010a74a69ab96d506c1eddd6a9cc0e49f96e23a0649` |
| 9 | `theorem` | [source_two_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/declarations/source-two-zero-one--9e5a25938b05c1e6ad64466a.md) | 127 | `result-track:9e5a25938b05c1e6ad64466a76a7f0eeb196b4f42ccf0ed40abc1e386f4e03ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
