# Verification target: GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cece7d1179cc3b67ce0dabc1b7bbaeb5aed0068a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalDiskSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cece7d1179cc3b67ce0dabc1b7bbaeb5aed0068a`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalDiskSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalDiskSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separated](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/separated--729c3f7c95dd2ae92c4b7154.md) | 24 | `declaration-track:729c3f7c95dd2ae92c4b715486683f8e7f465dba39dd530c5e6213eb9b5b0aa4` |
| 2 | `def` | [belowHeight](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/belowheight--b33f641d3e1b00d5e19394f1.md) | 28 | `declaration-track:b33f641d3e1b00d5e19394f17e5e29e864ab714d25a2e825e76b8c813b993cbf` |
| 3 | `theorem` | [separated_iff](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/separated-iff--14195c5731c06912f923e4fa.md) | 31 | `result-track:14195c5731c06912f923e4fae44505d70c8ebbdb614d2ce02ea13c79d59a9035` |
| 4 | `theorem` | [belowHeight_iff](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/belowheight-iff--06c060c7df6b8d136671102f.md) | 36 | `result-track:06c060c7df6b8d136671102fecf6a9aee1359621232587894231abd7096ffd7d` |
| 5 | `theorem` | [separation_distance](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/separation-distance--599cf2d64c71b24329eb118f.md) | 40 | `result-track:599cf2d64c71b24329eb118fa722cc9f72b0420fdb6ec2cb90d0a7db1f67ea06` |
| 6 | `theorem` | [enclosed_points_ne](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/enclosed-points-ne--c4908fe846b0c28f933f258a.md) | 54 | `result-track:c4908fe846b0c28f933f258ad17ae642ed2703feb9fe14d7d6967494598f7a76` |
| 7 | `theorem` | [enclosed_height_le](../../../../mathematics/Analysis/ErrorBounds/RationalDiskSeparation.lean/declarations/enclosed-height-le--ef6dca8f95f211de1aa229ad.md) | 68 | `result-track:ef6dca8f95f211de1aa229ad21f60e6638a232aa257b1a9c246fc4d9d260e56b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
