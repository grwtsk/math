# Verification target: GRWTSK.Algebra.LinearAlgebra.2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2.Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a5db4be37c514194a2c627d52a121d43f3c299",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a5db4be37c514194a2c627d52a121d43f3c299`.

Source path: `GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionplus--ab58b5a63cd13a6afe69d91c.md) | 37 | `declaration-track:ab58b5a63cd13a6afe69d91c5b3a0506bdc5506f96e93b649d7e122d87ea49c3` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionminus--acc024910010310c1ffcaa07.md) | 41 | `declaration-track:acc024910010310c1ffcaa0781baa7c79724dc4065e30e9091baaeaf0d59e1b6` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionplus-apply--7bd64e9788e3957f2be3fb67.md) | 45 | `result-track:7bd64e9788e3957f2be3fb6716d8af7a0440a8d2974016ae4294d3d344d80f97` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionminus-apply--4ec9ff8eebee01a857ba4c1b.md) | 50 | `result-track:4ec9ff8eebee01a857ba4c1bfd7c405efa1e0fac1aaade50dc680f3b655a3454` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involution-projection-decomposition--522ffe60fb6f34f0460ac7f2.md) | 55 | `result-track:522ffe60fb6f34f0460ac7f287c227cd5374b0ae9fb926cbc0c7a4e75622adad` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionplus-idempotent--7ba8430165cf92c688f8622e.md) | 62 | `result-track:7ba8430165cf92c688f8622ecb6baae3712eb82d4e88a005de077af6d2010c23` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionminus-idempotent--642c9249389533c9906b94ea.md) | 70 | `result-track:642c9249389533c9906b94ea018154cb121aff5aba9b2ef5cae69f20ed6928da` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionplus-after-minus--2fab4f2e0e95b7b34464c561.md) | 78 | `result-track:2fab4f2e0e95b7b34464c561038072962709a907943beefdb74accf2f177527b` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involutionminus-after-plus--1c8ec7910f8d498009dbca6d.md) | 85 | `result-track:1c8ec7910f8d498009dbca6d508401639b808cef07a5e796e4a4c1feebc13259` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involution-on-plus--7ab4e99723b39628e0e5d69b.md) | 92 | `result-track:7ab4e99723b39628e0e5d69ba10c750919cd3ba43dab121a01d2b08203640fe1` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/involution-on-minus--d7ae478d23cd61ffb711fd83.md) | 99 | `result-track:d7ae478d23cd61ffb711fd83768216aa8edb8f759f8738750d469956f7a1ced6` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/commutinginvolutions--c9ba442391b83809ac7f28d3.md) | 106 | `declaration-track:c9ba442391b83809ac7f28d31cadb3dd0eed2ec783be0f58ffcdcbfe924ced2f` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/plusplus-commute--b62cac69c6cd2fa126802a56.md) | 118 | `result-track:b62cac69c6cd2fa126802a5678b9d1b7822c6ea0fd9c0e3ccea7a243e4742a8f` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/plusminus-commute--7cc26fa7e3fb9f130cb3e354.md) | 126 | `result-track:7cc26fa7e3fb9f130cb3e3548f75149291500828ebd5aa84a44c10da359b21c0` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/minusplus-commute--a9a462cd75e9ca0646a07a23.md) | 134 | `result-track:a9a462cd75e9ca0646a07a23789ff40cae82a27d1cd05a1099bddb13b583ccd1` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/minusminus-commute--21803d5f35fc830f89c9a896.md) | 142 | `result-track:21803d5f35fc830f89c9a896047ed72ef0dd24b2041ef802359b49fa01e78164` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpp--1ed86d646580025bb9707454.md) | 150 | `declaration-track:1ed86d646580025bb970745433543531c6501859c367e45cc5d10e4d8325a947` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpm--f6bffe1d3fee3981892fb7f2.md) | 154 | `declaration-track:f6bffe1d3fee3981892fb7f2cf55821174dc02f81cf49db44b902e303f95a267` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormp--2f607b9e79068dd538d89caa.md) | 158 | `declaration-track:2f607b9e79068dd538d89caa9d7c0666bcbbe1789e03de7b4184071be6d9ffe6` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormm--a1d5142436e1e607babf7fb0.md) | 162 | `declaration-track:a1d5142436e1e607babf7fb0135edbf0ecb0b5334aca4cb752c28859d8d6b67f` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpp-apply--24ac62bf90d323e032f2d18e.md) | 166 | `result-track:24ac62bf90d323e032f2d18eccfbdd677c1a5f2400733007b6b709636387f61f` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpm-apply--816b987cc7fde243477a2902.md) | 172 | `result-track:816b987cc7fde243477a290246eacb127fab4313ea5cfe36438d294afb2da6c6` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormp-apply--5c28de121c821214107a135e.md) | 178 | `result-track:5c28de121c821214107a135ee6384efa8611baf4fd6c809f6a19a60202565710` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormm-apply--99b7109261e6dd94be62ff91.md) | 184 | `result-track:99b7109261e6dd94be62ff91925df3fc67dddac4527a76e54a5ff5c441a13f79` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/idempotent-comp-of-commute--0911f174cff5f5970c6ea092.md) | 189 | `result-track:0911f174cff5f5970c6ea092ebf7f1fdcc779aaf7c7010f47a8f5917a2824f8d` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpp-idempotent--e885dae1a95e1267dcfe7db7.md) | 199 | `result-track:e885dae1a95e1267dcfe7db78a26e27a757ae67c1d5d77bd7ef84d64c4d90ac9` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpm-idempotent--b893be4c17ffec3ccdd58337.md) | 208 | `result-track:b893be4c17ffec3ccdd583376f72361709ae5b5011e6cd882caa6ff58ba5b807` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormp-idempotent--d19801a5d7a841a5093ba1c4.md) | 217 | `result-track:d19801a5d7a841a5093ba1c4a7a5ed0948cbfac7ccf237f39b28ded5f22404fa` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormm-idempotent--dc82200d1217ef45e763dac8.md) | 226 | `result-track:dc82200d1217ef45e763dac8c10d6ca3950bd24f3f4fe6179e18ea871a5b4160` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/four-sector-decomposition--dd2e325c944afaf2839d8afe.md) | 235 | `result-track:dd2e325c944afaf2839d8afee47be5942ef0777dc8408267c8760fa54c2c4282` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpp-after-pm--fe7dd5d80aebd440a96fa0e0.md) | 242 | `result-track:fe7dd5d80aebd440a96fa0e03ae09b11192dfe6313ae6446b936793a66692774` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpm-after-pp--f3300a92b24ad4341c289ae0.md) | 253 | `result-track:f3300a92b24ad4341c289ae0e890d46b22864c86f4c0253b2db8c89e9af21b5b` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectorpp-after-mp--02c6c5b75f0710c5731d3ee9.md) | 264 | `result-track:02c6c5b75f0710c5731d3ee9560b33cb51d76a013be2cd070c2e339c7ba843cf` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003a.lean/declarations/sectormp-after-pp--be309a23ea0cb9308a7aa61d.md) | 274 | `result-track:be309a23ea0cb9308a7aa61db681ddbf866d34b804742ffff6509fe4ca7c5d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
