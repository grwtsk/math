# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81f0ac5bcdaf15651d2f5c58f4ff2c950ec8fd98",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81f0ac5bcdaf15651d2f5c58f4ff2c950ec8fd98`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_rpow_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/declarations/lintegral-rpow-eq-lintegral-meas-le-mul--cf042095aee63d5b996d4b12.md) | 55 | `result-track:cf042095aee63d5b996d4b129ed47e3b3e6f37b56351be3e3ffb22fd90987271` |
| 2 | `theorem` | [lintegral_rpow_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/declarations/lintegral-rpow-eq-lintegral-meas-lt-mul--56cfdad3e4bda2cf9763bab4.md) | 89 | `result-track:56cfdad3e4bda2cf9763bab4bafa2d0a38cf0c17ba7e4bcadaf14606a6808fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
