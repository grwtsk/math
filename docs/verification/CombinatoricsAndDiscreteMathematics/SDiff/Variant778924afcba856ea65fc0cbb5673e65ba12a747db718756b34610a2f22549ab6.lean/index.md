# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SDiff.Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa8f2e68198b3f9e6f3eb1114bdfe0f83b2172c",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa8f2e68198b3f9e6f3eb1114bdfe0f83b2172c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/instsdiff--da3d04abe673cc5e35bb79eb.md) | 45 | `declaration-track:da3d04abe673cc5e35bb79ebdace96d68f2a128c1227ddbacfb96a1577475c6e` |
| 2 | `theorem` | [sdiff_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-val--d15afa8d7e54e05c961dd3e2.md) | 49 | `result-track:d15afa8d7e54e05c961dd3e2fa9ca273a09649b5a61e34800085a91a56052309` |
| 3 | `theorem` | [mem_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/mem-sdiff--b9c24e57224f2ede6f927d50.md) | 53 | `result-track:b9c24e57224f2ede6f927d5070d520950b732c464fecde8c73cfc6e582148fdb` |
| 4 | `theorem` | [inter_sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/inter-sdiff-self--cec99fcb82f8263731ca48ad.md) | 57 | `result-track:cec99fcb82f8263731ca48adce39c13f57dfb2268328d8186b194d4802b1252d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/instance--c62e2f6792f5f52b0c933269.md) | 61 | `declaration-track:c62e2f6792f5f52b0c933269b0cd5fc32037644dde54d1a63ff0fe56fdcf4c9e` |
| 6 | `theorem` | [notMem_sdiff_of_mem_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/notmem-sdiff-of-mem-right--3409577655e88fc5272fadcc.md) | 69 | `result-track:3409577655e88fc5272fadcc41e49f474b25a5d86bd791458ce4eb4bc603f844` |
| 7 | `theorem` | [notMem_sdiff_of_notMem_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/notmem-sdiff-of-notmem-left--c2cc84fbfecb29c3427ec13e.md) | 74 | `result-track:c2cc84fbfecb29c3427ec13e758ec14c41f9db2cb82f907c6a54f97e3ecb5c35` |
| 8 | `theorem` | [union_sdiff_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-of-subset--74599251a67c85fe313ef51b.md) | 79 | `result-track:74599251a67c85fe313ef51b23e68a4cc4a0481c1b7ca76665dc8c4c49daa93c` |
| 9 | `theorem` | [sdiff_union_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-union-of-subset--9ac43c63b65f90940c76243b.md) | 82 | `result-track:9ac43c63b65f90940c76243b48773702e32c57102c4ddb3ce60a64d49065a62f` |
| 10 | `lemma` | [inter_sdiff_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/inter-sdiff-assoc--be46fc1866ad1c16ed83bfc7.md) | 86 | `result-track:be46fc1866ad1c16ed83bfc79a00c618e5a8d7d54dc48fb8caee86d7c417457d` |
| 11 | `lemma` | [sdiff_inter_right_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-inter-right-comm--153ea240da63947fcd3fd11b.md) | 89 | `result-track:153ea240da63947fcd3fd11b7111e6a1116df382ef596dfd51b555b92d9b8866` |
| 12 | `lemma` | [inter_sdiff_left_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/inter-sdiff-left-comm--19e10931441f378daf21e1b9.md) | 91 | `result-track:19e10931441f378daf21e1b9a7755e95bb64969c05445d7e657c914e5a14bdab` |
| 13 | `theorem` | [sdiff_inter_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-inter-self--2244f884744c986e242cf2ab.md) | 94 | `result-track:2244f884744c986e242cf2ab489ae79e5b8dd53bf36f515e54b4f0c892157ae1` |
| 14 | `theorem` | [sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-self--f1e2df7454c54235c244f960.md) | 97 | `result-track:f1e2df7454c54235c244f96094eeee9ce3b080543c89bd5f5500216d87b082f1` |
| 15 | `theorem` | [sdiff_inter_distrib_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-inter-distrib-right--922dfdb0f0c6933aa19c29cf.md) | 100 | `result-track:922dfdb0f0c6933aa19c29cf434841348e7572dda8edf62983fbc783971dc51c` |
| 16 | `theorem` | [sdiff_inter_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-inter-self-left--8df10c7ad8108006f2d7cdac.md) | 104 | `result-track:8df10c7ad8108006f2d7cdac8f9bf98270dc3357273d5db873f5bbe868655b56` |
| 17 | `theorem` | [sdiff_inter_self_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-inter-self-right--5485689ff1285f3c2336aa70.md) | 108 | `result-track:5485689ff1285f3c2336aa70d8187c2ef237d45dc2e69f5a9877379acbbceceb` |
| 18 | `theorem` | [sdiff_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-empty--675b3440b91c350e375e2517.md) | 112 | `result-track:675b3440b91c350e375e2517737bfa5d2d3892a67401b81cdf8d0038e51dc1c8` |
| 19 | `theorem` | [sdiff_subset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-subset-sdiff--42c0b1c9d57e3ac5223551b0.md) | 116 | `result-track:42c0b1c9d57e3ac5223551b0a07bc96f918285db941b3ec56ea2d9d5cd43a592` |
| 20 | `theorem` | [sdiff_subset_sdiff_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-subset-sdiff-iff-subset--d3bfcb5b2e9fdc9161472d7a.md) | 119 | `result-track:d3bfcb5b2e9fdc9161472d7a270b0e02f52ee3f8ef107416175366c2f2e60070` |
| 21 | `theorem` | [coe_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/coe-sdiff--5a66893e6618501764392224.md) | 124 | `result-track:5a66893e6618501764392224164a3c01c13b737e717b7d616b98579732e72383` |
| 22 | `theorem` | [union_sdiff_self_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-self-eq-union--05bbdc5237299304fbf8f505.md) | 128 | `result-track:05bbdc5237299304fbf8f5055b711bbbed0f3762bfa2f7ccb3a78be88f231ba2` |
| 23 | `theorem` | [sdiff_union_self_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-union-self-eq-union--0f6ddd56c287f1a5617dbc64.md) | 132 | `result-track:0f6ddd56c287f1a5617dbc641f98f5911790ce872cbfaf70d214af965b4699e5` |
| 24 | `theorem` | [union_sdiff_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-left--a2b392ec6ffeab878dea33ae.md) | 135 | `result-track:a2b392ec6ffeab878dea33aef34ae0bc96dbd2ddd20a21774c38f5b3b4fdf1fa` |
| 25 | `theorem` | [union_sdiff_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-right--d18bd26df9a950aec1b8c2eb.md) | 138 | `result-track:d18bd26df9a950aec1b8c2ebddccb36a2662faa4cd0a0be223920890a18a3ea6` |
| 26 | `theorem` | [union_sdiff_cancel_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-cancel-left--fde8cdf2d20f2a9df362db68.md) | 141 | `result-track:fde8cdf2d20f2a9df362db6834560cbae7c61fc435b1989a0c3356a7c1ca397f` |
| 27 | `theorem` | [union_sdiff_cancel_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-cancel-right--698589e54b46c10f4297a4de.md) | 144 | `result-track:698589e54b46c10f4297a4dee49379dd147f48ab36ccc7a9112440bff64335c9` |
| 28 | `theorem` | [union_sdiff_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-symm--b7eced28b47c92de00c338ac.md) | 147 | `result-track:b7eced28b47c92de00c338ac33fcbc6174229efb44cd0939147e433bc9858223` |
| 29 | `theorem` | [sdiff_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-union-inter--e58bf70617d7d88f40052454.md) | 149 | `result-track:e58bf70617d7d88f40052454a8687e5f2dac4365e1b66a74e3a5cf17f55af6d3` |
| 30 | `theorem` | [sdiff_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-idem--3c21bb53a69c48dd84f79b24.md) | 152 | `result-track:3c21bb53a69c48dd84f79b24911a10bf3ac3d05350eca4b3b75566b839d2c145` |
| 31 | `theorem` | [subset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/subset-sdiff--7be1a62843b22ba9f015f344.md) | 155 | `result-track:7be1a62843b22ba9f015f344dd5a4adda5c4cc2aef34beedf644cb3bef44d257` |
| 32 | `theorem` | [sdiff_eq_empty_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-eq-empty-iff-subset--0424713659177f74d011dfa9.md) | 159 | `result-track:0424713659177f74d011dfa9cff2118b82fdbb9d07ecac62bf62028449c13932` |
| 33 | `theorem` | [sdiff_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-nonempty--7bd7a6c71f431529037e18b9.md) | 162 | `result-track:7bd7a6c71f431529037e18b94998be373d474ac4925f27ff809e1c8f425c8c1b` |
| 34 | `theorem` | [empty_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/empty-sdiff--ca3141797c69352dbf61224b.md) | 166 | `result-track:ca3141797c69352dbf61224bc59817d917721b1f0992c34dfd9004af79f9387c` |
| 35 | `theorem` | [insert_sdiff_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/insert-sdiff-of-notmem--39a9f5c3972513a386eb1a70.md) | 169 | `result-track:39a9f5c3972513a386eb1a70e2eb41b060352ac2e5b19d68706b09d3d35952a3` |
| 36 | `theorem` | [insert_sdiff_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/insert-sdiff-of-mem--13fa6dd05d71f669eab10d95.md) | 176 | `result-track:13fa6dd05d71f669eab10d95674eb34b1c3e9613126fae9ad0fbf3165cadcd99` |
| 37 | `lemma` | [insert_sdiff_cancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/insert-sdiff-cancel--caea0b59abfe5c0d5166745b.md) | 180 | `result-track:caea0b59abfe5c0d5166745b04bfaaea5d65687043b9afa48523739f204c95dc` |
| 38 | `theorem` | [insert_sdiff_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/insert-sdiff-insert--f24057ed05164128f3f6cd19.md) | 184 | `result-track:f24057ed05164128f3f6cd19d31b63672d697a14e1959808560a4251e982fec7` |
| 39 | `lemma` | [insert_sdiff_insert'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/insert-sdiff-insert--5ca31bf533ce801776318024.md) | 187 | `result-track:5ca31bf533ce801776318024d2a11f8b6891a90054beb613c97af75225c19439` |
| 40 | `lemma` | [cons_sdiff_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/cons-sdiff-cons--01120053f51db0d30c1aeb4f.md) | 190 | `result-track:01120053f51db0d30c1aeb4f6bf1400d65e04758749169486770801d983f0ba7` |
| 41 | `theorem` | [sdiff_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-insert-of-notmem--7b71a78d15f5f6b255062433.md) | 193 | `result-track:7b71a78d15f5f6b25506243383444ad9f85ceceeb2996332cff843e37b07c472` |
| 42 | `theorem` | [sdiff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-subset--1d88f0fae2b56cf7c6086271.md) | 200 | `result-track:1d88f0fae2b56cf7c6086271017eeac39826712025f35777a315b4aae0654955` |
| 43 | `theorem` | [sdiff_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-ssubset--9b07fc23f61f31b07439b24d.md) | 202 | `result-track:9b07fc23f61f31b07439b24d5ddde2f897b5819d771dc034338b323ea2eb5794` |
| 44 | `theorem` | [union_sdiff_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-distrib--bde5865c6798bbf859d22119.md) | 205 | `result-track:bde5865c6798bbf859d22119c3bc1e6e468eafa55edf615d315c0637430407b3` |
| 45 | `theorem` | [sdiff_union_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-union-distrib--294e837ef7b6b284233b64e2.md) | 208 | `result-track:294e837ef7b6b284233b64e2cbe41049bdcc68a70c9f7d73b697c3fb3d459770` |
| 46 | `theorem` | [union_sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-sdiff-self--ea40f40f90db406d4e4f41d3.md) | 211 | `result-track:ea40f40f90db406d4e4f41d398df2b270fbe67f2bae90f36f06b096a4e71726a` |
| 47 | `theorem` | [Nontrivial.sdiff_singleton_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/nontrivial-sdiff-singleton-nonempty--2d58fe323d32a78356ff0e93.md) | 214 | `result-track:2d58fe323d32a78356ff0e93d1c7a54311495ddf5bb2e003a843e8cb470c8808` |
| 48 | `theorem` | [sdiff_sdiff_left'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-sdiff-left--d1d5f1a6e179dd256bbb9720.md) | 220 | `result-track:d1d5f1a6e179dd256bbb972022140795f87c5e1d7f90a63e9f67a9253328a796` |
| 49 | `theorem` | [sdiff_union_sdiff_cancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-union-sdiff-cancel--a8ffb0bcfa65206f140c6238.md) | 223 | `result-track:a8ffb0bcfa65206f140c6238d9ec8a5be5d960a4a11ba1d83f47493d04f48d1f` |
| 50 | `theorem` | [sdiff_sdiff_eq_sdiff_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-sdiff-eq-sdiff-union--e0677bd8ffc1574edee54d76.md) | 226 | `result-track:e0677bd8ffc1574edee54d763437cf314318156c93642088411e1479edf695fb` |
| 51 | `theorem` | [sdiff_sdiff_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-sdiff-self-left--074d4648a708f46c2c5e42c0.md) | 229 | `result-track:074d4648a708f46c2c5e42c0cd82bfdb7d86cb0acac61997a4ea1fe3820a283a` |
| 52 | `theorem` | [sdiff_sdiff_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-sdiff-eq-self--97ba4db816adfa725070f1b6.md) | 232 | `result-track:97ba4db816adfa725070f1b6d1238545ed83cb077bfb3ac5717feafb90a9831d` |
| 53 | `theorem` | [sdiff_eq_sdiff_iff_inter_eq_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-eq-sdiff-iff-inter-eq-inter--9981dbe348655ea00ef52a28.md) | 235 | `result-track:9981dbe348655ea00ef52a28b37d4ff744c059031c66bc99edf5e9fc42c070ed` |
| 54 | `theorem` | [union_eq_sdiff_union_sdiff_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/union-eq-sdiff-union-sdiff-union-inter--b511870962f4bccf47470672.md) | 239 | `result-track:b511870962f4bccf47470672b43727e43498d06ced4d3b3b8330006c3024bfd1` |
| 55 | `theorem` | [sdiff_eq_self_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-eq-self-iff-disjoint--a115039f0470c8dffe6f319b.md) | 242 | `result-track:a115039f0470c8dffe6f319b05853d46fb81e0a256ee781de537b80f72f64c0d` |
| 56 | `theorem` | [sdiff_eq_self_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean/declarations/sdiff-eq-self-of-disjoint--1f09a4bdf177a3f4e68b08f1.md) | 245 | `result-track:1f09a4bdf177a3f4e68b08f1d036340c6c53f8de527db111d89a53e6f542e129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
