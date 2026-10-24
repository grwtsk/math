# Verification target: GRWTSK.Algebra.Basic.Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01097c8fe6fc42f93d70fa0be5fa76cda768b701",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01097c8fe6fc42f93d70fa0be5fa76cda768b701`.

Source path: `GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean.json)

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
| 1 | `theorem` | [Algebra.traceForm_toMatrix_powerBasis](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-traceform-tomatrix-powerbasis--ef30ac999a671de28285e822.md) | 75 | `result-track:ef30ac999a671de28285e822f4c45762c3a920bbef43c2491a685d21339cdebe` |
| 2 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--e915c9f176b71ae582004183.md) | 87 | `result-track:e915c9f176b71ae582004183584d4fc872a52402ab196a31c2ce95ce1a9ea22a` |
| 3 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/powerbasis-trace-gen-eq-sum-roots--2757209b41be937455179c5c.md) | 97 | `result-track:2757209b41be937455179c5cb72181eef97041c14f7acd969a17467a5ecc577d` |
| 4 | `theorem` | [trace_gen_eq_zero](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-gen-eq-zero--8a8a74287df3e8dd100847c7.md) | 109 | `result-track:8a8a74287df3e8dd100847c7fc8d142207035785c5bf77df0ea0fd18d86ee25b` |
| 5 | `theorem` | [trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-gen-eq-sum-roots--24757f987be13f90323d89e6.md) | 118 | `result-track:24757f987be13f90323d89e6eb03233135507e56fe6802e29f14477518807bec` |
| 6 | `theorem` | [trace_eq_trace_adjoin](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-trace-adjoin--1c125c8abd49990225c8dc17.md) | 135 | `result-track:1c125c8abd49990225c8dc17acaac89744fc1941b9b6a8689b472120ea4a291c` |
| 7 | `theorem` | [trace_adjoinSimpleGen](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-adjoinsimplegen--186c4f54f1e08bb1c36eb182.md) | 144 | `result-track:186c4f54f1e08bb1c36eb1829c6fc580b119840182b6da4a54d074853c6e20f3` |
| 8 | `theorem` | [trace_eq_finrank_mul_minpoly_nextCoeff](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-finrank-mul-minpoly-nextcoeff--b990a6f84a0dfa15264f8be8.md) | 148 | `result-track:b990a6f84a0dfa15264f8be8aa0f2b010105d3091534054abbc0f57cb2983070` |
| 9 | `theorem` | [trace_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-sum-roots--89311e973fabab35eab6d35f.md) | 154 | `result-track:89311e973fabab35eab6d35f15bf187945e134c3b01fee6690af4c7ee617530d` |
| 10 | `theorem` | [Algebra.isIntegral_trace](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-isintegral-trace--10ced5e5ff9047c2ed8bb3c8.md) | 170 | `result-track:10ced5e5ff9047c2ed8bb3c89e925fac738fa56fe0bfe220bdf06d321d5f316e` |
| 11 | `lemma` | [Algebra.trace_eq_of_algEquiv](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-eq-of-algequiv--5cd0756226479f4f603517ba.md) | 182 | `result-track:5cd0756226479f4f603517badea3c1905474facb124f0b7f5f9aecf676ab4b73` |
| 12 | `lemma` | [Algebra.trace_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-eq-of-ringequiv--e73a1de76f77905d41c41ffb.md) | 189 | `result-track:e73a1de76f77905d41c41ffbc1c4ab4bc6df19d1363f7632e29035031d6b0c74` |
| 13 | `lemma` | [Algebra.trace_eq_of_equiv_equiv](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-eq-of-equiv-equiv--193406ac18d71a172cccfecd.md) | 208 | `result-track:193406ac18d71a172cccfecd52d904db4738de5530178a66a35620130d4d7b13` |
| 14 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-sum-embeddings-gen--bc1a96aa897ced063fb5e401.md) | 226 | `result-track:bc1a96aa897ced063fb5e401abc0a00ba023c5ae4bc5dbde75a72e3afdc94477` |
| 15 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/sum-embeddings-eq-finrank-mul--aea7781149182110bdfaf019.md) | 243 | `result-track:aea7781149182110bdfaf019ecb985d725b1fac3095409e5ba4b0ecf88fb4ef9` |
| 16 | `theorem` | [trace_eq_sum_embeddings](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-sum-embeddings--40f69ed64fad7a5dec8064c9.md) | 260 | `result-track:40f69ed64fad7a5dec8064c9aad2dcfd81af10c897c93f66f356831bfc40ff1f` |
| 17 | `theorem` | [trace_eq_sum_automorphisms](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/trace-eq-sum-automorphisms--857de346ff535677d78fed61.md) | 271 | `result-track:857de346ff535677d78fed611a30410cb7046fd65287467dad6c31f430f6ace8` |
| 18 | `lemma` | [Algebra.trace_eq_zero_of_not_isSeparable](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-eq-zero-of-not-isseparable--868e1496066e485e944759ee.md) | 286 | `result-track:868e1496066e485e944759ee8a1eb6e0ab84d4b80f7daaae28cd86b8e4f55597` |
| 19 | `def` | [traceMatrix](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix--5a78af24e6991d6a04180459.md) | 349 | `declaration-track:5a78af24e6991d6a041804590509e4124ae2f4497979118bfedd5154e17544b3` |
| 20 | `theorem` | [traceMatrix_apply](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-apply--dd8afa9ef1a21c3f5d5a0234.md) | 354 | `result-track:dd8afa9ef1a21c3f5d5a02346f4435b774c173f17e9d3283263d09ed7dfb5ad2` |
| 21 | `theorem` | [traceMatrix_reindex](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-reindex--19ac43139f12af408ee9e257.md) | 357 | `result-track:19ac43139f12af408ee9e2579db717e580299f367d4579304febd436badc2087` |
| 22 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-of-matrix-vecmul--1b378585d4544f321981dffc.md) | 362 | `result-track:1b378585d4544f321981dffcd6c754c81beef59dfc4a16d1d2a5a6fd77296870` |
| 23 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-of-matrix-mulvec--378287ffc94a5b4e8798ba99.md) | 382 | `result-track:378287ffc94a5b4e8798ba9929c5dd7a59168d16b28c235d51c90b0a7fac435a` |
| 24 | `theorem` | [traceMatrix_of_basis](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-of-basis--6150576d69b8b3dce0daead0.md) | 388 | `result-track:6150576d69b8b3dce0daead0b5bd9eb432e2af22a54ad0982b2a42ee3e3cd0b2` |
| 25 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-of-basis-mulvec--ea79955a998058fac184c530.md) | 393 | `result-track:ea79955a998058fac184c530474205aef395aafbe3a3e5b4bca6a1e2147cb7df` |
| 26 | `def` | [embeddingsMatrix](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/embeddingsmatrix--3f5a216db2a84ee4f552556a.md) | 420 | `declaration-track:3f5a216db2a84ee4f552556ab7ea68aebb293b480441f2f862d17f901718128f` |
| 27 | `theorem` | [embeddingsMatrix_apply](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/embeddingsmatrix-apply--9fcaadb33643981e6d320aeb.md) | 425 | `result-track:9fcaadb33643981e6d320aeb97390bd4d980c9909fd04653784a420d4ddc6997` |
| 28 | `def` | [embeddingsMatrixReindex](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/embeddingsmatrixreindex--e10ceeddff5bd95cd1676bff.md) | 434 | `declaration-track:e10ceeddff5bd95cd1676bff8592b7a93ad1a33e1bf8e2cb94eb2edaee09bef7` |
| 29 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--2d75f50121cf71843b73fb40.md) | 439 | `result-track:2d75f50121cf71843b73fb40a6a1455b2c8650ffc0627544e336efd36a69f1db` |
| 30 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--833f2870de54c7ea1dcbbac2.md) | 452 | `result-track:833f2870de54c7ea1dcbbac21f5f374578228ac459d4e40f2277a98028d80813` |
| 31 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--b1a6067dab6b8a6c193bb54d.md) | 456 | `result-track:b1a6067dab6b8a6c193bb54d98faee01f124ca8598c446f77348e056be36052c` |
| 32 | `theorem` | [det_traceMatrix_ne_zero'](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/det-tracematrix-ne-zero--0966fb9dbdf570e84b3700f6.md) | 470 | `result-track:0966fb9dbdf570e84b3700f6f6afd766d45b71cdc3d50ca78519f59fe0327da0` |
| 33 | `theorem` | [det_traceForm_ne_zero](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/det-traceform-ne-zero--1f3a9c767a2acce1a3b4519d.md) | 485 | `result-track:1f3a9c767a2acce1a3b4519d001f02063c2f9fed37847d4630acfc74a12c0e42` |
| 34 | `theorem` | [traceForm_nondegenerate](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/traceform-nondegenerate--14881c6dd057bcbf99cfcaec.md) | 512 | `result-track:14881c6dd057bcbf99cfcaec21b7e0e391dfda4129119f8e9c092236afd52167` |
| 35 | `theorem` | [traceForm_nondegenerate_tfae](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/traceform-nondegenerate-tfae--9deea23b76159d7db0dc159e.md) | 518 | `result-track:9deea23b76159d7db0dc159e663b6f845b7bd544b48c6a583f027148c891510c` |
| 36 | `theorem` | [Algebra.trace_ne_zero](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-ne-zero--7c2ee7127f815a9d47dcbcc3.md) | 525 | `result-track:7c2ee7127f815a9d47dcbcc3722bf0dc4c15d0b1e94c8f58e1f436b4ce932fff` |
| 37 | `theorem` | [Algebra.trace_surjective](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/algebra-trace-surjective--08244f9d6d146cd634473b49.md) | 529 | `result-track:08244f9d6d146cd634473b49b6946acaf757064095d9dd27d99377c41f2930a9` |
| 38 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/isnilpotent-trace-of-isnilpotent--7f0431b0ef63e2dbad2c01ea.md) | 543 | `result-track:7f0431b0ef63e2dbad2c01ea44d066ff4fbc4ae7e51db3308da3d9dc893bbef3` |
| 39 | `def` | [Module.Basis.traceDual](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual--b2283dd257b5887ef06cff42.md) | 561 | `declaration-track:b2283dd257b5887ef06cff425552ea8e0840640935122d9669cfb93886c194d5` |
| 40 | `theorem` | [Module.Basis.traceDual_def](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-def--ff5cd669ae79dfdc4fc7ef66.md) | 565 | `result-track:ff5cd669ae79dfdc4fc7ef667bfebd05f69bc075d0f2a1594ea227996466e775` |
| 41 | `theorem` | [Module.Basis.traceDual_repr_apply](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-repr-apply--4031c738c88c1febcb2b78b2.md) | 569 | `result-track:4031c738c88c1febcb2b78b274e901731093679b26dc0d7b4a2a8341cda37b90` |
| 42 | `theorem` | [Module.Basis.trace_traceDual_mul](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-trace-tracedual-mul--42e99fb35fcb5090dc0f48f7.md) | 574 | `result-track:42e99fb35fcb5090dc0f48f74de5479c777cac0a47c666addb11455a873a11ad` |
| 43 | `theorem` | [Module.Basis.trace_mul_traceDual](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-trace-mul-tracedual--efc559d7e8b8f5d58f87162b.md) | 579 | `result-track:efc559d7e8b8f5d58f87162b0270aa3f4d341902ba4100114c96a262d218e293` |
| 44 | `theorem` | [Module.Basis.traceDual_traceDual](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-tracedual--c61b5e240c51d5c95b97e91a.md) | 584 | `result-track:c61b5e240c51d5c95b97e91a13c00257db28adf226300154d2350537a99d6bbe` |
| 45 | `theorem` | [Module.Basis.traceDual_involutive](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-involutive--0cc4d7a1cf1744d9ac862b6a.md) | 590 | `result-track:0cc4d7a1cf1744d9ac862b6a765b34ec3074d272933ede542bec2df21e46d9b6` |
| 46 | `theorem` | [Module.Basis.traceDual_injective](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-injective--12c92ef76747a9e2cc36f923.md) | 594 | `result-track:12c92ef76747a9e2cc36f92397cf000d64777f251e0e9192e27fce64fe7b5dee` |
| 47 | `theorem` | [Module.Basis.traceDual_inj](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-inj--df32569cdbbc82c5b0ec318e.md) | 601 | `result-track:df32569cdbbc82c5b0ec318e613c7da305344d5b6487df7809edfed9188ef5c1` |
| 48 | `theorem` | [Module.Basis.traceDual_eq_iff](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-eq-iff--5ddc3512a147a104de2e9daf.md) | 610 | `result-track:5ddc3512a147a104de2e9dafeadf5bc6499d29c44418742d1173d53f33236fad` |
| 49 | `lemma` | [Module.Basis.traceDual_powerBasis_eq](../../../../mathematics/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/declarations/module-basis-tracedual-powerbasis-eq--a9484f1885761d975093df12.md) | 618 | `result-track:a9484f1885761d975093df12a7ae07c7c712bf81ac8ef417b4163af9df084812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
