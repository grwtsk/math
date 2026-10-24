# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Piecewise.Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "882fbcd2b454d5c0998b4036cfbb786d92998817",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `882fbcd2b454d5c0998b4036cfbb786d92998817`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise--c3108f47d327bfa97846651b.md) | 36 | `declaration-track:c3108f47d327bfa97846651bfc6d174742d8d8d51277e64f935d05ffada707d0` |
| 2 | `lemma` | [piecewise_insert_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-insert-self--a9950d82ad8d031c2f6a047d.md) | 38 | `result-track:a9950d82ad8d031c2f6a047d50efe106d5685f3bba844042787925e3f1879ee9` |
| 3 | `lemma` | [piecewise_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-empty--ddb9118108bbdf4699309ca0.md) | 42 | `result-track:ddb9118108bbdf4699309ca0b6cfc862fc49c467c680925969c1da5c1f569840` |
| 4 | `lemma` | [piecewise_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-coe--5f3ff0256d3656ea8f4a300c.md) | 50 | `result-track:5f3ff0256d3656ea8f4a300caa51a20e648a4749718c233bb7b9377a9e55fe17` |
| 5 | `lemma` | [piecewise_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-eq-of-mem--2c7f03f5121082a43a7fcef7.md) | 56 | `result-track:2c7f03f5121082a43a7fcef757993d7004d17aca98bcb2db5dde32ac14e952f2` |
| 6 | `lemma` | [piecewise_eq_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-eq-of-notmem--585f0ace5060bc805004a4c5.md) | 60 | `result-track:585f0ace5060bc805004a4c54c2a54a5384a5d49bea0fd3b3c39bff935d84aa2` |
| 7 | `lemma` | [piecewise_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-congr--a875d681371362a8bb658ef7.md) | 65 | `result-track:a875d681371362a8bb658ef7ac23f60b1a02e1a9a210a696b70504132cfa496e` |
| 8 | `lemma` | [piecewise_insert_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-insert-of-ne--2f5144b035a4a5a85e4dcf6e.md) | 70 | `result-track:2f5144b035a4a5a85e4dcf6e4f80ca67984c0bcef1af40e382c267f56bae5f3c` |
| 9 | `lemma` | [piecewise_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-insert--cab6c9f4dfc406c0d75ed374.md) | 73 | `result-track:cab6c9f4dfc406c0d75ed3744593bc5bb046f84a427638b62d47f0d76076c8b7` |
| 10 | `lemma` | [piecewise_cases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-cases--a06130702262a9f6c9440f11.md) | 80 | `result-track:a06130702262a9f6c9440f11888ecf7721563a00ff3a9e9094c2f7b84608f3d0` |
| 11 | `lemma` | [piecewise_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-singleton--4d4ac9bdd741be2c137eb5bb.md) | 84 | `result-track:4d4ac9bdd741be2c137eb5bb2b3ab2f4bc2f3e3505c29520b2543c53eec93060` |
| 12 | `lemma` | [piecewise_piecewise_of_subset_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-piecewise-of-subset-left--295feaeaf8af129b38257ed3.md) | 87 | `result-track:295feaeaf8af129b38257ed3ddd515b7fa8eee9e3626e660b1b4ee8470069f7f` |
| 13 | `lemma` | [piecewise_idem_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-idem-left--2a0c3e34e81cda54b9546963.md) | 93 | `result-track:2a0c3e34e81cda54b9546963a77a6320ffd0f3b646381653b4e8e565e2866ce6` |
| 14 | `lemma` | [piecewise_piecewise_of_subset_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-piecewise-of-subset-right--6eda7da1417fd482b6ec663f.md) | 97 | `result-track:6eda7da1417fd482b6ec663f2798a00ad64394c6757cc5d13ad1ac5669492f8a` |
| 15 | `lemma` | [piecewise_idem_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-idem-right--eeeff0c4b248a6fe74a904f2.md) | 103 | `result-track:eeeff0c4b248a6fe74a904f2e24d59f9ac72d483e61b0dc64b050eb0c90e2719` |
| 16 | `lemma` | [update_eq_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/update-eq-piecewise--54b26dcbb77e5b32fe586412.md) | 107 | `result-track:54b26dcbb77e5b32fe58641222400a07e8e977f1143c712c09ee696e38a70480` |
| 17 | `lemma` | [update_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/update-piecewise--0a71e0647463ffedbadf2141.md) | 111 | `result-track:0a71e0647463ffedbadf2141b88fd4438edc6293c38b4681fb9d018c8f75ed8e` |
| 18 | `lemma` | [update_piecewise_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/update-piecewise-of-mem--9137a0559fb0b16109f20af2.md) | 116 | `result-track:9137a0559fb0b16109f20af25932395fa327813c263832869ac11e6109ffd97b` |
| 19 | `lemma` | [update_piecewise_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/update-piecewise-of-notmem--70ba512a35de540feacaf7c1.md) | 122 | `result-track:70ba512a35de540feacaf7c10a83631526fd64cd23202634941c99ffd43df907` |
| 20 | `lemma` | [piecewise_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-same--fff30a4e3919440ac849d85d.md) | 131 | `result-track:fff30a4e3919440ac849d85dd1ad7b48cc67692890466d093960a2a343152618` |
| 21 | `lemma` | [piecewise_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-univ--63f3566c4e328998440efd44.md) | 139 | `result-track:63f3566c4e328998440efd4497ca745deeb82912a6cf116a33a88aba93528400` |
| 22 | `lemma` | [piecewise_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-compl--74c63bff84631b47a2644196.md) | 144 | `result-track:74c63bff84631b47a26441961b3f76db5fc03af46bf3fe02f4397b8775f491c1` |
| 23 | `lemma` | [piecewise_erase_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-erase-univ--e2ddc5dcf70575ac9ad7e444.md) | 151 | `result-track:e2ddc5dcf70575ac9ad7e444690294857c38114fdf9031ad70de9054b8ccfa3a` |
| 24 | `lemma` | [piecewise_mem_set_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-mem-set-pi--22ab00f85eefc2af613a14db.md) | 159 | `result-track:22ab00f85eefc2af613a14dbb9b4b05fe8d6bf2a62aa0ca274c61e2058429811` |
| 25 | `lemma` | [piecewise_le_of_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-le-of-le-of-le--a36d6da4ddf1e8436d13b707.md) | 165 | `result-track:a36d6da4ddf1e8436d13b7078d6c81a10e0490212c1a44fea2acf6246030457a` |
| 26 | `lemma` | [le_piecewise_of_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/le-piecewise-of-le-of-le--994848ef4703c719ec88086f.md) | 168 | `result-track:994848ef4703c719ec88086f6741853d34eb110b61eb2d854e2ec48b19095175` |
| 27 | `lemma` | [piecewise_le_piecewise'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-le-piecewise--8464fdb7e174326575bd9e64.md) | 171 | `result-track:8464fdb7e174326575bd9e64aa7611a3a7b65db197abad7b5ada59282f179856` |
| 28 | `lemma` | [piecewise_le_piecewise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-le-piecewise--c2b29638e17dd5363ef1389b.md) | 174 | `result-track:c2b29638e17dd5363ef1389b055c26c6892b450ef49f90ebb2c1ccaf10e70357` |
| 29 | `lemma` | [piecewise_mem_Icc_of_mem_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-mem-icc-of-mem-of-mem--20e0fda19b2074f119c5f017.md) | 177 | `result-track:20e0fda19b2074f119c5f01769da6602b2ab117cbe3d7b906daf6b3ac48b101c` |
| 30 | `lemma` | [piecewise_mem_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-mem-icc--19ef2249c01de0001c79e690.md) | 181 | `result-track:19ef2249c01de0001c79e690d3c315bfec8e4fd770755ca72e930bdc9fd032a9` |
| 31 | `lemma` | [piecewise_mem_Icc'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/declarations/piecewise-mem-icc--f94b6ac4e4c83030ed9a98ac.md) | 184 | `result-track:f94b6ac4e4c83030ed9a98ac093f9c8e8033687090c845e319878649dc5cab47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
