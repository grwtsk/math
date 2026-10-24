# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22b77cfb5ea18f8a8ee014545e8bd08c1e4ed4c5",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22b77cfb5ea18f8a8ee014545e8bd08c1e4ed4c5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens--8cc0720107850d70265fb053.md) | 69 | `declaration-track:8cc0720107850d70265fb053036b9a3ef3ead119ca296c2e2e2a837b18ad706d` |
| 2 | `lemma` | [dens_eq_card_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-eq-card-div-card--294e3011b63d8f1bca5b33be.md) | 71 | `result-track:294e3011b63d8f1bca5b33beb69b6f7a0dd3585b745821fe72673eda1a8683c4` |
| 3 | `lemma` | [dens_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-empty--a6ebe9d572f42e370c5cb2fb.md) | 73 | `result-track:a6ebe9d572f42e370c5cb2fbdf611ccda445081f3b9f661900c757e3be38b4ac` |
| 4 | `lemma` | [dens_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-singleton--aacddbcd54f6838115d1e6e1.md) | 75 | `result-track:aacddbcd54f6838115d1e6e1934c69dc28a74b8fcd759ff6426afa61aba62b55` |
| 5 | `lemma` | [dens_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-cons--5b7c588e09dd2b6c1880c986.md) | 78 | `result-track:5b7c588e09dd2b6c1880c986fe3ebfcaf5b20a97d4e97a3ab411b63d48d0921e` |
| 6 | `lemma` | [dens_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-disjunion--4bccc3c9093583795a454807.md) | 81 | `result-track:4bccc3c9093583795a45480796088db9c3261aad7a74f0987506ca7b1c1e9536` |
| 7 | `lemma` | [dens_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-eq-zero--f49e17e0e64a8c24572b3e86.md) | 84 | `result-track:f49e17e0e64a8c24572b3e868d77563f3d6f2dc049edbfc8f6ec8c4eaeeb7d6e` |
| 8 | `lemma` | [dens_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-ne-zero--63780c8a9e6fd82f1f5a1b84.md) | 87 | `result-track:63780c8a9e6fd82f1f5a1b84142d6ece87481bb9820f3b7bc8e4ac3bf627f6e3` |
| 9 | `lemma` | [dens_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-pos--7f5bc4f3c77473208006a58a.md) | 89 | `result-track:7f5bc4f3c77473208006a58a71fc03a264cc8842091ead9d07d7d9ce4ae57818` |
| 10 | `lemma` | [dens_le_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-le-dens--55f92cdc9f1ad506d0a77eb0.md) | 94 | `result-track:55f92cdc9f1ad506d0a77eb096b59a78cfad2d041536aa5f08499c9b553c25c1` |
| 11 | `lemma` | [dens_lt_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-lt-dens--4b86b1d1e28979206c6cf399.md) | 97 | `result-track:4b86b1d1e28979206c6cf3990ca55bb87c9a9f9a17443222c5dd1f233ca4d067` |
| 12 | `lemma` | [dens_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-mono--7a1ccf98a1bd8c731ff149fe.md) | 103 | `result-track:7a1ccf98a1bd8c731ff149fe61c28c1ea68a52c041aa1541958c106debf7bfa5` |
| 13 | `lemma` | [dens_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-strictmono--32817f60698dbea688760408.md) | 104 | `result-track:32817f60698dbea688760408c088b3771e47902ec18ad887bebc764d1f2c9afa` |
| 14 | `lemma` | [dens_map_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-map-le--9a650d102c4fc4d7d745e173.md) | 106 | `result-track:9a650d102c4fc4d7d745e173890ac9fe46e0072702a6b78772ef5aab5e8a041a` |
| 15 | `lemma` | [dens_map_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-map-equiv--01e574c429bad311776b074c.md) | 115 | `result-track:01e574c429bad311776b074c60581741cfee5f4869e82bbc0b3f218be20c2ffe` |
| 16 | `lemma` | [dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-image--fb9a62dadadea50d9ed71921.md) | 118 | `result-track:fb9a62dadadea50d9ed71921f04eb72ae4b2fcbba3c11680e8647b839b92b0b6` |
| 17 | `lemma` | [card_mul_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/card-mul-dens--5e3982169abc07125e186e77.md) | 122 | `result-track:5e3982169abc07125e186e7721cafe9c2b9e48aa32c42f58e211fa5e65eb50e3` |
| 18 | `lemma` | [dens_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-mul-card--8daab6e05ebe9760680e4542.md) | 128 | `result-track:8daab6e05ebe9760680e45422c52474eb0f01ddce0a455c63cd37393fbdaba21` |
| 19 | `lemma` | [natCast_card_mul_nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/natcast-card-mul-nnratcast-dens--623837fa7ae9716a57fa0cdc.md) | 134 | `result-track:623837fa7ae9716a57fa0cdcfaacb4e7eb580e74059bb08c0dc508ff753b5d9a` |
| 20 | `lemma` | [nnratCast_dens_mul_natCast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/nnratcast-dens-mul-natcast-card--d3d67f613f7a63372dfb04b9.md) | 137 | `result-track:d3d67f613f7a63372dfb04b90a48dc766364573cf61431577a79e2057231af12` |
| 21 | `lemma` | [nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/nnratcast-dens--f9b4b29ef3499e25824eaa20.md) | 140 | `result-track:f9b4b29ef3499e25824eaa20534b1bc9b326e840421d7631d19a44a99aa63808` |
| 22 | `lemma` | [dens_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-univ--0913adae393e412721474c4b.md) | 148 | `result-track:0913adae393e412721474c4bbe6c871c67683a6d5f7469b18ab538c38b3ba882` |
| 23 | `lemma` | [dens_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-eq-one--04e2cae7839ceafdf490e56e.md) | 150 | `result-track:04e2cae7839ceafdf490e56e1fab13f805d93c11295276ec6700c29b2a4757e4` |
| 24 | `lemma` | [dens_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-ne-one--5b214d1e71964a25acf4e2b9.md) | 153 | `result-track:5b214d1e71964a25acf4e2b9cba431930efa34934de9fac97e76ceff76380602` |
| 25 | `lemma` | [dens_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-le-one--dd40167aba341b0ef8feeafc.md) | 157 | `result-track:dd40167aba341b0ef8feeafc0ebdc0c753eb9b35fa4c1fe4496bc31e6d5955d4` |
| 26 | `lemma` | [dens_union_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-union-add-dens-inter--eb327020bd6fb1dc3ec78e7c.md) | 165 | `result-track:eb327020bd6fb1dc3ec78e7cbbcaae6435b2a1454f7944f7dfffc93cf4796f82` |
| 27 | `lemma` | [dens_inter_add_dens_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-inter-add-dens-union--541c39730fcda9b9e142b1e1.md) | 169 | `result-track:541c39730fcda9b9e142b1e13ec06b53e3f16ac3107f34eff8c81e444458f539` |
| 28 | `lemma` | [dens_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-union-of-disjoint--e042c22bc2597fac8a02be78.md) | 172 | `result-track:e042c22bc2597fac8a02be78d6767ccb10d0f083b090604134dd46974203964f` |
| 29 | `lemma` | [dens_sdiff_add_dens_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-sdiff-add-dens-eq-dens--712c4241ab26f60a894ef9ab.md) | 175 | `result-track:712c4241ab26f60a894ef9ab5c88265a61c3535e4a2cb0c2ab193e55422d9ae1` |
| 30 | `lemma` | [dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-sdiff-add-dens--9e555f030f8223a6f9939042.md) | 178 | `result-track:9e555f030f8223a6f99390423f2b3486c79e8acf6f3a03e00a7e454d0638e380` |
| 31 | `lemma` | [dens_sdiff_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-sdiff-comm--26827939a492c9501deea9d0.md) | 181 | `result-track:26827939a492c9501deea9d02c914a12331498e31eef848a393ce7a111fbda8b` |
| 32 | `lemma` | [dens_sdiff_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-sdiff-add-dens-inter--4dfd3c2ee43fc49c916a7f0f.md) | 186 | `result-track:4dfd3c2ee43fc49c916a7f0f22f38485df388113e08a17652008310e909b8aa5` |
| 33 | `lemma` | [dens_inter_add_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-inter-add-dens-sdiff--4c175549f200354fb97c28f0.md) | 190 | `result-track:4c175549f200354fb97c28f09c56c5b19802c4e964498f35d9d5628e814a0dd9` |
| 34 | `lemma` | [dens_filter_add_dens_filter_not_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-filter-add-dens-filter-not-eq-dens--eb03012531e62a2cda380488.md) | 193 | `result-track:eb03012531e62a2cda380488f7c8a05df556b41013f6f3e7a65ba2acb74920a1` |
| 35 | `lemma` | [dens_union_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-union-le--1624ccb96daf9235df2b2609.md) | 199 | `result-track:1624ccb96daf9235df2b2609ff044efd28fbdc5400daba0e97d3d3fc3e0d04ad` |
| 36 | `lemma` | [dens_le_dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-le-dens-sdiff-add-dens--74e873535511c6d9ddc2bf29.md) | 202 | `result-track:74e873535511c6d9ddc2bf2941133d5f167bd07a306a89d286ab9edaeff422a3` |
| 37 | `lemma` | [dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/dens-sdiff--834a2109ebf88a8f9cbcb4fb.md) | 205 | `result-track:834a2109ebf88a8f9cbcb4fbcaec1e3e3a88572096495bf6d04f197c604dba58` |
| 38 | `lemma` | [le_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant82c6918d97d88b91f689be3191b35d7e85b0af01ff97f049fdaf3c0c54090aca.lean/declarations/le-dens-sdiff--62707a762eedd15c3a864bbc.md) | 208 | `result-track:62707a762eedd15c3a864bbcfa1a68eeb27860bd11d053a0b1cd5353d0828284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
