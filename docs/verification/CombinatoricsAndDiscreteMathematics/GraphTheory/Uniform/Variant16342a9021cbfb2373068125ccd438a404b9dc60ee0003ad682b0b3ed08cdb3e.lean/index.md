# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Uniform.Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93d6f2701df20d160a0d8bafc2e818ee19e84d42",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93d6f2701df20d160a0d8bafc2e818ee19e84d42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform--53561a111b7b5a9f71375883.md) | 65 | `declaration-track:53561a111b7b5a9f7137588335d52050a76e64837bc985326a8e09fe561aa055` |
| 2 | `instance` | [IsUniform.instDecidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-instdecidablerel--7229178b2cb481f319107d4a.md) | 71 | `declaration-track:7229178b2cb481f319107d4a39b9f8d764fac749898fcfa8fb2868da67f2568e` |
| 3 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-mono--6c3239055845971c94c8473d.md) | 74 | `result-track:6c3239055845971c94c8473dbcafc475ec5a8f0e61ad5a548a86786c97e3fa61` |
| 4 | `theorem` | [IsUniform.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-symm--af1e0ccd29f123409d1ce11a.md) | 79 | `result-track:af1e0ccd29f123409d1ce11a36bf7723d36e64068221bb756bbcb1ca79ef5b13` |
| 5 | `theorem` | [isUniform_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-comm--b423b14b13db6e896bd57ead.md) | 86 | `result-track:b423b14b13db6e896bd57ead3fccee08fd46648ba6a446bd7571c57315e4388b` |
| 6 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-one--b6c51ef699b43b0ed1e539ad.md) | 89 | `result-track:b6c51ef699b43b0ed1e539ad9a425e84e1e9438bc9f039f2e3c6957d916daee8` |
| 7 | `lemma` | [IsUniform.pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-pos--7fa66b7a0d435b3134a26dcb.md) | 98 | `result-track:7fa66b7a0d435b3134a26dcbe9700d4b75dfaf7210f42752bbd49359cb33780b` |
| 8 | `lemma` | [isUniform_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-singleton--f87aa82461184009a041a2e3.md) | 103 | `result-track:f87aa82461184009a041a2e312a9efa1aa7bc7fb5580ad645681e12160740852` |
| 9 | `theorem` | [not_isUniform_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/not-isuniform-zero--66ca465263c35037c48a6367.md) | 114 | `result-track:66ca465263c35037c48a63674a535568c3a459cf627bdcfb3868c852d0419da3` |
| 10 | `theorem` | [not_isUniform_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/not-isuniform-iff--319433d6afb3b80d456cf2e7.md) | 117 | `result-track:319433d6afb3b80d456cf2e78009f30f997cc10ecb8dc6947422b32309ee8f68` |
| 11 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitnesses--5c54a2840ab1a36615375aa2.md) | 128 | `declaration-track:5c54a2840ab1a36615375aa2f23a716aeb9189b65933131d3639c4107a75931a` |
| 12 | `theorem` | [left_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/left-nonuniformwitnesses-subset--560b6b10b71d77f4e4bf77c1.md) | 133 | `result-track:560b6b10b71d77f4e4bf77c1d9627bcd8cf5af4843045ae0817a591a395e0bed` |
| 13 | `theorem` | [left_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/left-nonuniformwitnesses-card--ee71172ea3d3087153b2b44c.md) | 138 | `result-track:ee71172ea3d3087153b2b44cc1bc902163f35e5c11f0079d2fa85a1dae1caacf` |
| 14 | `theorem` | [right_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/right-nonuniformwitnesses-subset--600bd53e32920d2d144a47f9.md) | 143 | `result-track:600bd53e32920d2d144a47f9438ecaeef2a02b16351ae4b2d5346af6c5196009` |
| 15 | `theorem` | [right_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/right-nonuniformwitnesses-card--bb003586c70f299c22e7c7b1.md) | 148 | `result-track:bb003586c70f299c22e7c7b16d84afd3bd8de3b07127bf30f9227d21adab2972` |
| 16 | `theorem` | [nonuniformWitnesses_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitnesses-spec--909404be1d709eac714b7daa.md) | 153 | `result-track:909404be1d709eac714b7daaae991b205d2b943e884e34fb1492e7d9cf77e2d4` |
| 17 | `def` | [nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitness--19e1e6675c3150eaf176478f.md) | 164 | `declaration-track:19e1e6675c3150eaf176478f15e6451d40dc5220f1a7eee5830e330ab8f703e0` |
| 18 | `theorem` | [nonuniformWitness_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitness-subset--2e59e6b810f806c72dd31505.md) | 167 | `result-track:2e59e6b810f806c72dd315050f1eaf2fa845663771b5e50d4300493e60e04fb7` |
| 19 | `theorem` | [le_card_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/le-card-nonuniformwitness--544ecb23118212b1cb796719.md) | 173 | `result-track:544ecb23118212b1cb796719e1e602b96dedd916cbdb12b228e652a03719d758` |
| 20 | `theorem` | [nonuniformWitness_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitness-spec--8994bbf3f0c751f1037a6975.md) | 180 | `result-track:8994bbf3f0c751f1037a697583b4a8cd0ad464c20fc1b4e4310693f79ee9c789` |
| 21 | `def` | [sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/sparsepairs--b841e6724de8355d20dd0494.md) | 202 | `declaration-track:b841e6724de8355d20dd04942c6fd38f9c9a2ed14ff9f5bd08175f2d3a501474` |
| 22 | `lemma` | [mk_mem_sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/mk-mem-sparsepairs--1fe404c60f33d73b7e3d9add.md) | 207 | `result-track:1fe404c60f33d73b7e3d9add56e6c0d7769ed8bdf79bdeb20cc8131520a23fea` |
| 23 | `lemma` | [sparsePairs_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/sparsepairs-mono--ebb79eb0956cfe80247359e6.md) | 212 | `result-track:ebb79eb0956cfe80247359e647c7b61ca5224a3818f22bf6e1742092b064a591` |
| 24 | `def` | [nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniforms--8dec2ed265dddb0bea6baf07.md) | 217 | `declaration-track:8dec2ed265dddb0bea6baf071aa47fe6f2b828b1a6383eb4be48038721cd43b7` |
| 25 | `lemma` | [mk_mem_nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/mk-mem-nonuniforms--ea439807bc3f876636b9e268.md) | 221 | `result-track:ea439807bc3f876636b9e268d187b415c2da5360148f8a736d8462e199248cbf` |
| 26 | `theorem` | [nonUniforms_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniforms-mono--29e5f262b06aa16451070f0e.md) | 225 | `result-track:29e5f262b06aa16451070f0e02a57856a0fce1da515f708278b540ef3b9c6c48` |
| 27 | `theorem` | [nonUniforms_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniforms-bot--1542cfb7fc0719f29c71b1dc.md) | 228 | `result-track:1542cfb7fc0719f29c71b1dc0e455acac7f0aa73361dca2bf6abb75dc50dc17e` |
| 28 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform--87834af19693189204b0b34f.md) | 238 | `declaration-track:87834af19693189204b0b34f46ac67ecc0d28ed6d10445b56603581daf88e9dd` |
| 29 | `lemma` | [bot_isUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/bot-isuniform--6a48fb17242aa21d40b68951.md) | 241 | `result-track:6a48fb17242aa21d40b689514709a4cadbfbd3ec3fd5d716ca02ac3914846578` |
| 30 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-one--57f61a2a5962fcd2195e5846.md) | 246 | `result-track:57f61a2a5962fcd2195e58469df1dbf817dda0d7ae6ae525062cc28f8c2b7c68` |
| 31 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniform-mono--2a544d1550c50b68a279ae03.md) | 254 | `result-track:2a544d1550c50b68a279ae0314d7bd27b28aeb57066cc4db405130a390060572` |
| 32 | `theorem` | [isUniformOfEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isuniformofempty--411547d33234bce1b80d4cdf.md) | 258 | `result-track:411547d33234bce1b80d4cdfcf4922d587346027b7daa6c1f904eb44017d1e97` |
| 33 | `theorem` | [nonempty_of_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonempty-of-not-uniform--216cb914107ae691b0b7b9f7.md) | 262 | `result-track:216cb914107ae691b0b7b9f70485bc86064fc407709320fcc69ea2b8f7a02133` |
| 34 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitnesses--d4da51c95e0ed7d93620ded3.md) | 268 | `declaration-track:d4da51c95e0ed7d93620ded3aa07bd6dd7a99570c678d36d0af2ad8910603a40` |
| 35 | `theorem` | [nonuniformWitness_mem_nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/nonuniformwitness-mem-nonuniformwitnesses--3bdd29a147756dcd264bc25d.md) | 273 | `result-track:3bdd29a147756dcd264bc25d88757b5ad55083ac3908a9d326bbea9831953000` |
| 36 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-card-interedges-sparsepairs-le--9ad453e1a1d8487acc3b6398.md) | 280 | `result-track:9ad453e1a1d8487acc3b6398b5e0978a563c580280a4ce684f7c96d71094c0a8` |
| 37 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-card-interedges-sparsepairs-le--981611ac80e46d1e101e0bca.md) | 309 | `result-track:981611ac80e46d1e101e0bca3ac1fbc4cb96c6a81b5c75fb0d088b2a7ba44196` |
| 38 | `lemma` | [aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/aux--09cd98c4236611ec0b705da9.md) | 316 | `result-track:09cd98c4236611ec0b705da9cb921c2d65ab2a9b16aed8be2e60133af9ac089a` |
| 39 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-card-biunion-offdiag-le--5f5cb6f2c36fab7653dc5e28.md) | 324 | `result-track:5f5cb6f2c36fab7653dc5e28ce15763123b92e5e8ecd2f07d13737bb133fb299` |
| 40 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-card-biunion-offdiag-le--3674ed161bd662faf3a4d31e.md) | 342 | `result-track:3674ed161bd662faf3a4d31eab8ff6df2e06151f709b54d2e515b8245bd9ffcc` |
| 41 | `lemma` | [IsEquipartition.sum_nonUniforms_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-sum-nonuniforms-lt--46fcb21eea2c9c86a4991c09.md) | 358 | `result-track:46fcb21eea2c9c86a4991c09e13135a9f9c169364893cb9f4cd5646ce2bf2f6e` |
| 42 | `lemma` | [IsEquipartition.sum_nonUniforms_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/isequipartition-sum-nonuniforms-lt--1828387d4404af57a5283231.md) | 377 | `result-track:1828387d4404af57a528323138e14d064b4f6007606b922bf5546a6815571160` |
| 43 | `def` | [regularityReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/regularityreduced--b92db19bd1b20ed386b17671.md) | 395 | `declaration-track:b92db19bd1b20ed386b1767116bef11e7c6be672898f4e02148c76034deba5b5` |
| 44 | `instance` | [regularityReduced.instDecidableRel_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/regularityreduced-instdecidablerel-adj--b44978fea2d0285fe98f0457.md) | 404 | `declaration-track:b44978fea2d0285fe98f0457a3c11ba1ddaaebd0644b3e35a94d74e66aa6eba4` |
| 45 | `lemma` | [regularityReduced_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/regularityreduced-le--ba7cae08e5a4fa1f51a7d85e.md) | 410 | `result-track:ba7cae08e5a4fa1f51a7d85e09ad8612b42fd830354b52c15e1098f298b5ee62` |
| 46 | `lemma` | [regularityReduced_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/regularityreduced-mono--4737424479c3d70a46b861b6.md) | 412 | `result-track:4737424479c3d70a46b861b6985786e54e6a47ee88d5cceb2b77d83eb5622098` |
| 47 | `lemma` | [regularityReduced_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/regularityreduced-anti--4a87e47e08f1f1311981f004.md) | 418 | `result-track:4a87e47e08f1f1311981f004e7e41903377798039bc059241909cbb8595d4387` |
| 48 | `lemma` | [unreduced_edges_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/declarations/unreduced-edges-subset--066b2003b28507dfd4ed6521.md) | 424 | `result-track:066b2003b28507dfd4ed652107bc1fcfae6611403c19be290aa1cdc625381f2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
