# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea06b4b180858caf68d01b6c58ad020ae51f73c6",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea06b4b180858caf68d01b6c58ad020ae51f73c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Filter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/fintype--8fd6ce59e72b65d720720128.md) | 60 | `declaration-track:8fd6ce59e72b65d720720128012f2fb4027c25a4d5f0e9ef390ab34db863f1de` |
| 2 | `theorem` | [nodup_map_iff_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/nodup-map-iff-injon--83666aa4473532cae8f281c8.md) | 70 | `result-track:83666aa4473532cae8f281c824842cd3eaea34513dd3eb64c2bee3b08b5ad0b8` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/instance--0f3b08b7ab7ae61a027a560f.md) | 80 | `declaration-track:0f3b08b7ab7ae61a027a560f0460d8bca45e06c6194191845ed16e138e3ee20c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/instance--733e7b853d574f20c1c54509.md) | 84 | `declaration-track:733e7b853d574f20c1c54509f9abde2fb8e02f85e48f0f90b7913c5d335b3ee6` |
| 5 | `def` | [univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/univ--955f9e235f4f69873fdb5206.md) | 95 | `declaration-track:955f9e235f4f69873fdb52069e636c6bcfed4aaa6b6d3f7074343117aa82181b` |
| 6 | `theorem` | [mem_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/mem-univ--ef8dea03331a7f118b6a763d.md) | 99 | `result-track:ef8dea03331a7f118b6a763d61ff5f017a4626aa950e405ce203567722d41c56` |
| 7 | `theorem` | [mem_univ_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/mem-univ-val--5017a6fc25f79779d2dd9f7e.md) | 102 | `result-track:5017a6fc25f79779d2dd9f7e3964d94f8f8e25eed5479f915ee0edb37ec335ed` |
| 8 | `theorem` | [eq_univ_iff_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/eq-univ-iff-forall--f8ab2b067f3529e6d9a065af.md) | 104 | `result-track:f8ab2b067f3529e6d9a065afdb4fd028102937b6db9daf20ef9562ee9d5f21b7` |
| 9 | `theorem` | [eq_univ_of_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/eq-univ-of-forall--f4de9427449506498149cb05.md) | 106 | `result-track:f4de9427449506498149cb05f79526ecee05ae871e58c3b4f484c243911608ec` |
| 10 | `theorem` | [coe_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/coe-univ--70686c14913ef48ae21cc5a7.md) | 110 | `result-track:70686c14913ef48ae21cc5a7faea82041c6a837efb9275916a8c59c339b176d6` |
| 11 | `theorem` | [coe_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/coe-eq-univ--fb045ca15538d87e57547273.md) | 113 | `result-track:fb045ca15538d87e575472739098db25ba9d3b187e71f3491cc53e3f8b7d18c3` |
| 12 | `theorem` | [subset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/subset-univ--51b85560d8fad6ae12ff5f32.md) | 116 | `result-track:51b85560d8fad6ae12ff5f32a9627ad2635cacbbf71304c938ecaefd749573db` |
| 13 | `def` | [elabFinsetBuilderSetOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/elabfinsetbuildersetof--588cde3d164a648190a3dc2b.md) | 144 | `declaration-track:588cde3d164a648190a3dc2b9ba2516b8628960af6b2e1c6431f3c489398ee84` |
| 14 | `def` | [delabFinsetFilter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/delabfinsetfilter--f08fdbc67627f6e27b20fe9d.md) | 173 | `declaration-track:f08fdbc67627f6e27b20fe9d9c864a99ef46787016afc9b9ef432b2101be9aa5` |
| 15 | `instance` | [decidablePiFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablepifintype--0106d370e3f2138abbccb508.md) | 205 | `declaration-track:0106d370e3f2138abbccb50860dfb1160d78754a671f3154c9835e77cc9ad223` |
| 16 | `instance` | [decidableForallFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableforallfintype--8f7df966fa591000a560e81c.md) | 210 | `declaration-track:8f7df966fa591000a560e81c4004428721a075dfa60f05a89337a175be8e8fe6` |
| 17 | `instance` | [decidableExistsFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableexistsfintype--eb60ac24069d8e5aec0c3f86.md) | 214 | `declaration-track:eb60ac24069d8e5aec0c3f8671773dc1dd43bca183fb5b8292843208b9a5203c` |
| 18 | `instance` | [decidableMemRangeFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablememrangefintype--3075fd7525906f8f14f5529a.md) | 218 | `declaration-track:3075fd7525906f8f14f5529afec571f7e2f70160d9e7da07694f93303f1923aa` |
| 19 | `instance` | [decidableSubsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablesubsingleton--966e5a74a6739f6bcf35f33c.md) | 221 | `declaration-track:966e5a74a6739f6bcf35f33c61f19a6b5bf874c875fac3ceb81481155474bb9f` |
| 20 | `instance` | [decidableEqEquivFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableeqequivfintype--ea3fc2b20e6b447ce63832fa.md) | 226 | `declaration-track:ea3fc2b20e6b447ce63832fa7e0f3266e79dd981cfc159ae3c01e6b1d34c7de0` |
| 21 | `instance` | [decidableEqEmbeddingFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableeqembeddingfintype--b1ae6d1697dcb25ce25b9851.md) | 229 | `declaration-track:b1ae6d1697dcb25ce25b98516928b1818633529a21cef546507c347ee83e3416` |
| 22 | `theorem` | [nodup_map_univ_iff_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/nodup-map-univ-iff-injective--12b837a230d338af5656fd43.md) | 234 | `result-track:12b837a230d338af5656fd43ec6ac1b9f97bead67fa49713c844d6e74b5f9b76` |
| 23 | `instance` | [decidableInjectiveFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableinjectivefintype--f16947e14f17e5ad01fcca4f.md) | 238 | `declaration-track:f16947e14f17e5ad01fcca4f729ad5621c41e48633d0036dfd5986ed300e4f09` |
| 24 | `instance` | [decidableSurjectiveFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablesurjectivefintype--511bee279b444e3e5abe6783.md) | 243 | `declaration-track:511bee279b444e3e5abe67837cdf955a9dbb2d03cc69e636351a31a1293d4f94` |
| 25 | `instance` | [decidableBijectiveFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablebijectivefintype--48d4ee9638d7ac79cc98d87f.md) | 246 | `declaration-track:48d4ee9638d7ac79cc98d87fa12defde1545e3098d1fc966f4b031b2b63e097b` |
| 26 | `instance` | [decidableRightInverseFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidablerightinversefintype--143854ca08c1c58754329f1d.md) | 249 | `declaration-track:143854ca08c1c58754329f1dcdfa2789a2bd325eec2c0c912b491d772ea51fd7` |
| 27 | `instance` | [decidableLeftInverseFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/decidableleftinversefintype--44fe2049c5af5c30138ed0f9.md) | 253 | `declaration-track:44fe2049c5af5c30138ed0f9a5f18440b93898b3222473c0143c2d8a4c52c361` |
| 28 | `instance` | [subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/subsingleton--255a83fa911861df705ee632.md) | 257 | `declaration-track:255a83fa911861df705ee6328c8d6e54a1d068efd72175f8c9f3cb8b3bf2e096` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/instance--a58040cbaacaca5f51463225.md) | 260 | `declaration-track:a58040cbaacaca5f514632250fe83489267cf4a3f4fefe28dd171175b9c33dbe` |
| 30 | `def` | [subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/subtype--1d56e9ad927f386ca0e71e66.md) | 264 | `declaration-track:1d56e9ad927f386ca0e71e66cfb840a12fee8fc992d6b24a997cf48ba263a5c1` |
| 31 | `def` | [ofFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/offinset--1e87fbcf165d773276cb1b1d.md) | 270 | `declaration-track:1e87fbcf165d773276cb1b1d69969eb4bc42fa32fa84da04402de24097e76717` |
| 32 | `instance` | [Bool.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/bool-fintype--7b917a2f5ce75eb89ceeb830.md) | 275 | `declaration-track:7b917a2f5ce75eb89ceeb830c647c633448b8eb245ba2688029965345c68dcd9` |
| 33 | `instance` | [Ordering.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/ordering-fintype--e2f60f644f1d80d68346fcd3.md) | 278 | `declaration-track:e2f60f644f1d80d68346fcd3efcc8460f6bee884216672448862534ca7339c90` |
| 34 | `instance` | [OrderDual.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/orderdual-fintype--be4f50eb1559f58cd6064c18.md) | 281 | `declaration-track:be4f50eb1559f58cd6064c18c25264ccbe0605db35aab43467579b4ae14d991f` |
| 35 | `instance` | [OrderDual.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/orderdual-finite--296522fcd038e66e2d91a823.md) | 284 | `declaration-track:296522fcd038e66e2d91a823dd717a588462c4b58ada2363a10cfa525142d4f8` |
| 36 | `instance` | [Lex.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/declarations/lex-fintype--c082f0bf2b2d012874025e56.md) | 287 | `declaration-track:c082f0bf2b2d012874025e56e9fea44ef30000c3bff797c7e44b7d0b282cb27c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
