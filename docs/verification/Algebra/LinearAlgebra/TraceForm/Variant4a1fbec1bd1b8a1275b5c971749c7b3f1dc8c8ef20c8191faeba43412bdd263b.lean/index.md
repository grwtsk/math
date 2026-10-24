# Verification target: GRWTSK.Algebra.LinearAlgebra.TraceForm.Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d61758f64d289935127f8992d689b242c9fdd8",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d61758f64d289935127f8992d689b242c9fdd8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform--80b55deb824a47581a2cfc5a.md) | 54 | `declaration-track:80b55deb824a47581a2cfc5ab2aac2cb0c30119b683cf845ecf25664f3e7c880` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-apply-apply--a017c220507a03fbfea27ddf.md) | 57 | `result-track:a017c220507a03fbfea27ddf4cd1c17c755f3b90f5a7b4a0ef55ae5940195e8e` |
| 3 | `lemma` | [traceForm_comm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-comm--85f8fe41d345297dbd6433c1.md) | 61 | `result-track:85f8fe41d345297dbd6433c12ccc8c86279605622b2d61361d248e52c2dfcc7d` |
| 4 | `lemma` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-issymm--d29a9e5e1c26bc0af215ca09.md) | 64 | `result-track:d29a9e5e1c26bc0af215ca092ceb0be7200d93bf1ee82912df6416882c66abdf` |
| 5 | `lemma` | [traceForm_flip](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-flip--0b2c3bfbc93598432a8af8b2.md) | 66 | `result-track:0b2c3bfbc93598432a8af8b2480e68ddcfaa5498f917a3e18fe71b1940b24bfe` |
| 6 | `lemma` | [traceForm_apply_lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-apply-lie-apply--285ed459876b218b5b506f15.md) | 72 | `result-track:285ed459876b218b5b506f158de12bd99b8b3e2d8cc450f797878efd420c518e` |
| 7 | `lemma` | [traceForm_apply_lie_apply'](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-apply-lie-apply--89c90769de6cce995435d352.md) | 88 | `result-track:89c90769de6cce995435d352b562ac6c2e6f07c3b325eb1d23edd46111dff77d` |
| 8 | `lemma` | [traceForm_lieInvariant](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-lieinvariant--b92fc760c6bd33d881b0a7ac.md) | 94 | `result-track:b92fc760c6bd33d881b0a7ac1fcb20fc798f4ff9e3d3ebd597c8dd626603a911` |
| 9 | `lemma` | [lie_traceForm_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/lie-traceform-eq-zero--b5683e764fba2f050bb050c4.md) | 99 | `result-track:b5683e764fba2f050bb050c484b0bc1313577d9294bed28134f2657a76dd8855` |
| 10 | `lemma` | [traceForm_eq_zero_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-zero-of-isnilpotent--2b65aca3a6ca2c65f4402346.md) | 104 | `result-track:2b65aca3a6ca2c65f44023460b0c8231fea3218a030168e93b12b4576cd67fbd` |
| 11 | `lemma` | [traceForm_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-basechange--816703d3195c9d5102bd335f.md) | 112 | `result-track:816703d3195c9d5102bd335f88c9d27f29188fbeef880ee54a89592bbb7b9ba4` |
| 12 | `lemma` | [trace_toEnd_mul_eq_zero_of_traceForm_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/trace-toend-mul-eq-zero-of-traceform-eq-zero--f7205c26f44a8f94424825b5.md) | 118 | `result-track:f7205c26f44a8f94424825b5aa248c7dcd9f47b25c2870e238abc9ba7f01dd2b` |
| 13 | `lemma` | [traceForm_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-genweightspace-eq--208ed14c0687bd7f22305e53.md) | 138 | `result-track:208ed14c0687bd7f22305e530930bd350d40cf8e20f3efa5cfc6c563e6e3fe9d` |
| 14 | `lemma` | [traceForm_eq_zero_if_mem_lcs_of_mem_ucs](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-zero-if-mem-lcs-of-mem-ucs--413ebc69905c2a96d652c8c2.md) | 159 | `result-track:413ebc69905c2a96d652c8c22a32fa8cc5f9462580de76bd1b7934b4d61005b3` |
| 15 | `lemma` | [traceForm_apply_eq_zero_of_mem_lcs_of_mem_center](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-apply-eq-zero-of-mem-lcs-of-mem-center--e27af17b7084839809340ff1.md) | 178 | `result-track:e27af17b7084839809340ff1df989b508c08cace70eadece6557327a97da285f` |
| 16 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-zero-of-istrivial--9b9030950a5c1da4e903de83.md) | 186 | `result-track:9b9030950a5c1da4e903de835b6ece2f458440e81b49e4a9a1c05f1be487e4f9` |
| 17 | `lemma` | [eq_zero_of_mem_genWeightSpace_mem_posFitting](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/eq-zero-of-mem-genweightspace-mem-posfitting--ca907edfb4032a25fc38e52b.md) | 196 | `result-track:ca907edfb4032a25fc38e52b4a1a7747bdd13cbff82c0b317071db0f7e3cf715` |
| 18 | `lemma` | [trace_toEnd_eq_zero_of_mem_lcs](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/trace-toend-eq-zero-of-mem-lcs--60722f17bb6d38f763dfd8ec.md) | 219 | `result-track:60722f17bb6d38f763dfd8eca1a8b5108ea00337cfa10d8c53ade6a30819da08` |
| 19 | `lemma` | [traceForm_lieSubalgebra_mk_left](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-liesubalgebra-mk-left--11302304578c092f95e577d1.md) | 236 | `result-track:11302304578c092f95e577d1c0aff18519558f764b0966bfbdc8c4b3d37a1526` |
| 20 | `lemma` | [traceForm_lieSubalgebra_mk_right](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-liesubalgebra-mk-right--914ab80dc24ced6b9d04de99.md) | 241 | `result-track:914ab80dc24ced6b9d04de991d92d1ebc8db02edd14e3ecb8de0c973007527a0` |
| 21 | `lemma` | [traceForm_eq_sum_genWeightSpaceOf](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-sum-genweightspaceof--731a70168623d73cd7b35528.md) | 249 | `result-track:731a70168623d73cd7b35528e04e98680d8bc2add583ec00d25fa2c8e734e0ba` |
| 22 | `lemma` | [lowerCentralSeries_one_inf_center_le_ker_traceForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/lowercentralseries-one-inf-center-le-ker-traceform--8409637aa2368f80564d688b.md) | 271 | `result-track:8409637aa2368f80564d688b4fcc8a5b38e72a70beed641eb024293cda48602b` |
| 23 | `lemma` | [isLieAbelian_of_ker_traceForm_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/islieabelian-of-ker-traceform-eq-bot--d45a67c4bf809576931f4c9f.md) | 319 | `result-track:d45a67c4bf809576931f4c9f11c3f44267abde61b5df6cfef552f3c31f47ac5f` |
| 24 | `lemma` | [trace_eq_trace_restrict_of_le_idealizer](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/trace-eq-trace-restrict-of-le-idealizer--9d38c40825d34eb4e4d2d1df.md) | 336 | `result-track:9d38c40825d34eb4e4d2d1dfdbd404a3f1670a7582d858b44bc0fef5672983bc` |
| 25 | `lemma` | [traceForm_eq_of_le_idealizer](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-of-le-idealizer--bb5077473c979f2f636d1ab7.md) | 346 | `result-track:bb5077473c979f2f636d1ab7a49dc2e91b92ca9a8f68988b6031c651c21114f2` |
| 26 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-zero-of-istrivial--233630b6db072fbab0abd283.md) | 357 | `result-track:233630b6db072fbab0abd283ab8c874969ec9b398fdd4b3de7efd960a045ec6d` |
| 27 | `abbrev` | [killingForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/killingform--76e91759b2ee4488cc31fcba.md) | 373 | `declaration-track:76e91759b2ee4488cc31fcba0bb61a7f5c13a171ebc1e321c1a7eb0407162644` |
| 28 | `lemma` | [killingForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/killingform-apply-apply--2cbf75558efd4b67311b0c5e.md) | 376 | `result-track:2cbf75558efd4b67311b0c5e84bc8b33f00c21da32b27778ef38237519d2449c` |
| 29 | `lemma` | [killingForm_eq_zero_of_mem_zeroRoot_mem_posFitting](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/killingform-eq-zero-of-mem-zeroroot-mem-posfitting--c11f6f7a1a4021978fc9e9c3.md) | 379 | `result-track:c11f6f7a1a4021978fc9e9c3517e075bc4e9e3b1b5bcb5a486d9585829fac202` |
| 30 | `def` | [killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/killingcompl--5ba3583ec6bfb8fd5c55e2dd.md) | 393 | `declaration-track:5ba3583ec6bfb8fd5c55e2dd9831b59af7431908c9363d97bad8f5d7caf0b548` |
| 31 | `lemma` | [toSubmodule_killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/tosubmodule-killingcompl--634b626c91bec3991e1ed870.md) | 396 | `result-track:634b626c91bec3991e1ed8708d2d53591e9e93792352beeb4d77aeb8e284dddd` |
| 32 | `lemma` | [mem_killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/mem-killingcompl--9cedcc089ba25111d0163a20.md) | 400 | `result-track:9cedcc089ba25111d0163a2090d523da9ecf2e54c2e18ccecd4cbd91ebfbfd77` |
| 33 | `lemma` | [coe_killingCompl_top](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/coe-killingcompl-top--92ed0065692151f0794a2964.md) | 404 | `result-track:92ed0065692151f0794a296464162d3ded470c929fd25449e10fda0522ea15af` |
| 34 | `lemma` | [restrict_killingForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/restrict-killingform--ad4465624b8c90ff763cb1c1.md) | 409 | `result-track:ad4465624b8c90ff763cb1c1cb5f96e0305cb6596858b1cc718c88e657f9ad4d` |
| 35 | `lemma` | [killingForm_eq](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/killingform-eq--4181a896cddf4477ada334fb.md) | 415 | `result-track:4181a896cddf4477ada334fb9dc53de53ede0c116a81655ec778a85545da7ba6` |
| 36 | `lemma` | [le_killingCompl_top_of_isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/le-killingcompl-top-of-islieabelian--6edbb03eb4e07e3490995f63.md) | 419 | `result-track:6edbb03eb4e07e3490995f6343633e38a447c20839cdb8d32dbd809c4202ed62` |
| 37 | `lemma` | [traceForm_eq_sum_finrank_nsmul_mul](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-sum-finrank-nsmul-mul--84c870fc760c4829406dce92.md) | 437 | `result-track:84c870fc760c4829406dce92344e33c9c1016c7e0182e7db728357496cf28eec` |
| 38 | `lemma` | [traceForm_eq_sum_finrank_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-sum-finrank-nsmul--d3752a76933ab0b23460c996.md) | 452 | `result-track:d3752a76933ab0b23460c99687a63fd44bb617af8b33545a83862a4d30586108` |
| 39 | `lemma` | [traceForm_eq_sum_finrank_nsmul'](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/traceform-eq-sum-finrank-nsmul--2cba1e607d9b77cdf390841d.md) | 461 | `result-track:2cba1e607d9b77cdf390841da2dcda622a26c20a7ba7d5df9391bed06aec9656` |
| 40 | `lemma` | [range_traceForm_le_span_weight](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant4a1fbec1bd1b8a1275b5c971749c7b3f1dc8c8ef20c8191faeba43412bdd263b.lean/declarations/range-traceform-le-span-weight--a160766c15a8203cc5b2c15c.md) | 475 | `result-track:a160766c15a8203cc5b2c15c8b484742e198796fb569741d854cbbe3cd3cc464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
