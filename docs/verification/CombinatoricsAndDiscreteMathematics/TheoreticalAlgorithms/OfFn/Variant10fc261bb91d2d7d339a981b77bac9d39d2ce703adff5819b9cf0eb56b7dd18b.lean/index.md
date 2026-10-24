# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33402360ad856b615dc2e4fdd79a1d48b7d36e31",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33402360ad856b615dc2e4fdd79a1d48b7d36e31`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Monadic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/getelem-offn--ab56188b74c3362e2d1a8b92.md) | 27 | `result-track:ab56188b74c3362e2d1a8b9294b51b1dc03808da561239514ac08dba355e92f5` |
| 2 | `theorem` | [getElem?_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/getelem-offn--97ec7480ca5e37162aa74b58.md) | 31 | `result-track:97ec7480ca5e37162aa74b5898568b13304f84c6cb121c9b07a7810738822a50` |
| 3 | `theorem` | [mem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/mem-offn--c985a049170de3be9e09e69b.md) | 36 | `result-track:c985a049170de3be9e09e69befbd924673ea278e37a1d2b96a15876230481a04` |
| 4 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/map-offn--f4ae9f2c1a3795843dfab0cd.md) | 45 | `result-track:f4ae9f2c1a3795843dfab0cd693f28965d3660ff2a9019cbb346b3eaf82a6bdf` |
| 5 | `theorem` | [back_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/back-offn--d18254a87f77c7a89ddbc45a.md) | 49 | `result-track:d18254a87f77c7a89ddbc45a9b5e8db1d83de78ad9a5f71605640dfbf5bd52fa` |
| 6 | `theorem` | [ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offn-succ--70c6b21240726a5ed9a2764f.md) | 53 | `result-track:70c6b21240726a5ed9a2764ffc89fd090a6741602b0650fd9a78021e9aade325` |
| 7 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offn-add--ce0ab3d5e02aaac41379ecb6.md) | 61 | `result-track:ce0ab3d5e02aaac41379ecb6bca731eb75922107a3229fd2dbc246e4d575994f` |
| 8 | `theorem` | [ofFn_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offn-succ--5ffc1f816b058536ef137af7.md) | 66 | `result-track:5ffc1f816b058536ef137af79451c03636a1fa7f209eb89c4cbe5024c8a08f23` |
| 9 | `theorem` | [ofFn_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offn-getelem--da87b0f05cd83d1ca2714c12.md) | 72 | `result-track:da87b0f05cd83d1ca2714c1284906a024a58603ccf98ef8759f879502457b545` |
| 10 | `def` | [ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm--3598de1134756022d0191762.md) | 79 | `declaration-track:3598de1134756022d0191762609b48e9547cd9ddc5757f998a574f0bb3eaeefb` |
| 11 | `theorem` | [ofFnM_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-zero--b91fce9f7063830855bea404.md) | 89 | `result-track:b91fce9f7063830855bea404e38ad629cda7598fca5306cbdd037c061940768a` |
| 12 | `theorem` | [ofFnM_go_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-go-succ--ed31a9e75c7a39e28d15a84b.md) | 92 | `result-track:ed31a9e75c7a39e28d15a84b5e7d3d969e3af492e7a29af6745e1b1a742a288c` |
| 13 | `theorem` | [ofFnM_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-succ--c6c250a8681026f21d41d026.md) | 115 | `result-track:c6c250a8681026f21d41d02636d478a29c372fba7bf3ddd1327af43b01a1c340` |
| 14 | `theorem` | [ofFnM_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-add--20d6e21cd1c805a7eaf26d87.md) | 122 | `result-track:20d6e21cd1c805a7eaf26d8790af7de74053a76cd2134f9e15da5d204aa9c0ba` |
| 15 | `theorem` | [toArray_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/toarray-offnm--a63e0089ac3a6a98cef7d70c.md) | 131 | `result-track:a63e0089ac3a6a98cef7d70c2cad45465a55741d67b82e2e63751203920f5f01` |
| 16 | `theorem` | [toList_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/tolist-offnm--1e28898e858bd49dec120818.md) | 137 | `result-track:1e28898e858bd49dec1208184df502e9c1e78e12b8cb27dccdd61d351659bfd2` |
| 17 | `theorem` | [ofFnM_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-succ--903fc8d7e60b3e6f7e49c116.md) | 144 | `result-track:903fc8d7e60b3e6f7e49c11642c7312a2bf6ea68c04f3a2565979f4ebccb0fdb` |
| 18 | `theorem` | [ofFnM_pure_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-pure-comp--beda13113e30f064f0b5742e.md) | 158 | `result-track:beda13113e30f064f0b5742e33bb4b7cee8bd6d0b5e60d801850001836946122` |
| 19 | `theorem` | [ofFnM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/offnm-pure--d13f9d1ca094b7991d79067a.md) | 165 | `result-track:d13f9d1ca094b7991d79067afb38a7beeb540e0fcdeb630ba50daacd5ee45170` |
| 20 | `theorem` | [idRun_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/declarations/idrun-offnm--b777a390dffcb43aa84f048c.md) | 169 | `result-track:b777a390dffcb43aa84f048ced8081749b4b0fabfc7a3befaa4d574387eb6aed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
