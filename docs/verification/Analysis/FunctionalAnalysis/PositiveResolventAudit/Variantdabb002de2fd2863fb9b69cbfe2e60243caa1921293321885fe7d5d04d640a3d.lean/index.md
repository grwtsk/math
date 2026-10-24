# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventAudit.Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c1e38b2fb1c02fdd171cda451361a8df2febd5c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c1e38b2fb1c02fdd171cda451361a8df2febd5c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift--0de40e1a3c1dc222b3325819.md) | 21 | `declaration-track:0de40e1a3c1dc222b3325819eb27bcdf0191f5203a06a01b3e6bc41320a67d0e` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift-ispositive--53ba67d015b73982126e77c5.md) | 25 | `result-track:53ba67d015b73982126e77c559b7d236f3a0d1a3f4045f9ec9394dd18b1f9cda` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift-coercive--6ad518576dcb38b02175be6b.md) | 32 | `result-track:6ad518576dcb38b02175be6bf704667b9af4848ef6556257f01b36dcea70fb42` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift-isunit--60a6b5086269969f49ae6295.md) | 47 | `result-track:60a6b5086269969f49ae6295391cb5df07d550afaabf5764bfeabf10500e8c62` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveresolvent--03761e0dc076c9746c4ed98e.md) | 58 | `declaration-track:03761e0dc076c9746c4ed98e98b4dcd0b997c4bef09508eb222e65318a0b50da` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift-mul-resolvent--50ed376e73e8bdf5e09cfc18.md) | 62 | `result-track:50ed376e73e8bdf5e09cfc1863594b6290c31ee8922926ee76860436d7659a12` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/resolvent-mul-positiveshift--620deaa57a6681393b6c96d1.md) | 67 | `result-track:620deaa57a6681393b6c96d19209529d96d9dce66079bcf61f454235e3df473f` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveshift-resolvent-apply--ec3b6dbacbad84819497a3d1.md) | 72 | `result-track:ec3b6dbacbad84819497a3d1269aac55fffff2a4fdcc333530757e8567874361` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveresolvent-norm-le--133f36eff8f0299052876aac.md) | 79 | `result-track:133f36eff8f0299052876aac50132324a4f100e7a43100158cd5d142daa618ca` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveresolvent-ispositive--b92bcb66e1f6392289b7baa6.md) | 95 | `result-track:b92bcb66e1f6392289b7baa6e4ac00f284c54f8aef5c10bd391c7240529ee73c` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveresolvent-sub--9cdbfd383929884c8f69de78.md) | 106 | `result-track:9cdbfd383929884c8f69de780f4e31df90ddff4dd7d032a3916d36a3d6504ffa` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/positiveresolvent-sub-norm-le--f93b5e90431236eb193c234f.md) | 118 | `result-track:f93b5e90431236eb193c234fe1c15dcd0bbe366ea52848e6df3f059a204d82d5` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/regularizedmass--346a465048f8f90b68b2d1b5.md) | 132 | `declaration-track:346a465048f8f90b68b2d1b5db1cc9a67e1b14a0628f716e889cf4d8f1a1f007` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/abs-re-inner-map-le--6ee34ac05077fa5ee1289758.md) | 136 | `result-track:6ee34ac05077fa5ee128975856e0f61b2be37bfb60845c924d0c315c4d599cd5` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/regularizedmass-sub-abs-le--425b507594c065a13c37bb34.md) | 145 | `result-track:425b507594c065a13c37bb34c59c53f9e6e8b0fbac67a8e3662bdaf8798b0e9e` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variantdabb002de2fd2863fb9b69cbfe2e60243caa1921293321885fe7d5d04d640a3d.lean/declarations/reference-regularizedmass-sub-abs-le--09a9ff7626ff61b757fbd881.md) | 165 | `result-track:09a9ff7626ff61b757fbd8810797492b7260fc08a12d67efecb086c24b83e262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
