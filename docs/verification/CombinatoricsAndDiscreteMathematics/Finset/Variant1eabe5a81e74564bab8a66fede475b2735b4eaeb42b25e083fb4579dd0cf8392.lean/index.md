# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07178708503523d058addc687f817322fd316ae1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07178708503523d058addc687f817322fd316ae1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_eq_iSup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-eq-isup-finset--6ba2a4a9a027bc31153a0044.md) | 31 | `result-track:6ba2a4a9a027bc31153a0044ee383df6049232fd9998998937af4ffc37ea1cf5` |
| 2 | `theorem` | [iSup_eq_iSup_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-eq-isup-finset--bc395868ef3d91a9a56ece45.md) | 40 | `result-track:bc395868ef3d91a9a56ece45951bfd55a19796dbf7e79643793c01882c09060a` |
| 3 | `theorem` | [iInf_eq_iInf_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-eq-iinf-finset--b4ac95e91b57d7f0a59db24a.md) | 47 | `result-track:b4ac95e91b57d7f0a59db24aae405c8967a7cb9d1486636ea255675da58f9482` |
| 4 | `theorem` | [iInf_eq_iInf_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-eq-iinf-finset--fab191661694213e41beb189.md) | 53 | `result-track:fab191661694213e41beb1893a96d608fc7fa4a41df5b24e43339cc5e27558d6` |
| 5 | `theorem` | [iUnion_eq_iUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iunion-eq-iunion-finset--87b0c8eefc881fe695e7de8b.md) | 66 | `result-track:87b0c8eefc881fe695e7de8b98fcf75f9285e01453a83c646eed5fd639ef979e` |
| 6 | `theorem` | [iUnion_eq_iUnion_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iunion-eq-iunion-finset--0c3528fd86b5fec064dc11c6.md) | 72 | `result-track:0c3528fd86b5fec064dc11c6e2f3870f2692583c95731d14d0c93996a498c4cf` |
| 7 | `theorem` | [iInter_eq_iInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinter-eq-iinter-finset--4650972c20b8947d7b51d3d8.md) | 79 | `result-track:4650972c20b8947d7b51d3d863c4f16e9008f1665e0a4debf5110dae5c54ef68` |
| 8 | `theorem` | [iInter_eq_iInter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinter-eq-iinter-finset--2c30eb016c473251808c14c6.md) | 86 | `result-track:2c30eb016c473251808c14c64a4f052a2922e2a0aa691376bbe673b68ff6d568` |
| 9 | `theorem` | [maximal_iff_forall_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/maximal-iff-forall-insert--bd096256114e387736cbec6c.md) | 98 | `result-track:bd096256114e387736cbec6c12cf92e044290483bc3c1e9a31094bbeaaa632a8` |
| 10 | `theorem` | [minimal_iff_forall_diff_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/minimal-iff-forall-diff-singleton--736dec3ac39f5cc801f803b4.md) | 104 | `result-track:736dec3ac39f5cc801f803b4e845bdae25499644aee5cce5c8cbd3dca73fa13a` |
| 11 | `theorem` | [iSup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-coe--251812920a84e54b01e9c5d1.md) | 116 | `result-track:251812920a84e54b01e9c5d121a6287278f5e77583f28e1bb2951ca0f3697ebd` |
| 12 | `theorem` | [iInf_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-coe--6f524398ad54b5e672c95259.md) | 119 | `result-track:6f524398ad54b5e672c9525927a0f430efbfe2970d0d615e64a2d66ef93375aa` |
| 13 | `theorem` | [iSup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-singleton--3cf6618a000b3158631879af.md) | 124 | `result-track:3cf6618a000b3158631879afd448c536e1359796ab4641dee3246249b2e6f8ad` |
| 14 | `theorem` | [iInf_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-singleton--e01355ba03aa6affe4b6d551.md) | 126 | `result-track:e01355ba03aa6affe4b6d5516dc99a5d0b3315e7405007be3e82b441df68be7c` |
| 15 | `theorem` | [iSup_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-option-tofinset--b795b419be430d43aeedf7b1.md) | 128 | `result-track:b795b419be430d43aeedf7b18ca3cc5aff0076e6aeaff8f675f8405535d2d966` |
| 16 | `theorem` | [iInf_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-option-tofinset--12bb2341148e7df1529915a3.md) | 131 | `result-track:12bb2341148e7df1529915a33033b3c8ca15e29ff450b20c9303d1a0e279006a` |
| 17 | `theorem` | [iSup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-union--bbb7f2df83f2bab3c467796b.md) | 136 | `result-track:bbb7f2df83f2bab3c467796b75d587698bdd9f2df0bfbed9c8d626dc3427a10e` |
| 18 | `theorem` | [iInf_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-union--3ddde3e4f4944dbe401498c7.md) | 139 | `result-track:3ddde3e4f4944dbe401498c7ea00c6767a992ef4326d29b6843e300e61ef9fc4` |
| 19 | `theorem` | [iSup_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-insert--d0f3085162bdcd495f980ae3.md) | 143 | `result-track:d0f3085162bdcd495f980ae3db49e8e8b14cb08f1851efab9c29063f36b90639` |
| 20 | `theorem` | [iInf_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-insert--9e12ce7b3e85f067b9fbc5fd.md) | 148 | `result-track:9e12ce7b3e85f067b9fbc5fd2bff3041580d7f87bdca440dbcd0c3445660c291` |
| 21 | `theorem` | [iSup_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-finset-image--a7b2c08e97f69e0b1ea1ce08.md) | 152 | `result-track:a7b2c08e97f69e0b1ea1ce0879e27527cf74407be0a85beeec41b87d67f5db97` |
| 22 | `theorem` | [iInf_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-finset-image--e149e70f0356b846e644535c.md) | 155 | `result-track:e149e70f0356b846e644535c145dbe06581155012d35f854ecd66a85ba055f8a` |
| 23 | `theorem` | [iSup_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-insert-update--16c3397b4fe7d885d24935b0.md) | 158 | `result-track:16c3397b4fe7d885d24935b01068113f414964a8844f8aafe67268e4ce6d4229` |
| 24 | `theorem` | [iInf_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-insert-update--58219e1ca30bc41292cf2de8.md) | 163 | `result-track:58219e1ca30bc41292cf2de8c9ff6063c090722c94fc02c0acbc75957cb5975c` |
| 25 | `theorem` | [iSup_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/isup-biunion--9c9bab6926428a33a6bdad84.md) | 167 | `result-track:9c9bab6926428a33a6bdad84da48dc42905824ac093ebb6bd4e880e8793d5379` |
| 26 | `theorem` | [iInf_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/iinf-biunion--f3da2a07bb557ad932a7911d.md) | 170 | `result-track:f3da2a07bb557ad932a7911df8d4f4b9a3a89270d5ac325901e29e41a5da7743` |
| 27 | `theorem` | [set_biUnion_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-coe--04dc22f5597f8cb14f65f595.md) | 176 | `result-track:04dc22f5597f8cb14f65f595f12a81f765ffe98ea9d9de0b39ff5cb666100064` |
| 28 | `theorem` | [set_biInter_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-coe--1c76724d9d24a51e6f62dd8b.md) | 179 | `result-track:1c76724d9d24a51e6f62dd8b101cf383afa8c9cfe647ac5ace43bcbfea84a8b7` |
| 29 | `theorem` | [set_biUnion_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-singleton--e3e6fd794680efcd6cc03537.md) | 182 | `result-track:e3e6fd794680efcd6cc03537deab4375fd31f0217396a460fb003dd40b0ccf19` |
| 30 | `theorem` | [set_biInter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-singleton--84377c556400c965a0bf7490.md) | 185 | `result-track:84377c556400c965a0bf7490218537bccd5c73ef0a44fc67e745d84abef3568f` |
| 31 | `theorem` | [set_biUnion_preimage_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-preimage-singleton--5ed30f95d25d519413bd21fa.md) | 189 | `result-track:5ed30f95d25d519413bd21fa722682c98a7d5430d37f8a0f318a7bdbc72ec397` |
| 32 | `theorem` | [set_biUnion_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-option-tofinset--42e5bce96370331d5cd1a8cb.md) | 193 | `result-track:42e5bce96370331d5cd1a8cb160f621d8e949e5178e7ecb6e1a942c26008532e` |
| 33 | `theorem` | [set_biInter_option_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-option-tofinset--df7c14cca3c7634227735c15.md) | 197 | `result-track:df7c14cca3c7634227735c15ef7c5691e1bc784a46cb5457955487a4de7148b1` |
| 34 | `theorem` | [subset_set_biUnion_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/subset-set-biunion-of-mem--2128d2f101b42af9689ac274.md) | 201 | `result-track:2128d2f101b42af9689ac27476e26bc79f5a4d6a56f245d73e68ed78aa948850` |
| 35 | `theorem` | [set_biUnion_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-union--29c53fac51fc256c2b4e644c.md) | 207 | `result-track:29c53fac51fc256c2b4e644c8bb656482197b8c0a2c0fe017a3cb36b3ba9f4aa` |
| 36 | `theorem` | [set_biInter_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-inter--588ac6c42bcd9e7a1b9389af.md) | 211 | `result-track:588ac6c42bcd9e7a1b9389af1a83ed925371cab331dfdc96b943d9839d86acec` |
| 37 | `theorem` | [set_biUnion_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-insert--9d303fc5d3175da6b494396d.md) | 215 | `result-track:9d303fc5d3175da6b494396d8ca2693f34353474b97453045af4014fe2176c5c` |
| 38 | `theorem` | [set_biInter_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-insert--e975b25f0bc2a09f5ebfea2b.md) | 219 | `result-track:e975b25f0bc2a09f5ebfea2b61fdf8559ad0788a89b6caf90e9923f4cb2f729b` |
| 39 | `theorem` | [set_biUnion_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-finset-image--1dc42a703cda33f98ceec308.md) | 223 | `result-track:1dc42a703cda33f98ceec308882c032904157ee300159124f0cb9df51e7069a4` |
| 40 | `theorem` | [set_biInter_finset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-finset-image--2f53213ecc47d5d755c09e3b.md) | 227 | `result-track:2f53213ecc47d5d755c09e3b25a7e771e357d21ee832ba976d449a202d70193f` |
| 41 | `theorem` | [set_biUnion_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-insert-update--8a3d0ec958f6db60ee9f2c1e.md) | 231 | `result-track:8a3d0ec958f6db60ee9f2c1e47f08f6ff5ce7712568039acc1c12bd66acf922d` |
| 42 | `theorem` | [set_biInter_insert_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-insert-update--a42cf16070e4e64f4a6812d0.md) | 235 | `result-track:a42cf16070e4e64f4a6812d0a734984dad3397bab473ae754252d7245039de30` |
| 43 | `theorem` | [set_biUnion_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biunion-biunion--bb2b22ec8b58313e5573181e.md) | 239 | `result-track:bb2b22ec8b58313e5573181e9791257170ca416a9087a2e742f046662baac5cc` |
| 44 | `theorem` | [set_biInter_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant1eabe5a81e74564bab8a66fede475b2735b4eaeb42b25e083fb4579dd0cf8392.lean/declarations/set-biinter-biunion--099c191a6d9efb968288a70c.md) | 243 | `result-track:099c191a6d9efb968288a70c145d20ed07c4b90a14031f4854517418db25509e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
