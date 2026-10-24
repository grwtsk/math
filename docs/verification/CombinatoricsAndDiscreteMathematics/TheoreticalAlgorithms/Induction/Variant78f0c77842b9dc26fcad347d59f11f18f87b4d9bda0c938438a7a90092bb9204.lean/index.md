# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Induction.Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ee517281ef838afddedf86ce8fd5d227e7ad4a5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ee517281ef838afddedf86ce8fd5d227e7ad4a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reverseRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserec--2f63986430a97989ccb890b7.md) | 30 | `declaration-track:2f63986430a97989ccb890b73d93b462ff69fafe8f99974456233b087547618e` |
| 2 | `theorem` | [reverseRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserec-nil--5fb9a1d7233ed74c1d0453e9.md) | 38 | `result-track:5fb9a1d7233ed74c1d0453e90e8191fc0a5457ac2750a44e279e51f2b92024bd` |
| 3 | `theorem` | [reverseRec_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserec-concat--e00f834f7193a17332e2b4b7.md) | 43 | `result-track:e00f834f7193a17332e2b4b716fbfd8f0aa84b1f1a4b631c2cbc336096867c1e` |
| 4 | `abbrev` | [reverseRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserecon--306454770efc53a4bef8af3f.md) | 51 | `declaration-track:306454770efc53a4bef8af3fd8df3f7d5a89e04dd269ae53d1090a71dbf3a63a` |
| 5 | `theorem` | [reverseRecOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserecon-nil--01934a0e01b6effcfdd79278.md) | 55 | `result-track:01934a0e01b6effcfdd7927899dac566d3df24d9052d7f7133ab40328ac4ec81` |
| 6 | `theorem` | [reverseRecOn_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reverserecon-concat--5c3c125cc3b03338d7e0b996.md) | 59 | `result-track:5c3c125cc3b03338d7e0b996b5bb1f1b9e600574b0e304b20548d4aa476ce191` |
| 7 | `def` | [bidirectionalRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/bidirectionalrec--a1e7bcaaa3dcb7ea1672321a.md) | 69 | `declaration-track:a1e7bcaaa3dcb7ea1672321a35f327ef912acb265adf0f51bc5248f7fdf020f2` |
| 8 | `theorem` | [bidirectionalRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/bidirectionalrec-nil--26637df8a58e8ae283ac4c4e.md) | 81 | `result-track:26637df8a58e8ae283ac4c4e9d66050013647ce201afea8ed95c25fb4e4b711a` |
| 9 | `theorem` | [bidirectionalRec_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/bidirectionalrec-singleton--f43ff35336f6531894a67e20.md) | 88 | `result-track:f43ff35336f6531894a67e20d4be4b2ff9317af57c323e62841105b8963f776f` |
| 10 | `theorem` | [bidirectionalRec_cons_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/bidirectionalrec-cons-append--d145526eda443f6997bf9da0.md) | 95 | `result-track:d145526eda443f6997bf9da0183b6e1314fdcf9a4fdee5597a5457feb4bef7a0` |
| 11 | `abbrev` | [bidirectionalRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/bidirectionalrecon--abebe0abadd3bead3a2dd9d9.md) | 105 | `declaration-track:abebe0abadd3bead3a2dd9d9487629f85faf62b3e61b146071e392969316c12d` |
| 12 | `def` | [recNeNil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/recnenil--95dee044044c983096f4fa95.md) | 114 | `declaration-track:95dee044044c983096f4fa95f492df382bd8098dea2e3cf3639910c9adaa8cf1` |
| 13 | `theorem` | [recNeNil_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/recnenil-singleton--da7045bdfd1aa5cef868ef8f.md) | 124 | `result-track:da7045bdfd1aa5cef868ef8f52dd5366a50d07c150013999aa744948ef86dfc8` |
| 14 | `theorem` | [recNeNil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/recnenil-cons--f32c3a6992d6d13a95b012b8.md) | 130 | `result-track:f32c3a6992d6d13a95b012b88a69f19506017d2f9116803d383657bfea45f904` |
| 15 | `abbrev` | [recOnNeNil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/reconnenil--34c7d112661c6d665c51a89d.md) | 144 | `declaration-track:34c7d112661c6d665c51a89d4042924f429b421d438cb1de81ed6357be16c361` |
| 16 | `def` | [twoStepInduction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/twostepinduction--45ec6f5baf84a8279a6cffa1.md) | 153 | `declaration-track:45ec6f5baf84a8279a6cffa1104660862ddba8fcc2b7db1b4ec6dafc9ff2690d` |
| 17 | `theorem` | [twoStepInduction_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/twostepinduction-nil--4ae08468afe7c2d078e1942b.md) | 165 | `result-track:4ae08468afe7c2d078e1942b4c9c4548dea55f043df22453194961336b19e9b0` |
| 18 | `theorem` | [twoStepInduction_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/twostepinduction-singleton--08851c48c2fe80463a863d4d.md) | 171 | `result-track:08851c48c2fe80463a863d4d59b1e2da9c6cea0a1ada3964d965f20afd9aa6a7` |
| 19 | `theorem` | [twoStepInduction_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant78f0c77842b9dc26fcad347d59f11f18f87b4d9bda0c938438a7a90092bb9204.lean/declarations/twostepinduction-cons-cons--6e7d9dfdaa0d6850e6099edc.md) | 177 | `result-track:6e7d9dfdaa0d6850e6099edcc2ff30f16a326c14c14106f3a632b029aa4d7685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
