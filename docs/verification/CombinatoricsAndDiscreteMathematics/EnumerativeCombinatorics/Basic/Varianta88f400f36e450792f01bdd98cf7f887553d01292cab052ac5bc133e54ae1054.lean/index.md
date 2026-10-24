# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Basic.Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9343cf9ab6833297ca7d664d5efa7fa1fdcd72c3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9343cf9ab6833297ca7d664d5efa7fa1fdcd72c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/partition--f4e0bfd6b0727df871057398.md) | 45 | `declaration-track:f4e0bfd6b0727df87105739851bc4e0b8e23eecb5141c79aa201cb3ca3539e59` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/instance--214a79d90da4e1c885140db6.md) | 63 | `declaration-track:214a79d90da4e1c885140db6384d23046b92c0064c2e49239d8807a5ebeb24ae` |
| 3 | `def` | [Simps.coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/simps-coe--30d7380833b7484c19c115e5.md) | 68 | `declaration-track:30d7380833b7484c19c115e57697e4f20c3897cb00692efce3e43df119c34e69` |
| 4 | `lemma` | [coe_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/coe-parts--79aaf00c19c5047e24974824.md) | 72 | `result-track:79aaf00c19c5047e2497482443f6fd2d323656f72d5424dcead234cb6d011242` |
| 5 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/ext--437aa0d54f198002fa9d9749.md) | 74 | `result-track:437aa0d54f198002fa9d974957db87feadc7cc882334ed96d447e9f6682c3e5b` |
| 6 | `lemma` | [sSupIndep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/ssupindep--59898ffc3dbec9ca67d11263.md) | 78 | `result-track:59898ffc3dbec9ca67d1126390d6c5aaf0829ac4626abcf8debe182b48e37428` |
| 7 | `lemma` | [disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/disjoint--5d123fb69ed48449168b5d06.md) | 81 | `result-track:5d123fb69ed48449168b5d06a2dc36c1d173c2021e9c948763abb5122c41497d` |
| 8 | `lemma` | [pairwiseDisjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/pairwisedisjoint--bb7978ae4c858aee3ffb85b2.md) | 85 | `result-track:bb7978ae4c858aee3ffb85b26cfdb0f559d8b516347b64719a69841cd8521d4a` |
| 9 | `lemma` | [sSup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/ssup-eq--6fbf7190124f9c774ae3b73b.md) | 89 | `result-track:6fbf7190124f9c774ae3b73b50300d272e328ea79f80eff723998827fed235f5` |
| 10 | `lemma` | [iSup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/isup-eq--3c19790119e8ea1c121ed31f.md) | 93 | `result-track:3c19790119e8ea1c121ed31fd640def2edf4e16b995dbe2df70ebe101afd8c43` |
| 11 | `lemma` | [le_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/le-of-mem--01994f4680ccc65ebb4e6777.md) | 97 | `result-track:01994f4680ccc65ebb4e67775ed5534e857ef2d4d56c9e95e3d914f409610e56` |
| 12 | `lemma` | [parts_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/parts-nonempty--cc75917bcc46f1d563240cb6.md) | 100 | `result-track:cc75917bcc46f1d563240cb6b1a568133aed24b3a954325e607c8f6bc5aab084` |
| 13 | `lemma` | [bot_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/bot-notmem--245410208a6487cc2182456c.md) | 104 | `result-track:245410208a6487cc2182456c653430b11bd8a4a113b5415b776353a2125b0d15` |
| 14 | `lemma` | [ne_bot_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/ne-bot-of-mem--a689e2f1a7203d8ab3c768b7.md) | 109 | `result-track:a689e2f1a7203d8ab3c768b72894e70465ec8fcc6d9443641be654595659b247` |
| 15 | `lemma` | [bot_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/bot-lt-of-mem--36fe897d591f95349df91843.md) | 112 | `result-track:36fe897d591f95349df918435897885796587d39cd0bfdd1d9b93f6306ac8ecb` |
| 16 | `def` | [copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/copy--6a7eac6c096f9e7b9f5f62de.md) | 117 | `declaration-track:6a7eac6c096f9e7b9f5f62deca84161b34776e6335bc7273fb73478514304057` |
| 17 | `lemma` | [mem_copy_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/mem-copy-iff--700959e7772bf906d6ada08e.md) | 124 | `result-track:700959e7772bf906d6ada08eb0d726ed948847e6174d29ff5fc471d33030611a` |
| 18 | `def` | [partscopyEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/partscopyequiv--4600051f908f8c52a9c96360.md) | 128 | `declaration-track:4600051f908f8c52a9c963609d81c43f7a72c04187ba1428c2ec7124dcb76175` |
| 19 | `def` | [removeBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054.lean/declarations/removebot--32ff3918427d632eeeb6d4de.md) | 133 | `declaration-track:32ff3918427d632eeeb6d4de0c4bb05996d61cba9b13f47d41dc3a971a20b460` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
