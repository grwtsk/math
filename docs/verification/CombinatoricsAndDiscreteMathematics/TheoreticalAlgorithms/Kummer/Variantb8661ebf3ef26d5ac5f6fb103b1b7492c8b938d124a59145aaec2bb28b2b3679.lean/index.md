# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Kummer.Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bf8c6021699c4c6a6bc19174d0c3c64dc07d658",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bf8c6021699c4c6a6bc19174d0c3c64dc07d658`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.DependencyInvariant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteH1Map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/finiteh1map--fa8792ae16c4050f6dc9f10e.md) | 36 | `declaration-track:fa8792ae16c4050f6dc9f10ebb293b73a8cda63bc40b4d5017c8670f970692bf` |
| 2 | `structure` | [FiniteKummerSelmerData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/finitekummerselmerdata--fefa2fbf966d66036ad17a57.md) | 50 | `declaration-track:fefa2fbf966d66036ad17a5719d267e8ae1beb06faaeae6895292940dfc791ed` |
| 3 | `def` | [compatibleWithRestriction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/compatiblewithrestriction--617f5f093297dd4aec4d5478.md) | 73 | `declaration-track:617f5f093297dd4aec4d54786c2166fef3702c40b12dd29a72622d396f50f2db` |
| 4 | `theorem` | [compatibleWithRestriction_of_field](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/compatiblewithrestriction-of-field--f7768b3d8577780c7f79b42c.md) | 81 | `result-track:f7768b3d8577780c7f79b42c52041f7efaba7b32cf4f0a5926aa8b7efb06c07a` |
| 5 | `def` | [globalImageLandsInSelmer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/globalimagelandsinselmer--9cc8b33d2318e41eb6b96063.md) | 88 | `declaration-track:9cc8b33d2318e41eb6b960633c89c2459140113d986b56b844f4033684f03f75` |
| 6 | `theorem` | [globalImageLandsInSelmer_of_local_conditions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/globalimagelandsinselmer-of-local-conditions--82fe948f4a96eceff87b67a8.md) | 95 | `result-track:82fe948f4a96eceff87b67a861a3e4f27ed602835bd7384ff7d5d41b1494745e` |
| 7 | `theorem` | [depends_after_finiteSelmer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/declarations/depends-after-finiteselmer--4125e8c7758abbc5fb2d275e.md) | 110 | `result-track:4125e8c7758abbc5fb2d275e1375fb7f3ca25b65a986eacefc625507d22896d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
