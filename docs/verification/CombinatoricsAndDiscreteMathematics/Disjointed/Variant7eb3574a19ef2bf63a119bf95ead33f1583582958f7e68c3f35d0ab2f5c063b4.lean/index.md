# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Disjointed.Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9abe3994e3b5c08a479e04b7d87aff9288e9d99`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.PartialSups` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed--97d0a1126c2ceccf0b463248.md) | 55 | `declaration-track:97d0a1126c2ceccf0b463248a93175527574479b7aa4b745e05e97733ceaacff` |
| 2 | `lemma` | [disjointed_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-apply--aa5492a6623ba3f32c7b5046.md) | 57 | `result-track:aa5492a6623ba3f32c7b5046c3c3886752f58efc7d3f03748d483d76d3ea8a0b` |
| 3 | `lemma` | [disjointed_of_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-of-ismin--25cf09d377f5391981ebed1c.md) | 59 | `result-track:25cf09d377f5391981ebed1cb05a42acbaab8f48e7d54438f3041bbf5c5a7aff` |
| 4 | `lemma` | [disjointed_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-bot--addeda0b9a2add655086a5a5.md) | 64 | `result-track:addeda0b9a2add655086a5a5cbab256904740916835d2a66fa0eaa6eb8851135` |
| 5 | `theorem` | [disjointed_le_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-le-id--fa9466a7e9c2f0404a397216.md) | 67 | `result-track:fa9466a7e9c2f0404a397216d7eb54078bfac1d4197c52ba47aa22ee000a3e70` |
| 6 | `theorem` | [disjointed_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-le--16d0fb95e90a70e1cb5285ac.md) | 70 | `result-track:16d0fb95e90a70e1cb5285acd356cea30f864fa119e872d5a4d5387a35b90273` |
| 7 | `theorem` | [disjoint_disjointed_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjoint-disjointed-of-lt--8c3899d2f49b40ed737a4531.md) | 73 | `result-track:8c3899d2f49b40ed737a4531bea87848c7e027392eb9b60067e9867e0dcb6440` |
| 8 | `lemma` | [disjointed_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-eq-self--6a3483ba677269c0a2daaf3c.md) | 77 | `result-track:6a3483ba677269c0a2daaf3c14bb3630a99621e1f2c0e169f99920abac18d69d` |
| 9 | `lemma` | [disjointedRec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointedrec--ee47ed1932efd98096c43d58.md) | 90 | `result-track:ee47ed1932efd98096c43d58567e965f189783bee038ab6f7e034414aa5d8e6c` |
| 10 | `theorem` | [partialSups_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/partialsups-disjointed--c1ea1757c106fbb6e64a40c4.md) | 110 | `result-track:c1ea1757c106fbb6e64a40c44bcb9ad051e20055c400bda4066723bd8fa73b5b` |
| 11 | `lemma` | [Fintype.sup_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/fintype-sup-disjointed--ee697dca715c2f1dc762fab5.md) | 149 | `result-track:ee697dca715c2f1dc762fab540a20e53bf823af7034f8cdb48eafcff41138850` |
| 12 | `lemma` | [disjointed_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-partialsups--a0950806be7eb007207627c7.md) | 158 | `result-track:a0950806be7eb007207627c77316d678e2f09b4089e799b12bee1131179f6913` |
| 13 | `theorem` | [disjointed_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-unique--bb07797b15666743916e5c8d.md) | 174 | `result-track:bb07797b15666743916e5c8d2f01d16829e46af8776bfb327a6caa3b7d1af6a4` |
| 14 | `theorem` | [disjoint_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjoint-disjointed--e4ec870daf0b798c1df1e92d.md) | 190 | `result-track:e4ec870daf0b798c1df1e92deefef7ec4a96d8554b266cf61fc8ed7deadff840` |
| 15 | `theorem` | [disjointed_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-unique--156221d1dfed81343b0804f1.md) | 195 | `result-track:156221d1dfed81343b0804f1af2e1824398df9e04ab625f73611dbdb3d76b78c` |
| 16 | `lemma` | [disjointed_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-succ--0bf7c60b20886d48137ea63d.md) | 203 | `result-track:0bf7c60b20886d48137ea63d7e18c556c02a1b711bab4903ce49ba3a79f229e5` |
| 17 | `lemma` | [Monotone.disjointed_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/monotone-disjointed-succ--39b5ec7f3d4fbbc6d4e64829.md) | 209 | `result-track:39b5ec7f3d4fbbc6d4e64829f5062e910cfadef1bd1f60d8b37df13a9765a411` |
| 18 | `lemma` | [Monotone.disjointed_succ_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/monotone-disjointed-succ-sup--a496b7266c0a11a4a929181e.md) | 214 | `result-track:a496b7266c0a11a4a929181ec62413a8d2a3de0fad96f59c7d17ae20c69d107b` |
| 19 | `lemma` | [Fintype.exists_disjointed_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/fintype-exists-disjointed-le--5e1cd077f7fa98ffc76c550c.md) | 236 | `result-track:5e1cd077f7fa98ffc76c550c028b153d74ae722397a79d490b1f0a10f3d7cc5a` |
| 20 | `theorem` | [iSup_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/isup-disjointed--5aa70d86bf54fdc7b23308f2.md) | 258 | `result-track:5aa70d86bf54fdc7b23308f2d151ef2d157bf8cfb680fa8c167b20583ef175e2` |
| 21 | `theorem` | [disjointed_eq_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-eq-inf-compl--fdc29b97a52e0fde25c25ef1.md) | 262 | `result-track:fdc29b97a52e0fde25c25ef149c2997ffac4005bfdbaa1296a1bf6c17bbc8768` |
| 22 | `theorem` | [disjointed_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-subset--cf6eacb56f332d6d45ef3777.md) | 272 | `result-track:cf6eacb56f332d6d45ef37771260157d728928b256ebfc1f19e168147e276b88` |
| 23 | `theorem` | [iUnion_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/iunion-disjointed--c978da32e8221c8110bf5ea8.md) | 276 | `result-track:c978da32e8221c8110bf5ea89e8061625a5f0bf29d25ef409a8fc602ec0038fe` |
| 24 | `theorem` | [disjointed_eq_inter_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-eq-inter-compl--4340af94d5907856f832ff02.md) | 280 | `result-track:4340af94d5907856f832ff02fccb3f088387256278783a56c9e377cdc4d94960` |
| 25 | `theorem` | [preimage_find_eq_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/preimage-find-eq-disjointed--0f1ed89709ab363108f0b491.md) | 284 | `result-track:0f1ed89709ab363108f0b491ccf9ab8108a6f6930092b79e736102badc4f10dc` |
| 26 | `theorem` | [disjointed_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/declarations/disjointed-zero--e62a5a155a7afd6d69937618.md) | 302 | `result-track:e62a5a155a7afd6d69937618ffee6ebcb06491143f3f7b551718df60afd69fb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
