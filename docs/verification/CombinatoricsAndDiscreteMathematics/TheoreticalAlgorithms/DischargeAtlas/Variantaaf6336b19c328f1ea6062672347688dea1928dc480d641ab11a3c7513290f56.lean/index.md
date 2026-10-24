# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DischargeAtlas.Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ac694832142a9a01eaff771e49681b0cdbcf4e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ac694832142a9a01eaff771e49681b0cdbcf4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.H0TranslationDischarge` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.RH.SpectralRealizationDischarge` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.RH.TraceFormulaDischarge` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.RH.PositivityDischarge` — import line 4; external provider; requires a separately pinned dependency.
- `Folder.RH.BoundaryCriterionDischarge` — import line 5; external provider; requires a separately pinned dependency.
- `Folder.RH.FinalConeDischarge` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RHDischargeChecklistFamily](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/rhdischargechecklistfamily--a6b8d60de0582774071f4001.md) | 30 | `declaration-track:a6b8d60de0582774071f4001b836c1e4eff6430af1289fcf1e8a377f8ab335dd` |
| 2 | `def` | [RHDischargeChecklistFamily.moduleName](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/rhdischargechecklistfamily-modulename--68a52bc083beec6a7d96edd2.md) | 39 | `declaration-track:68a52bc083beec6a7d96edd2d2217138090c3e2db9b792e80d364c870193e709` |
| 3 | `def` | [rhDischargeAtlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/rhdischargeatlas--8ccbbba07ea3fe5e29128961.md) | 48 | `declaration-track:8ccbbba07ea3fe5e29128961ad1dce9b2d4f877ccec3ce712c8abff71ccaf181` |
| 4 | `theorem` | [h0_translation_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/h0-translation-in-rh-discharge-atlas--ebacbf3b76eef17ccaed24e8.md) | 58 | `result-track:ebacbf3b76eef17ccaed24e83918738da68b7289ff5486d96674ee6f6e48f2a0` |
| 5 | `theorem` | [spectral_realization_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/spectral-realization-in-rh-discharge-atlas--16b072997c491116d028753c.md) | 62 | `result-track:16b072997c491116d028753c7fd1684db921d2348c2c70846cd114be5567dcf5` |
| 6 | `theorem` | [trace_formula_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/trace-formula-in-rh-discharge-atlas--02163fad925bb1279f135016.md) | 66 | `result-track:02163fad925bb1279f135016de2b709713c5c4bca1cf473402cfc90771a8639f` |
| 7 | `theorem` | [positivity_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/positivity-in-rh-discharge-atlas--b160e7724e39e98e39364625.md) | 70 | `result-track:b160e7724e39e98e39364625ce706750db55a01736958af5e19512f5211c84ae` |
| 8 | `theorem` | [boundary_criterion_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/boundary-criterion-in-rh-discharge-atlas--5dd2b53ac61820e826ec009e.md) | 74 | `result-track:5dd2b53ac61820e826ec009ed7e782f748d892111b0a211006c1d85c89e3fc9e` |
| 9 | `theorem` | [final_cone_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/final-cone-in-rh-discharge-atlas--0f967bcebfbff0befd0d9dc4.md) | 78 | `result-track:0f967bcebfbff0befd0d9dc44d0f55756ca0089103e9672e6a2cb9c0df16dcf0` |
| 10 | `theorem` | [rh_discharge_atlas_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/rh-discharge-atlas-length--2140e836208d6fc3b3e5b800.md) | 82 | `result-track:2140e836208d6fc3b3e5b8002118ecc26cd5fc707e96dc3cc9033fc4bca4f02c` |
| 11 | `theorem` | [rh_discharge_atlas_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56.lean/declarations/rh-discharge-atlas-nodup--8da0f7f7343174122597d847.md) | 86 | `result-track:8da0f7f7343174122597d8473c0578fdf87c206b96bb9c7dfbabaf8df971bd1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
