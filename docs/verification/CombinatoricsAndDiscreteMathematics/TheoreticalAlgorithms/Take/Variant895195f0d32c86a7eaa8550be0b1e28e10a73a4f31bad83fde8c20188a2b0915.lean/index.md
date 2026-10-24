# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Take.Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1612003a7fe28e3d4cdb3c67ab4205161a7de62",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1612003a7fe28e3d4cdb3c67ab4205161a7de62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.take_eq_toIter_take_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-take-eq-toiter-take-toiterm--55aed725d53de4eca085546f.md) | 24 | `result-track:55aed725d53de4eca085546f741d432ee3e01938b2184fdd828fbeb69204e8c1` |
| 2 | `theorem` | [Iter.toTake_eq_toIter_toTake_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-totake-eq-toiter-totake-toiterm--2e24446f19896013a4e34ce0.md) | 29 | `result-track:2e24446f19896013a4e34ce0f6c870fe50897411be16465958c8298d1f9aab0a` |
| 3 | `theorem` | [Iter.step_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-step-take--34621d1d62714aee27425c7e.md) | 34 | `result-track:34621d1d62714aee27425c7ecfc8a9c584979bb2c6f9a4b43695db32280a5b80` |
| 4 | `theorem` | [Iter.atIdxSlow?_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-atidxslow-take--a8bc8cc3e518e822fa961de9.md) | 52 | `result-track:a8bc8cc3e518e822fa961de934d20815ec7f8216e7da89150cb07c75694827fe` |
| 5 | `theorem` | [Iter.toList_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-tolist-take-of-finite--a43ae84d75502449701966f3.md) | 71 | `result-track:a43ae84d75502449701966f37524b42a7298ef4557b9ae1bfdbab757b2819c69` |
| 6 | `theorem` | [Iter.toListRev_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-tolistrev-take-of-finite--7bee20106543341b8b88e321.md) | 87 | `result-track:7bee20106543341b8b88e3210c1e6e2e42ac6bedba0f22977e6455a0373ad57e` |
| 7 | `theorem` | [Iter.toArray_take_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-toarray-take-of-finite--bcc03a5cf30667c1b2ab1a2a.md) | 93 | `result-track:bcc03a5cf30667c1b2ab1a2ac79d4a1447c665a2aa891191df8248e6501eaa00` |
| 8 | `theorem` | [Iter.toList_take_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-tolist-take-zero--bf6d57e965dd9887ae5a335a.md) | 99 | `result-track:bf6d57e965dd9887ae5a335ac394a9f30d5cf8cb31f0d4d172ec424970de2598` |
| 9 | `theorem` | [Iter.step_toTake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-step-totake--ccbe1ce98e3f5bb246038cba.md) | 105 | `result-track:ccbe1ce98e3f5bb246038cba8c16d0a7b4b306e82b6caad31cdd8e3de964fd67` |
| 10 | `theorem` | [Iter.toList_toTake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/declarations/iter-tolist-totake--c695782b74f3376d73077313.md) | 118 | `result-track:c695782b74f3376d73077313487f585f1bc37fe3c01335167efe5d8fd1cfbdd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
