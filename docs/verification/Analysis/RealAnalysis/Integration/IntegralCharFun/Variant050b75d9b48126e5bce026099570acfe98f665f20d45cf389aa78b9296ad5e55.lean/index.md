# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralCharFun.Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f7f3ae0738af10aec76f08eedd4451219bc68c4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f7f3ae0738af10aec76f08eedd4451219bc68c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Sinc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.CharacteristicFunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_charFun_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/declarations/integral-charfun-icc--53699c71c66c0c1fb263b9e7.md) | 48 | `result-track:53699c71c66c0c1fb263b9e786d6cc4170c657008722a6c42fbfbbb10a4d6bf2` |
| 2 | `lemma` | [measureReal_abs_gt_le_integral_charFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/declarations/measurereal-abs-gt-le-integral-charfun--3d32c5db6408882a5bcd7502.md) | 99 | `result-track:3d32c5db6408882a5bcd75023d91d6a5d356d43088b6d8d62d35a3f54d2e2361` |
| 3 | `lemma` | [measureReal_abs_dual_gt_le_integral_charFunDual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/declarations/measurereal-abs-dual-gt-le-integral-charfundual--46d8ca11997feded2e81cf44.md) | 158 | `result-track:46d8ca11997feded2e81cf447608f0a87dd69707b1b294730503a666b87144bb` |
| 4 | `lemma` | [measureReal_abs_inner_gt_le_integral_charFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant050b75d9b48126e5bce026099570acfe98f665f20d45cf389aa78b9296ad5e55.lean/declarations/measurereal-abs-inner-gt-le-integral-charfun--dbe67b349938936b78af3a39.md) | 171 | `result-track:dbe67b349938936b78af3a397d0e24be3cd6884a049696878dc73dee423b1f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
