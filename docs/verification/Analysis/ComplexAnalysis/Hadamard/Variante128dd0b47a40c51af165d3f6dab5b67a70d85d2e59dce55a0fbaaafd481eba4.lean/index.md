# Verification target: GRWTSK.Analysis.ComplexAnalysis.Hadamard.Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eefa0b4dfc332b435a80d9b47c06d9189f37353e`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.PhragmenLindelof` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/verticalstrip--29bf5d418e85be7b647564c8.md) | 67 | `declaration-track:29bf5d418e85be7b647564c834f17ef960fd47d8fdbee9bb546370175cf8f7f1` |
| 2 | `def` | [verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/verticalclosedstrip--b8223e3dde50169978006ef7.md) | 70 | `declaration-track:b8223e3dde50169978006ef75df4d02d04790fe3d575c95b1efc0dbc273e2fdc` |
| 3 | `def` | [sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/ssupnormim--d6a443358f1d06b4cb99d9fa.md) | 74 | `declaration-track:d6a443358f1d06b4cb99d9fa57f598050fd1b1742d510a67e2ae695e4e86e89a` |
| 4 | `def` | [invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/invinterpstrip--cbfe0557acc962245c595923.md) | 89 | `declaration-track:cbfe0557acc962245c5959238ded253f9cada4cccbde6716d9b74c87ced17e0a` |
| 5 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/f--66d1a11ef85848aa5f09154d.md) | 93 | `declaration-track:66d1a11ef85848aa5f09154db0d697bda9ea432bccf68f9b46da53df9b7fba57` |
| 6 | `lemma` | [sSupNormIm_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/ssupnormim-nonneg--6189d248a983cc39e8b77546.md) | 96 | `result-track:6189d248a983cc39e8b77546e1335c273646d5c705ebc7baeb84889ac3b874cc` |
| 7 | `lemma` | [sSupNormIm_eps_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/ssupnormim-eps-pos--95e39d6b6e6a8778d71f399c.md) | 103 | `result-track:95e39d6b6e6a8778d71f399c3a02bed7b666565ef237d307678c8ed580b0fc76` |
| 8 | `lemma` | [norm_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-invinterpstrip--b5daf0659f06d772202e387c.md) | 107 | `result-track:b5daf0659f06d772202e387c6e8f83c2f6b350a1d6a41fc841bb64866484af9a` |
| 9 | `lemma` | [diffContOnCl_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/diffcontoncl-invinterpstrip--ec48a90eb5c4aad75de1fe57.md) | 118 | `result-track:ec48a90eb5c4aad75de1fe57354718689818e6778941e07a24a71a685b0af052` |
| 10 | `lemma` | [norm_le_sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-ssupnormim--edbadb936f6062b396066e71.md) | 132 | `result-track:edbadb936f6062b396066e717b468189b16664a4df9b882ca7f6345c7980503e` |
| 11 | `lemma` | [norm_lt_sSupNormIm_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-lt-ssupnormim-eps--65bf8f95d4b8a5a083962f9a.md) | 142 | `result-track:65bf8f95d4b8a5a083962f9a1a2eaa49523d38451d4769ae353c8f866a6a4fa8` |
| 12 | `lemma` | [F_BddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/f-bddabove--372178a36b58a2bcbeae1a02.md) | 150 | `result-track:372178a36b58a2bcbeae1a0203ee26ee077d102adad3e2bede4a2ca3a8844e8c` |
| 13 | `lemma` | [F_edge_le_one](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/f-edge-le-one--1a0ddb2f2f18b2bf48192033.md) | 190 | `result-track:1a0ddb2f2f18b2bf48192033e687b58942836678c535939a7bdf66a4932b64c1` |
| 14 | `theorem` | [norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-mul-invinterpstrip-le-one-of-mem-verticalclosedstrip--f08c175de53c05e45ff0a0e8.md) | 210 | `result-track:f08c175de53c05e45ff0a0e8c7782bbae52db089c6405c7e36f417f1b158d54d` |
| 15 | `def` | [interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip--78e4c591008a8070cbf53466.md) | 247 | `declaration-track:78e4c591008a8070cbf53466c3d36823cadb3ea4f136a22ab7c218f81b5d8577` |
| 16 | `lemma` | [interpStrip_eq_of_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip-eq-of-pos--9db903c9cc730472b8ac6994.md) | 253 | `result-track:9db903c9cc730472b8ac6994a5def00185acbd0ac2a935882f68a6fa060f7a31` |
| 17 | `lemma` | [interpStrip_eq_of_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip-eq-of-zero--fffc2303828f10c6cf916220.md) | 258 | `result-track:fffc2303828f10c6cf9162207d54bff129d9d46d66188e08d0f79c411a930d67` |
| 18 | `lemma` | [interpStrip_eq_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip-eq-of-mem-verticalstrip--c1442170bd625cb9975fe2ef.md) | 263 | `result-track:c1442170bd625cb9975fe2ef1dd3a3ba162c415c12606bbfbbe03d1704e6d495` |
| 19 | `lemma` | [diffContOnCl_interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/diffcontoncl-interpstrip--900dd01093d88ca2b48c1837.md) | 284 | `result-track:900dd01093d88ca2b48c1837c0730fc3a781c9ea04738b242f998c72518e5245` |
| 20 | `def` | [interpStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip--fb5dc328324dc24deb9b75a8.md) | 306 | `declaration-track:fb5dc328324dc24deb9b75a83386a9ff31d6445f7fa359bcbff3021358acf742` |
| 21 | `def` | [scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale--d9c9ab0fe5ca077442c0ad08.md) | 312 | `declaration-track:d9c9ab0fe5ca077442c0ad08b6ccaeaa9a47c2815c7b2923ff3edef0a7e2c76c` |
| 22 | `lemma` | [scale_id_mem_verticalClosedStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-id-mem-verticalclosedstrip-of-mem-verticalclosedstrip--70bdd6c6fba7dc3ae4a17d0b.md) | 316 | `result-track:70bdd6c6fba7dc3ae4a17d0b186a800793b7d0bb621b2c9940420a371ae444c3` |
| 23 | `lemma` | [scale_bddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-bddabove--db70a36580e0ef01bc28e746.md) | 329 | `result-track:db70a36580e0ef01bc28e7463a6e8e7c5d7b58435c2a7e01c26a7f73d153bdfa` |
| 24 | `lemma` | [scale_bound_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-bound-left--a58a51b349931d8c755577db.md) | 347 | `result-track:a58a51b349931d8c755577dbbb31c859df68bfb31596a8de7a502fbd25474422` |
| 25 | `lemma` | [scale_bound_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-bound-right--236bdb8ab4aae5ca065a444e.md) | 355 | `result-track:236bdb8ab4aae5ca065a444e44f4a02bf9570467daa87c000a3cc8d72420d8a7` |
| 26 | `lemma` | [sSupNormIm_scale_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/ssupnormim-scale-left--5f11e44cf75decdad9a2ad69.md) | 363 | `result-track:5f11e44cf75decdad9a2ad690356e5de119598b0e11600ab589ee98183e00bf2` |
| 27 | `lemma` | [sSupNormIm_scale_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/ssupnormim-scale-right--1529c76972411d6147ed4f43.md) | 387 | `result-track:1529c76972411d6147ed4f439babe2dc039c9bbd11d50504937a50d10628abb2` |
| 28 | `lemma` | [interpStrip_scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/interpstrip-scale--1c4f180bd96491a2c1e334ff.md) | 416 | `result-track:1c4f180bd96491a2c1e334ffca02929578f8d209be8ec87b566afe435d2fb85c` |
| 29 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip-eps--e9dbaae6bbf1fa1bb4717988.md) | 423 | `result-track:e9dbaae6bbf1fa1bb4717988cc21f0c80e70848b7133f421f1d2a202840de6e0` |
| 30 | `lemma` | [eventuallyle](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/eventuallyle--de19a14782a64c6c5fb6a9a1.md) | 438 | `result-track:de19a14782a64c6c5fb6a9a11a3847951db865786736fc296159c4e3d597b32f` |
| 31 | `lemma` | [norm_le_interpStrip_of_mem_verticalStrip_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interpstrip-of-mem-verticalstrip-zero--aa852810368f9a2aa906357e.md) | 446 | `result-track:aa852810368f9a2aa906357eebd1e3ce86f856a37d001fb93f64592ef604106f` |
| 32 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip₀₁](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--bbbe89b1dce288e6c2e84018.md) | 489 | `result-track:bbbe89b1dce288e6c2e840188e69927a14e1a1d7d21f9d70472596041101ec9d` |
| 33 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip₀₁'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--23f18bad6b6d9b7b2434e6ff.md) | 503 | `result-track:23f18bad6b6d9b7b2434e6ff1ada50968bac236aadc641d7e3d0e0c5bdcfff20` |
| 34 | `lemma` | [scale_id_mem_verticalStrip_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-id-mem-verticalstrip-of-mem-verticalstrip--59fbfe01f978d8907530a106.md) | 548 | `result-track:59fbfe01f978d8907530a106669b785d035bc379ca5eb50e7ce937383809342f` |
| 35 | `lemma` | [mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/mem-verticalclosedstrip-of-scale-id-mem-verticalclosedstrip--38072d64be793d7488477ed1.md) | 563 | `result-track:38072d64be793d7488477ed12073b830350f2cb49e845eac09cbbcac5c3878f4` |
| 36 | `lemma` | [scale_diffContOnCl](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/scale-diffcontoncl--b623727490202acd422531fb.md) | 581 | `result-track:b623727490202acd422531fb66881b1f13f61a46aa9055ee679b67cf138e0d13` |
| 37 | `lemma` | [fun_arg_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/fun-arg-eq--b2eecd68eb3fcb0e2081fb81.md) | 594 | `result-track:b2eecd68eb3fcb0e2081fb81be5c1928cd5da66d3ce3bd673d2520295eb1cf7d` |
| 38 | `lemma` | [bound_exp_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/bound-exp-eq--0f47d4ebe8c349343b2cf629.md) | 601 | `result-track:0f47d4ebe8c349343b2cf629dc225e8d1cb31b30b042008b694ea6a97b070aa9` |
| 39 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--1d34c209b45e95e636266ad0.md) | 617 | `result-track:1d34c209b45e95e636266ad08cc51ad715c65de3c70689c290e0a331417e0539` |
| 40 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--0cb7738cd85b4b2e0a4ebadf.md) | 636 | `result-track:0cb7738cd85b4b2e0a4ebadfeae4a9b0059db2243a3c003e8978842512892f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
