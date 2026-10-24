# Verification target: GRWTSK.Analysis.MeasureTheory.Measurable.Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23f8ca377a779bf71f2a14c0a887e46417c21ed",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23f8ca377a779bf71f2a14c0a887e46417c21ed`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Measurable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_lineDifferentiableAt](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/measurableset-linedifferentiableat--496c373bc2aaa42eb7e0bc83.md) | 41 | `result-track:496c373bc2aaa42eb7e0bc835ebead827e305956ce80bc2583ef0ef3acdfedad` |
| 2 | `theorem` | [measurable_lineDeriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/measurable-linederiv--b1ef334c796f184d0e748527.md) | 48 | `result-track:b1ef334c796f184d0e748527f7c00186c535ee9b22058cb2312048823285cc08` |
| 3 | `theorem` | [stronglyMeasurable_lineDeriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/stronglymeasurable-linederiv--ffabb9a609a402f786ed001c.md) | 55 | `result-track:ffabb9a609a402f786ed001c1c33b6178754bea42f4dd2ee1c70f9a24b625a7e` |
| 4 | `theorem` | [aemeasurable_lineDeriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/aemeasurable-linederiv--07dde2e54ece7325a1deb03f.md) | 62 | `result-track:07dde2e54ece7325a1deb03f1af2fe41d43b295793c5d71ace2a6c06f6552723` |
| 5 | `theorem` | [aestronglyMeasurable_lineDeriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/aestronglymeasurable-linederiv--def4bc2d2f51aebf483d0165.md) | 67 | `result-track:def4bc2d2f51aebf483d0165a29edea41bddc0dcc0d01042f9d207c40299529b` |
| 6 | `theorem` | [measurableSet_lineDifferentiableAt_uncurry](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/measurableset-linedifferentiableat-uncurry--285146b654b07adfa985133f.md) | 80 | `result-track:285146b654b07adfa985133fa22c66c1e7daf75c91b9a61e342b83a8acf04cbb` |
| 7 | `theorem` | [measurable_lineDeriv_uncurry](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/measurable-linederiv-uncurry--f02698d262141464912ce318.md) | 91 | `result-track:f02698d262141464912ce3184a11aa27a000286cdf65ff61a83ca5bf65b56eb9` |
| 8 | `theorem` | [stronglyMeasurable_lineDeriv_uncurry](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/stronglymeasurable-linederiv-uncurry--13f1117332b4118abeba65e1.md) | 100 | `result-track:13f1117332b4118abeba65e1010f94f78e1cc98329961d190f5035ef582c8085` |
| 9 | `theorem` | [aemeasurable_lineDeriv_uncurry](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/aemeasurable-linederiv-uncurry--84cc0200a6a9d36eb472183d.md) | 109 | `result-track:84cc0200a6a9d36eb472183dcc1b5c907b75fe007cf1e38341b09c6a329925aa` |
| 10 | `theorem` | [aestronglyMeasurable_lineDeriv_uncurry](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantd1ab59aca061cf05ef0fcba74a85342235fec8287076e8db3a2afe6b3c9e6699.lean/declarations/aestronglymeasurable-linederiv-uncurry--5bc82e2a17906f634079947e.md) | 114 | `result-track:5bc82e2a17906f634079947ed2536fba250190c19591acd1a0ca608622db6025` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
