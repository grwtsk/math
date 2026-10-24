# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e956b9e1d1a9b45ff298bb9e0e0112b7f7d59304",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e956b9e1d1a9b45ff298bb9e0e0112b7f7d59304`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Polar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Dual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/dual--ee663241808205c2508dd1da.md) | 56 | `declaration-track:ee663241808205c2508dd1da30324cb498339a8fc99c223ae6d79c688c2e46dd` |
| 2 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--513874df66874bfd5f2aa037.md) | 63 | `declaration-track:513874df66874bfd5f2aa037a3898f28aaa8c11d42f961c68f09db43fafa8232` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--dbb20cff864370cf4f469dfb.md) | 66 | `declaration-track:dbb20cff864370cf4f469dfbd0b4fb86cec8a70b552e2c7b8481ddf59ddb7df8` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--f8771cb3dff400417c44cc33.md) | 69 | `declaration-track:f8771cb3dff400417c44cc335673df7d92305ee657cc16a95d73065670f64e8e` |
| 5 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--c80aa1c2898c5dddfaca4660.md) | 74 | `declaration-track:c80aa1c2898c5dddfaca46607d4618d9371a68ffd3905bac83be7d23c3c0385e` |
| 6 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--6889feee505b86f2269cebd5.md) | 77 | `declaration-track:6889feee505b86f2269cebd58a4cb3262a0438f5204fbcaac21710a952d97118` |
| 7 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--ee9ac0e16ac345ff28dfd4bd.md) | 80 | `declaration-track:ee9ac0e16ac345ff28dfd4bd2d35b52b29cba5235273389e6b5090fa0931a3db` |
| 8 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/instance--be357710e05b326a5e958b66.md) | 83 | `declaration-track:be357710e05b326a5e958b6652bf12a70b9bceb4e71db3a66c138dd576c7e28b` |
| 9 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/inclusionindoubledual--17b37c3b2453aac555ea8cf5.md) | 88 | `declaration-track:17b37c3b2453aac555ea8cf59d74c2c56e93e3e9ee89b854f70da695b532ec0f` |
| 10 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/dual-def--784dbdf7c6d81748fd829aa3.md) | 93 | `result-track:784dbdf7c6d81748fd829aa36a520d63603c8f9760830ef9ea7a813b9cd0fbee` |
| 11 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/inclusionindoubledual-norm-eq--0866b3cc4b99b58ab5d588e5.md) | 97 | `result-track:0866b3cc4b99b58ab5d588e5de2bac93beb7a92dc5609230af32a5f624a6dbdb` |
| 12 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/inclusionindoubledual-norm-le--254dd12061c7ed08b68e6a46.md) | 102 | `result-track:254dd12061c7ed08b68e6a462060ecd4bcc7ec0a26b317dd37c757ce213da416` |
| 13 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/double-dual-bound--6eda4a8edd8d9436aa7e173f.md) | 107 | `result-track:6eda4a8edd8d9436aa7e173f31e277a261d1a9bdf91df94ae5f1d0d55e49760f` |
| 14 | `def` | [dualPairing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/dualpairing--89f63633f5b80eb3c71dedb0.md) | 112 | `declaration-track:89f63633f5b80eb3c71dedb092e416021fed01ae2769ada538e11f7499999ca5` |
| 15 | `theorem` | [dualPairing_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/dualpairing-apply--d6f2bc215e51fd98dc9b9218.md) | 117 | `result-track:d6f2bc215e51fd98dc9b9218f03055156b7af58283bed8c6e91f2fa889ca491e` |
| 16 | `theorem` | [dualPairing_separatingLeft](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/dualpairing-separatingleft--ed851943b7fd8c5fb5da08ff.md) | 121 | `result-track:ed851943b7fd8c5fb5da08ff8c8f8c115c068cf9400411df02ee061a610870a4` |
| 17 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/norm-le-dual-bound--212866e21545ce7641e8f5f4.md) | 134 | `result-track:212866e21545ce7641e8f5f442762528de84cb6b9dace31cc1dc5fb14bcd1d0f` |
| 18 | `theorem` | [eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/eq-zero-of-forall-dual-eq-zero--c734a2c2f93a0cee9589b724.md) | 147 | `result-track:c734a2c2f93a0cee9589b7244e31c2766a9f9ab11177ffcb70749ed27df9e063` |
| 19 | `theorem` | [eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/eq-zero-iff-forall-dual-eq-zero--eefac73b7f260d2c1da7502d.md) | 151 | `result-track:eefac73b7f260d2c1da7502d52ae5442e9247ce3633489719eca2535455c108c` |
| 20 | `theorem` | [eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/eq-iff-forall-dual-eq--e9824745807a8794da1bf17a.md) | 156 | `result-track:e9824745807a8794da1bf17a8c4adb08c2ad754dbe15f7aa8feaaebe9f21136d` |
| 21 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/inclusionindoubledualli--c09234ddf170726dfdff2f3d.md) | 162 | `declaration-track:c09234ddf170726dfdff2f3d4dd00ebe8428fb9c4f682548550d33a662d9dfeb` |
| 22 | `def` | [polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/polar--caffc17ae1d95a9b74b1aff3.md) | 183 | `declaration-track:caffc17ae1d95a9b74b1aff33663a94a41c9ee270d3d2f210609f7356ac44df1` |
| 23 | `theorem` | [mem_polar_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/mem-polar-iff--0f1ff26466330551f93f3561.md) | 192 | `result-track:0f1ff26466330551f93f3561eab1c8979cef80e22a62deac74a68a8b964bb180` |
| 24 | `theorem` | [polar_univ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/polar-univ--4f124cd32acf318412214399.md) | 197 | `result-track:4f124cd32acf318412214399c71fd092348eabecbd9b7c49ad6967cb07ba7dc4` |
| 25 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/isclosed-polar--2d07fd3d69de7bde17c27446.md) | 202 | `result-track:2d07fd3d69de7bde17c27446f8346666c41437df35e87c3a76c98b59a4454e80` |
| 26 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/polar-closure--3a961223156c450b4f38091b.md) | 210 | `result-track:3a961223156c450b4f38091b3168c45f985dd0ab0ae607689c469e1f1536cb52` |
| 27 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/smul-mem-polar--e4755fb0e4830815f43399ee.md) | 222 | `result-track:e4755fb0e4830815f43399eeecc56895b46d4ae8bc9af8bcbc5fe932ce8a0df0` |
| 28 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/polar-ball-subset-closedball-div--3e3ce935c75b8bb826f1a651.md) | 237 | `result-track:3e3ce935c75b8bb826f1a65198d00c026df993ae3dcb160a6052cdb2fe5236f7` |
| 29 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/closedball-inv-subset-polar-closedball--41b916fe5d38c1292721fc2b.md) | 252 | `result-track:41b916fe5d38c1292721fc2bf1d7b8e035d75582faeedc5bd1f3d0a65b7fe258` |
| 30 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/polar-closedball--d1c18a6ba8002d0c0ff3b2be.md) | 265 | `result-track:d1c18a6ba8002d0c0ff3b2be593773ade32bdf7dbbe7b0a4562e3f4dd29da0d9` |
| 31 | `theorem` | [bounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant36e2e14c0b481bc887a3a6e37b9d6f2e690ac9583f7632ef3435377d183c384e.lean/declarations/bounded-polar-of-mem-nhds-zero--b555cdd32e0a844167f101fd.md) | 276 | `result-track:b555cdd32e0a844167f101fd692b41c9ea67140968be23d374fa806477b6fdf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
