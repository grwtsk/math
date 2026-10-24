# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d64fd2da38df7df70b6adf0778cfae133aef461b",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d64fd2da38df7df70b6adf0778cfae133aef461b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset--eb0ea5724e32967e881f98b8.md) | 42 | `declaration-track:eb0ea5724e32967e881f98b815886a00753a3855e1d81a2396d89d3ab3c01456` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-zero--33117f4682c872f0bf3495b6.md) | 49 | `result-track:33117f4682c872f0bf3495b6afa09ee6fe7bd754d64fb31b251844d07691736e` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-add--6fefa790acf4c44e7868f0c2.md) | 53 | `result-track:6fefa790acf4c44e7868f0c2438a2f2194534c152fd899fc4877d59da93d5912` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-apply--1e02ba40f0577830a0e062be.md) | 57 | `result-track:1e02ba40f0577830a0e062be69b33ab95df3aafc66773049216a84c078257ccb` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-single--6931ce04d03efc42f5ce7bc3.md) | 62 | `result-track:6931ce04d03efc42f5ce7bc323978055724e0a6c74b649059d38635dd37d4c67` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-sum--b31770ee89c360b82aee6d8f.md) | 66 | `result-track:b31770ee89c360b82aee6d8ffd02c467172bb22c79ac0d96e035550eabf3303d` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-sum-single--16633bb382711dd1379da1f4.md) | 71 | `result-track:16633bb382711dd1379da1f433e0107e07f54655db6e9340d4c6636709decd7d` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/card-tomultiset--4af88de511f3dfed6365ecdb.md) | 76 | `result-track:4af88de511f3dfed6365ecdbcf12e6f7eb3f1b398802dd0ad1932c5b1814f292` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-map--6575c9ae0de6245f15912385.md) | 80 | `result-track:6575c9ae0de6245f15912385abd9333c269beca429797b1b1d063b094f418507` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/prod-tomultiset--474f7aa359fc4071367bf96c.md) | 92 | `result-track:474f7aa359fc4071367bf96cc760756dae240dd02123f90b07866929fb90a8d5` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinset-tomultiset--3615ff8b3d97a54fba750288.md) | 103 | `result-track:3615ff8b3d97a54fba75028891eea9c82ec2c80a7d536f857ea49d90563f2446` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/count-tomultiset--5ca14b112e39608b4782a167.md) | 114 | `result-track:5ca14b112e39608b4782a167152046b986ac079ae6cecbdda936479251282bf3` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-sup--11b85ec127d23a3c746308aa.md) | 126 | `result-track:11b85ec127d23a3c746308aaa0ca410378205616cd7bf892db85b0447416e50f` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-inf--00fbdf69b2b2babe95e2dcce.md) | 131 | `result-track:00fbdf69b2b2babe95e2dcce3de8446a7a60583896e0d3106d65553c79d2ca2d` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/mem-tomultiset--e1e08a7da139cc6f0854527d.md) | 137 | `result-track:e1e08a7da139cc6f0854527d5ebffc842589a525a907de5615f945b14b9324d1` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp--4222579cb72545c838d8d48d.md) | 151 | `declaration-track:4222579cb72545c838d8d48d4d54de009a529bff0d46103bbafe91c70dc89ca1` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-support--d1ec014813441cfe813fe682.md) | 166 | `result-track:d1ec014813441cfe813fe6826ac1584bc81870e8dca7678f4f162e592250d83f` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-apply--eb4b66a5c37cf3e46e2eeb64.md) | 170 | `result-track:eb4b66a5c37cf3e46e2eeb6438a0129823cc422c709164812a9a05dc71611c9a` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-zero--9cb47a24abd5217522249e9c.md) | 173 | `result-track:9cb47a24abd5217522249e9cf6fdcaa9dc26df0585cdc179d756a5fecd77a8a5` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-add--d2e024f51715aec6fea9cdf3.md) | 176 | `result-track:d2e024f51715aec6fea9cdf33bdd9216b73c6190eeb7496ed6822eae6021fb33` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-singleton--0e55be6dbb512d2fba49612a.md) | 181 | `result-track:0e55be6dbb512d2fba49612a5c69cd0560226f1b3ae529e97c399f3f515cf477` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-tomultiset--a5c8abcc70f8fcf5170e78db.md) | 186 | `result-track:a5c8abcc70f8fcf5170e78db15522716211ad147287d8853aec32eff770d6f4a` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-eq-iff--658e2c7fbd511641dff74a6b.md) | 190 | `result-track:658e2c7fbd511641dff74a6b04169ec49be6ad418d2ee10f29ba5acbc00881f4` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-union--39263a57309602f1f60f3086.md) | 195 | `result-track:39263a57309602f1f60f3086b8d702f8df12e8e9275d04decf102bbd54bd6337` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tofinsupp-inter--0f491535332649a6e426f152.md) | 199 | `result-track:0f491535332649a6e426f152856498494dc82e4b814139bb4e2b5e2fca1659d1` |
| 26 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/finsupp-tomultiset-tofinsupp--26cc013a26161bacf0b89707.md) | 206 | `result-track:26cc013a26161bacf0b89707976a8d6a8621ddffce143c6d2dd5c725da2dbab9` |
| 27 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/finsupp-tomultiset-eq-iff--7e608c98a045da5a73467c19.md) | 211 | `result-track:7e608c98a045da5a73467c19f23227b4d2c62b698c4170745988b42ffa7f906f` |
| 28 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/orderisomultiset--e133f14cfc859867a2569c2e.md) | 219 | `declaration-track:e133f14cfc859867a2569c2e89357e3912a49034805e10b83e68bb7b2c541753` |
| 29 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/coe-orderisomultiset--cf683c88f0c495ed93409af2.md) | 225 | `result-track:cf683c88f0c495ed93409af2cf8e786d8f40df82ec4e831576e727f1a266f16f` |
| 30 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/coe-orderisomultiset-symm--42d31674d9d5d79579fb1af3.md) | 230 | `result-track:42d31674d9d5d79579fb1af3efa73b00ffb1068657a33018dfa0525aa8691fe3` |
| 31 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/tomultiset-strictmono--37ac1ff3ca47f99257842933.md) | 235 | `result-track:37ac1ff3ca47f9925784293302e71e7289f94cf2835cf5e476bfe6f0acfcb738` |
| 32 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/sum-id-lt-of-lt--4930a133d4e3d278c81c9090.md) | 239 | `result-track:4930a133d4e3d278c81c9090c4fbe46f51608267e8b1432ad65a1f52dd757331` |
| 33 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/lt-wf--06b0a0dd3b69c3c3476d0e10.md) | 248 | `result-track:06b0a0dd3b69c3c3476d0e10da2a865ea6a94d81f1db0f0a7b148a3707552cb5` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/instance--91f327cc9960cc39b18db3c3.md) | 253 | `declaration-track:91f327cc9960cc39b18db3c3876b4041a961acc1777d14d5560a4088230593d4` |
| 35 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/declarations/multiset-tofinsupp-strictmono--dd386ccf595f54f119a69c0a.md) | 259 | `result-track:dd386ccf595f54f119a69c0a8c049e61e97f990f8f0e2a1e83e4b205c776ac23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
