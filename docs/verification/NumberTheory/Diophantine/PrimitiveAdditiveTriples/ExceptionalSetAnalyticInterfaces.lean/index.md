# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be04fff99a51f399484b3f3b625e2d559505610f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be04fff99a51f399484b3f3b625e2d559505610f`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetCounting`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md) — import line 18; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [paperIndex](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperindex--9fcba1ec22c456cba28c4bc3.md) | 35 | `declaration-track:9fcba1ec22c456cba28c4bc3aeed230624aa4c420fed86d26cf4e5c8fb5a4e38` |
| 2 | `theorem` | [paperIndex_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperindex-pos--dcaf916117c2e00b09a2eeb4.md) | 37 | `result-track:dcaf916117c2e00b09a2eeb47203142efdf4e7e90c82f84bc10e5c03802ece39` |
| 3 | `theorem` | [paperIndex_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperindex-le--2ef4023ffa1cf7629745a6a2.md) | 41 | `result-track:2ef4023ffa1cf7629745a6a2499c3f13c81829f30c82a15467e1fa2af2f9330b` |
| 4 | `def` | [PaperDyadicScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperdyadicscale--b63d246f71bfdf4c5fab8890.md) | 48 | `declaration-track:b63d246f71bfdf4c5fab889052d6d196ab7d60930e030c83010fa409ae8734cd` |
| 5 | `def` | [paperA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/papera--0c05dbac217821d2729b97a7.md) | 52 | `declaration-track:0c05dbac217821d2729b97a7ee07927d786ef7096611deff519887b7ca0db03a` |
| 6 | `def` | [paperB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperb--16913ca1e34d984ee9f5e784.md) | 53 | `declaration-track:16913ca1e34d984ee9f5e784f3cd07cb63bb53eed6c555ce1217706e7323d591` |
| 7 | `def` | [paperC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperc--17ce4c0e826b1968b5c55678.md) | 54 | `declaration-track:17ce4c0e826b1968b5c55678c5a03d8d76502eb6253028789e474a22b02ee29d` |
| 8 | `def` | [paperABC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperabc--8d82e58ad35b7fbfbe12c224.md) | 57 | `declaration-track:8d82e58ad35b7fbfbe12c224c55e41adc883cd9d15c1aabf96c951d364078c69` |
| 9 | `theorem` | [paperABC_eq_scaleProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperabc-eq-scaleproduct--8cc71cac61d69b0e8e0575c5.md) | 60 | `result-track:8cc71cac61d69b0e8e0575c521abec23c0d144738c5031ce751042064f917af6` |
| 10 | `def` | [paperDivisibilitySector](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperdivisibilitysector--ff6d6399584a9e0b1e10b5b4.md) | 66 | `declaration-track:ff6d6399584a9e0b1e10b5b432c0ff4f986aa8134553521f04f368b21c50177b` |
| 11 | `theorem` | [mem_paperDivisibilitySector](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/mem-paperdivisibilitysector--50013eff09089c783665ae89.md) | 69 | `result-track:50013eff09089c783665ae891391ac284b9665471d26af8b0a012f456552aa0b` |
| 12 | `def` | [paperDivisibilitySectorProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperdivisibilitysectorproduct--6f144970b0730b6400a61862.md) | 74 | `declaration-track:6f144970b0730b6400a618626fa261e072305320cd133be4aedcd7d31ddadd03` |
| 13 | `theorem` | [paperDivisibilitySectorProduct_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperdivisibilitysectorproduct-one--8840fee5bb5d697fc6558fa1.md) | 78 | `result-track:8840fee5bb5d697fc6558fa1c6917441cd369753628737beb24dda73c94a9b79` |
| 14 | `def` | [paperSelectedScaleProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperselectedscaleproduct--050a96c42903a52589f54b7b.md) | 86 | `declaration-track:050a96c42903a52589f54b7b334c3f05893d4d730234527482a79fb20222a6c9` |
| 15 | `def` | [paperSelectedWeightedProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperselectedweightedproduct--04f8b749d82509e11688d03e.md) | 92 | `declaration-track:04f8b749d82509e11688d03e85081ab99b64ebc394caf5d24f3bbb8c42cdef56` |
| 16 | `theorem` | [paperSelectedScaleProduct_univ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperselectedscaleproduct-univ--8afb206f8498bd5db4dc22f9.md) | 96 | `result-track:8afb206f8498bd5db4dc22f9c3364e7ef22f28e18bf8b89a645cfed34379d2d7` |
| 17 | `theorem` | [paperSelectedWeightedProduct_empty](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperselectedweightedproduct-empty--a057a889cd6a70e3c4b58713.md) | 101 | `result-track:a057a889cd6a70e3c4b587137006f88b5ff00568f541a19aa94aad0ea7475e02` |
| 18 | `theorem` | [paperSelectedWeightedProduct_singleton](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperselectedweightedproduct-singleton--3e58ce04af9ad31602accd2b.md) | 106 | `result-track:3e58ce04af9ad31602accd2b5dc0bdbd232ba35361baba97458a7c8b2fa740c5` |
| 19 | `def` | [paperBoxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperboxfinset--f71825546c9d28d6fbee8e6f.md) | 113 | `declaration-track:f71825546c9d28d6fbee8e6f78fd0b71ea195e445e1682f869de5a96d7c6bccc` |
| 20 | `def` | [paperBoxCard](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperboxcard--c9e2c51fb55ab41e993dd160.md) | 122 | `declaration-track:c9e2c51fb55ab41e993dd160908dbd7dfe0945e44c42e6927aa8b2223e26f0ca` |
| 21 | `theorem` | [paperBoxFinset_subset_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperboxfinset-subset-boxfinset--f5d3ed6064520c88a2639f27.md) | 125 | `result-track:f5d3ed6064520c88a2639f2748fc3bc6256b89cee5f2760daeef2676def0e2ed` |
| 22 | `theorem` | [paperBoxCard_le_boxCard](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperboxcard-le-boxcard--7ea246bfdf58d9641da0ca67.md) | 131 | `result-track:7ea246bfdf58d9641da0ca6724339248c6be7d7426e3580376952dad44cf464a` |
| 23 | `def` | [PaperAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/paperadmissible--9e2acf25c0091c08f45822dc.md) | 138 | `declaration-track:9e2acf25c0091c08f45822dc2756c533fabe7e4a225d6d58b0208ab82b0af870` |
| 24 | `def` | [proposition31Denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition31denominator--1c2552b8590d85bb14bca0fc.md) | 157 | `declaration-track:1c2552b8590d85bb14bca0fc6af9352bd3b667b0526d66f6a295a15735a2b4d9` |
| 25 | `def` | [Proposition31BoundAt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition31boundat--4a7bd9109f3a07bf6418a5a9.md) | 167 | `declaration-track:4a7bd9109f3a07bf6418a5a95139b3c11c00e7e3f84f6f28c623c5cdb1f58d42` |
| 26 | `def` | [Proposition31FourierSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition31fouriersupplier--6136a1f3d9f6221df9f8ddbf.md) | 175 | `declaration-track:6136a1f3d9f6221df9f8ddbf66af44298308497b0eeb10faaf1a11a5fa245eee` |
| 27 | `def` | [proposition41SelectedScaleProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition41selectedscaleproduct--4c9661f49243ccea1d95c1da.md) | 186 | `declaration-track:4c9661f49243ccea1d95c1daa70577b937dca27ab759a89e4a7f4e899d282f2c` |
| 28 | `def` | [proposition41SelectedWeightedProduct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition41selectedweightedproduct--c45ed7a0905b41e81922637f.md) | 193 | `declaration-track:c45ed7a0905b41e81922637f659c6c1763c8b9df0fd2c03d3cb88fc009e387a8` |
| 29 | `def` | [Proposition41BoundAt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition41boundat--9f23d207ef01dd8234d2906d.md) | 201 | `declaration-track:9f23d207ef01dd8234d2906d25a86b6b4fa9e0a6aabd2b4d255775127aad4e56` |
| 30 | `def` | [Proposition41GeometrySupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition41geometrysupplier--08fc32cd686db4d0ae62b925.md) | 211 | `declaration-track:08fc32cd686db4d0ae62b9259127d077376635184c8fde287af1b5dbefd057e8` |
| 31 | `def` | [Proposition31FourierFamily](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition31fourierfamily--f2e244e1ad4898e9bb95973e.md) | 221 | `declaration-track:f2e244e1ad4898e9bb95973e3ec678f16a2c9030fa34d975e80427bf5b7854b2` |
| 32 | `def` | [Proposition41GeometryFamily](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/proposition41geometryfamily--7808498930caad492a1b331b.md) | 228 | `declaration-track:7808498930caad492a1b331b48a288dffe3c1fc0357a98b9464b0ae4b571697e` |
| 33 | `def` | [OptimizationExtractionObligation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/optimizationextractionobligation--0122dab9a7a91b4e976a214a.md) | 235 | `declaration-track:0122dab9a7a91b4e976a214a2a0f2f0eb9e3a4322e526d64ee2cd3562ff541a9` |
| 34 | `structure` | [SplitExceptionalSetAnalyticSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/splitexceptionalsetanalyticsupplier--9bd2389d65c4ce017231cd13.md) | 244 | `declaration-track:9bd2389d65c4ce017231cd13cc191b57096dd0b352b1be02a3805642dfe0cf12` |
| 35 | `theorem` | [SplitExceptionalSetAnalyticSupplier.toExceptionalSetAnalyticSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/splitexceptionalsetanalyticsupplier-toexceptionalsetanalyticsupplier--049c6b61a65996ca6861914a.md) | 253 | `result-track:049c6b61a65996ca6861914a34a6a09db5023ee660ab486b9697b5853b7545f4` |
| 36 | `theorem` | [hasThreeFifthsExceptionalBound_of_splitSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/hasthreefifthsexceptionalbound-of-splitsupplier--1d20b4fc9b7a1f6518b2d798.md) | 263 | `result-track:1d20b4fc9b7a1f6518b2d798ed6c54077696e7c7e9f258b255e7568193a38a71` |
| 37 | `theorem` | [exactPrimitiveMoment_frequencyAdapter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/declarations/exactprimitivemoment-frequencyadapter--f3ac975173a056c352c50cfd.md) | 272 | `result-track:f3ac975173a056c352c50cfd514451613ac62a7d91ee6d8d6f7f16c358f48beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
