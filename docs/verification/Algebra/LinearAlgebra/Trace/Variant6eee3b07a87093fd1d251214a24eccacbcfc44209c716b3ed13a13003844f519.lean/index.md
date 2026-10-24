# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e3d211175e9b586f92a694232d81f758880f0a2",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e3d211175e9b586f92a694232d81f758880f0a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace--d3e6f9fe8dee35a93a591103.md) | 100 | `declaration-track:d3e6f9fe8dee35a93a59110336c645d45a04ad70aad620ad9349e4ae8402d5dc` |
| 2 | `theorem` | [trace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-apply--c44512e1717be5acae9aa482.md) | 108 | `result-track:c44512e1717be5acae9aa48201314e6c84d340986071a17825011d0c581e63f5` |
| 3 | `theorem` | [trace_eq_zero_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-zero-of-not-exists-basis--689033aad5d10a8b5a16dcd3.md) | 112 | `result-track:689033aad5d10a8b5a16dcd3d64c70fa7c8d018ea665e64af2789b30b933ad6b` |
| 4 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-matrix-trace--b4b04a6b8e4d9dd7d6928bd3.md) | 119 | `result-track:b4b04a6b8e4d9dd7d6928bd3821635aa1d72ef6d9463c2139f68c6aadf6cc2fd` |
| 5 | `theorem` | [trace_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-algebramap-of-basis--1896908b84bc9d98e6f26b2f.md) | 125 | `result-track:1896908b84bc9d98e6f26b2fcb9b3e792f1fef92d658be43d608ce9ce7740d70` |
| 6 | `theorem` | [trace_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-algebramap--5a6a6373ea9a780b21c01d58.md) | 139 | `result-track:5a6a6373ea9a780b21c01d58be49955695289dca15473b7438b8dd2b6f65482c` |
| 7 | `theorem` | [trace_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-trace-of-basis--0a2a4474f6c7371e30b3a68a.md) | 145 | `result-track:0a2a4474f6c7371e30b3a68aff775edbc991c7999d669cea8dfcdf72e38c5b6c` |
| 8 | `theorem` | [trace_comp_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-comp-trace-of-basis--e170b42a5e20c0d61c2664a7.md) | 163 | `result-track:e170b42a5e20c0d61c2664a7d0cd7282c4cd2ac2853443aebeae981af634b7cc` |
| 9 | `theorem` | [trace_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-trace--3c31eed321bb7e27d711d7e0.md) | 171 | `result-track:3c31eed321bb7e27d711d7e0b954cdc3b807d78a6b1ddfdbc25101ded1077470` |
| 10 | `theorem` | [trace_comp_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-comp-trace--dd1ca6f021715b6bb98308ea.md) | 177 | `result-track:dd1ca6f021715b6bb98308ea94ef2fecf2c88bbcd5944f19005ef8f0551b8809` |
| 11 | `theorem` | [trace_prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-prod-apply--b4489f9d569b905db74da3aa.md) | 183 | `result-track:b4489f9d569b905db74da3aa51c0f22764642a2258f60229a99f9022c797f16c` |
| 12 | `theorem` | [trace_prod](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-prod--685e2c0e8c250ff602c435c1.md) | 193 | `result-track:685e2c0e8c250ff602c435c1c1394039e5beabd80bf33267de795a302fa170a4` |
| 13 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform--3fb5e5186635dad5bd4fa138.md) | 204 | `declaration-track:3fb5e5186635dad5bd4fa1384c468404ae997c81c8e215437861a700ef2fa519` |
| 14 | `theorem` | [traceForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform-apply--a758e9ba9a169524464a2c91.md) | 213 | `result-track:a758e9ba9a169524464a2c9137d6b64d0d87238d52025724391d5a5f5af159e6` |
| 15 | `theorem` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform-issymm--35017d8cb396efbe1c2b5ea3.md) | 217 | `result-track:35017d8cb396efbe1c2b5ea399ad60851f0ac32e6d7de4bbaee662529e0c41a2` |
| 16 | `theorem` | [traceForm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform-tomatrix--cc1a969fe247ac30447bf1a0.md) | 220 | `result-track:cc1a969fe247ac30447bf1a097d94beb90e15a4a44d31ff3feb3fcf988a4bcd0` |
| 17 | `theorem` | [traceForm_toMatrix_powerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform-tomatrix-powerbasis--da1beb30937f514c708883d8.md) | 225 | `result-track:da1beb30937f514c708883d8e1cf5df58f2d2edd99cd3b80ebc9f8fe79b243aa` |
| 18 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--1e5577c1e16a605c88757539.md) | 243 | `result-track:1e5577c1e16a605c88757539d3bb9d440cff0f0c0125d3d22baf2444c8696820` |
| 19 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/powerbasis-trace-gen-eq-sum-roots--46900a4b4d7cfdea42cc2cc2.md) | 254 | `result-track:46900a4b4d7cfdea42cc2cc233adc94f4fa05c79cbdc4a5527382c7105b137d0` |
| 20 | `theorem` | [trace_gen_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-gen-eq-zero--faecd707a982709dcb4efa0d.md) | 268 | `result-track:faecd707a982709dcb4efa0dfa77e8aabc0bfa2f3282cb7554a4bc45209db4ed` |
| 21 | `theorem` | [trace_gen_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-gen-eq-sum-roots--c9b30d09c2c1dcac0f0659fb.md) | 278 | `result-track:c9b30d09c2c1dcac0f0659fb0c5978ae0c973d7015868ee0f8a852162ea33a81` |
| 22 | `theorem` | [trace_eq_trace_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-trace-adjoin--ae336a6d5389c1e56f362b1a.md) | 299 | `result-track:ae336a6d5389c1e56f362b1a45688c5f6d8b0d56f0f2ee84bc20cf79f24ae660` |
| 23 | `theorem` | [trace_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-sum-roots--894c18fcf55a1f112893511a.md) | 311 | `result-track:894c18fcf55a1f112893511aa7d62387809e9a35540ecdd16018aa5f3e7e7110` |
| 24 | `theorem` | [Algebra.isIntegral_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/algebra-isintegral-trace--3c620b40df223b5518c312d4.md) | 331 | `result-track:3c620b40df223b5518c312d454e8145087179f042a764becacdb15c8648b5853` |
| 25 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-sum-embeddings-gen--5ca7e80624598dcd04a5627d.md) | 352 | `result-track:5ca7e80624598dcd04a5627d1b9e0a1ebb293a757ebfaf1dc151af3d4888a2ae` |
| 26 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/sum-embeddings-eq-finrank-mul--dfb928e0f646475ae841d13e.md) | 372 | `result-track:dfb928e0f646475ae841d13e5b60beb764c70c012584bdb7088921cfca02a7ee` |
| 27 | `theorem` | [trace_eq_sum_embeddings](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-sum-embeddings--f1016215fd6988f8e354b177.md) | 395 | `result-track:f1016215fd6988f8e354b177000856fca9345c4e71771b01aa61d647f792c66d` |
| 28 | `theorem` | [trace_eq_sum_automorphisms](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/trace-eq-sum-automorphisms--cd1c7896848049419bbb1f5f.md) | 410 | `result-track:cd1c7896848049419bbb1f5f5f5bd167ac7c3e37de8a76ad25b3164a92276014` |
| 29 | `def` | [traceMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix--34967b9d2cdcc1201e34ee21.md) | 438 | `declaration-track:34967b9d2cdcc1201e34ee2181e2116769bf4593a63c981d87234f138161d2e0` |
| 30 | `theorem` | [traceMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-apply--2844efe296d5e43c0631ef2b.md) | 444 | `result-track:2844efe296d5e43c0631ef2b20f605444926c186eb777dd6a4f1875a32cb75ef` |
| 31 | `theorem` | [traceMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-reindex--f043b7fa95027437c63e615e.md) | 448 | `result-track:f043b7fa95027437c63e615e2a1dbe8d5de23c7ddf8d4398712d055da950195f` |
| 32 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-of-matrix-vecmul--569466637259bbdc3bc09995.md) | 454 | `result-track:569466637259bbdc3bc09995b3bc1d299cd75d11a00093cd8ebca6066cf29267` |
| 33 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-of-matrix-mulvec--6828639f6864285485426f42.md) | 475 | `result-track:6828639f6864285485426f42101fbd2aef204b2e73015ffd3fd47cb3d9c49ba7` |
| 34 | `theorem` | [traceMatrix_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-of-basis--da4ef1b2261c3ab63ac0eb5a.md) | 483 | `result-track:da4ef1b2261c3ab63ac0eb5a0e27a5a4baa1035d6113292b13a6ce59aedc3342` |
| 35 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-of-basis-mulvec--48160d021ff7f822ed96b68b.md) | 489 | `result-track:48160d021ff7f822ed96b68b66c98c339a1e869e3cc513a302b833401f669cbd` |
| 36 | `def` | [embeddingsMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/embeddingsmatrix--fa90163355c8b55a33cecbf2.md) | 517 | `declaration-track:fa90163355c8b55a33cecbf2cc621bd28665fda9f27fd203cba23ee904519cf0` |
| 37 | `theorem` | [embeddingsMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/embeddingsmatrix-apply--bde283dbbc4e55e84fdd1868.md) | 523 | `result-track:bde283dbbc4e55e84fdd1868ab3caf474553460ac216134a64de061c997d4670` |
| 38 | `def` | [embeddingsMatrixReindex](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/embeddingsmatrixreindex--9ce884a5f5215f886a8ce377.md) | 533 | `declaration-track:9ce884a5f5215f886a8ce3772f7d6a1751a2b1311295c09895e69c0a5dada200` |
| 39 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--ee9cd55b4a9f7ab786218fe7.md) | 539 | `result-track:ee9cd55b4a9f7ab786218fe79895ce042a7dedc4d75bfc48ebf0e1df5515e59a` |
| 40 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--5735225df9376f2a2e04c9f7.md) | 556 | `result-track:5735225df9376f2a2e04c9f734f2649d5784ea39cc3af598ea544dd294d06b05` |
| 41 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--777026a1c17a3d8f94e47e9e.md) | 561 | `result-track:777026a1c17a3d8f94e47e9eeb3327e86f12f2f3aefc1804ce85515316f01349` |
| 42 | `theorem` | [det_traceMatrix_ne_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/det-tracematrix-ne-zero--2eb5bfc30efc2eed5f6c5d94.md) | 576 | `result-track:2eb5bfc30efc2eed5f6c5d94bf9badb119f5246d115a800bec43cd4d7af489a1` |
| 43 | `theorem` | [det_traceForm_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/det-traceform-ne-zero--2ecac77ddf6b187f9d4d53d8.md) | 594 | `result-track:2ecac77ddf6b187f9d4d53d8ff4b4400923f17e0cedf050fab8535343144f789` |
| 44 | `theorem` | [traceForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant6eee3b07a87093fd1d251214a24eccacbcfc44209c716b3ed13a13003844f519.lean/declarations/traceform-nondegenerate--5125ec491826a25a279cc01e.md) | 618 | `result-track:5125ec491826a25a279cc01e889b73a6638b11e3d9b626050f09f87797e74857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
