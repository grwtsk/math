# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b533219ff7c9a83db3a5daa25c9e28e9d1da8e00",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b533219ff7c9a83db3a5daa25c9e28e9d1da8e00`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Slice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/shadow--7bc3b9f4f99c772f0b28ee16.md) | 59 | `declaration-track:7bc3b9f4f99c772f0b28ee168f38f62c106247a17972205f2270a0ec6fa6af99` |
| 2 | `theorem` | [shadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/shadow-empty--60ef05fa4d7f5ad0613369ff.md) | 70 | `result-track:60ef05fa4d7f5ad0613369ffe5e035a58b29d5603e677eb1e89bbf751c212612` |
| 3 | `theorem` | [shadow_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/shadow-singleton-empty--3de8ebc7c0c19943c3784db0.md) | 75 | `result-track:3de8ebc7c0c19943c3784db0b2da7e1c473c8d8fb272400ffd6a9570a4af279a` |
| 4 | `theorem` | [shadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/shadow-monotone--4a68dd2af56d5ef0a02ac4ae.md) | 82 | `result-track:4a68dd2af56d5ef0a02ac4ae03f094e757b096a8c0f43bbd9dc8fb20ee69700e` |
| 5 | `theorem` | [mem_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-shadow-iff--f4d4ad333a8a624aecfc08fc.md) | 88 | `result-track:f4d4ad333a8a624aecfc08fca14d4f54f48c851ee24ea9a68ae7cb3dc61429ac` |
| 6 | `theorem` | [erase_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/erase-mem-shadow--8bb0a2034110754b2eb168db.md) | 92 | `result-track:8bb0a2034110754b2eb168dbd693683a44bfefcde41d68b734f073d9da57d7f2` |
| 7 | `theorem` | [mem_shadow_iff_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-shadow-iff-insert-mem--da7e4cadb35086d7ccadfcab.md) | 98 | `result-track:da7e4cadb35086d7ccadfcab9863a4e603dfecd4c9ba5825f1dc75bbeb9e4fb1` |
| 8 | `theorem` | [Set.Sized.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/set-sized-shadow--71609d471c4fa0a6b03d8154.md) | 108 | `result-track:71609d471c4fa0a6b03d8154de433ca518dff7a5cf58ba3458ed0ac10b99f29a` |
| 9 | `theorem` | [sized_shadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/sized-shadow-iff--64c08b0c84d5300b1d7a50c1.md) | 115 | `result-track:64c08b0c84d5300b1d7a50c1aea80a3315e5ccaf927c4ba1c23c062176788afa` |
| 10 | `theorem` | [mem_shadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-shadow-iff-exists-mem-card-add-one--38823fc119a7804cd2ad670a.md) | 123 | `result-track:38823fc119a7804cd2ad670afab753d552f8af242e3bb6309fabd77e6a6cd748` |
| 11 | `theorem` | [exists_subset_of_mem_shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/exists-subset-of-mem-shadow--6c33bf78f44ac1eed00fe868.md) | 137 | `result-track:6c33bf78f44ac1eed00fe868b58972e09b64602c506dd77d36d3deedeea37180` |
| 12 | `theorem` | [mem_shadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-shadow-iff-exists-mem-card-add--f96c699ed6827af44dc19bcb.md) | 143 | `result-track:f96c699ed6827af44dc19bcb7508a918c6a82a5ab775891c240396f8fdfcc785` |
| 13 | `def` | [upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/upshadow--173cf48ec7f34a9927dc624b.md) | 182 | `declaration-track:173cf48ec7f34a9927dc624b41668d00637d1e48f4fad5874a6c5ab221e5f3db` |
| 14 | `theorem` | [upShadow_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/upshadow-empty--4a199893983c3df5253b8886.md) | 191 | `result-track:4a199893983c3df5253b8886a35e2e4a31565ee8cd63bcabb3b81d75f6bf32e0` |
| 15 | `theorem` | [upShadow_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/upshadow-monotone--8efe0ab355df99193b327a51.md) | 197 | `result-track:8efe0ab355df99193b327a513be817ac47cdbb52b17efb97eab591499937f03b` |
| 16 | `theorem` | [mem_upShadow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-upshadow-iff--becbdeec52dfa1a9a1805815.md) | 203 | `result-track:becbdeec52dfa1a9a180581595a761044e85568160aba2f236f260d0cb3adb4a` |
| 17 | `theorem` | [insert_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/insert-mem-upshadow--78cba3df1f6cd2129a0a4808.md) | 207 | `result-track:78cba3df1f6cd2129a0a48089cb05d4757cd83ea9e14ad92f43eb5b3599e7045` |
| 18 | `theorem` | [Set.Sized.upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/set-sized-upshadow--7a88eef6c92c28f846710c91.md) | 212 | `result-track:7a88eef6c92c28f846710c91a7d3c0fb909d2261c17ef14adf8744ccc2883707` |
| 19 | `theorem` | [mem_upShadow_iff_erase_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-upshadow-iff-erase-mem--ffce5339da54d6cf3e040bc2.md) | 221 | `result-track:ffce5339da54d6cf3e040bc2f615dca4dd8121055466eba4d12d389ea32063d5` |
| 20 | `theorem` | [mem_upShadow_iff_exists_mem_card_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-upshadow-iff-exists-mem-card-add-one--3bd2b543aa8edbdd2a7b7e7b.md) | 231 | `result-track:3bd2b543aa8edbdd2a7b7e7bcc7a530d40f378fa27d5c44f5ce8bfe3b2ff59ca` |
| 21 | `theorem` | [exists_subset_of_mem_upShadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/exists-subset-of-mem-upshadow--c88d61054d5f0d7e474e343d.md) | 244 | `result-track:c88d61054d5f0d7e474e343d82e7fbe63dd393e1d57c355d5c2d1079ee48aa99` |
| 22 | `theorem` | [mem_upShadow_iff_exists_mem_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/mem-upshadow-iff-exists-mem-card-add--87b2833e97fff5382a5e1369.md) | 250 | `result-track:87b2833e97fff5382a5e1369d49fc511da1978f2d179e4e726b548307b82b409` |
| 23 | `theorem` | [shadow_image_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/shadow-image-compl--8b0afb26a70473544d100ba9.md) | 279 | `result-track:8b0afb26a70473544d100ba99518726b5d7e0a3b65a25c4843b7b97f945f355e` |
| 24 | `theorem` | [upShadow_image_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/declarations/upshadow-image-compl--48c794f8290de06b8281f1a9.md) | 290 | `result-track:48c794f8290de06b8281f1a9e95691ce3199446ec1b3855b848374ee05ea67d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
