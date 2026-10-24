# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a06f3c9b1e91ddcaf946160030376667632cd56",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a06f3c9b1e91ddcaf946160030376667632cd56`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Centralizer` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/centralizer--29eed2705fb5dbe669f54a0f.md) | 33 | `declaration-track:29eed2705fb5dbe669f54a0f82b67652c7f4bfff4ea89af1c589c1ebff9c81de` |
| 2 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/mem-centralizer-iff--a5432328dd117293f89f70a4.md) | 39 | `result-track:a5432328dd117293f89f70a4a8845e795aa18e193dffec577d89d61bf8cc7193` |
| 3 | `theorem` | [mem_centralizer_iff_commutator_eq_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/mem-centralizer-iff-commutator-eq-one--c9c63eb75373c0b26d283e25.md) | 43 | `result-track:c9c63eb75373c0b26d283e25fcdaff196602ade4073d7031634cd392f9cc676f` |
| 4 | `lemma` | [mem_centralizer_singleton_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/mem-centralizer-singleton-iff--fa7aa5f9c1ab5b48ab71a578.md) | 48 | `result-track:fa7aa5f9c1ab5b48ab71a57841e8ae6f2d08eec7fd75551b25e2e012276cea8f` |
| 5 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/centralizer-univ--f6383bbf47504fecfac2e934.md) | 54 | `result-track:f6383bbf47504fecfac2e9342477e0ef68d56b8fa8bf99af587362e330089902` |
| 6 | `theorem` | [le_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/le-centralizer-iff--5c51c81a60e277e70d698487.md) | 58 | `result-track:5c51c81a60e277e70d698487036fa347d2b255d187547731a7e0189b34df0cb6` |
| 7 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/center-le-centralizer--2fd67f7ad9f94029d4923ded.md) | 62 | `result-track:2fd67f7ad9f94029d4923dedf92bb34eca1a43af24f676b82a70bba90925187f` |
| 8 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/centralizer-le--f570ac2c45f4c398a945d34d.md) | 66 | `result-track:f570ac2c45f4c398a945d34d23700953f97edf5a3df05c0fd15c629798448b27` |
| 9 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/centralizer-eq-top-iff-subset--c23e7206e448475dc02c92de.md) | 70 | `result-track:c23e7206e448475dc02c92de5864f90d440ca46fe7fdc7840aec76eadd53bcd2` |
| 10 | `theorem` | [map_centralizer_le_centralizer_image](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/map-centralizer-le-centralizer-image--f7c6c27643ab89b143233ecb.md) | 74 | `result-track:f7c6c27643ab89b143233ecb8522ffc7fbdaaf504d6255381422d6eae1e14d0b` |
| 11 | `instance` | [Centralizer.characteristic](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/centralizer-characteristic--d50c86b165341ee1e19374f7.md) | 80 | `declaration-track:d50c86b165341ee1e19374f72bccf9c320d2538085982da30940f9310245d4ed` |
| 12 | `theorem` | [le_centralizer_iff_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/le-centralizer-iff-ismulcommutative--af3407660758e25eb491cac1.md) | 87 | `result-track:af3407660758e25eb491cac1f656fe1b6e0f3e8a76256f118a16525f1ed4bbc0` |
| 13 | `theorem` | [le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/le-centralizer--3ff9c49c6dec88d13ec952c5.md) | 99 | `result-track:3ff9c49c6dec88d13ec952c50fe229a1f9ca21e508d3d54514641249abb69fd3` |
| 14 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/closure-le-centralizer-centralizer--21d46f54daa1abee45003051.md) | 104 | `result-track:21d46f54daa1abee450030518df520721ee8d10ee6bb1116f83e2044cef52e90` |
| 15 | `abbrev` | [closureCommGroupOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/closurecommgroupofcomm--3e8f15024609ffbaade241ed.md) | 112 | `declaration-track:3e8f15024609ffbaade241ed71be2746ec985dcdade409c2e7fcaeb434dd058a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/instance--fdf6fdc77e74597210189891.md) | 121 | `declaration-track:fdf6fdc77e7459721018989179646d4c34efdbc9fb016dae3cd5a4713aceb280` |
| 17 | `def` | [normalizerMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/normalizermonoidhom--8ead272ddcb07f3bb3ef71a8.md) | 130 | `declaration-track:8ead272ddcb07f3bb3ef71a8488bb8168e34c0f8995efe125bcbc2aa0a8911f5` |
| 18 | `theorem` | [normalizerMonoidHom_ker](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/declarations/normalizermonoidhom-ker--3023326d338337d478b838d1.md) | 133 | `result-track:3023326d338337d478b838d12e8bf966b3f6f380edb7fa78fb5b65c95422c0bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
