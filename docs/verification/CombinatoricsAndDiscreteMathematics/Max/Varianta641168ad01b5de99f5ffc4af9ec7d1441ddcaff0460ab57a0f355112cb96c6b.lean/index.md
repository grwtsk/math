# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Max.Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b45a670ec988407d16b92980b7b39b1bf377f7f",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b45a670ec988407d16b92980b7b39b1bf377f7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max--75db6d5085a065d263b59371.md) | 46 | `declaration-track:75db6d5085a065d263b59371f36b38a4f32a6d5c6263c0cafee6ea3aa53fe578` |
| 2 | `theorem` | [max_eq_sup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-sup-coe--725f8b9b48a481abb803e074.md) | 50 | `result-track:725f8b9b48a481abb803e074b822cea216bdaae3d7384fac39a8756a3b401899` |
| 3 | `theorem` | [max_eq_sup_withBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-sup-withbot--4a12cc50cabfce5de95e1218.md) | 54 | `result-track:4a12cc50cabfce5de95e121865f6bba2cc2fe602a25a9863a137c5616b19f417` |
| 4 | `theorem` | [max_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-empty--ac1faa3087d244fe4dfe349e.md) | 58 | `result-track:ac1faa3087d244fe4dfe349eba69c315e875aa27fe289e2b16f629445cdf56b8` |
| 5 | `theorem` | [max_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-insert--0c74b5fb31b50afbc8255dfd.md) | 62 | `result-track:0c74b5fb31b50afbc8255dfd77271b29f2b9a518ddf21af11b6149b55288435f` |
| 6 | `theorem` | [max_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-singleton--d09b898ca851fde7b9263dca.md) | 66 | `result-track:d09b898ca851fde7b9263dca59c230a4ca650d627871761aac37daa30035a16a` |
| 7 | `lemma` | [max_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-pair--8ee12758610bbd57d903611a.md) | 71 | `result-track:8ee12758610bbd57d903611ac5f369640fd11d4ae60c81340b58c120715a5d7b` |
| 8 | `theorem` | [max_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-of-mem--74056e6fac399de8604e2110.md) | 76 | `result-track:74056e6fac399de8604e211023f53003356f417de09cb707be43a2501951e323` |
| 9 | `theorem` | [max_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-of-nonempty--1659fb8c10281c8028fe63d8.md) | 80 | `result-track:1659fb8c10281c8028fe63d8c9573b3cda609e784ca196ff7f5556c55290b398` |
| 10 | `theorem` | [max_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-bot--cadaa3d887c843c4872166bb.md) | 85 | `result-track:cadaa3d887c843c4872166bb9b8d877a5d300463db70946bc2af52d895bf2fc7` |
| 11 | `theorem` | [mem_of_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/mem-of-max--1af9fb0c9e9f07a35b1d0415.md) | 92 | `result-track:1af9fb0c9e9f07a35b1d04159dbfa8208f6618892dbac7e3b122e76af1c80a15` |
| 12 | `theorem` | [le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/le-max--f4cc538223e3820f387f1e07.md) | 101 | `result-track:f4cc538223e3820f387f1e07845b3de6eacb923911dca3f0ec23a331ee94bff1` |
| 13 | `theorem` | [notMem_of_max_lt_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/notmem-of-max-lt-coe--e0224f92144758f71caac37a.md) | 105 | `result-track:e0224f92144758f71caac37a7d117590ed12e3db6f470bc25417f2f4347239cb` |
| 14 | `theorem` | [le_max_of_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/le-max-of-eq--e1870c3228a3583d0dfb5da7.md) | 109 | `result-track:e1870c3228a3583d0dfb5da76e3c17c6ed5a8872c5d1d2c4c457be23076131d6` |
| 15 | `theorem` | [notMem_of_max_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/notmem-of-max-lt--819b514bcef8479d1ff66e1c.md) | 113 | `result-track:819b514bcef8479d1ff66e1c78b01c8c33088404ee5c715ca708e488103cac29` |
| 16 | `theorem` | [max_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-union--f7447f2e45d0f717af2d55a2.md) | 117 | `result-track:f7447f2e45d0f717af2d55a209e27ee9d2cf1cfea71221e5c6b16b6c4fd29751` |
| 17 | `theorem` | [max_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-mono--7c2baa58a94595cb4a53970d.md) | 120 | `result-track:7c2baa58a94595cb4a53970d0cfa9ab558078dfed31ecac6c9efe35dc343b043` |
| 18 | `theorem` | [max_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-le--9a3cde2df90340cf21bba6d5.md) | 124 | `result-track:9a3cde2df90340cf21bba6d586cc1c578842cbec5169b120cf3b758f41a4e2be` |
| 19 | `lemma` | [max_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-le-iff--d4b9fdd832562370e20afd6b.md) | 129 | `result-track:d4b9fdd832562370e20afd6b0361b5d5eeab817b6768bb4076a8346ef80fe32e` |
| 20 | `lemma` | [max_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-top--394adec2fe11190338ceeff9.md) | 133 | `result-track:394adec2fe11190338ceeff92d7b0c8dfae9369f78f1552d0fd8aea7477b5f68` |
| 21 | `def` | [max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max--e585582072a15db9884a7e79.md) | 143 | `declaration-track:e585582072a15db9884a7e79218e9c4453ed126d275c016e5dd5ef2c40a5b896` |
| 22 | `theorem` | [max'_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-mem--fcc2004251477dcbe8164d05.md) | 149 | `result-track:fcc2004251477dcbe8164d05e393931ad2985fbd05f9dcb2f23c40e0b9cb212f` |
| 23 | `theorem` | [le_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/le-max--b0207ce98bda160a22310daf.md) | 153 | `result-track:b0207ce98bda160a22310daf1e9e23bc0d94e4cbf3bdb9086d686d5405a3a7ad` |
| 24 | `theorem` | [max'_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-le--510fcd11feb9111e65ec2b60.md) | 157 | `result-track:510fcd11feb9111e65ec2b60a115846975b109b87c6be0f002f2bcff12246aa4` |
| 25 | `theorem` | [isGreatest_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/isgreatest-max--c860d0555a8099da416554c7.md) | 161 | `result-track:c860d0555a8099da416554c7b1bbabe7b4510ae4d62db359d2403eec7d271af8` |
| 26 | `theorem` | [max'_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-le-iff--3029af41c1f46199f1393277.md) | 165 | `result-track:3029af41c1f46199f139327748b239211095123c223f80919fcee9be369696fd` |
| 27 | `theorem` | [max'_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-lt-iff--580065f97b49bfc9aee2c757.md) | 169 | `result-track:580065f97b49bfc9aee2c757162b12c8c530eb31fb993cc0d1c537d9e0bbddca` |
| 28 | `theorem` | [max'_eq_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-sup--870534ac5b04063fd0d1ffd9.md) | 173 | `result-track:870534ac5b04063fd0d1ffd971cb8fc4f2af8958528e715fac3e0a42cd3d5fa5` |
| 29 | `theorem` | [max'_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-singleton--02a7f5ece918fb2acac5189f.md) | 177 | `result-track:02a7f5ece918fb2acac5189f68aa10d61141871aa7feeb45bcad662c19b3997d` |
| 30 | `lemma` | [max'_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-eq-iff--0c8ebfbdc0ff22c7c8a96847.md) | 180 | `result-track:0c8ebfbdc0ff22c7c8a9684737fb174c872ebef844ad6433571af7415cf94829` |
| 31 | `theorem` | [min'_le_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/min-le-max--a194ab6162d6f3f09599502e.md) | 183 | `result-track:a194ab6162d6f3f09599502e6e7467139e02e9b44acd185734a10b6f5d0f397a` |
| 32 | `theorem` | [min'_lt_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/min-lt-max--2124a3ea8f376f5f29ff2e6f.md) | 185 | `result-track:2124a3ea8f376f5f29ff2e6f73bb3026749c3b3397cd5c932b18d7acd58d636b` |
| 33 | `theorem` | [min'_lt_max'_of_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/min-lt-max-of-card--417db862f7f14209eff7c8b2.md) | 192 | `result-track:417db862f7f14209eff7c8b215a6439d4c4c3e97581c122cf6fb04fb537bc933` |
| 34 | `theorem` | [max'_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-union--a596b5cc1aa45247b7f2737c.md) | 198 | `result-track:a596b5cc1aa45247b7f2737c55be8c72dd1b581a527bef99340412d3f408df0f` |
| 35 | `theorem` | [map_ofDual_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/map-ofdual-max--3e28860bf2d22e6dc5c42f8d.md) | 202 | `result-track:3e28860bf2d22e6dc5c42f8d7feeca76ddb480d8c27c1113827db5032c37caf6` |
| 36 | `theorem` | [map_toDual_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/map-todual-max--be6a1ba9bd26aaa83b62dd89.md) | 207 | `result-track:be6a1ba9bd26aaa83b62dd899478dd91abd5c130c84ab207b51ac0a07c3ca53c` |
| 37 | `theorem` | [ofDual_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/ofdual-max--a30aa93720908234f1bdfce1.md) | 212 | `result-track:a30aa93720908234f1bdfce1658d2b98a210b34d17ecdbf058e192200c2d71ee` |
| 38 | `theorem` | [toDual_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/todual-max--d570cda5530f963fbffc8399.md) | 217 | `result-track:d570cda5530f963fbffc8399f26eabbb29e982436ccc0c4f4c90e5d7a7ef6af9` |
| 39 | `theorem` | [max'_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-subset--9b9936d4a5b51426ea902a6b.md) | 222 | `result-track:9b9936d4a5b51426ea902a6b426366ab21c85335a7f841ecd6fbeb86ba643820` |
| 40 | `theorem` | [max'_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-insert--d9e1a4b57ccc8c9a8160a1e9.md) | 226 | `result-track:d9e1a4b57ccc8c9a8160a1e9f22a8cf99cc5495bee8977084153bdc8d79cdd86` |
| 41 | `lemma` | [max'_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-pair--dec3179419286459f85074f8.md) | 233 | `result-track:dec3179419286459f85074f82eed3f52cc0fbf73d594d3cc94452ce097123792` |
| 42 | `theorem` | [lt_max'_of_mem_erase_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/lt-max-of-mem-erase-max--41b4342c78d43f8d2968e24d.md) | 238 | `result-track:41b4342c78d43f8d2968e24d31ffa06d388cd702f39fec10883135e8c202c79a` |
| 43 | `theorem` | [max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-image--c89be899e95d9f49a74a46dd.md) | 244 | `result-track:c89be899e95d9f49a74a46ddd401216aa4d687cca7d2d069c048c2a6b6cc973b` |
| 44 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Max.Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.Monotone.map_finset_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-max-variantf9381a30f9837--6a15fc3c684928ba68fbdff4.md) | 254 | `result-track:6a15fc3c684928ba68fbdff4aa910fa5b36f0501f9591f3ac54e9ed3f473874d` |
| 45 | `theorem` | [coe_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/coe-max--c5c83953d704dd5fe203d2af.md) | 259 | `result-track:c5c83953d704dd5fe203d2af542a90ad75ba6141fa1e171c5af0003dcd12560c` |
| 46 | `theorem` | [max_mem_image_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-mem-image-coe--1dfa400a386924e7be9a0b1e.md) | 263 | `result-track:1dfa400a386924e7be9a0b1e71f111827327dc3387fac64aeed8f1fcdf44b051` |
| 47 | `theorem` | [max_mem_insert_bot_image_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-mem-insert-bot-image-coe--8b07b20c622022a62e5377c3.md) | 268 | `result-track:8b07b20c622022a62e5377c35c040c8708018ebec51f2984ea573ee6e4d73936` |
| 48 | `theorem` | [max'_erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-erase-ne-self--5fa93267e26e49698e05b8ae.md) | 273 | `result-track:5fa93267e26e49698e05b8ae58cca1141e965b9853ec2fcd7a18458d2ffc3ead` |
| 49 | `theorem` | [max_erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/max-erase-ne-self--6824c0100540c5a1d0e552e2.md) | 277 | `result-track:6824c0100540c5a1d0e552e221ccff354c68c0d4e494a87257b7df21e868c2e0` |
| 50 | `theorem` | [exists_next_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/exists-next-right--4492ded6606b8504bfc7fc7a.md) | 285 | `result-track:4492ded6606b8504bfc7fc7a1ee110dcb12b591823ee09248ddd10b6810db504` |
| 51 | `theorem` | [card_le_of_interleaved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/card-le-of-interleaved--d1213fe0f888fce1cdbce8c8.md) | 292 | `result-track:d1213fe0f888fce1cdbce8c86afa3858753e9aec9b807441537f10604a337476` |
| 52 | `theorem` | [card_le_sdiff_of_interleaved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/card-le-sdiff-of-interleaved--9290e175b41b6815b3071efb.md) | 319 | `result-track:9290e175b41b6815b3071efb9838d61a1325b6a960e348a03c033d9e0c1b5576` |
| 53 | `theorem` | [induction_on_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/induction-on-max--6c18575ea0e5008ce0d27c04.md) | 344 | `result-track:6c18575ea0e5008ce0d27c04f8f5fedd1be0715daa8f60863ad9dfcbe77237f3` |
| 54 | `theorem` | [induction_on_max_value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/induction-on-max-value--7fbc83098ce5ebd8de75a4af.md) | 373 | `result-track:7fbc83098ce5ebd8de75a4afc5879176e61b9920370f70011b75c8adb15edea7` |
| 55 | `theorem` | [exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/exists-max-image--548d2bda7690d36bd2824f44.md) | 395 | `result-track:548d2bda7690d36bd2824f442aebf8caf1ee6f2c9600cd09c7e7c46a8269140f` |
| 56 | `theorem` | [isGLB_iff_isLeast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/isglb-iff-isleast--2cfe0ed0aed46d40f292c9c8.md) | 404 | `result-track:2cfe0ed0aed46d40f292c9c895a1bb36208e351093200e517a0c7b95cd4476f4` |
| 57 | `theorem` | [isGLB_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/isglb-mem--be12c1f9021a96c0bbbb4e31.md) | 414 | `result-track:be12c1f9021a96c0bbbb4e31bb225355226accadc12d543a43d4bdbb73b7276e` |
| 58 | `theorem` | [Multiset.exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/declarations/multiset-exists-max-image--ec732c777c79bd8d6ee015d0.md) | 422 | `result-track:ec732c777c79bd8d6ee015d0dbec6f9bcea9fe7ef668157c1d4a13c711a4f74a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
