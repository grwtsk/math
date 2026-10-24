# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PSeries.Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e440a9a003c752da648c95b78f5e12df9cfcebda",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e440a9a003c752da648c95b78f5e12df9cfcebda`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumOverResidueClass` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuccDiffBounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/succdiffbounded--e59b0dc6558782649440a529.md) | 49 | `declaration-track:e59b0dc6558782649440a52971f65cf890a26c76cfc9a2233d1d0d539847dad6` |
| 2 | `theorem` | [le_sum_schlomilch'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-sum-schlomilch--c863cb909e5569a803c3a82b.md) | 57 | `result-track:c863cb909e5569a803c3a82bb570a325bb34671de4d502ffe7594509c3fd425a` |
| 3 | `theorem` | [le_sum_condensed'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-sum-condensed--1d4f07b8f8c18743aa65550f.md) | 72 | `result-track:1d4f07b8f8c18743aa65550fbeacb1ae671768ed8f28de25693bf042b9cfd799` |
| 4 | `theorem` | [le_sum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-sum-schlomilch--b2f419052c7c82de3c544f08.md) | 78 | `result-track:b2f419052c7c82de3c544f08cb6a7beeb1b3971921ac71e309b2445a7023edf0` |
| 5 | `theorem` | [le_sum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-sum-condensed--a2f2e69a264b2afb5fd17589.md) | 85 | `result-track:a2f2e69a264b2afb5fd17589cb8a9355c73e16522a381370d5e8648a1f40a25c` |
| 6 | `theorem` | [sum_schlomilch_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-schlomilch-le--3725ff97c345a55e369b3b0b.md) | 90 | `result-track:3725ff97c345a55e369b3b0b1cf46b04e748ef2b12be405c158da11288fa0578` |
| 7 | `theorem` | [sum_condensed_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-condensed-le--e0e42d55b978799348dc49f3.md) | 107 | `result-track:e0e42d55b978799348dc49f35de154c1c0ac3d95046d1ea150fefbdbfbbfaf47` |
| 8 | `theorem` | [sum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-schlomilch-le--e9fa3dc8d5a4c75cdf620963.md) | 113 | `result-track:e9fa3dc8d5a4c75cdf620963175aeb961368f7f5f86f3bb2d1244f4f097bd0ef` |
| 9 | `theorem` | [sum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-condensed-le--087bb9c577cca6c2cd7c03fc.md) | 133 | `result-track:087bb9c577cca6c2cd7c03fce409b117c4f0230dd63d72844e251d751813c4d9` |
| 10 | `theorem` | [le_tsum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-tsum-schlomilch--5f0cad8f576edcb58febe550.md) | 147 | `result-track:5f0cad8f576edcb58febe5504f61e316a0c5ec85dd9271fe1d5fae68dfaae1e7` |
| 11 | `theorem` | [le_tsum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/le-tsum-condensed--64b83e779354a936a63da748.md) | 158 | `result-track:64b83e779354a936a63da748b4b9d452db67d84089da161b67d1653311cfe30d` |
| 12 | `theorem` | [tsum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/tsum-schlomilch-le--0d3347af256b006de50c6911.md) | 165 | `result-track:0d3347af256b006de50c69113505aa295d6f17d1ad478e15a632cdd4c6f8529b` |
| 13 | `theorem` | [tsum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/tsum-condensed-le--82fd48d19864968ddcd3e4d7.md) | 177 | `result-track:82fd48d19864968ddcd3e4d7dcfebeeb8163a31c673b8e2c209fe2d7b4c12df7` |
| 14 | `theorem` | [summable_schlomilch_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-schlomilch-iff--7a6beaaf468cc44b7a37d435.md) | 195 | `result-track:7a6beaaf468cc44b7a37d435e3148927fd9416ae97d20c6c2cdef79ac9f3248a` |
| 15 | `theorem` | [summable_condensed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-condensed-iff--7b2f8e566db15a3c540738a8.md) | 214 | `result-track:7b2f8e566db15a3c540738a8338f70a1d1af1ccff497d4f480726118faa29732` |
| 16 | `theorem` | [summable_schlomilch_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-schlomilch-iff-of-nonneg--f09c00e0814f79013211b066.md) | 227 | `result-track:f09c00e0814f79013211b066995be45481b3871d00b3f96a44025a4787c0d9ca` |
| 17 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-condensed-iff-of-nonneg--664a10e8ff889a3d7defb767.md) | 240 | `result-track:664a10e8ff889a3d7defb76727cd51eb9b7c9165245ce74fb8d1292394e6b851` |
| 18 | `theorem` | [summable_nat_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-nat-rpow-inv--b9c7027de31ede57a750e71a.md) | 268 | `result-track:b9c7027de31ede57a750e71a967d3893a223f8f2933654380802f3af74ee0efc` |
| 19 | `theorem` | [summable_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-nat-rpow--709a261f7bdbdab660a5e6d1.md) | 299 | `result-track:709a261f7bdbdab660a5e6d19119e11267398c34ce8cd6e04cbf07dd5ba02cb2` |
| 20 | `theorem` | [summable_one_div_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-one-div-nat-rpow--ed9d830244981062d2e962bc.md) | 305 | `result-track:ed9d830244981062d2e962bc44570826dc81232e4f4b359e6c8526288165b42e` |
| 21 | `theorem` | [summable_nat_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-nat-pow-inv--1799b583e61735e6edb0333d.md) | 312 | `result-track:1799b583e61735e6edb0333d1fad63b0399f9396553d677b1c66938c6397bb8f` |
| 22 | `theorem` | [summable_one_div_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-one-div-nat-pow--aac89f6c9f9997a2c6019344.md) | 318 | `result-track:aac89f6c9f9997a2c60193446396fe43fa8563f742097aeb1c01ac4e9cf26b68` |
| 23 | `theorem` | [summable_one_div_int_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-one-div-int-pow--7db03639b150fe717a49032d.md) | 323 | `result-track:7db03639b150fe717a49032d3ae5df503928d47048d97a3f13d03e44e7218215` |
| 24 | `theorem` | [summable_abs_int_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-abs-int-rpow--63071fc988b7254499555b31.md) | 330 | `result-track:63071fc988b7254499555b31e84569a927cb60a5e7de119778f6366ed5835c77` |
| 25 | `theorem` | [not_summable_natCast_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/not-summable-natcast-inv--f69d0fb80dc2cf1eae933ed4.md) | 339 | `result-track:f69d0fb80dc2cf1eae933ed49e94c1674562204fd8e7efa5b86540f60d0f37b4` |
| 26 | `theorem` | [not_summable_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/not-summable-one-div-natcast--83d670f52de1c1d6f6b0464d.md) | 345 | `result-track:83d670f52de1c1d6f6b0464de377caa8724855cdb557604fbc01e455aebc7858` |
| 27 | `theorem` | [tendsto_sum_range_one_div_nat_succ_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/tendsto-sum-range-one-div-nat-succ-attop--787105d89b7d00f2757c7467.md) | 349 | `result-track:787105d89b7d00f2757c746764ccd475c7fbc0f94309a743f6fcf9577d2461c8` |
| 28 | `theorem` | [summable_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-rpow-inv--81eafec1abd3ed15676130a2.md) | 360 | `result-track:81eafec1abd3ed15676130a2deff17efa3e08cfec78308a3e3cd9e4d70e4a656` |
| 29 | `theorem` | [summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-rpow--6e163990d644e8c105d79bc8.md) | 365 | `result-track:6e163990d644e8c105d79bc8221ce5c84805220b4e536bdcccf2f41420129229` |
| 30 | `theorem` | [summable_one_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-one-div-rpow--6582f50035bf0449fc745f98.md) | 368 | `result-track:6582f50035bf0449fc745f98c98e6b9266a33d2a8aae2841f7ea3a22859d43ec` |
| 31 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-ioc-inv-sq-le-sub--1bbbef9c78984f6ac4ffa033.md) | 382 | `result-track:1bbbef9c78984f6ac4ffa0338c2772887c473b43f1397a3778e8ae8422acb8a5` |
| 32 | `theorem` | [sum_Ioo_inv_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/sum-ioo-inv-sq-le--3b3665442951e0bfc1acd64d.md) | 397 | `result-track:3b3665442951e0bfc1acd64d92c87124daae42c429bc41398afda552446f95e2` |
| 33 | `lemma` | [Real.not_summable_indicator_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/real-not-summable-indicator-one-div-natcast--e461ac49ecfea2e373a3cec9.md) | 426 | `result-track:e461ac49ecfea2e373a3cec9b36890fb636b034d8599ee0c1d7bf6364636fff6` |
| 34 | `lemma` | [Real.summable_one_div_nat_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/real-summable-one-div-nat-add-rpow--bb4f2a212062d9e166eba481.md) | 444 | `result-track:bb4f2a212062d9e166eba4818769847e8f4269129aa8c7bb8130bbb67af233c5` |
| 35 | `lemma` | [Real.summable_one_div_int_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/real-summable-one-div-int-add-rpow--36cb6445fccbf1acb710773d.md) | 469 | `result-track:36cb6445fccbf1acb710773d7195d487943c2d50ebce82500eee2161e4e24552` |
| 36 | `theorem` | [summable_pow_div_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant6d5f1062bf2ae71a98d0d7c1cd33f9df7811b596097255bb8465b3211ceb61e8.lean/declarations/summable-pow-div-add--c2436e99216061577da98e77.md) | 474 | `result-track:c2436e99216061577da98e77e0fb62748cc68ee6d5ea0aa95a650d52ccef87b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
