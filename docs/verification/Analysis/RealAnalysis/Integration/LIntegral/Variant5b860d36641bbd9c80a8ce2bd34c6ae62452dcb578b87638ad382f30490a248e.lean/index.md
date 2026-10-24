# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LIntegral.Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "483c230e806fb99f8582e3ba75453327c1252ed3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `483c230e806fb99f8582e3ba75453327c1252ed3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/declarations/lintegral-mul-left-eq-self--9137dd488cbf7a4c87329800.md) | 42 | `result-track:9137dd488cbf7a4c8732980085b59dda02aa040f1d7e0a74417f8badef52e83b` |
| 2 | `theorem` | [lintegral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/declarations/lintegral-mul-right-eq-self--38139e4e9c9fb7a6049f9d4c.md) | 54 | `result-track:38139e4e9c9fb7a6049f9d4c2fd14a0d915cc886a896880d4c2531a198be9e1a` |
| 3 | `theorem` | [lintegral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/declarations/lintegral-div-right-eq-self--b4f28a072458e31c629b4702.md) | 62 | `result-track:b4f28a072458e31c629b47026f915bdd6921d7f4e32692431cdb4a855e0e5df6` |
| 4 | `theorem` | [lintegral_eq_zero_of_isMulLeftInvariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant5b860d36641bbd9c80a8ce2bd34c6ae62452dcb578b87638ad382f30490a248e.lean/declarations/lintegral-eq-zero-of-ismulleftinvariant--ece05308e82ff22d1fe38ab2.md) | 79 | `result-track:ece05308e82ff22d1fe38ab2d3e676e834414575f24d15b11edb6d5fb5710ce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
