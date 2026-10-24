# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrability.Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee02beb514a8812d7e9ad499fb80e8c7bfc95bb4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee02beb514a8812d7e9ad499fb80e8c7bfc95bb4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasIntegralIndicatorConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/hasintegralindicatorconst--1b09befd775f8fcbb6611a94.md) | 45 | `result-track:1b09befd775f8fcbb6611a94cf5038656f366ccf4a68d162119ce7158d87462f` |
| 2 | `theorem` | [HasIntegral.of_aeEq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/hasintegral-of-aeeq-zero--dc89d88a2a67dcc266fb1940.md) | 111 | `result-track:dc89d88a2a67dcc266fb1940e7f9b2d78daf0a8ee5d4412d9ad2b83d698c5624` |
| 3 | `theorem` | [HasIntegral.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/hasintegral-congr-ae--df597d77e1b49e83190b27b1.md) | 164 | `result-track:df597d77e1b49e83190b27b1dcd44f73d25195ef2016838dea7f0048a0de127e` |
| 4 | `theorem` | [hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/hasboxintegral--f8138a15158dba8af91c7a05.md) | 179 | `result-track:f8138a15158dba8af91c7a05625b8f1178d35f3d73cf582fe16bdd068f71702f` |
| 5 | `theorem` | [box_integral_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/box-integral-eq-integral--7cf47c7f50c57da5891cfbca.md) | 194 | `result-track:7cf47c7f50c57da5891cfbcacf585a05a341e956211be4d974002a8e8cbe0f31` |
| 6 | `theorem` | [IntegrableOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/declarations/integrableon-hasboxintegral--d654d798e59908135b8ac0f2.md) | 206 | `result-track:d654d798e59908135b8ac0f2e443a72fa5e4f33db171fa722142fff93950e69e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
