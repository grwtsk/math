# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunLinter.Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b153d99c2f761c6fdd73bc91e2fd2fd5ac40419",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b153d99c2f761c6fdd73bc91e2fd2fd5ac40419`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Lint` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.Path` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [NoLints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/declarations/nolints--f716d8058914b815afe57c39.md) | 16 | `declaration-track:f716d8058914b815afe57c39168a8cc4e7060960473a0de5fe1ed23cfeec965d` |
| 2 | `def` | [readJsonFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/declarations/readjsonfile--5636f04bf3df705d15613f02.md) | 19 | `declaration-track:5636f04bf3df705d15613f0270d89e8fb71a34b2bf741cf592a90d4bcc57ed83` |
| 3 | `def` | [writeJsonFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/declarations/writejsonfile--87d3a66658f1425e4b458f6a.md) | 24 | `declaration-track:87d3a66658f1425e4b458f6af02e810fd8281eb2a95e9b824cd7508074264915` |
| 4 | `def` | [main](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant6dcb8a9cf12e5b6ca733700c07be9759ed88a521ae6eea83d7744ed9b7dcf26d.lean/declarations/main--c3248c6d996e309a5d2d29f7.md) | 34 | `declaration-track:c3248c6d996e309a5d2d29f75d90b1841aec4a19a2d5f2e15a5f34af1fb77f3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
