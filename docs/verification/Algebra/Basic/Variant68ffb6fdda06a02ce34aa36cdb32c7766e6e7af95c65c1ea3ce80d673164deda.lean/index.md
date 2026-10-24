# Verification target: GRWTSK.Algebra.Basic.Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20176e2845712dce4896a19f08927dda14b9b47f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20176e2845712dce4896a19f08927dda14b9b47f`.

Source path: `GRWTSK/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.MinpolyDiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.traceForm_toMatrix_powerBasis](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-traceform-tomatrix-powerbasis--321f8ece44c07169baf08726.md) | 60 | `result-track:321f8ece44c07169baf087268dfa0f5f832006e5bfe4316a0ac97d8f7a78fff0` |
| 2 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--56ab76c66eb7bd3f37dcfcb6.md) | 72 | `result-track:56ab76c66eb7bd3f37dcfcb6b9e5a398272c0181d4b74098329c64c24ef1951c` |
| 3 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/powerbasis-trace-gen-eq-sum-roots--e62b76cc63e7724d1230976d.md) | 82 | `result-track:e62b76cc63e7724d1230976d765c492711b1c4c8603767efc9650f5a04e2ed76` |
| 4 | `theorem` | [trace_gen_eq_zero](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-gen-eq-zero--ad022467738633018bd8973c.md) | 95 | `result-track:ad022467738633018bd8973ce7f2f5829644ca5246bf5e732d17a3157e148705` |
| 5 | `theorem` | [trace_gen_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-gen-eq-sum-roots--f01429c258577e377691c6cc.md) | 104 | `result-track:f01429c258577e377691c6cc409f9f22ca5e06617a4af5d3ec99844957e678b6` |
| 6 | `theorem` | [trace_eq_trace_adjoin](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-trace-adjoin--57a997eb18310ec644363d42.md) | 121 | `result-track:57a997eb18310ec644363d42ce331db33ed205a67cd8aaf7328ffd52921c0f40` |
| 7 | `theorem` | [trace_adjoinSimpleGen](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-adjoinsimplegen--b6a7d774fea0e27c35b89d4c.md) | 130 | `result-track:b6a7d774fea0e27c35b89d4c64e4320b76fc97d19d916297e93dfc9bf99715e2` |
| 8 | `theorem` | [trace_eq_finrank_mul_minpoly_nextCoeff](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-finrank-mul-minpoly-nextcoeff--7d9096aaa5d3e9a4e0a98c85.md) | 134 | `result-track:7d9096aaa5d3e9a4e0a98c85e13bd87bb1d59ae21aad0f9d2711ca7aa4f190e3` |
| 9 | `theorem` | [trace_eq_sum_roots](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-sum-roots--9b6d1ba560c346efa8f16181.md) | 140 | `result-track:9b6d1ba560c346efa8f16181f947fadac9e7a57431a702bd507e87748265c898` |
| 10 | `theorem` | [Algebra.isIntegral_trace](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-isintegral-trace--6400fe1291c7fb78a19deefd.md) | 156 | `result-track:6400fe1291c7fb78a19deefd0f8df9c194bdf14b6f9a9111cf32b6080ef11a7a` |
| 11 | `lemma` | [Algebra.trace_eq_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-trace-eq-of-algequiv--49b3b1d08740bec3e4b764ed.md) | 168 | `result-track:49b3b1d08740bec3e4b764edb28dc8af249d9ec92259f50dbeb765a3c5560e6b` |
| 12 | `lemma` | [Algebra.trace_eq_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-trace-eq-of-ringequiv--e2cec9be16c79ccd5f14f4ae.md) | 174 | `result-track:e2cec9be16c79ccd5f14f4aed70677102d4310ab0fcd1664210d23fd6315651a` |
| 13 | `lemma` | [Algebra.trace_eq_of_equiv_equiv](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-trace-eq-of-equiv-equiv--387f2089d9dbb8e952e300e0.md) | 194 | `result-track:387f2089d9dbb8e952e300e0066541c874d0c8040372b96084e6807acd1f15ab` |
| 14 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-sum-embeddings-gen--cc910dc2b5b54ca5ec7241d4.md) | 212 | `result-track:cc910dc2b5b54ca5ec7241d4bad1ca7c76ae654fac0c90002b67a02030cfd803` |
| 15 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/sum-embeddings-eq-finrank-mul--fbb07122238f56a3035b2a56.md) | 231 | `result-track:fbb07122238f56a3035b2a5602398574bacbe2cecabbb0975f21f03fb2d0e9f2` |
| 16 | `theorem` | [trace_eq_sum_embeddings](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-sum-embeddings--8c15beee8ac5bc0dbc0d3693.md) | 253 | `result-track:8c15beee8ac5bc0dbc0d369307e5d84f26546166c93d8ca5a1eb3ca2fbf05a40` |
| 17 | `theorem` | [trace_eq_sum_automorphisms](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-eq-sum-automorphisms--c254ef0d8bf58b7eb7df687c.md) | 264 | `result-track:c254ef0d8bf58b7eb7df687c93c482115f94f70ed946a28070b663e39850a160` |
| 18 | `def` | [traceMatrix](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix--80936491570c37a66c708294.md) | 288 | `declaration-track:80936491570c37a66c70829445aa2bab49811c3b09497f6a5c13be17da50bcb1` |
| 19 | `theorem` | [traceMatrix_apply](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-apply--ba3cc210493d28f27c340411.md) | 293 | `result-track:ba3cc210493d28f27c340411956c5d15c9c6280c6b77c21e997e97267d48c70b` |
| 20 | `theorem` | [traceMatrix_reindex](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-reindex--14974247c22b8c1e818918a5.md) | 296 | `result-track:14974247c22b8c1e818918a5493b11731e3f8eb10b3f8ec57aff7be5a5457854` |
| 21 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-of-matrix-vecmul--2eb5549d3d3f913a59825a49.md) | 301 | `result-track:2eb5549d3d3f913a59825a494a88b8d0ed68cc3fa06187952cb9894d9faee370` |
| 22 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-of-matrix-mulvec--ff70ff3421c6f3570a939b48.md) | 321 | `result-track:ff70ff3421c6f3570a939b48b62fdb53624c630bb115af07753a8394d51c0628` |
| 23 | `theorem` | [traceMatrix_of_basis](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-of-basis--810e5b764e236333f680d43f.md) | 327 | `result-track:810e5b764e236333f680d43fdadcf21605901dbe024091cf00203022a0290050` |
| 24 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-of-basis-mulvec--263a4c8567b7aab4940a70d3.md) | 332 | `result-track:263a4c8567b7aab4940a70d3a424eb5ae765d0ab790b3e8bd88c215f7002c6ee` |
| 25 | `def` | [embeddingsMatrix](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/embeddingsmatrix--e2ff41f8ff09fbbaf2652a91.md) | 359 | `declaration-track:e2ff41f8ff09fbbaf2652a9179e69b5fda68c73471a28e4337f64c377e9ce9cb` |
| 26 | `theorem` | [embeddingsMatrix_apply](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/embeddingsmatrix-apply--52fcee6e8f449ebcfbdb28f3.md) | 364 | `result-track:52fcee6e8f449ebcfbdb28f3200ca021470e13de1cc551341cb8a2c48ac45350` |
| 27 | `def` | [embeddingsMatrixReindex](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/embeddingsmatrixreindex--cad3744dc0213b4b06c1a216.md) | 373 | `declaration-track:cad3744dc0213b4b06c1a216533dba74811b7044af89d696e015650443bf6551` |
| 28 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--df0936e7b464b34d8ae92e24.md) | 378 | `result-track:df0936e7b464b34d8ae92e24cfe13ee0a698cd3a8cd866995b80d74d397bc440` |
| 29 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--2bf3aa98fd3924a7e60b5c14.md) | 391 | `result-track:2bf3aa98fd3924a7e60b5c14c802c0675b070fa960d4e3340331a6694ca1c6d5` |
| 30 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--372450cfd1b785b18ed81859.md) | 395 | `result-track:372450cfd1b785b18ed81859f4831203bb241a56ccac8b80a1e99247ad446691` |
| 31 | `theorem` | [det_traceMatrix_ne_zero'](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/det-tracematrix-ne-zero--0a3b94952371ff8a487d6e04.md) | 409 | `result-track:0a3b94952371ff8a487d6e047adf4bdc0e8e26c9a7cfa169f71bfc70f08c8abc` |
| 32 | `theorem` | [det_traceForm_ne_zero](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/det-traceform-ne-zero--784a24922273e486bd45fa60.md) | 424 | `result-track:784a24922273e486bd45fa60f07d0a747ffceb299426ad719e56d0a95f8f64c3` |
| 33 | `theorem` | [traceForm_nondegenerate](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/traceform-nondegenerate--bf1365d01b1475896a701677.md) | 450 | `result-track:bf1365d01b1475896a701677e9653f45329974e28efb33eb0e117788c243fe80` |
| 34 | `theorem` | [Algebra.trace_ne_zero](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-trace-ne-zero--f65b2c87c3f18bf9c12881f6.md) | 455 | `result-track:f65b2c87c3f18bf9c12881f688d3595e593a6ceba96e9ff0edaa44d57f7978ff` |
| 35 | `theorem` | [Algebra.trace_surjective](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/algebra-trace-surjective--c2691e326afdf70e5d17e6d4.md) | 464 | `result-track:c2691e326afdf70e5d17e6d4a24c142b2209a4451532a17efd0907b4f07ad920` |
| 36 | `lemma` | [traceForm_dualBasis_powerBasis_eq](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/traceform-dualbasis-powerbasis-eq--f7f76cb2214cf9ce58bc2b30.md) | 477 | `result-track:f7f76cb2214cf9ce58bc2b30564ffa28c66bba98dc32822cffd8867c22adb4cb` |
| 37 | `lemma` | [trace_isNilpotent_of_isNilpotent](../../../../mathematics/Algebra/Basic/Variant68ffb6fdda06a02ce34aa36cdb32c7766e6e7af95c65c1ea3ce80d673164deda.lean/declarations/trace-isnilpotent-of-isnilpotent--66ce3c4961ff69e44e746a20.md) | 507 | `result-track:66ce3c4961ff69e44e746a20ab214121bb96e573697ee6bcb829b49efd5d9cb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
