# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "468d77281a58b292d77bd62136e176e47d5d7a7b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `468d77281a58b292d77bd62136e176e47d5d7a7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.takeWhile_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-takewhile-eq--874e5348dc8c3d7af7e933c1.md) | 30 | `result-track:874e5348dc8c3d7af7e933c1b6a5e66eeda22ac0d8098fca7872af5c0686e251` |
| 2 | `theorem` | [Iter.step_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-step-takewhile--5e746fab3ec9ac8fc11cf4f4.md) | 35 | `result-track:5e746fab3ec9ac8fc11cf4f486b7bc8b790202f244885ce841b789c21f3acac1` |
| 3 | `theorem` | [Iter.val_step_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-val-step-takewhile--9c864315b2d000408fda66b2.md) | 51 | `result-track:9c864315b2d000408fda66b2a49b877783c527a34b07867a9a146d58e5342df6` |
| 4 | `theorem` | [Iter.atIdxSlow?_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-atidxslow-takewhile--d29ac4dc753ddb4640dd50bf.md) | 68 | `result-track:d29ac4dc753ddb4640dd50bf6573ec7e4e622f5c5c020b260134cb599f21fa6c` |
| 5 | `theorem` | [List.getElem?_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/list-getelem-takewhile--b9a339c6f7f2094c6ea1a728.md) | 119 | `result-track:b9a339c6f7f2094c6ea1a728e52299f6e4454f4aa51702809875cf40528c07f8` |
| 6 | `theorem` | [Iter.toList_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-tolist-takewhile-of-finite--b060d8a27d21b963e12d758f.md) | 148 | `result-track:b060d8a27d21b963e12d758f5d2bdc8eb4197a3fab644d01a0e11ca0300e6c0f` |
| 7 | `theorem` | [Iter.toListRev_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-tolistrev-takewhile-of-finite--cec4c166b53edd2b0118335b.md) | 156 | `result-track:cec4c166b53edd2b0118335b0145d983aee4e3b200b71c6cf24e6d43ced91641` |
| 8 | `theorem` | [Iter.toArray_takeWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantcea5a406a08400140c57af98a34f0f1fdb7c6723777e93ded0da2891ab73a9ea.lean/declarations/iter-toarray-takewhile-of-finite--a7903dd928567e0dbf3dec5b.md) | 163 | `result-track:a7903dd928567e0dbf3dec5bd1c5d8f2c9bbfc7593fa87c6ef479d850cfae162` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
