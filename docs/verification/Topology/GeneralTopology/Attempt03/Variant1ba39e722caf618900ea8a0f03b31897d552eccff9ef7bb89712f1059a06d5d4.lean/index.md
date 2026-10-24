# Verification target: GRWTSK.Topology.GeneralTopology.Attempt03.Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a29782b41e439f98688f6e3bb0a4585ffe56d6d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a29782b41e439f98688f6e3bb0a4585ffe56d6d`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient--7847ea48e3b121460c53d499.md) | 17 | `declaration-track:7847ea48e3b121460c53d499537dfd46ae79ccbe5f55a0716b636fdc74b38ade` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjessequence--d6b9ab61508fc7189a616ae2.md) | 19 | `declaration-track:d6b9ab61508fc7189a616ae26be3d88b0f7e5dce41d6cdacbfafa244934f12d7` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lowersequence--09049f4a8275372335f89ff4.md) | 22 | `declaration-track:09049f4a8275372335f89ff4989080ebccc766c6ddcdcd92a58373d3d5548f8a` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/firststieltjesconstant--cb59ead492655c6d7b66ac70.md) | 24 | `declaration-track:cb59ead492655c6d7b66ac701c8ccc748c0a45ab14fa7b3aaad700b31b4e2441` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-nonneg--28a27065c9faf146b1600ed3.md) | 26 | `result-track:28a27065c9faf146b1600ed30c1c20eed37d6626b8a37c245127d27a26ef8282` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-antitone--3574f34f6d294739eafe6911.md) | 29 | `result-track:3574f34f6d294739eafe6911d5af4e7d815983e0a765fd3024c0e5eeaae4e49f` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-continuouson--d80c382506025279899ee98d.md) | 37 | `result-track:d80c382506025279899ee98d7516c1dbeda9c7ba6e0f9fca98ed95915b12b34e` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-intervalintegrable--ecece30a5f1e46705ae369b4.md) | 43 | `result-track:ecece30a5f1e46705ae369b4631498f68b957ccb9732b44df12b6f83523a3686` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-integral--480486519e64d8f6337954e5.md) | 53 | `result-track:480486519e64d8f6337954e55823d5b2440212256f4d1510b2a13cb1874e6160` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjessequence-succ--97e5429694457d8e11e73c3b.md) | 68 | `result-track:97e5429694457d8e11e73c3b116a4dd513d9a1df817b5d30803b63dc012f1ab3` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-cell-lower--f2e861b50a9a9adca6231324.md) | 78 | `result-track:f2e861b50a9a9adca6231324c613c3b656318549e0af737c6378244608961d8b` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-cell-upper--c568732c55d44befdbab8a45.md) | 84 | `result-track:c568732c55d44befdbab8a45f4fc0598883e05e235248beeb748abbedee39f64` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjessequence-succ-le--c353eb549655fd5312bb2b50.md) | 90 | `result-track:c353eb549655fd5312bb2b507b1892454bedcd3fd40a5e03b054e557660b17a1` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lowersequence-le-succ--9c07a9f4ab9b7f3311c73b81.md) | 96 | `result-track:9c07a9f4ab9b7f3311c73b8169db1f79326bb43aaf8dec09e3c892abdc30cb6a` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjes-tail-antitone--02cd3322bc82abf653165948.md) | 104 | `result-track:02cd3322bc82abf65316594829e5ea2c353b4523b383cd040440d2344871ed51` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lower-tail-monotone--1391602e2ed817729ee23592.md) | 110 | `result-track:1391602e2ed817729ee23592714402ee8e7f4fabcb68115e04dd3bb48ae39297` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lowersequence-four--9f0b2cfc532776e838935940.md) | 116 | `result-track:9f0b2cfc532776e838935940e8441545ce1209bf0bc7e927b98272e9fd7be45f` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lower-four-le-stieltjes-tail--f5c755b48f8bd84eda092754.md) | 124 | `result-track:f5c755b48f8bd84eda09275406500ff5ffb23f9972951d2eff31ab50cc575bc2` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjes-tail-bddbelow--7cc61af7907166274071275b.md) | 133 | `result-track:7cc61af7907166274071275b7904d54e75921d6cd3fa6dec421ad032499cd1bf` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/tendsto-stieltjes-tail--9d64983b7cf440fd36cd3a3d.md) | 138 | `result-track:9d64983b7cf440fd36cd3a3dd03577642275345a3c7d3f9801605c572223a4f8` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/tendsto-stieltjessequence--7cd33fea152ee3a35d994eff.md) | 142 | `result-track:7cd33fea152ee3a35d994eff4eedefeda6babe00503c3e3cccd336fd48dc542f` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lower-four-le-firststieltjesconstant--db1d75976b76f9008fb2c45c.md) | 146 | `result-track:db1d75976b76f9008fb2c45c7c1e187580c40d266369a62e961c44a1e98a50c4` |
| 23 | `theorem` | [firstStieltjesConstant_le_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/firststieltjesconstant-le-stieltjessequence--6dc91a97ca7be80559194b1d.md) | 149 | `result-track:6dc91a97ca7be80559194b1dfc8fc555d78b56f94c0c21125aefa5c5ec09ff7e` |
| 24 | `theorem` | [logQuotient_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/logquotient-tendsto-zero--f66b7eec7f081fcf26f9940d.md) | 154 | `result-track:f66b7eec7f081fcf26f9940d298111b0314d14be41e2c1fec0932f69aeb61598` |
| 25 | `theorem` | [lowerSequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lowersequence-tendsto--fbbbe2a86a4eeee2e899ad55.md) | 159 | `result-track:fbbbe2a86a4eeee2e899ad5575c806dda3d1e00e91240d1224d17abd62db19ae` |
| 26 | `theorem` | [lowerSequence_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/lowersequence-le-firststieltjesconstant--ec0289896f9b7084af5ca761.md) | 162 | `result-track:ec0289896f9b7084af5ca7612e9c91ea97d7e8fb46c33277067e067bb3e161dd` |
| 27 | `theorem` | [firstStieltjesConstant_enclosure](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/firststieltjesconstant-enclosure--20f6677e9349b123ba436cfd.md) | 170 | `result-track:20f6677e9349b123ba436cfd28c4ea95645fb38174fa9217b705df06dc5cc184` |
| 28 | `theorem` | [firstStieltjesConstant_gt_neg_249](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/firststieltjesconstant-gt-neg-249--6acb5116d78b74740c475caa.md) | 176 | `result-track:6acb5116d78b74740c475caafb703fcbc89805dba3410a897fc0f22c62819f94` |
| 29 | `theorem` | [intercept_gt_one_five_hundred](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/intercept-gt-one-five-hundred--3a40aa8a2d2bc2322f39b7a9.md) | 181 | `result-track:3a40aa8a2d2bc2322f39b7a94a7b72e9d81d2ea52477da340001ba246f9479ad` |
| 30 | `theorem` | [stieltjesSequence_limit_unique](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant1ba39e722caf618900ea8a0f03b31897d552eccff9ef7bb89712f1059a06d5d4.lean/declarations/stieltjessequence-limit-unique--cef45bf212d4e8aa20ed53b2.md) | 185 | `result-track:cef45bf212d4e8aa20ed53b2b86b5b0cf786e7eb84680e05d49ee6ff27b0c4e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
