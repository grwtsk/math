# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residue.Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d9a38ce897fcace38081bbb2c7a6cc4a1fdff8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d9a38ce897fcace38081bbb2c7a6cc4a1fdff8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.Prismatic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidueChannel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/residuechannel--4bb3ee5953e4aff7649c5a90.md) | 20 | `declaration-track:4bb3ee5953e4aff7649c5a90eab69d7e7a8c23066b1ab5370e65e8f88a81813a` |
| 2 | `def` | [residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/residue--2ca95bbefa2a81ff988c0f31.md) | 39 | `declaration-track:2ca95bbefa2a81ff988c0f31d5db900fd61fab9710660838e78d0e0a6948b61d` |
| 3 | `inductive` | [ResidueDecision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/residuedecision--d8663fad40bec8b5b453ce10.md) | 48 | `declaration-track:d8663fad40bec8b5b453ce1098b2da66843122a91750bc17b3cf529f5a9de1b1` |
| 4 | `def` | [activation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/activation--e95642e29fd9187e4db14fe8.md) | 56 | `declaration-track:e95642e29fd9187e4db14fe889b598c4a5513a9d03ed550d3aaeb3970b76d6d8` |
| 5 | `theorem` | [activation_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/activation-eq-true-iff--857bf3b8d89919a2ab47d6bd.md) | 61 | `result-track:857bf3b8d89919a2ab47d6bda9f066222f5f4a9fcdbcda5dea91a1be1f0638d1` |
| 6 | `theorem` | [activation_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/activation-eq-false-iff--3d9abb9beed019c670eb7dae.md) | 68 | `result-track:3d9abb9beed019c670eb7dae4558eba5f29dd777572ab96062262e6bd646e019` |
| 7 | `inductive` | [ActivationAttempt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/activationattempt--a60c60beba8dd792527f7216.md) | 77 | `declaration-track:a60c60beba8dd792527f72167958d90282bb0058a9a08143ea204a489b54b379` |
| 8 | `def` | [attemptActivation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/attemptactivation--9c7979f4877586892209c4b2.md) | 82 | `declaration-track:9c7979f4877586892209c4b28b1f5ddbbef0a793643b345cb7c5084fb3321719` |
| 9 | `theorem` | [attemptActivation_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/attemptactivation-none--7b8423b96790418ee18eb723.md) | 91 | `result-track:7b8423b96790418ee18eb723f687ae4a711c84dcb5ce339a75e8a50bbe545f99` |
| 10 | `structure` | [BoundaryRequest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/boundaryrequest--c576bd29ae9ec269b9ca50a0.md) | 98 | `declaration-track:c576bd29ae9ec269b9ca50a0dbf357f7cfc09b70f899f23500b32687fb45dd69` |
| 11 | `inductive` | [TotalStepResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/totalstepresult--05f28b4dffa794c3340a7b2a.md) | 113 | `declaration-track:05f28b4dffa794c3340a7b2a79453c0fca301bf1692c45305591668b257394cb` |
| 12 | `def` | [totalStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/totalstep--0558cd425eb2d24bd39c88bd.md) | 130 | `declaration-track:0558cd425eb2d24bd39c88bdbc8a9539c18065496e4d9e6cba8bb4ef7743ce53` |
| 13 | `def` | [attemptTotalStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/attempttotalstep--124ddcdb8aa3217390aec018.md) | 166 | `declaration-track:124ddcdb8aa3217390aec01842ae23ceb913726a2b1e3477fdd229616713ebdc` |
| 14 | `theorem` | [totalStep_boundary_has_nonzero_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variantc7b991208870f49cc191b2741ef79b9ee7094ac2700a602e4bd0c02448f2cf86.lean/declarations/totalstep-boundary-has-nonzero-residue--5e7f8add1c61ba6542a61fa3.md) | 199 | `result-track:5e7f8add1c61ba6542a61fa358d6bf0ad32181c7c6d4b411819ada0e32dedbdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
