# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ordered.Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e5679106ad16063a85bf21cd293d6d268e9bfd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e5679106ad16063a85bf21cd293d6d268e9bfd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Pairwise` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ordered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered--55b57fb75597347f2290245c.md) | 42 | `declaration-track:55b57fb75597347f2290245c0eb375ebfb5925a6a2a76e4a5952d0397b9fa20b` |
| 2 | `theorem` | [Ordered.left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-left--be6dcef3a46e9714bfa225cd.md) | 49 | `result-track:be6dcef3a46e9714bfa225cd66cc8ce3b8fffb50b5edce61ead6a81436169fe1` |
| 3 | `theorem` | [Ordered.right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-right--d549771a32d74bd70ba4e651.md) | 53 | `result-track:d549771a32d74bd70ba4e6513b9f810623b210636195713fa462f58db7bd7733` |
| 4 | `theorem` | [Ordered.compare_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-compare-left--73ea19aa109e4b742a65bcdf.md) | 57 | `result-track:73ea19aa109e4b742a65bcdf82331ce0381695e06cc9117bad7bb6b8471806ef` |
| 5 | `theorem` | [Ordered.compare_left_beq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-compare-left-beq-gt--a7c5f5dc6d7e8dbaebbdf90e.md) | 61 | `result-track:a7c5f5dc6d7e8dbaebbdf90ea3b38ab2ce0ac95dd0cba0e70c713f3df0f61e4c` |
| 6 | `theorem` | [Ordered.compare_left_not_beq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-compare-left-not-beq-eq--2d93041a01215bb1fa2b9a6d.md) | 66 | `result-track:2d93041a01215bb1fa2b9a6d156a394fd337ad8baf870d00ed96ff6b95089268` |
| 7 | `theorem` | [Ordered.compare_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-compare-right--4f5c2cf66736a59a5f6e96ec.md) | 73 | `result-track:4f5c2cf66736a59a5f6e96ec57135797bf559c411a68173aff396b2551d2b8d5` |
| 8 | `theorem` | [Ordered.compare_right_not_beq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant5d9c8a683735c0fdf36f6943efc91f8d23d47588e7ff3715dfafec37a8088680.lean/declarations/ordered-compare-right-not-beq-gt--402e7a0873a20dc4a57b9866.md) | 78 | `result-track:402e7a0873a20dc4a57b9866e20737d0425753bd27023334f14fd8415ed383a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
