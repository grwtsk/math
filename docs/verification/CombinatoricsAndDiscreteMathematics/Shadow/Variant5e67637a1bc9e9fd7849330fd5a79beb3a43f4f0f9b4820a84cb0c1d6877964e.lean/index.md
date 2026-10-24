# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3af200d171331e0cb87b4ec52b18b98d383df6",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3af200d171331e0cb87b4ec52b18b98d383df6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Grade` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sups` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow--52648879b94e65ca8a8c8933.md) | 66 | `declaration-track:52648879b94e65ca8a8c89331020e4e54019e4a9603c01ffcc2de8b89d95d0f0` |
| 2 | `theorem` | [shadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-empty--ffe048b59476f0cd4d4c4709.md) | 75 | `result-track:ffe048b59476f0cd4d4c4709f5ffa13955c5e0b38ef47fad217ad5680ca59a33` |
| 3 | `lemma` | [shadow_iterate_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-iterate-empty--4dc3e0bd2b86bf6acd5fb14e.md) | 78 | `result-track:4dc3e0bd2b86bf6acd5fb14ec11cd0f7807c4cfa96d88942aa28b0ef8a14a167` |
| 4 | `theorem` | [shadow_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-singleton-empty--75022fca283c7d011622a0ad.md) | 82 | `result-track:75022fca283c7d011622a0ad9ab3ec3081a083413e4d4ae2e65a2999ddda244f` |
| 5 | `theorem` | [shadow_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-singleton--e9ceeb85f8901a0d639aad64.md) | 86 | `result-track:e9ceeb85f8901a0d639aad64c597e9d3f321828846911ec45b8568c56a60f5fb` |
| 6 | `theorem` | [shadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-monotone--4121f8ce9d03665a0237ebbf.md) | 91 | `result-track:4121f8ce9d03665a0237ebbfeaf9f88fd03bfe2f5dd018257721aca4e5eeb7ea` |
| 7 | `lemma` | [shadow_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-mono--c260f7657f7133eae8753eed.md) | 94 | `result-track:c260f7657f7133eae8753eed69010f2f07dd781349c76e56f150eb681d9006c6` |
| 8 | `lemma` | [mem_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iff--5c150209542f629f477f82cf.md) | 98 | `result-track:5c150209542f629f477f82cf178ecd75d5ce109cceb06d21e636e6a6b0b04cc5` |
| 9 | `theorem` | [erase_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/erase-mem-shadow--74646f578614ac1671aba443.md) | 101 | `result-track:74646f578614ac1671aba4433a3812418df6756c7cbd8b8bcbe4c261d07b750e` |
| 10 | `lemma` | [mem_shadow_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iff-exists-sdiff--2b26361ad03787af7ac3850a.md) | 107 | `result-track:2b26361ad03787af7ac3850aa6e3ac278bd8a2da8de0e94d1bc3f34dc89efbbc` |
| 11 | `lemma` | [mem_shadow_iff_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iff-insert-mem--6fcd91c2ac83ff7030162f59.md) | 112 | `result-track:6fcd91c2ac83ff7030162f590ec31eb5760822e6b2c3d5b8d0608d2e7dcd5cd1` |
| 12 | `lemma` | [mem_shadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iff-exists-mem-card-add-one--8b9b64ca3d6a9371abdbc6ea.md) | 119 | `result-track:8b9b64ca3d6a9371abdbc6ea2264273d172f58640655bb31c466cfea89255522` |
| 13 | `lemma` | [mem_shadow_iterate_iff_exists_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iterate-iff-exists-card--f16255b1d031d8b2f2e667eb.md) | 125 | `result-track:f16255b1d031d8b2f2e667eb558d49aa4680c2fe9c509d71b985ca7e945cb24e` |
| 14 | `lemma` | [mem_shadow_iterate_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iterate-iff-exists-sdiff--d4dca0d359326ceb954f26d0.md) | 136 | `result-track:d4dca0d359326ceb954f26d05bde43d0d8d9a964aa01bf17cd7f7d3f26301591` |
| 15 | `lemma` | [mem_shadow_iterate_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-shadow-iterate-iff-exists-mem-card-add--65338a4b99d5a033fa6a0b51.md) | 148 | `result-track:65338a4b99d5a033fa6a0b5119195439db1018ce79cb635456a19b8e5b5affa8` |
| 16 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-shadow-variant4c94cd65e0--e9bd0de468d93b4689a8369b.md) | 156 | `result-track:e9bd0de468d93b4689a8369b467e94d13e438982af5559c11d84ce59afe03d2c` |
| 17 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.shadow_iterate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-shadow-variant4c94cd65e0--33c5c8004d682df9b0cc8d0c.md) | 163 | `result-track:33c5c8004d682df9b0cc8d0c2fd639787faebaab15de100a562029ef7659581a` |
| 18 | `theorem` | [sized_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/sized-shadow-iff--e7d94d6af8d820e26cb177bf.md) | 169 | `result-track:e7d94d6af8d820e26cb177bfe1219598e6bd4c883ede895daee153b090772817` |
| 19 | `lemma` | [exists_subset_of_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/exists-subset-of-mem-shadow--7a3c4252e4da02a0a819c8b4.md) | 176 | `result-track:7a3c4252e4da02a0a819c8b44de77cf315661736da1fdbb109cd1d97fbd03514` |
| 20 | `def` | [upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/upshadow--15c72fcf9c4b8f391d70e1f7.md) | 191 | `declaration-track:15c72fcf9c4b8f391d70e1f76dd4bf5165baf4de5e5de482da845061a67a9e91` |
| 21 | `theorem` | [upShadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/upshadow-empty--a5406a3b40377e3a47f934f7.md) | 198 | `result-track:a5406a3b40377e3a47f934f7328675107142263949d080d03a01468229a0c847` |
| 22 | `theorem` | [upShadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/upshadow-monotone--f0a686c142dd3672d5ddc847.md) | 203 | `result-track:f0a686c142dd3672d5ddc8475b13df4f41f8c7e1bdf0cede72b81a5e8af5c812` |
| 23 | `lemma` | [mem_upShadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iff--6f05dfa79a07920599068e96.md) | 208 | `result-track:6f05dfa79a07920599068e967ade748cd3fec9e893088c04eafda78116f494f8` |
| 24 | `theorem` | [insert_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/insert-mem-upshadow--4ef874fc84b904dc39478cbd.md) | 211 | `result-track:4ef874fc84b904dc39478cbd4337468202e55a665e74c5f195f5a0621f418a0d` |
| 25 | `lemma` | [mem_upShadow_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iff-exists-sdiff--38d05ea6052fc56c2656e186.md) | 217 | `result-track:38d05ea6052fc56c2656e1865a4cc37c43c90e32f67e168fd946f76c72994e4f` |
| 26 | `lemma` | [mem_upShadow_iff_erase_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iff-erase-mem--a1217a8a2786995057452a7d.md) | 222 | `result-track:a1217a8a2786995057452a7dab272de3fd50f7ea663510d3da2faf6ed75f69bf` |
| 27 | `lemma` | [mem_upShadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iff-exists-mem-card-add-one--d96e69fcc17995490069282a.md) | 229 | `result-track:d96e69fcc17995490069282a05d15d4fafbce250ad8e32fd82bf532192dc892d` |
| 28 | `lemma` | [mem_upShadow_iterate_iff_exists_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iterate-iff-exists-card--e8c6b6a46a99be5a52e1cb96.md) | 236 | `result-track:e8c6b6a46a99be5a52e1cb96aed92f4a2a2b4d1d023cfd6930be4313b6fc5521` |
| 29 | `lemma` | [mem_upShadow_iterate_iff_exists_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iterate-iff-exists-sdiff--b22cc812cb118d6826ce0db7.md) | 253 | `result-track:b22cc812cb118d6826ce0db712cee9e34599fc092474cc0b9642151aa5ffeb2c` |
| 30 | `lemma` | [mem_upShadow_iterate_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iterate-iff-exists-mem-card-add--b5bdb09adc975509cb7c373c.md) | 264 | `result-track:b5bdb09adc975509cb7c373cded560f695c1527c231abbee7b31be45afe3095c` |
| 31 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-shadow-variant4c94cd65e0--7905c7d5cb4314860bfbd3db.md) | 272 | `result-track:7905c7d5cb4314860bfbd3db07bd144641f30672c7f96a0540ae754f3e057e1c` |
| 32 | `theorem` | [exists_subset_of_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/exists-subset-of-mem-upshadow--be1706cce0ec1fec1030a8ac.md) | 279 | `result-track:be1706cce0ec1fec1030a8ac3976dd3a7127a80cb87e4f7421e8099d149dc67d` |
| 33 | `theorem` | [mem_upShadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/mem-upshadow-iff-exists-mem-card-add--9869826c9ec8b64daa120384.md) | 284 | `result-track:9869826c9ec8b64daa1203840d39057520d3865afa75b19ca03a091caccdd7d8` |
| 34 | `lemma` | [shadow_compls](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/shadow-compls--60bd9465f92ad1bba1e66453.md) | 308 | `result-track:60bd9465f92ad1bba1e664534a92127e7176abbab0fb6e1733ca183a63da7398` |
| 35 | `lemma` | [upShadow_compls](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/declarations/upshadow-compls--2dff7c7f311ac7aacdafd267.md) | 314 | `result-track:2dff7c7f311ac7aacdafd2675dcd90cab0bf93467c5ffe117669bb34e851a40b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
