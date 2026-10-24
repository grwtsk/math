# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21d84af44afd9956b6ad2c5c19717774c19b0a93",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21d84af44afd9956b6ad2c5c19717774c19b0a93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [volume_regionBetween_eq_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/volume-regionbetween-eq-integral--cb2cbe210cb5d7c285351e2d.md) | 20 | `result-track:cb2cbe210cb5d7c285351e2d87c101218865a50563c014c93138395b3d23ef97` |
| 2 | `theorem` | [volume_regionBetween_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/volume-regionbetween-eq-integral--389eef531a50836410e7d711.md) | 34 | `result-track:389eef531a50836410e7d7114dd3601005cc95d60c5194cc6760c05301f64157` |
| 3 | `theorem` | [Real.integrable_of_summable_norm_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/real-integrable-of-summable-norm-icc--79b0a89ce3ea1b882b2e5d93.md) | 51 | `result-track:79b0a89ce3ea1b882b2e5d935e586074fb61f10b986e3814d83b4085ec96f46e` |
| 4 | `theorem` | [integral_comp_neg_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/integral-comp-neg-iic--16d4481540ef3f9be74bac4a.md) | 81 | `result-track:16d4481540ef3f9be74bac4aedb493e2d6e7de0aa1b5ccb067a3bb6ead29250c` |
| 5 | `theorem` | [integral_comp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/integral-comp-neg-ioi--33baa9e8ec503672f60169bd.md) | 91 | `result-track:33baa9e8ec503672f60169bdd614fc285915ed9dbc612102d526b4609d63b254` |
| 6 | `theorem` | [integral_comp_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant3aeae029fe1d0b012fe893a6a187ff6e5040acd4e456ca4370f91e469d31295a.lean/declarations/integral-comp-abs--f2e068134595371841f24de4.md) | 96 | `result-track:f2e068134595371841f24de4dc7fb2b3b0494181e9b5b8a1952cfa483c229bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
