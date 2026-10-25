# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrderIsoNat.Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5b9e4c9dc82a3c09aaf3651a2864bac231602ef",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5b9e4c9dc82a3c09aaf3651a2864bac231602ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Denumerable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/natlt--a8e39052e2f45a6debdb44f6.md) | 44 | `declaration-track:a8e39052e2f45a6debdb44f60f018f6f67b5776dd6da000839daeeb93c98b02a` |
| 2 | `theorem` | [coe_natLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/coe-natlt--8b524d81b69fe000224ffdf5.md) | 48 | `result-track:8b524d81b69fe000224ffdf5961683f267e6da4c082455fee7390405f95bf5eb` |
| 3 | `def` | [natGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/natgt--bc9426ab502650ebdf3806ab.md) | 52 | `declaration-track:bc9426ab502650ebdf3806abb0ce05f4514e5d1af6ec4901a1a59d8512eb19e7` |
| 4 | `theorem` | [coe_natGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/coe-natgt--d2f5769d90be01201abbfe4d.md) | 57 | `result-track:d2f5769d90be01201abbfe4d09e26a450ba2360096206de9ee066b044b100028` |
| 5 | `theorem` | [exists_not_acc_lt_of_not_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-not-acc-lt-of-not-acc--6a2994424309dd84df9b4666.md) | 60 | `result-track:6a2994424309dd84df9b46664f8ea954c4b04f32a40fcb182febd9f166168696` |
| 6 | `theorem` | [acc_iff_no_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/acc-iff-no-decreasing-seq--9cc39ffb02fe6532f976eaba.md) | 67 | `result-track:9cc39ffb02fe6532f976eabaa9b6bc15b1ba8643f4fd70b445e8faa945af38a2` |
| 7 | `theorem` | [not_acc_of_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/not-acc-of-decreasing-seq--4c3b0ae8e5f6155d764cbe80.md) | 84 | `result-track:4c3b0ae8e5f6155d764cbe80b92a562a3cd5f6732a30caca059db84a71b5a1ba` |
| 8 | `theorem` | [wellFounded_iff_no_descending_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfounded-iff-no-descending-seq--d9b93864dad8384529161f5d.md) | 91 | `result-track:d9b93864dad8384529161f5dd7cbbfcb5afd90cabb061024557fea01f963a0b5` |
| 9 | `theorem` | [not_wellFounded_of_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/not-wellfounded-of-decreasing-seq--2bca7e78ef497231b47d960c.md) | 99 | `result-track:2bca7e78ef497231b47d960cbeb6fdba183afbfab0fb93472c996fe97f653225` |
| 10 | `theorem` | [not_strictAnti_of_wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/not-strictanti-of-wellfoundedlt--01c65b9401a3986fd576658b.md) | 105 | `result-track:01c65b9401a3986fd576658bc3383a89877547caea54272d0be547827389230a` |
| 11 | `theorem` | [not_strictMono_of_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/not-strictmono-of-wellfoundedgt--0f2ee39270efbd1c044082ce.md) | 109 | `result-track:0f2ee39270efbd1c044082ce3798d3b8d559f60f44c0ce3c706e2cfc3f6519da` |
| 12 | `def` | [orderEmbeddingOfSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/orderembeddingofset--48914ebd75291877b031dd96.md) | 118 | `declaration-track:48914ebd75291877b031dd968fa68b49c9bc57d37efb5d133546c0fe01a869d5` |
| 13 | `def` | [Subtype.orderIsoOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/subtype-orderisoofnat--07a03d98afd4e92211b4ca2a.md) | 125 | `declaration-track:07a03d98afd4e92211b4ca2a4ca6fa0cb3b861e7fd18e17731e8df2469124405` |
| 14 | `theorem` | [coe_orderEmbeddingOfSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/coe-orderembeddingofset--297859a16e87f6d339967e34.md) | 136 | `result-track:297859a16e87f6d339967e34eaf0a8c7db3192f33c3d7b0bf2e37f7ff6e4783f` |
| 15 | `theorem` | [orderEmbeddingOfSet_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/orderembeddingofset-apply--08b25f539a98fa218c5c482e.md) | 140 | `result-track:08b25f539a98fa218c5c482e45f83235fd55656bffb5db78afa6bfc887891c9e` |
| 16 | `theorem` | [Subtype.orderIsoOfNat_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/subtype-orderisoofnat-apply--2cc0aec553e8ae6a8bf1ed90.md) | 145 | `result-track:2cc0aec553e8ae6a8bf1ed9034d6afed476573268ae5d6aeff6503c8ae703d79` |
| 17 | `theorem` | [orderEmbeddingOfSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/orderembeddingofset-range--92ee0eed9254ce11e6dd8f79.md) | 151 | `result-track:92ee0eed9254ce11e6dd8f79d3806aa625cdeb7faafbdf2c6640d6da888a6485` |
| 18 | `theorem` | [exists_subseq_of_forall_mem_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-subseq-of-forall-mem-union--666d0aa9dca51a747c2f43bc.md) | 155 | `result-track:666d0aa9dca51a747c2f43bc41c3f682db21e313a81e52574fd2d3a7dedecb86` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-increasing-or-nonincreasing-subseq--93f49ef7f5e9647a88b536b5.md) | 167 | `result-track:93f49ef7f5e9647a88b536b59d2044313835c5546a5ad027170b1a27859da673` |
| 20 | `theorem` | [exists_increasing_or_nonincreasing_subseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-increasing-or-nonincreasing-subseq--bc54eea22834678726217660.md) | 202 | `result-track:bc54eea22834678726217660eded00fd0dc7c7303d36d520ca45a74449cb00c7` |
| 21 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--938b8cd80d0951f127bedf63.md) | 219 | `result-track:938b8cd80d0951f127bedf63397c2832bcbb4a3d7eead70d0f0aaaee5fef6481` |
| 22 | `theorem` | [WellFoundedGT.monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfoundedgt-monotone-chain-condition--b1ad80b9ea06cfbf0ab4befa.md) | 229 | `result-track:b1ad80b9ea06cfbf0ab4befa2b84ec2fc9fdae1ba3d8eb01e70a761f1f935bff` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--9edb299c72e567da3d964a1f.md) | 236 | `result-track:9edb299c72e567da3d964a1f145af6413029855f6a654ff0ed81c4ee47c84b0a` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfoundedgt-monotone-chain-condition--85c403b0d4f3f6e5b58bb05d.md) | 243 | `result-track:85c403b0d4f3f6e5b58bb05d3445fb90ed304711d1ed0f375937d31add813375` |
| 25 | `theorem` | [WellFounded.monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfounded-monotone-chain-condition--a3edf6525234dfd332a12a05.md) | 248 | `result-track:a3edf6525234dfd332a12a05c152f1bf9c6c1259910a1abd0ddefd629b22cc70` |
| 26 | `theorem` | [WellFounded.monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfounded-monotone-chain-condition--17ff6d3a6fd98e48252c4f3a.md) | 254 | `result-track:17ff6d3a6fd98e48252c4f3acd9db24fd8fab22a3ec641f8563f70fdd980fe36` |
| 27 | `def` | [monotonicSequenceLimitIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/monotonicsequencelimitindex--f13c11cb27068a0d7272c9f4.md) | 263 | `declaration-track:f13c11cb27068a0d7272c9f4e10f113ad732764be25a054b5dfe4fd74e9a7c08` |
| 28 | `def` | [monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/monotonicsequencelimit--b37bdfdad9e8c45544a9ed72.md) | 268 | `declaration-track:b37bdfdad9e8c45544a9ed721b1cda6afb2fcbfb440eef2c3e0f01af87b18422` |
| 29 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfoundedgt-isup-eq-monotonicsequencelimit--fe3e8cb07666ba382f236109.md) | 272 | `result-track:fe3e8cb07666ba382f2361091971bdca80efc2c61984fe5a8de3c089bb80fd79` |
| 30 | `theorem` | [WellFounded.iSup_eq_monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/wellfounded-isup-eq-monotonicsequencelimit--ba449c28fa716aa1465a456a.md) | 282 | `result-track:ba449c28fa716aa1465a456a29f4b7f810e16af9a296ef1172337af072fd0b0c` |
| 31 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt--9e58c0d6b159d403c94a4e26.md) | 288 | `result-track:9e58c0d6b159d403c94a4e268b8f489800850dc1a0c7559a2ca3f1f6fe7f9004` |
| 32 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le--3cffd738fd396d691edfa147.md) | 305 | `result-track:3cffd738fd396d691edfa1470c320b5fe6016dd1858bc970ae7700b6e1fb9d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
