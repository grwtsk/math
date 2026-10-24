# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bootstrap.Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89252603cff93e38af0001bbd842c41470f15528",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89252603cff93e38af0001bbd842c41470f15528`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [foldlM_toList.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldlm-tolist-aux--7f3e5a999c77835fdadd8768.md) | 28 | `result-track:7f3e5a999c77835fdadd8768fad85606209c7e2a29ac08aba2ab2fa3754ac672` |
| 2 | `theorem` | [foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldlm-tolist--3cb70f70c5a5550e93242dce.md) | 40 | `result-track:3cb70f70c5a5550e93242dce219ea5f3b3236c55b6a1b5ba894373da85848b02` |
| 3 | `theorem` | [foldl_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldl-tolist--5586fce22d4b357e2ca61523.md) | 45 | `result-track:5586fce22d4b357e2ca615238363ef28e88ace997ead9d38d77690059322e1aa` |
| 4 | `theorem` | [foldrM_eq_reverse_foldlM_toList.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldrm-eq-reverse-foldlm-tolist-aux--5af7104405b4fd313002b149.md) | 49 | `result-track:5af7104405b4fd313002b149f8744b4654d536168058320ab98dd54ce7fb25e7` |
| 5 | `theorem` | [foldrM_eq_reverse_foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldrm-eq-reverse-foldlm-tolist--87f93b18265f406c63c9f6ba.md) | 59 | `result-track:87f93b18265f406c63c9f6bad03059677c15a5aafd54fdb7c7b47f8aae55fcda` |
| 6 | `theorem` | [foldrM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldrm-tolist--3a9dadf00d3a3b4ba066a9d5.md) | 67 | `result-track:3a9dadf00d3a3b4ba066a9d5a0fb65df9567470c9598f63ed2e12686ed8bf3e9` |
| 7 | `theorem` | [foldr_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/foldr-tolist--c631559fb4fbf2bb2e45e788.md) | 72 | `result-track:c631559fb4fbf2bb2e45e788991618e1868b5f2f823bace6deb70a42c94ba5c6` |
| 8 | `theorem` | [toList_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolist-push--09bd7c8c7a36956b7bbda62e.md) | 76 | `result-track:09bd7c8c7a36956b7bbda62e8cbd95d0062f3d74a0728168a32378c53728b405` |
| 9 | `theorem` | [toListAppend_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolistappend-eq--4b52db0e91b4a3e008a7dcbb.md) | 80 | `result-track:4b52db0e91b4a3e008a7dcbb7376529e060a5c64d89c0063dbb8b15ad186cf13` |
| 10 | `theorem` | [toListImpl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolistimpl-eq--8da4bd051859cc0d009a7da3.md) | 83 | `result-track:8da4bd051859cc0d009a7da34dc156b67c73897a1d3d23f12140f07c70d6d6a3` |
| 11 | `theorem` | [toList_pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolist-pop--0c7f5bbb0d02a3779e117851.md) | 86 | `result-track:0c7f5bbb0d02a3779e117851d853e4ed3207f0819fbfc824505a42e199011b9e` |
| 12 | `theorem` | [append_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/append-eq-append--85d66fc74ff39c0f594d3a35.md) | 88 | `result-track:85d66fc74ff39c0f594d3a3543e0ab112c6ed18ba4b914208b53138ad2431507` |
| 13 | `theorem` | [toList_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolist-append--0e15d1c2ff6ac1d9a185f5f9.md) | 90 | `result-track:0e15d1c2ff6ac1d9a185f5f9d900691f8af9e3aa7aa3b568e8797aa511d780b3` |
| 14 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolist-empty--08cfca2fb368ba53f7bb9e81.md) | 96 | `result-track:08cfca2fb368ba53f7bb9e8144f23b6e0b5afe1d46a5bf099bdd9fdb1c2799b4` |
| 15 | `theorem` | [append_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/append-empty--79e36da20f963f4eb38a011b.md) | 98 | `result-track:79e36da20f963f4eb38a011b873922e039a81d4c4edd39c1db458e27950417a3` |
| 16 | `theorem` | [empty_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/empty-append--19b3794cc1fa32663f277883.md) | 101 | `result-track:19b3794cc1fa32663f2778836fead65d4ed18dfbe67bf26dac94f380cf5c16d0` |
| 17 | `theorem` | [append_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/append-assoc--7f44301f91fffde1630c334f.md) | 104 | `result-track:7f44301f91fffde1630c334f7d32c7e6b5414384a80ae345d27b4b91e8e60932` |
| 18 | `theorem` | [appendList_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/appendlist-eq-append--edc76f96975c01995fde6524.md) | 113 | `result-track:edc76f96975c01995fde6524c369888629c0cc95c2cd3fe03d3ce7892a6cfa0c` |
| 19 | `theorem` | [toList_appendList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bootstrap/Variantf5857aeecfaee150e9daf85202357cbc189b4ddab7f2520c0374d4b11127de81.lean/declarations/tolist-appendlist--7c0a32cdace7b1e3e6fa96c8.md) | 115 | `result-track:7c0a32cdace7b1e3e6fa96c8e7d0c8973b3c92b9260c26e2d9dc9227f951fe9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
