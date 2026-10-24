# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DischargeAtlas.Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06e95350075bab22fb7612abda2b0d19f0f93363",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06e95350075bab22fb7612abda2b0d19f0f93363`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.H0TranslationDischarge` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.RH.SpectralRealizationDischarge` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.RH.TraceFormulaDischarge` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.RH.PositivityDischarge` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.RH.BoundaryCriterionDischarge` — import line 10; external provider; requires a separately pinned dependency.
- `Folder.RH.FinalConeDischarge` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RHDischargeChecklistFamily](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/rhdischargechecklistfamily--9572e29d73f6d3d5ba6dca35.md) | 38 | `declaration-track:9572e29d73f6d3d5ba6dca35906078c9264fd7ef0c66b5cb52eb46548757375e` |
| 2 | `def` | [RHDischargeChecklistFamily.moduleName](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/rhdischargechecklistfamily-modulename--c02fe5132be5788c04a57ce8.md) | 47 | `declaration-track:c02fe5132be5788c04a57ce80f2a878f96ade96cc0ef21d88a0c374a9731e8af` |
| 3 | `def` | [rhDischargeAtlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/rhdischargeatlas--29309009dba11631a4df62d5.md) | 56 | `declaration-track:29309009dba11631a4df62d57d06ae77e308234756addf690785310d8936bee2` |
| 4 | `theorem` | [h0_translation_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/h0-translation-in-rh-discharge-atlas--7e126513dd56c2ab74c97789.md) | 66 | `result-track:7e126513dd56c2ab74c97789d0da34b42b7868b35ffaada6769969bc81e12e1f` |
| 5 | `theorem` | [spectral_realization_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/spectral-realization-in-rh-discharge-atlas--e2104be025b97a0d1aa88752.md) | 70 | `result-track:e2104be025b97a0d1aa88752f3d42dcbd4248926a13d97ad1a46963d46649513` |
| 6 | `theorem` | [trace_formula_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/trace-formula-in-rh-discharge-atlas--946ef3ee124e798f7d695cf6.md) | 74 | `result-track:946ef3ee124e798f7d695cf63e1506077796f1306e6d2db88a9e221538402ca9` |
| 7 | `theorem` | [positivity_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/positivity-in-rh-discharge-atlas--cba3ecae053314dc7ad97f7d.md) | 78 | `result-track:cba3ecae053314dc7ad97f7d9879fc643f349ca3df9979bf8738493ba8a66889` |
| 8 | `theorem` | [boundary_criterion_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/boundary-criterion-in-rh-discharge-atlas--f401347dde3e5d1a70a83540.md) | 82 | `result-track:f401347dde3e5d1a70a835406fcebc752c0cb0c2896d325528b68aa14b36e816` |
| 9 | `theorem` | [final_cone_in_rh_discharge_atlas](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/final-cone-in-rh-discharge-atlas--bbd9597931cdda7b43b04802.md) | 86 | `result-track:bbd9597931cdda7b43b048025c195609536c9f3b58d6247714211a21badb7fbc` |
| 10 | `theorem` | [rh_discharge_atlas_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/rh-discharge-atlas-length--cf7c2ad15b1949bb47f9aa90.md) | 90 | `result-track:cf7c2ad15b1949bb47f9aa900bccb1b7ce06a15b61b4f4ac0c0c71d6c5ff0a0c` |
| 11 | `theorem` | [rh_discharge_atlas_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DischargeAtlas/Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a.lean/declarations/rh-discharge-atlas-nodup--ae2657506ea4f32c4c57aafe.md) | 94 | `result-track:ae2657506ea4f32c4c57aafe7b930e5e07ee9029807285c2b9023e34f2dcebf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
