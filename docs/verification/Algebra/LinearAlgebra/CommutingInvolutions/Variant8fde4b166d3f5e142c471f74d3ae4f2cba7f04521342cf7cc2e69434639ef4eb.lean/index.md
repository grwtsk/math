# Verification target: GRWTSK.Algebra.LinearAlgebra.CommutingInvolutions.Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc7ab20d6fe8a462950e2d32f65e4348db9b0c86",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc7ab20d6fe8a462950e2d32f65e4348db9b0c86`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionplus--f86246096978c7c4d6a8eb1b.md) | 45 | `declaration-track:f86246096978c7c4d6a8eb1bd96674b05baf415c9ea2a38efe5e96380e7801d6` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionminus--75cc689c8793db1146a121d2.md) | 49 | `declaration-track:75cc689c8793db1146a121d21eda970e6195946dd30ba18d3ba37a105b5821f0` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionplus-apply--547f4f7b0365765c2d8de13c.md) | 53 | `result-track:547f4f7b0365765c2d8de13cb82cff5141b73d7f7d982aae85e6fdbe63c4e95f` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionminus-apply--17ad5140abd9115424a0214c.md) | 58 | `result-track:17ad5140abd9115424a0214c3c1e36da2d7e56bdf3e1e6f9028998c1ec1145e0` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involution-projection-decomposition--381f67d94be4e8d3f2dcb60f.md) | 63 | `result-track:381f67d94be4e8d3f2dcb60f1c27622453e32554eb133eb2a4c9b08cdda2f97d` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionplus-idempotent--df311cab5e9fd3a87a6ec6f1.md) | 70 | `result-track:df311cab5e9fd3a87a6ec6f1834548f8cbe6327ba8e0ce5b8bc0448b871f8eea` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionminus-idempotent--1f0bd44829c1866222bf7ea2.md) | 78 | `result-track:1f0bd44829c1866222bf7ea249aeed488bd9e44b93bc90329d846d9d3bb43201` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionplus-after-minus--92a1ecc16504565e2e67f6e1.md) | 86 | `result-track:92a1ecc16504565e2e67f6e1d267a082a87f111cd22246d7f813b5a03944873c` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involutionminus-after-plus--b342f77448dfdbb9c1629dc1.md) | 93 | `result-track:b342f77448dfdbb9c1629dc1075806b4916d5069956bae4411f0c7e137927a83` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involution-on-plus--eb8a7a49bfceebf3ffc0c925.md) | 100 | `result-track:eb8a7a49bfceebf3ffc0c9250fe69a0235d174bfc7abab12a24e2b450b4f7d05` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/involution-on-minus--26e0c87d5cce661f860d3778.md) | 107 | `result-track:26e0c87d5cce661f860d3778ec234663a1c5a8f8e1009c38ac619c9249551ea9` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/commutinginvolutions--102d37132207f1419e668e0f.md) | 114 | `declaration-track:102d37132207f1419e668e0f7c471b680cddf899958ee6f20f84575d44f363cf` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/plusplus-commute--587264ac1fc90f9502e3d0e4.md) | 126 | `result-track:587264ac1fc90f9502e3d0e48af4298768273cebcea6147e4bf4e9021a314290` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/plusminus-commute--146b2cfa22688a6acc320b41.md) | 134 | `result-track:146b2cfa22688a6acc320b41c0b8f46d1cdc63d4f33d38f2d593f0feca1099d3` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/minusplus-commute--09b4ac1b86a6cbf4720714fb.md) | 142 | `result-track:09b4ac1b86a6cbf4720714fbc8d0e1f1227f6b262024eaa3ceddf94a3a8331f1` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/minusminus-commute--d9760a1b65435ca9c074dc1a.md) | 150 | `result-track:d9760a1b65435ca9c074dc1a6bca50ee9a0accc9047f9acc12310a74c156fbbf` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp--3e8d4035c5ba94f739595560.md) | 158 | `declaration-track:3e8d4035c5ba94f73959556017bffd71422375a46156ea58ae108fdd4ffbb9bd` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm--448d4a56ff8f9af94e4ca304.md) | 162 | `declaration-track:448d4a56ff8f9af94e4ca304b24827b9edcfa34465ff6fde0ef44c040ed1d31c` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp--ac3870e54989d5dbae8f48a4.md) | 166 | `declaration-track:ac3870e54989d5dbae8f48a45c1a17d100ac72b45374bc1b6d760b332f51a5f9` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm--80e46c4227cce83c0296f91f.md) | 170 | `declaration-track:80e46c4227cce83c0296f91fb860d8d9878920fa037a19febd2adbb9584aaf4b` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp-apply--50640421e8229928e9b5f13a.md) | 174 | `result-track:50640421e8229928e9b5f13a0f05be15e31e2ec899b31c9d285c501bc77d8c9b` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm-apply--039e434dd0056713cccd8452.md) | 180 | `result-track:039e434dd0056713cccd84528333c774b77a060b532476fa04e5bc6cb0602441` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp-apply--06276cd68d71ed0257fe0e9a.md) | 186 | `result-track:06276cd68d71ed0257fe0e9afca3d4c0f19e27d104b7bab6156d68381722775d` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm-apply--6e452cc30a87bcd4e8c19ac7.md) | 192 | `result-track:6e452cc30a87bcd4e8c19ac73a3ddbae46928ecd562bd58de469278510ac5ca2` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/idempotent-comp-of-commute--2ea1b44e2cef011f6051648c.md) | 197 | `result-track:2ea1b44e2cef011f6051648ca3f9e3bec01b9018993232ac5859fb781ca0f7d4` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp-idempotent--2e2299ef05ea40a8a6689311.md) | 208 | `result-track:2e2299ef05ea40a8a668931120493693ac7c421b57f37aa17254877a1c6f8941` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm-idempotent--e37f6ce6bb7f3c8c1fcb1d2a.md) | 217 | `result-track:e37f6ce6bb7f3c8c1fcb1d2a72d95ad07751ac1c2abccfe60bb597ef7657775c` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp-idempotent--e4f26742593f8c08cf2c4215.md) | 226 | `result-track:e4f26742593f8c08cf2c4215f889a42c6dd5d188a0b53fbe0387a7803a42c199` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm-idempotent--f4f29dca29c757a7a3a76959.md) | 235 | `result-track:f4f29dca29c757a7a3a76959f912cc0fc89e18ca25462fa98b1da8fda17978d6` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/four-sector-decomposition--4cc6eddd26b718ec3280757b.md) | 244 | `result-track:4cc6eddd26b718ec3280757b523b8eaabad3fe1fd34a287f6cb436fbdf31dd6f` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp-after-pm--da141e4b2524ff128cc47736.md) | 251 | `result-track:da141e4b2524ff128cc4773603f1b3e2a67fbaf88036828910d6fd838ce243f2` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm-after-pp--c5579c3390c960c16a955075.md) | 262 | `result-track:c5579c3390c960c16a955075fb5d033c35d286f49e95f629f62db81421d98e99` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp-after-mp--9cb8b454b5d6096604e06891.md) | 273 | `result-track:9cb8b454b5d6096604e06891b0a09d97e0d91a148de39cae5b53726eb9737aad` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp-after-pp--5f11abe959db8cd9724b7770.md) | 284 | `result-track:5f11abe959db8cd9724b777023111ac7e4fb0bbb66256d5f2b2285a76056e0a9` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpp-after-mm--baaa1cf0a8b10dfcbb88cf5c.md) | 295 | `result-track:baaa1cf0a8b10dfcbb88cf5ca99072477dfca1d7b553c3ab0d5b0bd61695b3c2` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm-after-pp--8c6cdfe4963d58d2edcac708.md) | 305 | `result-track:8c6cdfe4963d58d2edcac7087ca6a6af8be5bd980f399b4e62c9f0790a4064a7` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm-after-mp--ccce84ff1a30e6d8955efc29.md) | 315 | `result-track:ccce84ff1a30e6d8955efc2999912db4ec49f448c4c150f68ff68fc4244a1193` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp-after-pm--b10f7e07976f35e6965d6fdd.md) | 325 | `result-track:b10f7e07976f35e6965d6fddee4351065d926e0b3a5360f99c33a7471e5b4d1d` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectorpm-after-mm--1236afc6ace27b5490b04c2c.md) | 335 | `result-track:1236afc6ace27b5490b04c2c06f13177229ff54b45db0e5d351dd5875f760588` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm-after-pm--5c180d45d1bfd58ea418c99f.md) | 346 | `result-track:5c180d45d1bfd58ea418c99f8fb10664a4f70c6a12cf38d112c215a99a9a9949` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormp-after-mm--a72a2fdf27b2dd536f80a985.md) | 357 | `result-track:a72a2fdf27b2dd536f80a985ca8344694feb40a5f859bc5ba6b216c3ad6f0fcf` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/sectormm-after-mp--8630f6c35de84ab2a119ba5c.md) | 368 | `result-track:8630f6c35de84ab2a119ba5c1e905d9b1d4aded578b8cb431185041fbb518370` |
| 43 | `def` | [interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/interventionsector--c9af72a69f935e8a30b3ac67.md) | 379 | `declaration-track:c9af72a69f935e8a30b3ac678ff596e6f8e3ff1a2eb2c037e9d48b4e6117951f` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/interventionsector-idempotent--25dfc30aef9f5b815e4dccb1.md) | 383 | `result-track:25dfc30aef9f5b815e4dccb1a6a43233a0e9a4f290b75149e8c499bac5173489` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/first-on-interventionsector--18f6960ac285e5767204f96c.md) | 388 | `result-track:18f6960ac285e5767204f96c79f3ede748c2ea5c0dbdd871043a00d548925957` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../mathematics/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean/declarations/second-on-interventionsector--932c2e1d73c0c594fb70bed8.md) | 396 | `result-track:932c2e1d73c0c594fb70bed8349949e6a8b6347e98a6cb4cfe1d8be224ac70e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
