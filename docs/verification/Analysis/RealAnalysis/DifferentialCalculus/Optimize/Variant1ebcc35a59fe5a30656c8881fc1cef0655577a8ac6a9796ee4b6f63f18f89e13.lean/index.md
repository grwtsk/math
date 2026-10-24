# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Optimize.Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ce0bc1ad94c0c16abdcf48b492ef9cc7f6edbd",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ce0bc1ad94c0c16abdcf48b492ef9cc7f6edbd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OptResult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/optresult--0312b1f06702af5c5ef04f7b.md) | 42 | `declaration-track:0312b1f06702af5c5ef04f7be3547fda55ef455432ca3f55e3ce36357e6dae64` |
| 2 | `def` | [derivStrictlyPositive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivstrictlypositive--adea1bd0b871794115f0181b.md) | 53 | `declaration-track:adea1bd0b871794115f0181bcbb9666a5dcb2b61e34c073aeb286d81d3eec55d` |
| 3 | `def` | [derivStrictlyNegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivstrictlynegative--d5cd1eeb5992b37c7763c079.md) | 58 | `declaration-track:d5cd1eeb5992b37c7763c0791d8198a8c03e6a0ba79e6143ec2dbd3dd1ce8a2c` |
| 4 | `def` | [minimizeInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval--636b237246625d500878adf1.md) | 68 | `declaration-track:636b237246625d500878adf1a9fdc7575f67b1fa56a6a35146f301867b9f3785` |
| 5 | `theorem` | [minimizeInterval_base_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval-base-correct--fd2741925f5359880f14fbc8.md) | 121 | `result-track:fd2741925f5359880f14fbc80e2dbe0e5c635d5f268716625621deb42b612dbd` |
| 6 | `theorem` | [derivInterval_correct_evalWithDeriv1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivinterval-correct-evalwithderiv1--b631dca621feee7fce3f1f07.md) | 133 | `result-track:b631dca621feee7fce3f1f074bae748a9d41363cc0881d09659d684dabf88c39` |
| 7 | `theorem` | [derivInterval_correct_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivinterval-correct-single--ec01ae18d9b30edd155989d6.md) | 143 | `result-track:ec01ae18d9b30edd155989d6fb5ec3d88d6403430f19e6a4e9055d8e163e6109` |
| 8 | `theorem` | [deriv_pos_on_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/deriv-pos-on-interval--ff819a21c5e786bda6480413.md) | 150 | `result-track:ff819a21c5e786bda64804139c8338ed0c543bf4f9b1b4221457f74792bc79dd` |
| 9 | `theorem` | [deriv_neg_on_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/deriv-neg-on-interval--079bd87995d0c1c1fd486dcf.md) | 161 | `result-track:079bd87995d0c1c1fd486dcf5da82811647110cbaf88e72be0831797dc2aa684` |
| 10 | `theorem` | [strictMonoOn_of_deriv_pos_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/strictmonoon-of-deriv-pos-interval--84ce65f3a91d11e9eeca6abe.md) | 172 | `result-track:84ce65f3a91d11e9eeca6abeb10b6b68738790effd248e4f8e02036fb9d299d6` |
| 11 | `theorem` | [strictAntiOn_of_deriv_neg_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/strictantion-of-deriv-neg-interval--342161ee9b763b99eea576ae.md) | 188 | `result-track:342161ee9b763b99eea576ae3e8844289aa6bee42084b1f175bcab536c73f250` |
| 12 | `theorem` | [increasing_min_at_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/increasing-min-at-left--daaf30cbc47e103dd9f2344a.md) | 206 | `result-track:daaf30cbc47e103dd9f2344a6d26d6f28dc701dbbdc851905e70e5c2cfd3cab0` |
| 13 | `theorem` | [decreasing_min_at_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/decreasing-min-at-right--c3314e9dd2c78867872e370e.md) | 222 | `result-track:c3314e9dd2c78867872e370e5eade0e07d73be70f79b72f58a099df20bacc022` |
| 14 | `theorem` | [increasing_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/increasing-endpoint-bound--0019f9c767c11e6ca4a9a6ac.md) | 237 | `result-track:0019f9c767c11e6ca4a9a6ac5703b7ea527ed2635722b0bb516c8b7ece799b52` |
| 15 | `theorem` | [decreasing_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/decreasing-endpoint-bound--fe964a691deaab4d6d1734f0.md) | 251 | `result-track:fe964a691deaab4d6d1734f01db099f312af902352a5e93e9eb9c7a5a20f1116` |
| 16 | `theorem` | [mem_bisect_cases](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/mem-bisect-cases--f0cef25c8c80041072bf2ec8.md) | 267 | `result-track:f0cef25c8c80041072bf2ec8eba5df38bc306c1f3fb6c7e295b430541f6a7ed6` |
| 17 | `theorem` | [minimizeInterval_go_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval-go-correct--8019e43be836d8bb522f6ab7.md) | 276 | `result-track:8019e43be836d8bb522f6ab748a0f70c8ad93dde5b2f6cd4d30c07f26e221177` |
| 18 | `theorem` | [minimizeInterval_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval-correct--49560d0ef369c87c47d789f2.md) | 332 | `result-track:49560d0ef369c87c47d789f2c21cf9986720ba15c30ff56bd2a6774f28e54976` |
| 19 | `def` | [maximizeInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeinterval--e83d9ec4e570c55c5ba8c273.md) | 342 | `declaration-track:e83d9ec4e570c55c5ba8c273a1d38a27ebd6a054c5c65c546b43a23d16e130ed` |
| 20 | `theorem` | [maximizeInterval_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeinterval-correct--2933bd7763cd5c330257bd72.md) | 351 | `result-track:2933bd7763cd5c330257bd729965a85da5e60b6764bd83a422c90ff23e0bbb36` |
| 21 | `def` | [checkLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/checklowerbound--c6267791514fa841a7445b00.md) | 386 | `declaration-track:c6267791514fa841a7445b00f9b290161f70e387cd7029cb300b5dcb2cab8c46` |
| 22 | `def` | [checkUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/checkupperbound--98b46f0979d586e810ec6c53.md) | 392 | `declaration-track:98b46f0979d586e810ec6c5382b8a7d76b2a0603ccfab9b562278a853ea9b92b` |
| 23 | `theorem` | [deriv_pos_on_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/deriv-pos-on-interval-idx--7edb2f51010dd5f8d04d89ad.md) | 415 | `result-track:7edb2f51010dd5f8d04d89adbe32f60ae558a2b69f875cdd5cf3e58f66f8c02c` |
| 24 | `theorem` | [deriv_neg_on_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/deriv-neg-on-interval-idx--064ff532eb22628896ab0f50.md) | 429 | `result-track:064ff532eb22628896ab0f501be2cf502de12341c3f049aa5ecdaba016b78e54` |
| 25 | `theorem` | [strictMonoOn_of_deriv_pos_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/strictmonoon-of-deriv-pos-interval-idx--09e3be88eeac690d39c3917b.md) | 443 | `result-track:09e3be88eeac690d39c3917b3a625d977913f641bcbed5baec505eab25666ec1` |
| 26 | `theorem` | [strictAntiOn_of_deriv_neg_interval_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/strictantion-of-deriv-neg-interval-idx--189c6c4966540f86eacb1b2c.md) | 462 | `result-track:189c6c4966540f86eacb1b2c1a54db2e98f22e3a0be8aa10728f84c11905c249` |
| 27 | `theorem` | [increasing_min_at_left_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/increasing-min-at-left-idx--df5c1d61adfcc037145664c8.md) | 483 | `result-track:df5c1d61adfcc037145664c8abe0a24c6b4e8cbd1be5d346678c22c34d3f0d1e` |
| 28 | `theorem` | [decreasing_min_at_right_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/decreasing-min-at-right-idx--5248cf20b7726418ba347ae0.md) | 503 | `result-track:5248cf20b7726418ba347ae0dd18532d32a485ddc7a174606665d811504d8e96` |
| 29 | `def` | [derivStrictlyPositive_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivstrictlypositive-idx--82f0b28ace6f11d17fe45b71.md) | 523 | `declaration-track:82f0b28ace6f11d17fe45b716395ef4599d48d1503a8e59192237ef40e24363b` |
| 30 | `def` | [derivStrictlyNegative_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/derivstrictlynegative-idx--f533e697048b8e7686a9689e.md) | 528 | `declaration-track:f533e697048b8e7686a9689e123d1ebbfae8800aac5fbf50d47551b322044d3f` |
| 31 | `def` | [updateIntervalEnv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/updateintervalenv--c19b8a6711d966527e1b2c7f.md) | 533 | `declaration-track:c19b8a6711d966527e1b2c7fef76aba05df7b0968f2aae5d0ed9947ba289f68e` |
| 32 | `def` | [minimizeIntervalIdx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeintervalidx--5b604a1b6199a93675f1656b.md) | 542 | `declaration-track:5b604a1b6199a93675f1656b0c21e45cc1862a397973c86507458733e5ebd87a` |
| 33 | `theorem` | [minimizeIntervalIdx_base_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeintervalidx-base-correct--5c0708aca0c750c023aa4f82.md) | 600 | `result-track:5c0708aca0c750c023aa4f82122afd473e3e545af934f82b1253084f23bf8335` |
| 34 | `theorem` | [mem_bisect_cases_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/mem-bisect-cases-idx--0acf6363a69ac7cda4edc022.md) | 610 | `result-track:0acf6363a69ac7cda4edc0227798164d8d15bd61489714d32d2949617691e44a` |
| 35 | `theorem` | [minimizeIntervalIdx_go_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeintervalidx-go-correct--652ca5b05e05d8dc02fe7997.md) | 618 | `result-track:652ca5b05e05d8dc02fe79978d43c6e5c620b90d32d99eecf0a41684cb251b6f` |
| 36 | `theorem` | [minimizeIntervalIdx_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeintervalidx-correct--7b122e330b60119eb225bcc9.md) | 813 | `result-track:7b122e330b60119eb225bcc9a63fb5c050055c1630487c31a7faa6798110d431` |
| 37 | `def` | [maximizeIntervalIdx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeintervalidx--824d0e033e6f5701ccdb99e1.md) | 825 | `declaration-track:824d0e033e6f5701ccdb99e179c91c84212745c404682d2980132a8b64778c18` |
| 38 | `theorem` | [maximizeIntervalIdx_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeintervalidx-correct--2437396cf7f7127ffcb482ec.md) | 833 | `result-track:2437396cf7f7127ffcb482ec620896adcfcf1d2771c54f1861a3e38c659414e0` |
| 39 | `def` | [minimizeInterval'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval--afa6bfed8e22bdad6d092feb.md) | 855 | `declaration-track:afa6bfed8e22bdad6d092feb3974e194fabf7d7fed21a45f07141ac39669dce7` |
| 40 | `theorem` | [minimizeInterval'_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/minimizeinterval-correct--03d7d39b062657d1e6e791fc.md) | 861 | `result-track:03d7d39b062657d1e6e791fc4be7f4d33da579cf918368d25ca75b20423dcd69` |
| 41 | `def` | [maximizeInterval'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeinterval--ad88b25d2a88385be169331a.md) | 876 | `declaration-track:ad88b25d2a88385be169331a905b0b970631c6dddfb8f61ea0030a282a424350` |
| 42 | `theorem` | [maximizeInterval'_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/declarations/maximizeinterval-correct--334444a3757098a40866ca3c.md) | 881 | `result-track:334444a3757098a40866ca3cc4983790699349bfc59b1c68e350e49b327e3221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
