# Verification target: GRWTSK.Algebra.Multiset.Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/index.md) · [Full source](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2`.

Source path: `GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean.json)

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
| 1 | `lemma` | [one_le_prod_of_one_le](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/one-le-prod-of-one-le--aa93640d30cd55f155900be4.md) | 32 | `result-track:aa93640d30cd55f155900be4b126b207f99ddc7141f1006de8b6ef37b4c9ae87` |
| 2 | `lemma` | [single_le_prod](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/single-le-prod--c960621c3ef3fbdf0fa5e72b.md) | 36 | `result-track:c960621c3ef3fbdf0fa5e72b655ba2c72771a80f657147e8a3bdaab2bf1221de` |
| 3 | `lemma` | [prod_le_pow_card](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-le-pow-card--3ca16b1bf873f427a07bce57.md) | 40 | `result-track:3ca16b1bf873f427a07bce571bc2e311db122f8191787434f2fdd8ebb57ea981` |
| 4 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/all-one-of-le-one-le-of-prod-eq-one--d86b3456cf5353d54c375108.md) | 46 | `result-track:d86b3456cf5353d54c3751089798437445a940b0c8b3d95ce40111a9ef49c8d0` |
| 5 | `lemma` | [prod_le_prod_of_rel_le](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-le-prod-of-rel-le--fba93593ca80e31ad3da1012.md) | 54 | `result-track:fba93593ca80e31ad3da1012f25532b2e41026c2b1b00eeff5f278750c0a24d5` |
| 6 | `lemma` | [prod_map_le_prod_map](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-map-le-prod-map--9cbb4eb9cf3705bb14ca8392.md) | 62 | `result-track:9cbb4eb9cf3705bb14ca83929b1986ce6af97308ead571e8a7f41306ed214e5c` |
| 7 | `lemma` | [prod_map_le_prod](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-map-le-prod--e10998479912ee588066a381.md) | 67 | `result-track:e10998479912ee588066a3816d62c2a4e28a3775cacb5518e2e56ceecf52ef0b` |
| 8 | `lemma` | [prod_le_prod_map](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-le-prod-map--26f934fc9175e24b3c90acd2.md) | 72 | `result-track:26f934fc9175e24b3c90acd2d9df473e0d06d0d01fba140bb94faab379303004` |
| 9 | `lemma` | [pow_card_le_prod](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/pow-card-le-prod--efe6dd7a3d0cd1bb1181c947.md) | 77 | `result-track:efe6dd7a3d0cd1bb1181c947077a84613e7a07109c44c5cd3acb1a64029ca798` |
| 10 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/le-prod-of-submultiplicative-on-pred--9d3854824af1302d71c6a76b.md) | 87 | `result-track:9d3854824af1302d71c6a76b8ff643912b75988f6fdda5ba03295394151e64fb` |
| 11 | `lemma` | [le_prod_of_submultiplicative](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/le-prod-of-submultiplicative--3c74137cf0700556f6b1abc1.md) | 95 | `result-track:3c74137cf0700556f6b1abc11fbeadb009e695120a8f1fde6e0a7410741978a0` |
| 12 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred--1c145214db09bc88c5b72aa8.md) | 101 | `result-track:1c145214db09bc88c5b72aa8ee3723c38f27b5f446e00de1eb84f837c7a8bde4` |
| 13 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/le-prod-nonempty-of-submultiplicative--e9d6702dba8ef221db867461.md) | 110 | `result-track:e9d6702dba8ef221db867461c8138699dce90effa71c9308d431ea7a7d9708d0` |
| 14 | `lemma` | [prod_lt_prod](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-lt-prod--714a9a7866f6cd7deb97e582.md) | 122 | `result-track:714a9a7866f6cd7deb97e582950f1fb0f4ceaa7d20884ff45971b646c07836b7` |
| 15 | `lemma` | [prod_lt_prod_of_nonempty](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-lt-prod-of-nonempty--b2eaf24aa127f0f44aa299a4.md) | 131 | `result-track:b2eaf24aa127f0f44aa299a4990cbba2b98219c5534d540e2b2ace14dba82e0a` |
| 16 | `lemma` | [prod_eq_one_iff](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-eq-one-iff--236bccdbf81a59a021c7b22b.md) | 143 | `result-track:236bccdbf81a59a021c7b22ba1d65fecd0377b272802e295abb4a654f99785b2` |
| 17 | `lemma` | [le_prod_of_mem](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/le-prod-of-mem--02b869fe4bbed355d03d1c7c.md) | 147 | `result-track:02b869fe4bbed355d03d1c7cf87ee52ad139491f791f8350960126175e9e2e81` |
| 18 | `lemma` | [max_le_of_forall_le](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/max-le-of-forall-le--a7d380d9688d7f64b2d20de1.md) | 155 | `result-track:a7d380d9688d7f64b2d20de1b329fa194d81b9c65493eb7d0bc034f790591bc8` |
| 19 | `lemma` | [max_prod_le](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/max-prod-le--e089e38e22aadde16f4663db.md) | 161 | `result-track:e089e38e22aadde16f4663dbf8c1890bf1d9914d651ea20ecf51ecf31e211125` |
| 20 | `lemma` | [prod_min_le](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/prod-min-le--be5fb8496a4b343bd43ef594.md) | 169 | `result-track:be5fb8496a4b343bd43ef5946120a9da52429b7c9d3ce63e238805b662a156be` |
| 21 | `lemma` | [abs_sum_le_sum_abs](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/abs-sum-le-sum-abs--b12b9956d53f02e460357654.md) | 176 | `result-track:b12b9956d53f02e4603576546d4c4d0ce7bbe9d2c8bd1a43f0500b161e7e3953` |
| 22 | `lemma` | [apply_prod_le_sum_map](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/apply-prod-le-sum-map--1ff66375640b381f3606d083.md) | 184 | `result-track:1ff66375640b381f3606d083b35baa5a64c687007da380c9aaf03ab50eb0d200` |
| 23 | `lemma` | [sum_map_le_apply_prod](../../../../mathematics/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/declarations/sum-map-le-apply-prod--bec3bac818e09a24fdabc9d3.md) | 189 | `result-track:bec3bac818e09a24fdabc9d309ff49ba23cde3c9ec321dbac8096ebd4d3c0132` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
