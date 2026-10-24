# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Count.Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cdde4877aaadb559f20a31dff828beb42eafcde",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cdde4877aaadb559f20a31dff828beb42eafcde`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count--49f5f7aa95428f214b183f64.md) | 45 | `declaration-track:49f5f7aa95428f214b183f64d0b0cb1b023c11040be9f83f041bf5c4a2a75e6f` |
| 2 | `theorem` | [count_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-zero--20a1b4cf3fddbebc27466cc8.md) | 49 | `result-track:20a1b4cf3fddbebc27466cc86819611e1624e0d0f696d413c2bb970635b28da6` |
| 3 | `def` | [CountSet.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/countset-fintype--907a1c9e689f24d87591979b.md) | 53 | `declaration-track:907a1c9e689f24d87591979bb15ff610c77ebbec522d4dfb858b016f94fb1c28` |
| 4 | `theorem` | [count_eq_card_filter_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-eq-card-filter-range--021f7aece975c7ab9beb45ec.md) | 60 | `result-track:021f7aece975c7ab9beb45ec27dfe26a9af3bd764e2d8dc41d3b0ffcd0271566` |
| 5 | `theorem` | [count_eq_card_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-eq-card-fintype--a859280e38b1dcb23ccf0763.md) | 65 | `result-track:a859280e38b1dcb23ccf0763a62b46e589e137d35d6087b04fe9301921884f06` |
| 6 | `theorem` | [count_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-le--aab64442e943844d7890951e.md) | 69 | `result-track:aab64442e943844d7890951ee50b03eb5b0eb2d8af3d9f1344b604fab12e37db` |
| 7 | `theorem` | [count_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-succ--603f2bd1da94b9c50f7af94d.md) | 74 | `result-track:603f2bd1da94b9c50f7af94d5844073ffc471c11d2d5d8d3064ac8d7ccae84a6` |
| 8 | `theorem` | [count_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-monotone--d6e8cceffd168f4043552858.md) | 78 | `result-track:d6e8cceffd168f4043552858e17c8ef1b657e46c0b888bd294e9896496f061d6` |
| 9 | `theorem` | [count_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-add--0a73b937fe50993815d8dffd.md) | 81 | `result-track:0a73b937fe50993815d8dffdecd8065e0dce04542d41b61f205bf38df66cd648` |
| 10 | `theorem` | [count_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-add--03bb2cb2e3850d69182a5209.md) | 84 | `result-track:03bb2cb2e3850d69182a5209566cee6dd5473a76d69d17c0cd3504694ef55839` |
| 11 | `theorem` | [count_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-one--8ccb7847e8ddfe522f3a87d5.md) | 88 | `result-track:8ccb7847e8ddfe522f3a87d5418530c8e0db840876ea6fb85c28f137802baffd` |
| 12 | `theorem` | [count_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-succ--8fb215313025719b24eeea75.md) | 90 | `result-track:8fb215313025719b24eeea75adfcacc1134063537e0d0ea57c421a726308a7b0` |
| 13 | `theorem` | [count_lt_count_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-lt-count-succ-iff--5253d3efe60d7bb04945b74e.md) | 97 | `result-track:5253d3efe60d7bb04945b74e3d5b42857feb86bb61e73db1b369356beac73fc5` |
| 14 | `theorem` | [count_succ_eq_succ_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-succ-eq-succ-count-iff--c8d2e439214226c1bd1b400d.md) | 99 | `result-track:c8d2e439214226c1bd1b400dcacf923fce93e7b501835879afb7622b7ee28d15` |
| 15 | `theorem` | [count_succ_eq_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-succ-eq-count-iff--760f93be4a31d56c7d76c826.md) | 101 | `result-track:760f93be4a31d56c7d76c82696a3f1744adae6ddb783ccbeccd41518779c58e5` |
| 16 | `theorem` | [lt_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/lt-of-count-lt-count--8ea45b27c6ffa75b4a36e90c.md) | 107 | `result-track:8ea45b27c6ffa75b4a36e90ca3224294effbaf937f1a8e862ecade0eb1223b38` |
| 17 | `theorem` | [count_strict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-strict-mono--2fa74fd7f540a29a36bd4b07.md) | 110 | `result-track:2fa74fd7f540a29a36bd4b0751df37e806ed554648ca3022d9d76a9554b295f7` |
| 18 | `theorem` | [count_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-injective--a6aad216f6aca024a0f5502e.md) | 113 | `result-track:a6aad216f6aca024a0f5502edcc8349513229b68a0cf9c9f449f9f7aea6beead` |
| 19 | `theorem` | [count_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-le-card--d581a66e06f838c263f3616b.md) | 119 | `result-track:d581a66e06f838c263f3616b7f8b47bc1dcef32fea7c2593de952e571b546837` |
| 20 | `theorem` | [count_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-lt-card--db8a1a6b782ce11a54890b26.md) | 123 | `result-track:db8a1a6b782ce11a54890b2691ec1618b75b203d856bb1b34b7fe7ddc69946d8` |
| 21 | `theorem` | [count_iff_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-iff-forall--da2f957b97e7428b5787882c.md) | 126 | `result-track:da2f957b97e7428b5787882c17164946c215c5dbf6d3e3ea72ffcfa1a1ae7877` |
| 22 | `theorem` | [count_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-true--313551d9369374bfb609a462.md) | 132 | `result-track:313551d9369374bfb609a4624da33f1cf1bb3cab8c572a26aad204976b35b1f3` |
| 23 | `theorem` | [count_iff_forall_not](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-iff-forall-not--d573c2206f539ac1dda8f8f7.md) | 134 | `result-track:d573c2206f539ac1dda8f8f782e2c1775e445905e83fa121f129c98249d50b00` |
| 24 | `theorem` | [count_ne_iff_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-ne-iff-exists--f8bccf65b3d1a560d588239e.md) | 139 | `result-track:f8bccf65b3d1a560d588239e8d5aed73747510fcaefbe3257dc388c9db8cbe3e` |
| 25 | `theorem` | [count_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-false--8b689516c9d9665f5ca3562f.md) | 142 | `result-track:8b689516c9d9665f5ca3562f577d15faca3ed365a5d357df5e92a82f5401a546` |
| 26 | `lemma` | [exists_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/exists-of-count-lt-count--1cb43f8c971c6da8b961eeec.md) | 145 | `result-track:1cb43f8c971c6da8b961eeec6fac5a07cca6d3edcfbeea7ba1e1482699e349ef` |
| 27 | `theorem` | [count_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant56f49244c909849587179eca0e7444f65cb4a3ffe51c4047df71ac680a1d2c3f.lean/declarations/count-mono-left--949a9ff627e838b11e60160f.md) | 156 | `result-track:949a9ff627e838b11e60160fe252819f8f1182dce1b20b598f62774238471353` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
