# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb085551b6a3b3772ad76fe13bfb8d7e57ab5996",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb085551b6a3b3772ad76fe13bfb8d7e57ab5996`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Polar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Dual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/dual--08df37bc35cf1571ec8e752b.md) | 67 | `declaration-track:08df37bc35cf1571ec8e752baa538e4b7124933324262dac68dafce027e52f01` |
| 2 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/inclusionindoubledual--2ae3530bcede39a3ea11bb51.md) | 71 | `declaration-track:2ae3530bcede39a3ea11bb513a793ab2db0e2197b3064cdc3935bd01020c91ae` |
| 3 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/dual-def--fe18b3ab052a28a15678bd23.md) | 75 | `result-track:fe18b3ab052a28a15678bd236c429742f7e798d9804dc18e1a90d055d2f71e83` |
| 4 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/inclusionindoubledual-norm-eq--0341e2c4e9c9b54022aef6c4.md) | 78 | `result-track:0341e2c4e9c9b54022aef6c433da981dc2e25596a0fed1c4726c8e30ea645872` |
| 5 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/inclusionindoubledual-norm-le--ad5de218ba730ce72bec1f61.md) | 82 | `result-track:ad5de218ba730ce72bec1f61bd80e53b9d76eff8c77d939f7ca145d34d8b5bed` |
| 6 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/double-dual-bound--4eb24142f72639dfe0883500.md) | 86 | `result-track:4eb24142f72639dfe08835002da059045c7bd899f0e4088910c334d41a397f02` |
| 7 | `def` | [dualPairing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/dualpairing--232cc4fa0257aaa68d13ec7c.md) | 90 | `declaration-track:232cc4fa0257aaa68d13ec7c35324729d46b738cc09b1126bb8b97af5224e881` |
| 8 | `theorem` | [dualPairing_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/dualpairing-apply--3af3cc86ca64256afb39ed90.md) | 94 | `result-track:3af3cc86ca64256afb39ed9063d1f4fa463d9819eee16e0a938d3cab85e865cc` |
| 9 | `theorem` | [dualPairing_separatingLeft](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/dualpairing-separatingleft--27b3fe910ef8524cea1f35ad.md) | 97 | `result-track:27b3fe910ef8524cea1f35ad8df2a4efbe2f4f64a3de0ee8f8e6d53fdc9fcb6f` |
| 10 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/norm-le-dual-bound--d91c19d1a5682f4d26b58b5c.md) | 109 | `result-track:d91c19d1a5682f4d26b58b5ca8827a0f587335c888cfa34b00e56979dd0d985c` |
| 11 | `theorem` | [eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/eq-zero-of-forall-dual-eq-zero--241b36aa956ca93a8d034995.md) | 121 | `result-track:241b36aa956ca93a8d034995f4badd94c6c924208e5c4cd01978c938536c4190` |
| 12 | `theorem` | [eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/eq-zero-iff-forall-dual-eq-zero--ef490f930214a83d71dbed9d.md) | 124 | `result-track:ef490f930214a83d71dbed9db255154e26fda4af2eb1161d1dfa63bf4d6eb232` |
| 13 | `theorem` | [eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/eq-iff-forall-dual-eq--0faa8740c133d46a80c49ee4.md) | 128 | `result-track:0faa8740c133d46a80c49ee4471f6c14aa9a59168e5cf06143468dbe3147cff4` |
| 14 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/inclusionindoubledualli--ddca1d2ec096bfcb76b0e4d6.md) | 133 | `declaration-track:ddca1d2ec096bfcb76b0e4d653c93e4f9332374fe57434deec95bb13f48c9afa` |
| 15 | `def` | [polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar--0cae27496e4c159bbfcdd0b5.md) | 153 | `declaration-track:0cae27496e4c159bbfcdd0b5159e81e309d9a8f44211925b062430f2d8216dfb` |
| 16 | `def` | [polarSubmodule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polarsubmodule--f430555331f22b02fea1adb0.md) | 160 | `declaration-track:f430555331f22b02fea1adb05467d3432771bf09f8fe9fc057dd78349ed7d08a` |
| 17 | `lemma` | [polarSubmodule_eq_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polarsubmodule-eq-polar--b3c28935676f36775324da76.md) | 167 | `result-track:b3c28935676f36775324da7646b191571ecaafd53c40c5b787c941edb15bc83f` |
| 18 | `theorem` | [mem_polar_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/mem-polar-iff--53798cc842ea0f082c498d9c.md) | 170 | `result-track:53798cc842ea0f082c498d9c46c2c65a4dfcfb6423ec2eda99c946a33aa8904b` |
| 19 | `lemma` | [polarSubmodule_eq_setOf](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polarsubmodule-eq-setof--77d909e3d21e0bf9bc897354.md) | 173 | `result-track:77d909e3d21e0bf9bc8973549dfbaf541024b4e4152737ed3f9205936e526c25` |
| 20 | `lemma` | [mem_polarSubmodule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/mem-polarsubmodule--28da4e6cae540f7fe1a540e1.md) | 177 | `result-track:28da4e6cae540f7fe1a540e147f69ad35517d10c1078b3ffab2fb8942392b303` |
| 21 | `theorem` | [zero_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/zero-mem-polar--8b915b2af0274cef482901b7.md) | 184 | `result-track:8b915b2af0274cef482901b7d6492cdbd2a3bcd3d8e72555af632b86e80f161e` |
| 22 | `theorem` | [polar_nonempty](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-nonempty--03aa86cbaf2ecfd28907cc51.md) | 187 | `result-track:03aa86cbaf2ecfd28907cc5139f73bfd1bf91000b44493a9c57919cdee2b43e6` |
| 23 | `theorem` | [polar_univ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-univ--8208a620cc9462edf8e39735.md) | 191 | `result-track:8208a620cc9462edf8e39735c73b9df51b57a1e0491a34f9e120ccaa5b8dd10b` |
| 24 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/isclosed-polar--ffa3ad804749bac8890fabe0.md) | 195 | `result-track:ffa3ad804749bac8890fabe023b39c7109acb0de4c6f6540305d2efeee25953e` |
| 25 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-closure--cae639ede92f57bbcbf0b84b.md) | 202 | `result-track:cae639ede92f57bbcbf0b84b0f09d3a30dc7f22de9ca66d8833c14d67662664e` |
| 26 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/smul-mem-polar--5c64ba57e973c4c97f47ce11.md) | 213 | `result-track:5c64ba57e973c4c97f47ce11bc767df9cdab14d953af48698190efa08343e660` |
| 27 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-ball-subset-closedball-div--a3543bddf52a9c2ee7b9f0bd.md) | 227 | `result-track:a3543bddf52a9c2ee7b9f0bd26dd83cf43928129e5850fe3465e308bd62cb4ec` |
| 28 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/closedball-inv-subset-polar-closedball--2007725c78ebb8a5c3450b0b.md) | 240 | `result-track:2007725c78ebb8a5c3450b0bf01b330e7d0c5335478e7b7ee6ee6fdd36e58ad5` |
| 29 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-closedball--ea93fc8cf3073f02c750cc50.md) | 252 | `result-track:ea93fc8cf3073f02c750cc50843496ea6511914dd3de54f02aefaf65342b2771` |
| 30 | `theorem` | [polar_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-ball--2c8348873875db0ef3c1af22.md) | 260 | `result-track:2c8348873875db0ef3c1af22296063aa2c5a1a9b59dac6e0898fca4ff3554c34` |
| 31 | `theorem` | [isBounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/isbounded-polar-of-mem-nhds-zero--5565116ab65cafc959c15141.md) | 279 | `result-track:5565116ab65cafc959c151411e6ea14c666efc6330d925baaa42b7e0975e890f` |
| 32 | `theorem` | [polar_empty](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-empty--597f06949296fd89d1e2ffdb.md) | 288 | `result-track:597f06949296fd89d1e2ffdb16505ded35bd4fe02e66ea9b82a3b52eddc3cd44` |
| 33 | `theorem` | [polar_singleton](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-singleton--286ddd0aa39a009eec9407a8.md) | 292 | `result-track:286ddd0aa39a009eec9407a89bf12abf9a1d3b2c32a3450d2ca89548515b9be7` |
| 34 | `theorem` | [mem_polar_singleton](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/mem-polar-singleton--c7a601868d67754f1d3058fe.md) | 295 | `result-track:c7a601868d67754f1d3058fee4f98bbb5f880e02885872a65222039d255e680c` |
| 35 | `theorem` | [polar_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-zero--77f04e3702943c1b156a21a7.md) | 298 | `result-track:77f04e3702943c1b156a21a7c601cb6fb0c8aee5c65efe6f6fc09ee872b956bd` |
| 36 | `theorem` | [sInter_polar_eq_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/sinter-polar-eq-closedball--a2c86c52681f3c7625461618.md) | 301 | `result-track:a2c86c52681f3c76254616181239664638e74eeec1fdfb9743b1ae214c811d12` |
| 37 | `theorem` | [polar_AbsConvex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantffb906dafc2962b471d7bc49aab8dc993a90fc7fc4a13831e1585772bd7bf075.lean/declarations/polar-absconvex--e6707a7e25b5f8b46fcb3d5f.md) | 324 | `result-track:e6707a7e25b5f8b46fcb3d5faa0b91481b4715ac07fa5098f3f67de616e2589a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
