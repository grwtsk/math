# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1b50cf7dcc71bd2525d6c2e02d70043b09a3ed4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1b50cf7dcc71bd2525d6c2e02d70043b09a3ed4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/fintypebind--bbca1a82851e17a2fc847dbd.md) | 40 | `declaration-track:bbca1a82851e17a2fc847dbd02f18722ac69b6431ce0f2e5f8471a38243e7d1d` |
| 2 | `instance` | [fintypeBind'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/fintypebind--091ad841c70de2009b0303b5.md) | 44 | `declaration-track:091ad841c70de2009b0303b54c577806eb8413c1fee5a7f3cf7ecf50fab49e6d` |
| 3 | `instance` | [fintypePure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/fintypepure--e10743fd0eb70d0c9eac63f8.md) | 50 | `declaration-track:e10743fd0eb70d0c9eac63f836a3aa4697250a9b5164363d62503b6424442a96` |
| 4 | `instance` | [fintypeSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/fintypeseq--8f42531260f83102743bfc8a.md) | 53 | `declaration-track:8f42531260f83102743bfc8a44c5ee8a39ae4dbad8f50758b21c74a6621dab38` |
| 5 | `instance` | [fintypeSeq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/fintypeseq--047852beb7d07aa94f452856.md) | 58 | `declaration-track:047852beb7d07aa94f4528564bd576f854ae7703a3a257ef5eaec44179d343b3` |
| 6 | `theorem` | [finite_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/finite-pure--fa88dacd7e2ede280531cb35.md) | 80 | `result-track:fa88dacd7e2ede280531cb35d537b2e8444c3e811fbf5a9946a7b31168673cad` |
| 7 | `instance` | [finite_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/finite-seq--833d97b75e498fdf5cc31c2d.md) | 83 | `declaration-track:833d97b75e498fdf5cc31c2d5838ca061f55e4afc291521d826eb1c26281fb60` |
| 8 | `theorem` | [Finite.bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/finite-bind--ab9a963bc3ff9798e906c24a.md) | 106 | `result-track:ab9a963bc3ff9798e906c24af15156499328ddc8a3e441d9bb48bcf0bfea112d` |
| 9 | `theorem` | [Finite.seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/finite-seq--57f7b8e58cd835c9fd71ed9c.md) | 112 | `result-track:57f7b8e58cd835c9fd71ed9c3f93a92b2e8ad54042bc88657711e4710165a80f` |
| 10 | `theorem` | [Finite.seq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant780afdc79c3db3ed79274ec7e143c47926428a15f4c7ca99a0ab27c3404400d3.lean/declarations/finite-seq--c62ecbfd2e1a4f349b124a08.md) | 116 | `result-track:c62ecbfd2e1a4f349b124a08e75b6652ad19576491e2ae62215635d140023264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
