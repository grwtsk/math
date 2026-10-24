# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllAny.Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1724a9ef0bbaba50a0e41fe947b9608f972248b4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1724a9ef0bbaba50a0e41fe947b9608f972248b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [all_iff_forall_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean/declarations/all-iff-forall-prop--03d49f74d417964b9436868a.md) | 21 | `result-track:03d49f74d417964b9436868a80d500154dad3cb5098e242914a4857ceaf41908` |
| 2 | `theorem` | [any_iff_exists_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean/declarations/any-iff-exists-prop--1f5a94a4d163fb20815229d4.md) | 24 | `result-track:1f5a94a4d163fb20815229d4f1c408ecf24f60c2e00dcbe1b0d71727eb078cdd` |
| 3 | `theorem` | [any_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllAny/Variant640e4d31f55d6faa533a0787f4564ff0d9002e86d0ce79343ae088cf27d56ca4.lean/declarations/any-of-mem--1bc469f7df58acad1e6a444d.md) | 26 | `result-track:1bc469f7df58acad1e6a444dd498eecc5882103e4e2886ee592351b06cf80dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
