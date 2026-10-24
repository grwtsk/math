# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140c926e9942daf68a508e9723a6c7bc06147710",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140c926e9942daf68a508e9723a6c7bc06147710`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.ZeroCons` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp--7c6a09c36f2ff961030d7c33.md) | 43 | `declaration-track:7c6a09c36f2ff961030d7c33d8167d3554360f71b0d0b509107a6088388be4a4` |
| 2 | `theorem` | [coe_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/coe-countp--955b5179f204493480e495cf.md) | 47 | `result-track:955b5179f204493480e495cf894e0dd0b2d6dcab970913058afab968a08bde02` |
| 3 | `theorem` | [countP_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-zero--5a587c083eb9f1fb03223e5e.md) | 51 | `result-track:5a587c083eb9f1fb03223e5ec1debe6253997665fb33732516c9fb840c3bea38` |
| 4 | `theorem` | [countP_cons_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-cons-of-pos--28535605623ef642149a90d1.md) | 57 | `result-track:28535605623ef642149a90d1d06fdab81b3404d9648050cb8f6a1f6a4006fc6b` |
| 5 | `theorem` | [countP_cons_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-cons-of-neg--05058bf021c04b5505407fe8.md) | 61 | `result-track:05058bf021c04b5505407fe81c5fd1707a58b87f3ebf81832eb3f6fe154ee63e` |
| 6 | `theorem` | [countP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-cons--12349fe9d2515f9a4db0e13c.md) | 66 | `result-track:12349fe9d2515f9a4db0e13cb3eafce99f8f0d3f020addfb596d95bacf154ab6` |
| 7 | `theorem` | [countP_le_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-le-card--b44f2c5bd5db094e0404837e.md) | 69 | `result-track:b44f2c5bd5db094e0404837ebfa14b0e70426088238dd2c1af714ac637c064b8` |
| 8 | `theorem` | [card_eq_countP_add_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/card-eq-countp-add-countp--bc3d0c18a685acc2ae1ebba1.md) | 72 | `result-track:bc3d0c18a685acc2ae1ebba1f24430e102ba71cf9e6400587dfda5972e92a42c` |
| 9 | `theorem` | [countP_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-le-of-le--3150059e9e188036f0604af7.md) | 76 | `result-track:3150059e9e188036f0604af77e00b9c9ec9d7601c978955b05b0dbe11332e130` |
| 10 | `theorem` | [countP_True](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-true--39228e4d1ce91e8562871e03.md) | 80 | `result-track:39228e4d1ce91e8562871e034de57033e58656c2cbadc0f4d2724e9d3ffb6262` |
| 11 | `theorem` | [countP_False](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-false--37df89d81b0100ef63d5a132.md) | 84 | `result-track:37df89d81b0100ef63d5a13206b2c9b3ee21fee9f5853e332a117961f05d1509` |
| 12 | `lemma` | [countP_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-attach--9757e18e830e000108268c54.md) | 87 | `result-track:9757e18e830e000108268c54bfc53ba36e65c58d511274c54025f6c86278699f` |
| 13 | `theorem` | [countP_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-pos--03305673c6ee58c1bd216d44.md) | 94 | `result-track:03305673c6ee58c1bd216d4488824d8828479343c72871e318e99d92c89b1fe8` |
| 14 | `theorem` | [countP_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-eq-zero--969feaf582567da0ead9ebe9.md) | 97 | `result-track:969feaf582567da0ead9ebe9e2cf5cf18c9d19eb7f8b1c95ef4dd3567c4009a4` |
| 15 | `theorem` | [countP_eq_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-eq-card--265af2c0e2ad29c035336ece.md) | 100 | `result-track:265af2c0e2ad29c035336eceb8f9b726e39ae7f8ff3c615e85f6af9156643cf4` |
| 16 | `theorem` | [countP_pos_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-pos-of-mem--d07afdcea0188bace4b410d1.md) | 103 | `result-track:d07afdcea0188bace4b410d129d164df1b5ea1416f23073ccaf1033e0ca17a0f` |
| 17 | `theorem` | [countP_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/countp-congr--f29e8f8aba7a4bb720e9e82c.md) | 107 | `result-track:f29e8f8aba7a4bb720e9e82c4eac1b74c6d97cd52803b569bcafa466ec0eedcd` |
| 18 | `def` | [count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count--71f91b214ef4cfe85e16354b.md) | 127 | `declaration-track:71f91b214ef4cfe85e16354b7e4853e3887aa4fd714cd0736f1972124d775f87` |
| 19 | `theorem` | [coe_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/coe-count--02c3611cc8a805dfa375a053.md) | 131 | `result-track:02c3611cc8a805dfa375a05304a7ec8c72f77b75118ac6294fe8aa0ee911dfda` |
| 20 | `theorem` | [count_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-zero--aaee797e77cf4488de6c53e0.md) | 136 | `result-track:aaee797e77cf4488de6c53e04241b014cee3c753a31cd736b91d99cba046956e` |
| 21 | `theorem` | [count_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-cons-self--4d5663564354364c22d45c55.md) | 140 | `result-track:4d5663564354364c22d45c550fd8f8a50d84ce98806d7ee9f8dd20aaac24ff83` |
| 22 | `theorem` | [count_cons_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-cons-of-ne--0a3bfcbdb509d012dc383729.md) | 144 | `result-track:0a3bfcbdb509d012dc383729700621ab21578d6f825b0aff34640d19d7ca2b02` |
| 23 | `theorem` | [count_le_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-le-card--176cf13ceac033bda010a211.md) | 147 | `result-track:176cf13ceac033bda010a211c0d65798820fa57caa710a8275b24186f011e963` |
| 24 | `theorem` | [count_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-le-of-le--28941e0784edfe57db45e55c.md) | 151 | `result-track:28941e0784edfe57db45e55c109ae9a5f062a20a3ca1ec02a5a7af15347bda88` |
| 25 | `theorem` | [count_le_count_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-le-count-cons--f2d4190eaffb3a91866cde4a.md) | 154 | `result-track:f2d4190eaffb3a91866cde4a574d572ee67d78f383ecacb32882838322901156` |
| 26 | `theorem` | [count_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-cons--66a3ef32cd27bf3b3f8d9966.md) | 157 | `result-track:66a3ef32cd27bf3b3f8d996674de0b3a485ae574d5b7433d2c072c274a046f61` |
| 27 | `theorem` | [count_singleton_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-singleton-self--6fc52d5710406cbbe7902445.md) | 161 | `result-track:6fc52d5710406cbbe7902445a843b2f5a08485595abe6284272b4dff4ba91887` |
| 28 | `theorem` | [count_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-singleton--c9b6b79046096137ebb03c61.md) | 164 | `result-track:c9b6b79046096137ebb03c611a20d7e81b6a33dcc2f966e4b644aa68ba4b5350` |
| 29 | `lemma` | [count_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-attach--349fb9a2d674751cf3e7137f.md) | 168 | `result-track:349fb9a2d674751cf3e7137f3050be8d22ff602059e800d35049a5fcbd1514b6` |
| 30 | `theorem` | [count_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-pos--e163d9218f9ae1d862a38bb3.md) | 171 | `result-track:e163d9218f9ae1d862a38bb3e5d90c04db8156097806d5707060a03a26cf3e22` |
| 31 | `theorem` | [one_le_count_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/one-le-count-iff-mem--ea2f4e6a97755f8055e8e703.md) | 173 | `result-track:ea2f4e6a97755f8055e8e703ab58b9f44bc16d9283fa65d92e874cfcb6def18b` |
| 32 | `theorem` | [count_eq_zero_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-eq-zero-of-notmem--da3c3025b82a447c0ff019a8.md) | 177 | `result-track:da3c3025b82a447c0ff019a80a5cc4aa77132314bcaff187354969756075c72e` |
| 33 | `lemma` | [count_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-ne-zero--b3b9c654b3baa1944f45c6ff.md) | 182 | `result-track:b3b9c654b3baa1944f45c6ff816ebbfb111389a3a3d348daaf1603a788668e28` |
| 34 | `lemma` | [count_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-eq-zero--ca6ff40e2e5bc0d81748b0de.md) | 184 | `result-track:ca6ff40e2e5bc0d81748b0dedbfd87c6549b17156e5535be52323291b79f8dfe` |
| 35 | `theorem` | [count_eq_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-eq-card--57f00daba3f24a3bfe19b465.md) | 186 | `result-track:57f00daba3f24a3bfe19b465ba83f67cafe5f87535ceaa77511ab3c6c5b1ff5d` |
| 36 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/ext--d6b05092486cd37c6589682f.md) | 189 | `result-track:d6b05092486cd37c6589682fe3e00839752157d29bfe17a95833617e93d59f97` |
| 37 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/ext--8f5723862a53a374c00539f0.md) | 195 | `result-track:8f5723862a53a374c00539f0fcbbe3cb251b12060b2adce84d38d4869295789d` |
| 38 | `lemma` | [count_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-injective--f23c8f5ed8ecf18da86cfc06.md) | 198 | `result-track:f23c8f5ed8ecf18da86cfc060082f1898ccd753327abaafad9f38a3d3335859a` |
| 39 | `theorem` | [le_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/le-iff-count--2ef7060379cff7072c24d443.md) | 201 | `result-track:2ef7060379cff7072c24d4437651d8d9ae8ac218cca70b53835a2e82d92a1777` |
| 40 | `theorem` | [Rel.countP_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/rel-countp-eq--fcac0f87b3f0434fd0a3b208.md) | 212 | `result-track:fcac0f87b3f0434fd0a3b2088a4e98b233b05dbf1c95a0f1f84048d290ec170b` |
| 41 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/nodup-iff-count-le-one--b9242b3e8f587f554f84fb72.md) | 228 | `result-track:b9242b3e8f587f554f84fb725bb6a5c2be92387d8770fede3783feab83566d9e` |
| 42 | `theorem` | [nodup_iff_count_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/nodup-iff-count-eq-one--cf0039fa102e5752fa0083bf.md) | 233 | `result-track:cf0039fa102e5752fa0083bf8549bf44140b384960ed032931cd178a74283f63` |
| 43 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-eq-one-of-mem--c14c2d9a00bfbe47b673d5b5.md) | 237 | `result-track:c14c2d9a00bfbe47b673d5b5602ae070da1a14cc7b59ce2e80f2a4f2f705dcc7` |
| 44 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8965965135e8737bb18d9575a5494f57a7569bc95cfa605fbb0df47b37da3ed6.lean/declarations/count-eq-of-nodup--9df52b3c324c15906a60a308.md) | 241 | `result-track:9df52b3c324c15906a60a308239c22795883a6c62c10b5e63048e121b9df44d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
