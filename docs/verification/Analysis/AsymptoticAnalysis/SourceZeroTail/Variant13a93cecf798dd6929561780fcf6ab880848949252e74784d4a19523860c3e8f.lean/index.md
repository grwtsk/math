# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceZeroTail.Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e99e6f0e823d4727d27c5fe9cb591031001ee621",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e99e6f0e823d4727d27c5fe9cb591031001ee621`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/polynomial-norm-le--92957a2621a11feffa013112.md) | 29 | `result-track:92957a2621a11feffa013112cf48ea673cf272b96263a692b4c45b21b6ef9fde` |
| 2 | `def` | [decayConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/decayconstant--f13ca6dd852085b796372732.md) | 53 | `declaration-track:f13ca6dd852085b796372732ff4d700254671792fc7aef9a566ee76231998d4a` |
| 3 | `theorem` | [decayConstant_eq_neg_nine_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/decayconstant-eq-neg-nine-half--baa8270578ca96c6909fff07.md) | 57 | `result-track:baa8270578ca96c6909fff0757bfd8f7d31fc016075a5d16e61393d8031a5e0d` |
| 4 | `theorem` | [transform_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/transform-norm-le--34165ae5187aaa5a01aafa5c.md) | 66 | `result-track:34165ae5187aaa5a01aafa5c638d46473878da3f7a86a7f128a03e8146964604` |
| 5 | `theorem` | [transform_norm_le_neg_nine_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/transform-norm-le-neg-nine-half--be123da6afa5af1ccb226fa3.md) | 119 | `result-track:be123da6afa5af1ccb226fa35629e89ff6c886d2c24d714ff948478e6014a01e` |
| 6 | `theorem` | [transform_square_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/transform-square-norm-le--ecf397e1282d2c7af96bb6d2.md) | 127 | `result-track:ecf397e1282d2c7af96bb6d27f52fe21e29927f7dc8e50ef9c28a29f115237d7` |
| 7 | `def` | [Z0](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/z0--700bd28d3815b156ce76db1f.md) | 164 | `declaration-track:700bd28d3815b156ce76db1fe64b68c287d9c581f081f90fb98fffd6a0cb4c30` |
| 8 | `theorem` | [Z0_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/z0-pos--5e2a3061d6532a387cac2b39.md) | 166 | `result-track:5e2a3061d6532a387cac2b391eae485c7618f6b23fcf6fc43ce40f8d11f6cbd3` |
| 9 | `theorem` | [normalization_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalization-lower--91b63b80fbca6077bec272f7.md) | 168 | `result-track:91b63b80fbca6077bec272f7609171da8f94c9324ceed83be721d5aa2c0ab5bb` |
| 10 | `def` | [normalizedTransform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalizedtransform--8317ba816ae81372f76daac3.md) | 176 | `declaration-track:8317ba816ae81372f76daac3ef9e415c8154fcaccdbbd880a1fb1c79224c5258` |
| 11 | `theorem` | [normalized_square_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalized-square-eq--e04bd0967b1674978ebc3c0c.md) | 180 | `result-track:e04bd0967b1674978ebc3c0c59f01e14452c951d450b12e296c2cf32b12af171` |
| 12 | `theorem` | [normalized_squares_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalized-squares-summable--19f70d208cd8ad46ef83a2a1.md) | 186 | `result-track:19f70d208cd8ad46ef83a2a1706116279ec3f92cbc2aac005c5cba87fd08d9b7` |
| 13 | `theorem` | [normalized_square_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalized-square-norms-summable--4898cf7e40c7b371c4c72bdc.md) | 192 | `result-track:4898cf7e40c7b371c4c72bdc3b39eb3bae3be34f7e12fe02bd7c6bb96504f7ae` |
| 14 | `theorem` | [normalized_square_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/normalized-square-norm-le--975f62c2e9197e2d50a5c713.md) | 199 | `result-track:975f62c2e9197e2d50a5c7133cf66c7b37a5f06efac1e46088c78b5c55fc595d` |
| 15 | `theorem` | [pseries_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/pseries-tail-le--c0396e8bbd1a21b508ceb0b4.md) | 213 | `result-track:c0396e8bbd1a21b508ceb0b494a0e924c3185c6940882f1c180e18c85a1a094e` |
| 16 | `def` | [HeightTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heighttail--8111b066c41bae480610628d.md) | 243 | `declaration-track:8111b066c41bae480610628dba07a4770096b6c260351d8bebb5b9a11771cbeb` |
| 17 | `def` | [HeightRetained](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightretained--c2fe8155b484eb4d808efa5d.md) | 246 | `declaration-track:c2fe8155b484eb4d808efa5d9a4bec2d5cf5173cb5890837a060a1c33ad11f37` |
| 18 | `theorem` | [heightRetained_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightretained-finite--6bfe3dede77d5b4e54201616.md) | 248 | `result-track:6bfe3dede77d5b4e54201616fdacade5b44c6b5e720ef3690845a0dcfe91079a` |
| 19 | `def` | [HeightShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshell--66e78a22e2ea1e82da554e32.md) | 264 | `declaration-track:66e78a22e2ea1e82da554e3237e80b9fe17bcdd1cb927cf119063ef3849166e2` |
| 20 | `theorem` | [tail_floor_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/tail-floor-le--4672ac00a7fbf36660086847.md) | 267 | `result-track:4672ac00a7fbf3666008684784d560e22e6cdd43af6a04e89cfdd38a789ecb14` |
| 21 | `theorem` | [floor_half_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/floor-half-le--7f95650faba124116de87696.md) | 270 | `result-track:7f95650faba124116de8769622fee09b1478bc39ccebb2226909541a133e13e4` |
| 22 | `def` | [heightShellToShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshelltoshell--977304f8fe27444c07ca7fa9.md) | 274 | `declaration-track:977304f8fe27444c07ca7fa98140b38464b5c86b7a3e217ecc17f9c19e570fb1` |
| 23 | `theorem` | [heightShellToShell_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshelltoshell-injective--5536fedb61a2ea9642e869c4.md) | 280 | `result-track:5536fedb61a2ea9642e869c468cc2eba7de4194d906c3605e24d6ee120ef8a0f` |
| 24 | `theorem` | [heightShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshell-finite--4e65b277d2eea3bb58325eed.md) | 287 | `result-track:4e65b277d2eea3bb58325eedd2f7bc2576a0b284eceeb3ea94542209afb777f8` |
| 25 | `theorem` | [heightShell_card_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshell-card-le--7e165bef4ecd8b00c6e94c7c.md) | 291 | `result-track:7e165bef4ecd8b00c6e94c7c1bd638643bbd2461c99ba72652ddeead89d39546` |
| 26 | `theorem` | [heightShell_norm_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/heightshell-norm-sum-le--5ac222eb096def1a5522c698.md) | 297 | `result-track:5ac222eb096def1a5522c6982b0054dbf02958231bb87ec7835a0020e5f68e2c` |
| 27 | `theorem` | [height_tail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/height-tail-summable--a02eae6e278ae98b0f59eca4.md) | 342 | `result-track:a02eae6e278ae98b0f59eca45ecba5afa296d08e4cf705b51467ba2e0ceb6c48` |
| 28 | `theorem` | [height_tail_norms_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/height-tail-norms-le--13a9cd8b654a872d283450dc.md) | 347 | `result-track:13a9cd8b654a872d283450dc3dc54e8709900d016a98550138be84746ec7d14f` |
| 29 | `theorem` | [height_tail_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/height-tail-norm-le--6dd13c84559597a10f3dd7f6.md) | 382 | `result-track:6dd13c84559597a10f3dd7f6f764bc0d879515a6876441f84332365d4104e6ef` |
| 30 | `theorem` | [decayConstant_sq_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/decayconstant-sq-eq--337f03cfdbd0c1ef05513622.md) | 391 | `result-track:337f03cfdbd0c1ef055136225a1b7e62a5dcf3c04cb6c499e7147abe405529a3` |
| 31 | `def` | [shellConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/shellconstant--206765c0cc8a187c3ac082fd.md) | 404 | `declaration-track:206765c0cc8a187c3ac082fd71cdf8d12aaa4e35f58a59ae28ff866194bdf8c7` |
| 32 | `theorem` | [shellConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/shellconstant-pos--d7c9c5c576afe1995ac1b057.md) | 406 | `result-track:d7c9c5c576afe1995ac1b0579a06a4b8f0c39a1bbaa59f2b9471ce4259d643fd` |
| 33 | `theorem` | [shellConstant_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/shellconstant-count--b1b552b6e00768df301766db.md) | 409 | `result-track:b1b552b6e00768df301766dbdc27fd4bc3665d585fdf8079c592ae384848c6e2` |
| 34 | `def` | [tailConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/tailconstant--260f2539055ac93b3a668c79.md) | 414 | `declaration-track:260f2539055ac93b3a668c792ca2910619359cfac5715848016592a8c8cd6989` |
| 35 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/tailconstant-nonneg--2f7a96300990a20e7d3d6abc.md) | 416 | `result-track:2f7a96300990a20e7d3d6abcefe4be490e0e99f15c607aa35bafae5de1ea884d` |
| 36 | `def` | [tailReadout](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/tailreadout--33d5bacbc32cca5b91a885c0.md) | 423 | `declaration-track:33d5bacbc32cca5b91a885c0833e2f79b012fd3c00019353135c7488db3cd69e` |
| 37 | `def` | [tailError](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/tailerror--6137759fd198afcda35a2718.md) | 426 | `declaration-track:6137759fd198afcda35a27183158c0aecabee96058a6b98e9e220ef58cc2fc86` |
| 38 | `def` | [retainedReadout](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/retainedreadout--91f4c3344808ef2b487faebd.md) | 429 | `declaration-track:91f4c3344808ef2b487faebd0db295f3dccdfb30898e67b0423ebead115edfb2` |
| 39 | `theorem` | [readout_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/readout-partition--3089b7a018514609192729c1.md) | 433 | `result-track:3089b7a018514609192729c1024453df1b15e154f91d42137f265d3f283218c9` |
| 40 | `theorem` | [truncation_error_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/truncation-error-eq--9e9c096d3bd034ef1566aaeb.md) | 447 | `result-track:9e9c096d3bd034ef1566aaebb3e9063fd58cdd9eb65527cf59479fcfa47422ba` |
| 41 | `theorem` | [actual_source_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/actual-source-tail-bound--5fd92b7fbaa6e27157d1c624.md) | 454 | `result-track:5fd92b7fbaa6e27157d1c62478c2b2e029482a6887bb7e54da4428f03b5bff92` |
| 42 | `theorem` | [exists_uniform_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/exists-uniform-tail-bound--97101b7aa6f2473ce1c46992.md) | 465 | `result-track:97101b7aa6f2473ce1c469922fa007107a79054aad652fe82f5aae2eb5aa19a4` |
| 43 | `theorem` | [actual_source_truncation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/actual-source-truncation-bound--ac1d0219773fc9f1650a84fa.md) | 472 | `result-track:ac1d0219773fc9f1650a84fa850deb43febb224f8eaa022086a3e3a1c9f85c5c` |
| 44 | `theorem` | [exponential_height_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/exponential-height-bound--1b5d531937fb595a8187edbb.md) | 479 | `result-track:1b5d531937fb595a8187edbb078c633c336530b5efde8b4768e3110efcdf170f` |
| 45 | `theorem` | [exponential_height_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/exponential-height-uniform--ae518a018ba1ac771ce19e5e.md) | 486 | `result-track:ae518a018ba1ac771ce19e5ee30984bf4d96ebad45faded8a17ed57a285756c8` |
| 46 | `theorem` | [exponential_height_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/exponential-height-tendsto-zero--e9bd7df57fcdc13a66552f07.md) | 493 | `result-track:e9bd7df57fcdc13a66552f07a9ca6e8a9f6eabbab4b825385686de64951943f5` |
| 47 | `theorem` | [exponential_height_sup_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/declarations/exponential-height-sup-bound--fa02d6c153e189ab36f00783.md) | 501 | `result-track:fa02d6c153e189ab36f0078371c1840be4ac172770c4b7d308666aa1a244f696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
