# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QExpansion.Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5a19f40b768a39f9aa6cf3a51b18122a9eac72",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5a19f40b768a39f9aa6cf3a51b18122a9eac72`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Exp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Identities` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/periodic-comp-ofcomplex--edf86c5af5eaa64034893dc8.md) | 53 | `result-track:edf86c5af5eaa64034893dc86f4562a649b42cb97793e9aa5abbb3f886599c9e` |
| 2 | `def` | [cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/cuspfunction--cd8d35e0dccd03d26b99dde6.md) | 70 | `declaration-track:cd8d35e0dccd03d26b99dde68e158ee2d7b519cd292bbba809eb9e5da9408fe0` |
| 3 | `theorem` | [eq_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/eq-cuspfunction--b60f28ef096a3f095f8a08e5.md) | 72 | `result-track:b60f28ef096a3f095f8a08e5f2c6d649a77604f0fe63789fba5c4d0d009eef2f` |
| 4 | `theorem` | [differentiableAt_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/differentiableat-comp-ofcomplex--df533fa69d82f77e3aebfc6c.md) | 83 | `result-track:df533fa69d82f77e3aebfc6c2f2b284669f2f7ccb4626c2034a238a90304b36c` |
| 5 | `theorem` | [bounded_at_infty_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/bounded-at-infty-comp-ofcomplex--691de18cc4fe77925d2fe3a7.md) | 87 | `result-track:691de18cc4fe77925d2fe3a70d0fc49da78180d5df7b67b097aa0970a350ee69` |
| 6 | `theorem` | [differentiableAt_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/differentiableat-cuspfunction--c36a63356123167fd59bb8c1.md) | 92 | `result-track:c36a63356123167fd59bb8c1e49c529187bf1e8079d70530786b0b50956ef096` |
| 7 | `lemma` | [analyticAt_cuspFunction_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/analyticat-cuspfunction-zero--be37aa08f55bc25b74eb0aa1.md) | 105 | `result-track:be37aa08f55bc25b74eb0aa14da6042a1f1dadfe38fc8b6ee8abb7c6683ade24` |
| 8 | `def` | [qExpansion](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/qexpansion--4bce25a5f8e32296c739bc94.md) | 112 | `declaration-track:4bce25a5f8e32296c739bc9452d4808f0aefc252ffca075e6053c2ea01ff9fcc` |
| 9 | `lemma` | [qExpansion_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/qexpansion-coeff--8ef1780ab86472ab35f07f6a.md) | 115 | `result-track:8ef1780ab86472ab35f07f6a60e5f64ce384b9056b771d371ba41e4f4a439764` |
| 10 | `lemma` | [hasSum_qExpansion_of_abs_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/hassum-qexpansion-of-abs-lt--af63743a0f93debd7212eda6.md) | 119 | `result-track:af63743a0f93debd7212eda67b5faa5f48a4b617f3760c620d0ea85ab0da9bfa` |
| 11 | `lemma` | [hasSum_qExpansion](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/hassum-qexpansion--ef36eacbad5f99adf1753f30.md) | 130 | `result-track:ef36eacbad5f99adf1753f30174105ed264087897b74c46de03d6199de3d6179` |
| 12 | `def` | [qExpansionFormalMultilinearSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/qexpansionformalmultilinearseries--f5474dd20a4a3a76ffa3fd0c.md) | 141 | `declaration-track:f5474dd20a4a3a76ffa3fd0cf2c318ded013dbb8f0be300a3d2857fb1f6d6ec6` |
| 13 | `lemma` | [qExpansionFormalMultilinearSeries_apply_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/qexpansionformalmultilinearseries-apply-norm--c728748da299aa173dd707f5.md) | 144 | `result-track:c728748da299aa173dd707f5aed32b08b6ade9ca03d56bdae04eb3603ccf7c03` |
| 14 | `lemma` | [qExpansionFormalMultilinearSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/qexpansionformalmultilinearseries-radius--79d0fafbf8300d37c9c82b3c.md) | 150 | `result-track:79d0fafbf8300d37c9c82b3cf2e8a4d0f730472a861a087b43ad7e572035258d` |
| 15 | `lemma` | [hasFPowerSeries_cuspFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/hasfpowerseries-cuspfunction--1c0c5f5a02c9af9307755624.md) | 161 | `result-track:1c0c5f5a02c9af930775562417164c36bf4bd84a0c3a7599a402e31a7dee5587` |
| 16 | `theorem` | [zero_at_infty_comp_ofComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/zero-at-infty-comp-ofcomplex--86be5315f5ac1e2772a5ec99.md) | 174 | `result-track:86be5315f5ac1e2772a5ec99202b29d6a1d210a611da46c9f2a5109a5a113148` |
| 17 | `theorem` | [cuspFunction_apply_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/cuspfunction-apply-zero--65a5ffc804355e743e8ccf1a.md) | 178 | `result-track:65a5ffc804355e743e8ccf1a2958f335010293bbf063052b141a8325157c4e6e` |
| 18 | `theorem` | [exp_decay_atImInfty](../../../../../mathematics/Analysis/AsymptoticAnalysis/QExpansion/Variantfda8ce4e7905f393d5d245428f9cb875c405c5c24b0ae2b5a5f1b23cf0cf6ba1.lean/declarations/exp-decay-atiminfty--fd085373dd6b19e498122e77.md) | 183 | `result-track:fd085373dd6b19e498122e77b9e2c225889bea55fb4e081384e76011c6e52360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
