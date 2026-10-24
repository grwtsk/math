# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f873171207ec84f8ea351c3081b516c50644b4ed",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f873171207ec84f8ea351c3081b516c50644b4ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.Monadic.Attach` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.unattach_eq_toIter_unattach_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-unattach-eq-toiter-unattach-toiterm--adeec9fbb2c9f71899cd6789.md) | 31 | `result-track:adeec9fbb2c9f71899cd678980924cac35dc5ff3968415af1df8890f809ef2c1` |
| 2 | `theorem` | [Iter.unattach_toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-unattach-tolist-attachwith--69a1cb9e4d66829f390f3015.md) | 37 | `result-track:69a1cb9e4d66829f390f30152daac5741c9f276379726339beedf0430b714860` |
| 3 | `theorem` | [Iter.toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-tolist-attachwith--22e14f99df575795ad0b7428.md) | 46 | `result-track:22e14f99df575795ad0b7428ddd874cbe7215ee382161a6edba73a63898d4eb1` |
| 4 | `theorem` | [Iter.unattach_toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-unattach-tolistrev-attachwith--7eff0dcd5e1b3dea7a86d7e2.md) | 58 | `result-track:7eff0dcd5e1b3dea7a86d7e2e004f2525af9e844facc75b96d1d139d6d608991` |
| 5 | `theorem` | [Iter.toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-tolistrev-attachwith--e6ddfc9d68b7900e9fe17c71.md) | 65 | `result-track:e6ddfc9d68b7900e9fe17c71960eb68bcecc84953c6320e3f055fece69c832e4` |
| 6 | `theorem` | [Iter.unattach_toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-unattach-toarray-attachwith--0077a910b2acf4b3b2a0eb8f.md) | 73 | `result-track:0077a910b2acf4b3b2a0eb8fa457a2e68827fb05171954b5df3a1f54bcbf02d2` |
| 7 | `theorem` | [Iter.toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-toarray-attachwith--30e7907562b0fdf208786f9e.md) | 80 | `result-track:30e7907562b0fdf208786f9ee3c2cf6d2d336754d22f1e1f96a07316fae93860` |
| 8 | `theorem` | [Iter.length_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-length-attachwith--86b061159cf5fb3e80ed5ef6.md) | 91 | `result-track:86b061159cf5fb3e80ed5ef6e752fc8b380010df71cea731fb698f2937798aac` |
| 9 | `def` | [Iter.count_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6.lean/declarations/iter-count-attachwith--9e11f2b81870b892462767e3.md) | 101 | `declaration-track:9e11f2b81870b892462767e33b664f3100496ae716dad60e03c0d41a8ae2ac31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
