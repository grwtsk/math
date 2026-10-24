# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6a895ba0074922db80172678e1a519792d139b2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6a895ba0074922db80172678e1a519792d139b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail--31ce5273203b543a59bfd3d7.md) | 40 | `declaration-track:31ce5273203b543a59bfd3d7c35097958802988908176a3149690be4ac49610a` |
| 2 | `theorem` | [integrableOn_Ici_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integrableon-ici-of-continuous--9b08d9e55576839d4e339fb1.md) | 42 | `result-track:9b08d9e55576839d4e339fb1379a23635f02196d756769f42db4377a1201419c` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-eq-sub--0224b3c4c6ef6662a077a592.md) | 54 | `result-track:0224b3c4c6ef6662a077a592d767b3e05b3144d6d7f82f6ce51e89a1451186dc` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/hasderivat-integraltail--e3a92eba8de1b4e722be6b05.md) | 63 | `result-track:e3a92eba8de1b4e722be6b0579b892ac9d45777300667f7c5f1aacae1667af14` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-positive--c3de6cd21389bf7464534341.md) | 74 | `result-track:c3de6cd21389bf7464534341841d051ec524d257bcf7a08418cc66ea2df8fb88` |
| 6 | `theorem` | [logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/logslope-cross-nonnegative--6eccc6e3cd96e40484864d1b.md) | 89 | `result-track:6eccc6e3cd96e40484864d1b387bba58bddf8eae7b48e33d154568b89a2d30ee` |
| 7 | `theorem` | [integral_deriv_Ici_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integral-deriv-ici-eq-neg--7b92efab11e53334e6a786ba.md) | 99 | `result-track:7b92efab11e53334e6a786badc0b462833b5a66ccb1cb4010b767af00af9f481` |
| 8 | `theorem` | [integralTail_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-logslope-identity--9cdcee2459c6a084f62961cf.md) | 110 | `result-track:9cdcee2459c6a084f62961cf9667fc1b429c083c1b40ba73a5201c1ad4c4638e` |
| 9 | `theorem` | [integralTail_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-logslope-nonnegative--955c416f8af470aff8fabd4a.md) | 124 | `result-track:955c416f8af470aff8fabd4a65f929a8737973915d72973c5dcbc74774624aec` |
| 10 | `theorem` | [hasDerivAt_integralTail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/hasderivat-integraltail-ratio--14dd212cb38df70f3a21d1f4.md) | 137 | `result-track:14dd212cb38df70f3a21d1f4c4233d4caf0eff9af62de3e826623f37278da780` |
| 11 | `theorem` | [integralTail_ratio_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-ratio-antitone--f8c9974ac64d1988abceba01.md) | 145 | `result-track:f8c9974ac64d1988abceba013665e0c411abd222f9f3c03c994d3da8dffe098b` |
| 12 | `theorem` | [integralTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/declarations/integraltail-logslope-antitone--792cce5e6db0186ee9ea9c75.md) | 165 | `result-track:792cce5e6db0186ee9ea9c75e5e4459df3c54d65995c85d994463a9e58b87134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
