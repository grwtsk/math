# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BranchGreenStokes.Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6595560da3198c8e04890468f33a3129f29fedc7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6595560da3198c8e04890468f33a3129f29fedc7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concentricCircleSingleHoleExcision](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/concentriccirclesingleholeexcision--8cd5277396edc917924868e7.md) | 54 | `result-track:8cd5277396edc917924868e7722a70df64f874e42f6935a11e401665feeb4692` |
| 2 | `theorem` | [rectangleBoundaryIntegral_swap_corners](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/rectangleboundaryintegral-swap-corners--366c93cd8418ba67ad39ec1d.md) | 70 | `result-track:366c93cd8418ba67ad39ec1db4d8dd80b3e6f602fbede4cd74b2c7b58263a96f` |
| 3 | `theorem` | [rectangleBoundaryIntegral_swap_real_orientation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/rectangleboundaryintegral-swap-real-orientation--b1e34912057953dc66ec98cc.md) | 92 | `result-track:b1e34912057953dc66ec98cc096c3d780734cd5f102caaecba39f7b2da269430` |
| 4 | `theorem` | [circleIntegral_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/circleintegral-orientation-test--3b570ee0712e2e564c50db93.md) | 116 | `result-track:3b570ee0712e2e564c50db9369875e706ed8373128c38e2356bdf81007321659` |
| 5 | `theorem` | [constant_integrand_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/constant-integrand-orientation-test--a69e952d5a7b5ecff4583078.md) | 124 | `result-track:a69e952d5a7b5ecff45830788def30878ba610ed2b5792753a88474e7912a760` |
| 6 | `theorem` | [linear_integrand_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/declarations/linear-integrand-orientation-test--666afd606a11e8b1f12a8662.md) | 142 | `result-track:666afd606a11e8b1f12a866266cbfbc1b78e4e7396fb0b20c4d40db7523257eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
