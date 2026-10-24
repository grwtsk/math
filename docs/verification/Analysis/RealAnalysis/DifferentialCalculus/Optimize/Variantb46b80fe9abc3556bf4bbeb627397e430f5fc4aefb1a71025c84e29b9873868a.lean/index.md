# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Optimize.Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ca70cedf89542b60ae036f418c0b4be33db63fc",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ca70cedf89542b60ae036f418c0b4be33db63fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OptResult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/optresult--3925105e66e468a392e4a201.md) | 50 | `declaration-track:3925105e66e468a392e4a201941a996e7fd59bd03596f04ac723709bf52de333` |
| 2 | `def` | [derivStrictlyPositive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivstrictlypositive--90393c14406df4ad09b5b185.md) | 61 | `declaration-track:90393c14406df4ad09b5b1856a750fca168d028499509680d9b1305a4bffa9e4` |
| 3 | `def` | [derivStrictlyNegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivstrictlynegative--08c31ebf48596fe07e50c040.md) | 66 | `declaration-track:08c31ebf48596fe07e50c040a8ed0140080e5115df0daf7a27c9b32fa2dcd5ee` |
| 4 | `def` | [minimizeInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval--0654124e4dfeec05a6cdc342.md) | 76 | `declaration-track:0654124e4dfeec05a6cdc342c880c1dea10790a1a4cc13aefc34d0eae691484c` |
| 5 | `theorem` | [minimizeInterval_base_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval-base-correct--3dcf725e13c17740de815ae1.md) | 129 | `result-track:3dcf725e13c17740de815ae1eefc4ebd9b8cc3525df54fe96fd20b5957c23495` |
| 6 | `theorem` | [derivInterval_correct_evalWithDeriv1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivinterval-correct-evalwithderiv1--c1b10ad834976ebc91a9762c.md) | 141 | `result-track:c1b10ad834976ebc91a9762cfdf735d8efe7b07b2311e10ae8442c922169f9db` |
| 7 | `theorem` | [derivInterval_correct_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivinterval-correct-single--9a346c827fa49277ee4e8c79.md) | 151 | `result-track:9a346c827fa49277ee4e8c793b73c2414c20179bdf06b3c0172c114f8a504962` |
| 8 | `theorem` | [deriv_pos_on_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/deriv-pos-on-interval--3632a1031e0785128ffff4b0.md) | 158 | `result-track:3632a1031e0785128ffff4b003fe7dda2b86e973184d6091f5a7e7f5f5dd8a24` |
| 9 | `theorem` | [deriv_neg_on_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/deriv-neg-on-interval--9a63b6fcac3a8f62264de116.md) | 169 | `result-track:9a63b6fcac3a8f62264de116738bf8c617f5fbb14648d4299a9ce9277790b591` |
| 10 | `theorem` | [strictMonoOn_of_deriv_pos_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/strictmonoon-of-deriv-pos-interval--7700e049a7501d53956b5b07.md) | 180 | `result-track:7700e049a7501d53956b5b07ad365aa66803fdbb7992a102ccb976540d2ef9df` |
| 11 | `theorem` | [strictAntiOn_of_deriv_neg_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/strictantion-of-deriv-neg-interval--48da4b79702d529e7e866c0f.md) | 196 | `result-track:48da4b79702d529e7e866c0f9e8bd4085c745583ed89f142c95915f0bc425786` |
| 12 | `theorem` | [increasing_min_at_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/increasing-min-at-left--5538fd677a57873c7b436896.md) | 214 | `result-track:5538fd677a57873c7b43689693c07bc98625c12294963c030f1ef33645aa7d3d` |
| 13 | `theorem` | [decreasing_min_at_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/decreasing-min-at-right--50a11eeb9108a1afe866a486.md) | 230 | `result-track:50a11eeb9108a1afe866a4863313a83a3ef23342ff798fb43199fee7a185dc19` |
| 14 | `theorem` | [increasing_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/increasing-endpoint-bound--eeff89f42b6666d6f5abcdf4.md) | 245 | `result-track:eeff89f42b6666d6f5abcdf4a5697b2493d96042b537f63871ae6314321871c3` |
| 15 | `theorem` | [decreasing_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/decreasing-endpoint-bound--88a6fb8c65327c5b2937abad.md) | 259 | `result-track:88a6fb8c65327c5b2937abadbefd19551afa071bbee8bf980347fb62a5bee4fc` |
| 16 | `theorem` | [mem_bisect_cases](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/mem-bisect-cases--b35b5f025225560db761f796.md) | 275 | `result-track:b35b5f025225560db761f796bde21c3cb5d66efc57926a8fee2e2af6a3871a15` |
| 17 | `theorem` | [minimizeInterval_go_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval-go-correct--dcf271144ffdb74b6c2caabe.md) | 284 | `result-track:dcf271144ffdb74b6c2caabeb963298d7162f597806e0e5c9a5796f87b0cd27c` |
| 18 | `theorem` | [minimizeInterval_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval-correct--93cbcfce6e51a11a9a8c549f.md) | 340 | `result-track:93cbcfce6e51a11a9a8c549f3783d9236b28604b1577ee8a3632f2421c9effaf` |
| 19 | `def` | [maximizeInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeinterval--bd8c3a339b1e9a574c0fcc84.md) | 350 | `declaration-track:bd8c3a339b1e9a574c0fcc84bb9dfdc1813c14af14613555e71d2a177330a570` |
| 20 | `theorem` | [maximizeInterval_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeinterval-correct--d3b76b810486417cbb1bd0b0.md) | 359 | `result-track:d3b76b810486417cbb1bd0b077ea6380c4907095df293b44fb840c5e9540d284` |
| 21 | `def` | [checkLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/checklowerbound--7e84aed10b601b29cfbdd950.md) | 394 | `declaration-track:7e84aed10b601b29cfbdd950a03712d94b1f12d39d0a58cc022e8755b1508c7a` |
| 22 | `def` | [checkUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/checkupperbound--817ce3690cfc1a00319161dc.md) | 400 | `declaration-track:817ce3690cfc1a00319161dc7822d7f2f91d50fbd6bdb84116b95510af9a0051` |
| 23 | `theorem` | [deriv_pos_on_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/deriv-pos-on-interval-idx--401e4b24fa5b879e048183e0.md) | 423 | `result-track:401e4b24fa5b879e048183e04f900a473ec997c6c0633a1219947c6fdd6e1dab` |
| 24 | `theorem` | [deriv_neg_on_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/deriv-neg-on-interval-idx--6e5ce017af1ec17325c6d67f.md) | 437 | `result-track:6e5ce017af1ec17325c6d67f08f4e6b954f8971cb91804c7655aa2ac4cfa8d6c` |
| 25 | `theorem` | [strictMonoOn_of_deriv_pos_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/strictmonoon-of-deriv-pos-interval-idx--0e5cb1f0b06dc112d4e68608.md) | 451 | `result-track:0e5cb1f0b06dc112d4e686085ff024684f981c8a37982ec7c4f7a952c924d1e6` |
| 26 | `theorem` | [strictAntiOn_of_deriv_neg_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/strictantion-of-deriv-neg-interval-idx--f16bdc030af676b1121c3baf.md) | 470 | `result-track:f16bdc030af676b1121c3baf9161dd3098de030e65aef9d85bfe17eed90912ad` |
| 27 | `theorem` | [increasing_min_at_left_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/increasing-min-at-left-idx--3158f4e97885e9cd1b5ae567.md) | 491 | `result-track:3158f4e97885e9cd1b5ae56744ebb02305c7f578c1278b486d3eda33dc4df255` |
| 28 | `theorem` | [decreasing_min_at_right_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/decreasing-min-at-right-idx--c2eb9a83574a34ebf762ec28.md) | 511 | `result-track:c2eb9a83574a34ebf762ec28961775323f0a23f3a44921968b46a5de1bbec24f` |
| 29 | `def` | [derivStrictlyPositive_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivstrictlypositive-idx--1f250e4014eb190785c1313a.md) | 531 | `declaration-track:1f250e4014eb190785c1313a5e176093b315c665ff59d71e39947656014326e5` |
| 30 | `def` | [derivStrictlyNegative_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/derivstrictlynegative-idx--42f28d4cef34055acf97fa89.md) | 536 | `declaration-track:42f28d4cef34055acf97fa89810f2f32bda20060563473e7c74f2b2edce97ece` |
| 31 | `def` | [updateIntervalEnv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/updateintervalenv--ee4d40ac87f24fd7832d7772.md) | 541 | `declaration-track:ee4d40ac87f24fd7832d77723f62e206281ad70182e1449a970cb60a2e56af27` |
| 32 | `def` | [minimizeIntervalIdx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeintervalidx--2920a7ad419d7f2b683f8057.md) | 550 | `declaration-track:2920a7ad419d7f2b683f8057720780adddd795e0db15d6ed42df151c35f8b0ce` |
| 33 | `theorem` | [minimizeIntervalIdx_base_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeintervalidx-base-correct--07e78782f7578ed69eaef00f.md) | 608 | `result-track:07e78782f7578ed69eaef00fc1af935317fe4fd718faf345ed08a273ec515226` |
| 34 | `theorem` | [mem_bisect_cases_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/mem-bisect-cases-idx--4ca127b16e26485ecd4c970f.md) | 618 | `result-track:4ca127b16e26485ecd4c970f7677ee177f55502adf03b5661f381e56e1c419c4` |
| 35 | `theorem` | [minimizeIntervalIdx_go_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeintervalidx-go-correct--eae9b754b8b5fdb103c2e632.md) | 626 | `result-track:eae9b754b8b5fdb103c2e63279506d76c6f27d192d4f3b8e6438b84396a2680f` |
| 36 | `theorem` | [minimizeIntervalIdx_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeintervalidx-correct--ecd1142275048c29808e4445.md) | 821 | `result-track:ecd1142275048c29808e44456ba2b2bfabff8fc57adb4c6d473fa30aa55a7850` |
| 37 | `def` | [maximizeIntervalIdx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeintervalidx--ab61d2d5e6588793a91bcf54.md) | 833 | `declaration-track:ab61d2d5e6588793a91bcf54497a2d3dad8b33dca23f9c8e658266b0cce33160` |
| 38 | `theorem` | [maximizeIntervalIdx_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeintervalidx-correct--683b5fe31961c932fda28e5a.md) | 841 | `result-track:683b5fe31961c932fda28e5aa29b3e9894352911cf765efb4d3524df4778eb9a` |
| 39 | `def` | [minimizeInterval'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval--d1c34773a2558ac230c0ea10.md) | 863 | `declaration-track:d1c34773a2558ac230c0ea10eb6db6e3a890a869b523dd3681d24276de1315a8` |
| 40 | `theorem` | [minimizeInterval'_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/minimizeinterval-correct--104292997b4ef52ac7011845.md) | 869 | `result-track:104292997b4ef52ac7011845440f4e78e7c03868f382602336cc1879102b74d2` |
| 41 | `def` | [maximizeInterval'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeinterval--132b1cffc32d70eadb27ea32.md) | 884 | `declaration-track:132b1cffc32d70eadb27ea325c3fed53236946e02a45318674ea432d5fcb3536` |
| 42 | `theorem` | [maximizeInterval'_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/declarations/maximizeinterval-correct--2faff25335185c113d84ddb3.md) | 889 | `result-track:2faff25335185c113d84ddb30181c2bfcbe904d5ced953d293a41353ec2d3b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
