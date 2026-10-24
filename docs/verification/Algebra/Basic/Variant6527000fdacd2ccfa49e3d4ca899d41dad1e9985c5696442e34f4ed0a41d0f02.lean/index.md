# Verification target: GRWTSK.Algebra.Basic.Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "054450baeb12d032c79cbdb6303fda39f89b5d33",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `054450baeb12d032c79cbdb6303fda39f89b5d33`.

Source path: `GRWTSK/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean.json)

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
| 1 | `theorem` | [Algebra.traceForm_toMatrix_powerBasis](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-traceform-tomatrix-powerbasis--2b3273d427ec632c0ca9d679.md) | 67 | `result-track:2b3273d427ec632c0ca9d6795244a2a82268d285380974d84e06db2fc9eacb74` |
| 2 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--bca3fde057e84c68959809ec.md) | 79 | `result-track:bca3fde057e84c68959809ecbaeab9c6263237c63b190902f18897dc89d1f18f` |
| 3 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/powerbasis-trace-gen-eq-sum-roots--e183183c510c56dc83b1adde.md) | 89 | `result-track:e183183c510c56dc83b1adde7e9538ab8f558ff599e6513518f1176882a58328` |
| 4 | `theorem` | [trace_gen_eq_zero](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-gen-eq-zero--cf26e18f25a85e84654cae54.md) | 101 | `result-track:cf26e18f25a85e84654cae5432549d4d9c2784aef29fe07a29f92f863c71fefd` |
| 5 | `theorem` | [trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-gen-eq-sum-roots--df2633c6410d95f4327cdec3.md) | 110 | `result-track:df2633c6410d95f4327cdec3d25347aaeac4201fe1146099960b76455344c07d` |
| 6 | `theorem` | [trace_eq_trace_adjoin](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-trace-adjoin--75ae9c5278ed12f0417188ae.md) | 127 | `result-track:75ae9c5278ed12f0417188aee3f3e5b8c3db473efcce26f1ccd4fa6655f02778` |
| 7 | `theorem` | [trace_adjoinSimpleGen](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-adjoinsimplegen--10e7d743dfadffb55429961f.md) | 136 | `result-track:10e7d743dfadffb55429961ff0f6c2afe1a473e3569f2f352cd38a2644ee0e90` |
| 8 | `theorem` | [trace_eq_finrank_mul_minpoly_nextCoeff](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-finrank-mul-minpoly-nextcoeff--91c28b7c15b3d460aceed294.md) | 140 | `result-track:91c28b7c15b3d460aceed2942ace75b24a7566d0d7143dfa55d734cb2da8d670` |
| 9 | `theorem` | [trace_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-sum-roots--50e270f15ea600045ea85cf7.md) | 146 | `result-track:50e270f15ea600045ea85cf7fd421277ab3df4392eacb951974fb40a0373b3d5` |
| 10 | `theorem` | [Algebra.isIntegral_trace](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-isintegral-trace--0ec6da4b954624abbde394be.md) | 162 | `result-track:0ec6da4b954624abbde394bee8902f621168cdad51ae4faa02e5fc9212eaaa52` |
| 11 | `lemma` | [Algebra.trace_eq_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-eq-of-algequiv--d6945badad0f5da98e2969b6.md) | 174 | `result-track:d6945badad0f5da98e2969b63b2bdacca9720c27dabe43c8d53937979e2461c0` |
| 12 | `lemma` | [Algebra.trace_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-eq-of-ringequiv--db8fe333cacff3187f975812.md) | 181 | `result-track:db8fe333cacff3187f975812dd77ebebaf0729dceafd0582982a079b62f55ef8` |
| 13 | `lemma` | [Algebra.trace_eq_of_equiv_equiv](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-eq-of-equiv-equiv--f3b12a53767b9b8c05ad04ba.md) | 200 | `result-track:f3b12a53767b9b8c05ad04ba1f9b5c56e5986b4e753477437707983d81f75e88` |
| 14 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-sum-embeddings-gen--d82dec38fdae96492045363f.md) | 218 | `result-track:d82dec38fdae96492045363f1b2f0aaf865b0807614653cf4bfc119a1c90db6b` |
| 15 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/sum-embeddings-eq-finrank-mul--2e004c72557eec87869222c4.md) | 235 | `result-track:2e004c72557eec87869222c433e6dd7ac17999f360d51b2a3f48ae3501ae9916` |
| 16 | `theorem` | [trace_eq_sum_embeddings](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-sum-embeddings--82019b3e46424904b42d3880.md) | 252 | `result-track:82019b3e46424904b42d38806f29cd960bae5dde49046714c0ae1148725b3e57` |
| 17 | `theorem` | [trace_eq_sum_automorphisms](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/trace-eq-sum-automorphisms--041e6d8e79c0f1bcc56d6f82.md) | 263 | `result-track:041e6d8e79c0f1bcc56d6f820287310785e3cddd123424030d574b26fb1e0401` |
| 18 | `lemma` | [Algebra.trace_eq_zero_of_not_isSeparable](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-eq-zero-of-not-isseparable--d366a4ff59760f8f87f80d5b.md) | 278 | `result-track:d366a4ff59760f8f87f80d5b388e1dee7ce0d3bc8fec4079f6334368c47d1b76` |
| 19 | `def` | [traceMatrix](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix--1eaba6d424f1587872738374.md) | 341 | `declaration-track:1eaba6d424f1587872738374e1c1385ce550324fa9d2138d9055a4305e366d53` |
| 20 | `theorem` | [traceMatrix_apply](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-apply--8a1bbdbfe4169c72a4e8cd1d.md) | 346 | `result-track:8a1bbdbfe4169c72a4e8cd1d7bb92c281a68aaeb3394074350ae10ad073d11b1` |
| 21 | `theorem` | [traceMatrix_reindex](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-reindex--312fd4948ed6d964a69958d1.md) | 349 | `result-track:312fd4948ed6d964a69958d15b0f5830a57399b0097847e11b2bdfcd7bd9e597` |
| 22 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-of-matrix-vecmul--0792504134106c964b9778f8.md) | 354 | `result-track:0792504134106c964b9778f84ff0023262df242429a5559e20ba2b9c56ac4b9e` |
| 23 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-of-matrix-mulvec--089d86f3fc23339a3eb5ebe8.md) | 374 | `result-track:089d86f3fc23339a3eb5ebe871fa25f423b08de6ba306349f72c3819ee78aa5d` |
| 24 | `theorem` | [traceMatrix_of_basis](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-of-basis--f01ed4027f183169fec0547c.md) | 380 | `result-track:f01ed4027f183169fec0547c531800b231e8c845eaf4f4fca937dc8918593b79` |
| 25 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-of-basis-mulvec--70bb08fef49d5ea7d10b562d.md) | 385 | `result-track:70bb08fef49d5ea7d10b562da4ac3dab44f30f886ee6006960103880c74ce944` |
| 26 | `def` | [embeddingsMatrix](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/embeddingsmatrix--620187fb8bd9be33cf30970d.md) | 412 | `declaration-track:620187fb8bd9be33cf30970d934a384ca61822a231060d548212457a5499b2fa` |
| 27 | `theorem` | [embeddingsMatrix_apply](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/embeddingsmatrix-apply--a63ab8b156969476392489d4.md) | 417 | `result-track:a63ab8b156969476392489d4c906c5d1ed7a5f846bf04990dc93705468480b3d` |
| 28 | `def` | [embeddingsMatrixReindex](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/embeddingsmatrixreindex--4239aeef07f9ce98d17b2e77.md) | 426 | `declaration-track:4239aeef07f9ce98d17b2e77d342fdbc180eefae75af64b3d36f27829719222a` |
| 29 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--9b724ce716781abd0774a604.md) | 431 | `result-track:9b724ce716781abd0774a604fadc0bf4cab5e280ed9b4325182f93252a5ccf42` |
| 30 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--169c296a09637a5c02a195c7.md) | 444 | `result-track:169c296a09637a5c02a195c7042d4b6db9882ceb132c208170cd502606b1cff1` |
| 31 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--ec49e7a0554b1d22690eaad9.md) | 448 | `result-track:ec49e7a0554b1d22690eaad935ffa7d0a6d43407839775e5e41981c093cce522` |
| 32 | `theorem` | [det_traceMatrix_ne_zero'](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/det-tracematrix-ne-zero--bfe0b4e347e8000ab89feb29.md) | 462 | `result-track:bfe0b4e347e8000ab89feb29a1077d7c4e528cd2173afe9a44ccc440aae156e6` |
| 33 | `theorem` | [det_traceForm_ne_zero](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/det-traceform-ne-zero--16a01ea85cbc3fd64645c4f9.md) | 477 | `result-track:16a01ea85cbc3fd64645c4f99ee4ab944b54d206f37964f14f24b7920bcdcf33` |
| 34 | `theorem` | [traceForm_nondegenerate](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/traceform-nondegenerate--3f07cc4bea00440e96d5ca09.md) | 504 | `result-track:3f07cc4bea00440e96d5ca09e33f87e2a15ec95df2a4f379546d97626d323929` |
| 35 | `theorem` | [traceForm_nondegenerate_tfae](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/traceform-nondegenerate-tfae--6376e29ecaa58178b130adf7.md) | 510 | `result-track:6376e29ecaa58178b130adf73ac20aadff309fc5b50c1c3254c8ad1e4a8b5637` |
| 36 | `theorem` | [Algebra.trace_ne_zero](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-ne-zero--443d3691371a68e103474020.md) | 517 | `result-track:443d3691371a68e103474020d057e74a168a7aabd160977956002dca236d5192` |
| 37 | `theorem` | [Algebra.trace_surjective](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/algebra-trace-surjective--eb7d88263a77468718450e47.md) | 521 | `result-track:eb7d88263a77468718450e47927b968384f793a71427f86a528272b99bdf1484` |
| 38 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/isnilpotent-trace-of-isnilpotent--71a22c1fc3f6a18b7b7dbada.md) | 535 | `result-track:71a22c1fc3f6a18b7b7dbada9af27001cbd3542d626e3652d55717881356c8dd` |
| 39 | `def` | [Module.Basis.traceDual](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual--ddbe75a798c2e9b7ce3334c6.md) | 553 | `declaration-track:ddbe75a798c2e9b7ce3334c6e654f527606b4bc1abb30260f1e522aa730ac12f` |
| 40 | `theorem` | [Module.Basis.traceDual_def](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-def--a77684fee12f66ed798da7c4.md) | 557 | `result-track:a77684fee12f66ed798da7c46e3cd7df191e4f5094155f1ed6717d05342d06d0` |
| 41 | `theorem` | [Module.Basis.traceDual_repr_apply](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-repr-apply--137ec628b533a6b9c4d4e721.md) | 561 | `result-track:137ec628b533a6b9c4d4e72148547fb3d7c3f51d073a9b6365dbd6c61f7c6aa7` |
| 42 | `theorem` | [Module.Basis.trace_traceDual_mul](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-trace-tracedual-mul--14614e481952f41ee12fac4c.md) | 566 | `result-track:14614e481952f41ee12fac4c68d90be01cf2aae25abbe6120663596ba3f588f0` |
| 43 | `theorem` | [Module.Basis.trace_mul_traceDual](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-trace-mul-tracedual--f242abced11f35810bef37e3.md) | 571 | `result-track:f242abced11f35810bef37e36010977688d23cbc74bc20fc6cafd3673341ae37` |
| 44 | `theorem` | [Module.Basis.traceDual_traceDual](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-tracedual--2923ce48e82ebb117c0a7865.md) | 576 | `result-track:2923ce48e82ebb117c0a7865d3d1556fbed28149da0a4f9639ff792e07087d6a` |
| 45 | `theorem` | [Module.Basis.traceDual_involutive](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-involutive--ac1f56be1edcdfe119488913.md) | 582 | `result-track:ac1f56be1edcdfe119488913ae7798f3e2648f64001783c6a2556afd169ed9f8` |
| 46 | `theorem` | [Module.Basis.traceDual_injective](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-injective--dea1bbadad410d37f31c7e57.md) | 586 | `result-track:dea1bbadad410d37f31c7e577e792a7c4f24d55e59e80e58850251376bef2d8e` |
| 47 | `theorem` | [Module.Basis.traceDual_inj](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-inj--c5776ab71ea824b7c0c642e4.md) | 593 | `result-track:c5776ab71ea824b7c0c642e4a97c856ed8a76de493f058b968c6b74b21bb097f` |
| 48 | `theorem` | [Module.Basis.traceDual_eq_iff](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-eq-iff--a35029123e5a95fb565ea162.md) | 602 | `result-track:a35029123e5a95fb565ea1622d2700a36c98c8150e51e62a248c98e33ac6e956` |
| 49 | `lemma` | [Module.Basis.traceDual_powerBasis_eq](../../../../mathematics/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/declarations/module-basis-tracedual-powerbasis-eq--6ead4c94b549db2a67455a25.md) | 610 | `result-track:6ead4c94b549db2a67455a25979fd19eb25d7e9557338158207711a0cc488d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
