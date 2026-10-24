# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsumStatements.Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98294ff149bf8106c26e66c0b923c9032146ad79",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98294ff149bf8106c26e66c0b923c9032146ad79`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/ishigherprimepower--2b618d01f592417c2a20bf64.md) | 17 | `declaration-track:2b618d01f592417c2a20bf649d87cf099d8a74bd97e23bd1cd1c3e6b4d95bf1f` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherprimepowerindices--179fffde31eb9824eabdfd3f.md) | 20 | `declaration-track:179fffde31eb9824eabdfd3fbef896aa6558e45af365a51e5ae3c192711c0e5c` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherprimepowercontribution--399ebce1d6488edc42636997.md) | 25 | `declaration-track:399ebce1d6488edc426369971a85aa9f77416fbe843b8fb013c17310e66bf86d` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/prime-power-representation-unique--778dcfb6d4f06fda61a38286.md) | 31 | `result-track:778dcfb6d4f06fda61a382860bd58ab55cbd267b396a1e850c47c750a90e86fc` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/primesquare-not-higher--5ed221c34c8a0ec39b1362bf.md) | 37 | `result-track:5ed221c34c8a0ec39b1362bfb5302f69f09256e6b6274f94130ea94682c64034` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/primesquare-not-prime--4ac82c9e881ad24862048250.md) | 45 | `result-track:4ac82c9e881ad2486204825061b3dad630a22963c2c8f0af4986e2dee258a1d7` |
| 7 | `theorem` | [higher_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higher-not-prime--8b8a647be904fc28a7640125.md) | 50 | `result-track:8b8a647be904fc28a7640125214acad259cc5b191a1da2693ae72249fcff7bb7` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/nonprime-primepower-iff--f818e7570432f5d2634280fa.md) | 55 | `result-track:f818e7570432f5d2634280fa02a492573e9dfd1e1f6a7ead52c4bd8eab687306` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/nonprime-weight-zero-of-outside--a0da819268212c6eef463885.md) | 75 | `result-track:a0da819268212c6eef463885a90e3825a55744387048f63b1f1eb929b44aa711` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/primesquare-higher-indices-disjoint--a25e2e4fae61dbe56e254a46.md) | 83 | `result-track:a25e2e4fae61dbe56e254a46c80861129e627f73e38511378fdce88d4f2d9f8e` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/properprimepowercontribution-eq-square-add-higher--4352da336221a2bfe76c602d.md) | 91 | `result-track:4352da336221a2bfe76c602deb505778afd987f684875f95c3411b75702374ae` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/primepowercontribution-eq-prime-square-higher--e5becb3ba9c57c3bfcf274ac.md) | 112 | `result-track:e5becb3ba9c57c3bfcf274accb724105bca7d2e1434450a74fddb257cbd756fc` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/eight-higher-not-square--1a9746df43a13835f81b9066.md) | 120 | `result-track:1a9746df43a13835f81b9066f63eb2ace77cc9778a79bbb4afa4ceec0f5db4ea` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/eight-mem-higherprimepowerindices-iff--d4135c296fa76655226958c9.md) | 125 | `result-track:d4135c296fa76655226958c91e8aa8271ab44c8148e966e881115f88824aaa69` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/sqrt-nat-power--5d2d8a0f3301c5ee6026847f.md) | 144 | `result-track:5d2d8a0f3301c5ee6026847f414e4fc9ca9efe4c0dbbc1dbb44dfcc83725c9c9` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higher-prime-power-weight--28fcb9534a543a25bcf3684f.md) | 151 | `result-track:28fcb9534a543a25bcf3684fbc352507d9b2106aaa17d0d7e8ba0b1e3efce4ca` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higher-prime-power-summand--f9b0c99b02b61ef4fa48dfb9.md) | 158 | `result-track:f9b0c99b02b61ef4fa48dfb9b1ca734dcdcdf5aae8fe46a6edd8793c9a9ce3cc` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherpowerindex--b2668474f52ded0b29b1d605.md) | 178 | `declaration-track:b2668474f52ded0b29b1d60564b7fe12dcabfe4dd3b66fbfeb276d0fa70ef7b6` |
| 19 | `def` | [powerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/powerindex--9e7d198652cd06acbff8e0c2.md) | 181 | `declaration-track:9e7d198652cd06acbff8e0c2c02bfa3e701d1f3d08d77f0a1264bc42081e06bb` |
| 20 | `theorem` | [powerIndex_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/powerindex-injective--f280ea43381276e7323ccbca.md) | 184 | `result-track:f280ea43381276e7323ccbca4e8371eb0fb8b7141fdb0e13bbeba3648261af80` |
| 21 | `def` | [higherPairIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherpairindices--46a94e76a89a733fbbad5ec1.md) | 194 | `declaration-track:46a94e76a89a733fbbad5ec1fb112c276ced85db77676918e00494b16689b6b8` |
| 22 | `def` | [higherSourceTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/highersourceterm--c3f6182b767733792deeaa81.md) | 198 | `declaration-track:c3f6182b767733792deeaa81244f910dd97c42c83392c9208cf2027799e489d7` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/powerindex-ishigher--335f36eb51734f9f378e3132.md) | 203 | `result-track:335f36eb51734f9f378e3132d211e9840941e325358aa4aea2ce8d07fecc9095` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/powerindex-two-le--e41c1b8fb3759402ad1200db.md) | 207 | `result-track:e41c1b8fb3759402ad1200db866cf498f4a98ea61f2e27f7b915ef25a7eea0d9` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/mem-higherpairindices-iff--d37953e108dcf12209637cde.md) | 211 | `result-track:d37953e108dcf12209637cde82ccbb902873a476f137715af34f9a6c977e8932` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherpairindices-image--481c306be7a99be7a3c6018a.md) | 218 | `result-track:481c306be7a99be7a3c6018a4f2b012138481068efa0a29bc0355380d2c6fc98` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherprimepowercontribution-eq-finite-sum--d3eb95ee22845f5954f2ea45.md) | 233 | `result-track:d3eb95ee22845f5954f2ea450c2c7bcc432907fca12adead735eb4bbd57866b5` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/highersourceterm-zero-outside--01862193ee54fecff85936e8.md) | 243 | `result-track:01862193ee54fecff85936e8b2bc7b5daffc12e071c97856f017f5fa44ace1a5` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/highersourceterm-finite-support--f4ca7e751688b090aca80e67.md) | 258 | `result-track:f4ca7e751688b090aca80e67c4bc5af5639ba54a12575a881a0c51bf8aea3f9a` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/highersourceterm-summable--1a88ab3372042b4badcea7a7.md) | 264 | `result-track:1a88ab3372042b4badcea7a7132cb4aec7e40cbb3808177d50fd77a65a126ba8` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/highersourceterm-norm-summable--3fb9912a0b9515093e726b62.md) | 269 | `result-track:3fb9912a0b9515093e726b6292dd61e03a0b06d74df8d77905394ac2ebb95be2` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/higherprimepowercontribution-eq-tsum--62f8d7c1b41ea9b75854c392.md) | 276 | `result-track:62f8d7c1b41ea9b75854c39252e9598315b945bc3ed4725e74b4ec2039a91732` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--c995a3aa42a31f290b692345.md) | 298 | `declaration-track:c995a3aa42a31f290b6923454d923edd23e35439361e67dee7abbdfa9ed5cf33` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--67389477859ac27af20d9e3e.md) | 300 | `declaration-track:67389477859ac27af20d9e3eda0d812059441acbdd3617dfb8dc3093ebf8ccea` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--e3a94c6b3afac2d84ba48c23.md) | 302 | `declaration-track:e3a94c6b3afac2d84ba48c23900fe15bcfafa09c11a9c3df8b73cd53a47dea5a` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--31de1e99547db86190c50629.md) | 305 | `declaration-track:31de1e99547db86190c5062971fb86ea5b45bad8ac8753a5c7ac2a358ba39155` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--52f421c3ed3d0aab84a1fbec.md) | 308 | `declaration-track:52f421c3ed3d0aab84a1fbec4577e9b818c2bfb24ae097274c95e4447cc15587` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--f572bd15bfb8512bea6c5a05.md) | 312 | `declaration-track:f572bd15bfb8512bea6c5a05c398bd341f58b298bdc5e69d74bad693542b0b23` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--b2ccfe411a44e2bc92aaf43e.md) | 315 | `declaration-track:b2ccfe411a44e2bc92aaf43e1828be7b79886a0c3f2fd8750389f520926155fc` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--f53a3562a6e740ec3e1d6305.md) | 318 | `declaration-track:f53a3562a6e740ec3e1d63059b50ce1d94a131af6683261e70762afb281583bc` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--153dc7cff0d84c9da8e3b528.md) | 322 | `declaration-track:153dc7cff0d84c9da8e3b52868d69651ef50ef3de95e514c56655069b13e6223` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--21359be94b3fde1ea81b7276.md) | 326 | `declaration-track:21359be94b3fde1ea81b7276debc598d81755b1b9264ae4eca1e9e3b82b7f6fb` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--fbf82d39c550055229e994f2.md) | 330 | `declaration-track:fbf82d39c550055229e994f24c1243ae4ad2e4d086c071d56e3b4a640185e987` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--b0ccec31a21f211ab4f62b65.md) | 334 | `declaration-track:b0ccec31a21f211ab4f62b65bda974ccc343715b4ef468f6b181613edcb366fc` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--fbb656bbbfa966668def4f92.md) | 338 | `declaration-track:fbb656bbbfa966668def4f926e7f44fc47f3b6809a21202fe1e734be5eb50e4b` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--a39a3f2c9ca91b6c51815d07.md) | 342 | `declaration-track:a39a3f2c9ca91b6c51815d071d964fecd369e992f395f2ad342e9e0ce6155451` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variant1c6bd0bc5fcbc65261eb791ae94dbf81aaae4c53010ed7f97f4345354ccac1ae.lean/declarations/example--6aaae805720934d8f2eb6f2c.md) | 346 | `declaration-track:6aaae805720934d8f2eb6f2c3a84b8fd3d90f3f59c75af69a7b229562f57e498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
