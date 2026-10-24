# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c519406b6416a6aa303ce02d1d43ef53796f5d1c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c519406b6416a6aa303ce02d1d43ef53796f5d1c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Consumers.Collect` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Consumers.Loop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 20; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Lemmas.Producers.Monadic.Vector` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Vector.iter_eq_toIter_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iter-eq-toiter-iterm--ac505441f2ef933e6763e5d1.md) | 41 | `result-track:ac505441f2ef933e6763e5d14a9971abc204f88cb002b5be9ec291d28bc54ca1` |
| 2 | `theorem` | [Vector.iter_eq_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iter-eq-iterfromidx--212b99e30cf773e152a731ae.md) | 45 | `result-track:212b99e30cf773e152a731aeb301dbe45abec63fd610610ecd57453c3d1d46e6` |
| 3 | `theorem` | [Vector.iterFromIdx_eq_toIter_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iterfromidx-eq-toiter-iterfromidxm--ed01f98e358509142eb8d3bb.md) | 49 | `result-track:ed01f98e358509142eb8d3bbe53ea98d3897809a0029aada0b3877dcb7f62bb8` |
| 4 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidx-of-lt--07287604c471a5c7dc458d6c.md) | 53 | `result-track:07287604c471a5c7dc458d6c5cfd475469d19d43498e691569cd582f18124e75` |
| 5 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdx_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidx-of-not-lt--7060bef2cb0e13e5d0ef4b98.md) | 60 | `result-track:7060bef2cb0e13e5d0ef4b98678753cc397d70993c3dcb547a4a24e807aad98e` |
| 6 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iter_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/std-iterators-vector-isplausiblestep-iter-of-pos--d50fb9b3eabab9ea099044d5.md) | 66 | `result-track:d50fb9b3eabab9ea099044d588b0991916b42b8d32c6a8badd628faba3aad1cf` |
| 7 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iter_of_not_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/std-iterators-vector-isplausiblestep-iter-of-not-pos--81a66c1081e8bdada4efb2ee.md) | 72 | `result-track:81a66c1081e8bdada4efb2ee08a3fb381d061bad065aae557b949f795971427a` |
| 8 | `theorem` | [Vector.iterFromIdx_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iterfromidx-toarray--68652dce2fc6e76d768853a8.md) | 79 | `result-track:68652dce2fc6e76d768853a8cf91555f8999569b8be61febeafa960b8815ca83` |
| 9 | `theorem` | [Vector.iter_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iter-toarray--02583b4bac9afc7e1ab062bd.md) | 84 | `result-track:02583b4bac9afc7e1ab062bdb2284264f2fc04bae752fb881bf0f154fcbf69ce` |
| 10 | `theorem` | [Vector.step_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-step-iterfromidx--2bc6cb623a8c2b7c05e1d034.md) | 88 | `result-track:2bc6cb623a8c2b7c05e1d03409fd44e3fe84ad6006af53557ab0ab092731996c` |
| 11 | `theorem` | [Vector.step_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-step-iter--09640cc5ba9e2a525495602a.md) | 98 | `result-track:09640cc5ba9e2a525495602a67d3deab95c03f04196459dd2e73bc5d122b1156` |
| 12 | `theorem` | [Vector.toList_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-tolist-iterfromidx--9a7a49efb065e79cb8823e3f.md) | 109 | `result-track:9a7a49efb065e79cb8823e3f39b6ba09fcd713021a31f187e3195b3d091790c4` |
| 13 | `theorem` | [Vector.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-tolist-iter--15a3035ea9f1584bb028b07a.md) | 115 | `result-track:15a3035ea9f1584bb028b07a039591a2b80c4ed3aff5b062728f9400b259b11c` |
| 14 | `theorem` | [Vector.toArray_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-toarray-iterfromidx--93b3a0e65c59ae16a6024eaf.md) | 120 | `result-track:93b3a0e65c59ae16a6024eaf99152dbad27c70137d0f9f5313492af0af0d8abb` |
| 15 | `theorem` | [Vector.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-toarray-iter--0d163e5cf81f9a0bee94c153.md) | 125 | `result-track:0d163e5cf81f9a0bee94c153e4b5337d4adbcc89317ec409b8b83aab46795ae4` |
| 16 | `theorem` | [Vector.toListRev_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-tolistrev-iterfromidx--2630a658396be9d861a1ce6f.md) | 130 | `result-track:2630a658396be9d861a1ce6fcbe27a72d732ec6ba0ae7923cd570fe46f0a9bec` |
| 17 | `theorem` | [Vector.toListRev_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-tolistrev-toiter--906f34417fe01e89fe62ff2a.md) | 135 | `result-track:906f34417fe01e89fe62ff2aa22cf60308ae67793989357ac97e82a085927e03` |
| 18 | `theorem` | [Vector.length_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-length-iterfromidx--35ae67fb18812c8f7485d216.md) | 140 | `result-track:35ae67fb18812c8f7485d216580f3904f72c8a56b2d6e434154bf9539307b200` |
| 19 | `theorem` | [Vector.length_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-length-iter--2d6ec27c64c4256e5eefc3e7.md) | 145 | `result-track:2d6ec27c64c4256e5eefc3e7cc6d63c75e7c0a4c7fa348b6a442f83eeb02fd2b` |
| 20 | `theorem` | [Vector.iterFromIdx_equiv_iter_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iterfromidx-equiv-iter-drop-tolist--4a1b2d94f97c8eba0d32c67e.md) | 151 | `result-track:4a1b2d94f97c8eba0d32c67e08dfafddb6e45325652e5e68dfdcfcc5b0be6b7a` |
| 21 | `theorem` | [Vector.iter_equiv_iter_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant3d26f7edefd8a8069d89f73875df7b9a522a7bada32f79b787964ece47ecf4e0.lean/declarations/vector-iter-equiv-iter-tolist--26eb6a71ad06c181df8249dc.md) | 156 | `result-track:26eb6a71ad06c181df8249dcffce52018e0eabe2703b6798addced807d9573f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
