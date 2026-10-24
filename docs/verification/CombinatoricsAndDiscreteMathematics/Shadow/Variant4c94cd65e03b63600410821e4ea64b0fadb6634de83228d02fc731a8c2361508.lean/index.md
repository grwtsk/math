# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7739d157ae3d7453ba03ed395f3c8e8be1e69cb4",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7739d157ae3d7453ba03ed395f3c8e8be1e69cb4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Grade` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sups` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow--cbaa09a0f1b1507d75762f52.md) | 58 | `declaration-track:cbaa09a0f1b1507d75762f523a1deac2393e0f525c42b16dc6d88d11d53b5747` |
| 2 | `theorem` | [shadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-empty--393794e7ebe3916d754b3463.md) | 67 | `result-track:393794e7ebe3916d754b346333819ad4e06967a27f6b402ca70fefb5ce30e7d1` |
| 3 | `lemma` | [shadow_iterate_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-iterate-empty--88e2939412f6e43303c478a0.md) | 70 | `result-track:88e2939412f6e43303c478a090c1f0d681b05471027c1302ef6655915a8ddf3a` |
| 4 | `theorem` | [shadow_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-singleton-empty--5146e3d48e1a26b8c00921d6.md) | 74 | `result-track:5146e3d48e1a26b8c00921d631ac9cc0dfeb249d4bbc6248f73ebefd265e6ad1` |
| 5 | `theorem` | [shadow_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-singleton--70c064b38d4ff0213e350b6f.md) | 78 | `result-track:70c064b38d4ff0213e350b6fb5e2c182f82b5c4ca1583af8499db3b5ab4bff70` |
| 6 | `theorem` | [shadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-monotone--d2f494f20cfa14e74e27978c.md) | 83 | `result-track:d2f494f20cfa14e74e27978cbb32824e1b66dd961fdbb5e41bdc27ae9afa0e15` |
| 7 | `lemma` | [shadow_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-mono--2cd8b9e1216907ea7920e7a6.md) | 86 | `result-track:2cd8b9e1216907ea7920e7a69b9542df801acfd59589b40bc3269473e1dcf2d6` |
| 8 | `lemma` | [mem_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iff--694733f0bda3f6fa45a18c69.md) | 90 | `result-track:694733f0bda3f6fa45a18c697a01ec5777d697e61af4d512f10a5e533c01c4b6` |
| 9 | `theorem` | [erase_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/erase-mem-shadow--662dc1f9c84fde7eae208349.md) | 93 | `result-track:662dc1f9c84fde7eae20834913711e4704029be52e873971aa25b0ae80b97e6d` |
| 10 | `lemma` | [mem_shadow_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iff-exists-sdiff--821674527be43f6ae4d97f5a.md) | 99 | `result-track:821674527be43f6ae4d97f5a691384e2af3484491ecd7edee4516319acbf79b6` |
| 11 | `lemma` | [mem_shadow_iff_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iff-insert-mem--f733eeba3a3ff6a91193a077.md) | 104 | `result-track:f733eeba3a3ff6a91193a077dc714a2a1c381df4d91f5f5e1b3c86b242bc44cc` |
| 12 | `lemma` | [mem_shadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iff-exists-mem-card-add-one--1caafa22f62dc414fa86ac25.md) | 111 | `result-track:1caafa22f62dc414fa86ac258844f0555c2519220398e0f5dca8f05b25c9b00f` |
| 13 | `lemma` | [mem_shadow_iterate_iff_exists_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iterate-iff-exists-card--fef67e17a201f704f817ef9f.md) | 117 | `result-track:fef67e17a201f704f817ef9f63031d45f7476f8b818f5d3daa989aba2410681b` |
| 14 | `lemma` | [mem_shadow_iterate_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iterate-iff-exists-sdiff--a149dd1d669683f783f80756.md) | 128 | `result-track:a149dd1d669683f783f80756ea628c1603ec57070a5a43db723de2177d14516b` |
| 15 | `lemma` | [mem_shadow_iterate_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-shadow-iterate-iff-exists-mem-card-add--fc661db98412e92a6358c458.md) | 140 | `result-track:fc661db98412e92a6358c4586862d6065ffa23aa716800f0ed59dd740b149ef7` |
| 16 | `theorem` | [_root_.Set.Sized.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/root-set-sized-shadow--4cc2489e553540cfd4ed94b4.md) | 148 | `result-track:4cc2489e553540cfd4ed94b4be4bc3342285ce58c1b4100c3d521874d68a99f9` |
| 17 | `lemma` | [_root_.Set.Sized.shadow_iterate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/root-set-sized-shadow-iterate--deebddea0f16e1f99c06d3bd.md) | 155 | `result-track:deebddea0f16e1f99c06d3bd5286b9d86f4c18049c59d428a64838bf9b287b6b` |
| 18 | `theorem` | [sized_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/sized-shadow-iff--d61e09b79f094dfd471d138e.md) | 161 | `result-track:d61e09b79f094dfd471d138e098059dcf453e86eafc5bb4c5788ed6f70da85f0` |
| 19 | `lemma` | [exists_subset_of_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/exists-subset-of-mem-shadow--b00d036c2cf3acd525b090cb.md) | 168 | `result-track:b00d036c2cf3acd525b090cbe12278beadef4e4d7144911d70affbffb29dc5af` |
| 20 | `def` | [upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/upshadow--68d0ab3c00137e6570f732bd.md) | 183 | `declaration-track:68d0ab3c00137e6570f732bdbedf1239d3a96fc2c4b6a521635bb2806cf63b54` |
| 21 | `theorem` | [upShadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/upshadow-empty--d0ef4a91864fb6a8fb93d9e2.md) | 190 | `result-track:d0ef4a91864fb6a8fb93d9e2be4fc34f65ccb6672db08927a65f55878780a52e` |
| 22 | `theorem` | [upShadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/upshadow-monotone--273c0ba010662c200ecad844.md) | 195 | `result-track:273c0ba010662c200ecad844f2b774e53ab8c07cd162179210510b0cfc5c2136` |
| 23 | `lemma` | [mem_upShadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iff--474f58deed32e6b342f3ad92.md) | 200 | `result-track:474f58deed32e6b342f3ad92df2f313323cd9efa9d2a6f1862af8c6ad7e1349f` |
| 24 | `theorem` | [insert_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/insert-mem-upshadow--6b78696aa8fc953e8f153c30.md) | 203 | `result-track:6b78696aa8fc953e8f153c3062a41992a9e87d975a98c6d6df6c800e47fe81ea` |
| 25 | `lemma` | [mem_upShadow_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iff-exists-sdiff--b8ef4110bd2063873ddabb9f.md) | 209 | `result-track:b8ef4110bd2063873ddabb9f5e5dd78c9fcdbdd20c772155fb03121f2e4dc444` |
| 26 | `lemma` | [mem_upShadow_iff_erase_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iff-erase-mem--9ebfc93f0cfd03ee327c74c1.md) | 214 | `result-track:9ebfc93f0cfd03ee327c74c1d922aa0c0acebc8ee3030650152270b50746dc9f` |
| 27 | `lemma` | [mem_upShadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iff-exists-mem-card-add-one--3f2c27bb39dbb550640df316.md) | 221 | `result-track:3f2c27bb39dbb550640df31647f4eb93a4820828acd893d389d5e7bc4305eb67` |
| 28 | `lemma` | [mem_upShadow_iterate_iff_exists_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iterate-iff-exists-card--8eddb71dfa591f82bce49a16.md) | 228 | `result-track:8eddb71dfa591f82bce49a1621b6adb7f0a04d2a2ec2013a260ede687c40311d` |
| 29 | `lemma` | [mem_upShadow_iterate_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iterate-iff-exists-sdiff--e4fef546cf5c3a07d6af0ebe.md) | 245 | `result-track:e4fef546cf5c3a07d6af0ebe2288619c244f3207f9b6ac1f125eee924135a37d` |
| 30 | `lemma` | [mem_upShadow_iterate_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iterate-iff-exists-mem-card-add--ce5cbaf777065f754d1ebf15.md) | 256 | `result-track:ce5cbaf777065f754d1ebf1562bf3b2f2d9232e43aa20aecd3f10a1b95f22f5d` |
| 31 | `lemma` | [_root_.Set.Sized.upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/root-set-sized-upshadow--bd8fd7a3073347860d0ee3dc.md) | 264 | `result-track:bd8fd7a3073347860d0ee3dc2a8b7f091e5d4461ef8196da364721727f531ad4` |
| 32 | `theorem` | [exists_subset_of_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/exists-subset-of-mem-upshadow--ea1ba7578fc60c62b80468d2.md) | 271 | `result-track:ea1ba7578fc60c62b80468d25eea4e93bd14bf4f6eee2c7f12d155576932a348` |
| 33 | `theorem` | [mem_upShadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/mem-upshadow-iff-exists-mem-card-add--6471b6e21aeaccafae80d353.md) | 276 | `result-track:6471b6e21aeaccafae80d3533b29a7ed8c0011f982b322f57110fe86e4029c76` |
| 34 | `lemma` | [shadow_compls](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/shadow-compls--3519bc613017a7488b2b5bae.md) | 300 | `result-track:3519bc613017a7488b2b5bae62481852083832f41dda99be2a6f5beeded6e7ec` |
| 35 | `lemma` | [upShadow_compls](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/declarations/upshadow-compls--2383c8cfe8a445835a2bf7ad.md) | 306 | `result-track:2383c8cfe8a445835a2bf7ad045b1dadde919dc37f538c90d8dba75cbc5daa7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
