# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b811480c3dd10abe1f5c3702dc90c0c06d2008",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b811480c3dd10abe1f5c3702dc90c0c06d2008`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toFinset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/tofinset-prod--180472e0aa3d4637e19e5c6a.md) | 39 | `result-track:180472e0aa3d4637e19e5c6a054939b39c9836a24306ec8071857feea1037afa` |
| 2 | `theorem` | [toFinset_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/tofinset-offdiag--9ce76f492fc38a1e0a308957.md) | 44 | `result-track:9ce76f492fc38a1e0a3089579eefcc70710e52af91a34854022bad3e47487b01` |
| 3 | `instance` | [instFintypeProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/instfintypeprod--c8c82d0888f36e1415352622.md) | 50 | `declaration-track:c8c82d0888f36e141535262253710f8e38249dad20d0f645c65bdea2d5d4597a` |
| 4 | `lemma` | [univ_product_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/univ-product-univ--9fe41f473df5468c62f7f8c6.md) | 56 | `result-track:9fe41f473df5468c62f7f8c6d62ca8aeced906f41d0b9ea7f95b206c9c194f96` |
| 5 | `lemma` | [product_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/product-eq-univ--58918665eac6be4662baf009.md) | 58 | `result-track:58918665eac6be4662baf00969213d9756aeaea5255700230e94d42a679d136a` |
| 6 | `theorem` | [Fintype.card_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/fintype-card-prod--924bd67aedbe2314eb6866db.md) | 64 | `result-track:924bd67aedbe2314eb6866dbdbb8129a5034e0a22cdd0529b75a1ba2f20b015d` |
| 7 | `lemma` | [Fintype.card_product_filter_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/fintype-card-product-filter-lt--09fc4d2f3d61f2fe6ec2b237.md) | 69 | `result-track:09fc4d2f3d61f2fe6ec2b23754094647d4559befaedb056f9609a9e3d277b27c` |
| 8 | `theorem` | [infinite_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/infinite-prod--7add640ae0cf51ccd98ff19e.md) | 77 | `result-track:7add640ae0cf51ccd98ff19ed873b0eeef2a4a225bdd78054b57bb7e56d0f6ad` |
| 9 | `instance` | [Pi.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/pi-infinite-of-left--e90f806f9ff03f01389eaaa7.md) | 86 | `declaration-track:e90f806f9ff03f01389eaaa7817bfa7d5ce187a8329729d19188cef7c99c7c57` |
| 10 | `theorem` | [Pi.infinite_of_exists_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/pi-infinite-of-exists-right--0513ffe1ed7b9fb89948982c.md) | 95 | `result-track:0513ffe1ed7b9fb89948982cb846fac5b6220c46b46dfca7cb8168e593efa646` |
| 11 | `instance` | [Pi.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/pi-infinite-of-right--4bce674e919d7b2f48b9c66b.md) | 102 | `declaration-track:4bce674e919d7b2f48b9c66b25fd3a64c705bd8315a96acc847db2e2f43cffd7` |
| 12 | `instance` | [Function.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/function-infinite-of-left--dc330c638bffc00aa8a9a8f0.md) | 107 | `declaration-track:dc330c638bffc00aa8a9a8f08843bdf6849590d91330876cb662822d0738a82a` |
| 13 | `instance` | [Function.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b605e0155d30bf85ebbca7ed0aec61485c339c57d9b45f62421ef11d06aac71.lean/declarations/function-infinite-of-right--41203337d129f001bbbcd8de.md) | 112 | `declaration-track:41203337d129f001bbbcd8de0296cbf4af8e202081167787cad248579d8ea1bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
