# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModifyLast.Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e6c9fe777573b1057227c99801ca52df63eb66f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e6c9fe777573b1057227c99801ca52df63eb66f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [modifyLast.go_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean/declarations/modifylast-go-concat--cdb04c9ed773ae9a5e774e59.md) | 15 | `result-track:cdb04c9ed773ae9a5e774e59fdd5d22163c5e23415791b6164e5ed992efd5b4a` |
| 2 | `theorem` | [modifyLast_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean/declarations/modifylast-concat--b63748b839c8ff37ffef8138.md) | 28 | `result-track:b63748b839c8ff37ffef813840f35ff55a325f2ffb3da86db8413d03008b5ae7` |
| 3 | `theorem` | [modifyLast_append_of_right_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModifyLast/Variant5204ab1f9f0d2076f58434178f26546fd2283c17dbdd7c6595042d07c212c83d.lean/declarations/modifylast-append-of-right-ne-nil--f38123a6f3c2e694ed58c605.md) | 44 | `result-track:f38123a6f3c2e694ed58c6050bdfdc7813053951858ba347da33e21827e1108d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
