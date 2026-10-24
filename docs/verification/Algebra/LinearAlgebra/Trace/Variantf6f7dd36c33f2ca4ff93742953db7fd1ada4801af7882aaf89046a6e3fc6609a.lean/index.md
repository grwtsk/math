# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace--02f87aa793f0e9c30c32cd09.md) | 92 | `declaration-track:02f87aa793f0e9c30c32cd0987fe0b33b5f4b660fbe52c8a66515bbcd7551a3d` |
| 2 | `theorem` | [trace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-apply--e9fade0727827e06220c2518.md) | 100 | `result-track:e9fade0727827e06220c251853c8d78eb5a99c6d0d4dd765171faab7af6cf79d` |
| 3 | `theorem` | [trace_eq_zero_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-zero-of-not-exists-basis--fcee0568b731eedef9ff2422.md) | 104 | `result-track:fcee0568b731eedef9ff242234a6c01e512606a870450b87cef3dce75cd451a8` |
| 4 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-matrix-trace--d7b5beabf3199fdfea313e73.md) | 111 | `result-track:d7b5beabf3199fdfea313e739e656d81a7564ddbf3028d6ebcf699dd185271d4` |
| 5 | `theorem` | [trace_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-algebramap-of-basis--39d794b608c0f80efe8d0b40.md) | 117 | `result-track:39d794b608c0f80efe8d0b404b42c1e217439d8e835b4f0a2c8121a0dc205991` |
| 6 | `theorem` | [trace_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-algebramap--fb931c02ddefe96b792d0270.md) | 131 | `result-track:fb931c02ddefe96b792d0270c0e39ae8c412959cb818c5c12b146a0c78b40c36` |
| 7 | `theorem` | [trace_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-trace-of-basis--0d7c89f73a319921da7c8c84.md) | 137 | `result-track:0d7c89f73a319921da7c8c8465e50c6aae98ef2a52f90bbd10306f18a8bd9c4f` |
| 8 | `theorem` | [trace_comp_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-comp-trace-of-basis--42801975a3636e25818edd88.md) | 155 | `result-track:42801975a3636e25818edd8869f7dc373e76991423595353f33fa25fe3e8264c` |
| 9 | `theorem` | [trace_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-trace--0265ccd358e423a09caec804.md) | 163 | `result-track:0265ccd358e423a09caec804021cff510cb736f7a46e1671959429b3e9aed8e1` |
| 10 | `theorem` | [trace_comp_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-comp-trace--bd405c9b697a0800fc58c71a.md) | 169 | `result-track:bd405c9b697a0800fc58c71a0bd1dea7b61efbce10a828ad13675af1e2ed1dca` |
| 11 | `theorem` | [trace_prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-prod-apply--56b2600ece109039e2d3ff41.md) | 175 | `result-track:56b2600ece109039e2d3ff410fe61bbacc426bce165bddbb95cf2bede9c8fc5c` |
| 12 | `theorem` | [trace_prod](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-prod--07dae65413473748f408e94b.md) | 185 | `result-track:07dae65413473748f408e94bf40be8dc11f5845648bccb75f0092b2d076a0015` |
| 13 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform--61b5b80cdbdf62fc3c89489c.md) | 196 | `declaration-track:61b5b80cdbdf62fc3c89489c81298a95b6cd86c80859323325c448ca69894301` |
| 14 | `theorem` | [traceForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform-apply--363a22dea77cfd18031dddf3.md) | 205 | `result-track:363a22dea77cfd18031dddf363d6b96fec92df7930e161b1d586e6d29f9abae8` |
| 15 | `theorem` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform-issymm--8d0e8bfbce75bdbd07daee55.md) | 209 | `result-track:8d0e8bfbce75bdbd07daee55ba34cec51c4466a8ac932ec0d31b3944b19a3ba6` |
| 16 | `theorem` | [traceForm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform-tomatrix--6a66c900b4e2710a59660443.md) | 212 | `result-track:6a66c900b4e2710a59660443834a91c71ab37778785fe13831ba1d7090883a79` |
| 17 | `theorem` | [traceForm_toMatrix_powerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform-tomatrix-powerbasis--31559da34cdcede332f58830.md) | 217 | `result-track:31559da34cdcede332f588304d13945920434554b58e1712e5af3dfad8ef59d5` |
| 18 | `theorem` | [PowerBasis.trace_gen_eq_nextCoeff_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/powerbasis-trace-gen-eq-nextcoeff-minpoly--c7f0df01080fd6321dbf3c67.md) | 235 | `result-track:c7f0df01080fd6321dbf3c67de0fde90b1765fca1044c4752c29313e4a9bedda` |
| 19 | `theorem` | [PowerBasis.trace_gen_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/powerbasis-trace-gen-eq-sum-roots--29e1cc50402a6caabb14c97d.md) | 246 | `result-track:29e1cc50402a6caabb14c97d0b72ff4451771b0e5671a4e6cdb32675d84a7911` |
| 20 | `theorem` | [trace_gen_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-gen-eq-zero--e8e7b5b967eac821948e7598.md) | 260 | `result-track:e8e7b5b967eac821948e7598f658ef44976e6f7a41b76c0bfec8048de3b1ef40` |
| 21 | `theorem` | [trace_gen_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-gen-eq-sum-roots--c436016604f735257e9ce1de.md) | 270 | `result-track:c436016604f735257e9ce1de2bfe17859acf3ccc7129676e28f64f3c6daeef97` |
| 22 | `theorem` | [trace_eq_trace_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-trace-adjoin--9b5a4fffae7fed390d09f2aa.md) | 291 | `result-track:9b5a4fffae7fed390d09f2aa5e7a246abc7877cb8c2c41e35eee23679e0731ef` |
| 23 | `theorem` | [trace_eq_sum_roots](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-sum-roots--cd7f1211e0360e1fe0b5317d.md) | 303 | `result-track:cd7f1211e0360e1fe0b5317db9bcb33bcd5edcd5ba2eba4243c40909d4a7a231` |
| 24 | `theorem` | [Algebra.isIntegral_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/algebra-isintegral-trace--0eb39aa2fecc7da4c794fc2d.md) | 323 | `result-track:0eb39aa2fecc7da4c794fc2d34d2682397b0a8e57f74c9b30eaca572edca8b6f` |
| 25 | `theorem` | [trace_eq_sum_embeddings_gen](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-sum-embeddings-gen--106f061907b2e833f6e718cf.md) | 344 | `result-track:106f061907b2e833f6e718cfab715722fcd4cf70bfc16a0c273550bd88a84945` |
| 26 | `theorem` | [sum_embeddings_eq_finrank_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/sum-embeddings-eq-finrank-mul--f840c75d859ce18cedcb6891.md) | 364 | `result-track:f840c75d859ce18cedcb6891bda40cda724f03c8d425072372eec6289e586f3e` |
| 27 | `theorem` | [trace_eq_sum_embeddings](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-sum-embeddings--bebf9f151174d7f9bc9ad92f.md) | 387 | `result-track:bebf9f151174d7f9bc9ad92ff4fa2333ffcf52499de7bc6e8933ed646f2255a1` |
| 28 | `theorem` | [trace_eq_sum_automorphisms](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/trace-eq-sum-automorphisms--65b57928e719e669d5b2eaf8.md) | 402 | `result-track:65b57928e719e669d5b2eaf85183318f2e30675d2e0cd3819985f7149972151d` |
| 29 | `def` | [traceMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix--64e9177cbe2316d165c28268.md) | 430 | `declaration-track:64e9177cbe2316d165c28268b4c64153548c945eaaf7f1a4d695b74e76cb07f3` |
| 30 | `theorem` | [traceMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-apply--21d3a01f99f5233f81eaf1a9.md) | 436 | `result-track:21d3a01f99f5233f81eaf1a9655bfb99a1e4630b55b494b942062b93c46697f8` |
| 31 | `theorem` | [traceMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-reindex--729a724ca460a914a3517d67.md) | 440 | `result-track:729a724ca460a914a3517d67dcae0dc2be62817ee71070a2ee36b043abe706fa` |
| 32 | `theorem` | [traceMatrix_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-of-matrix-vecmul--eb26f561f04e32ba7d463b9a.md) | 446 | `result-track:eb26f561f04e32ba7d463b9a844abec2ae532794a18dd8a5b888fcfaf2c4965a` |
| 33 | `theorem` | [traceMatrix_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-of-matrix-mulvec--d61e0c1ad706e9adcaaf624f.md) | 467 | `result-track:d61e0c1ad706e9adcaaf624fd05da47cd4100e2f4aa66e1c8faa11eb7a99dd9d` |
| 34 | `theorem` | [traceMatrix_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-of-basis--fcb4c8d4b774be7c4f7b61f7.md) | 475 | `result-track:fcb4c8d4b774be7c4f7b61f7197f7444b467cfc570b342dc0d777426de149213` |
| 35 | `theorem` | [traceMatrix_of_basis_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-of-basis-mulvec--589c1b770c0c3e52516b8452.md) | 481 | `result-track:589c1b770c0c3e52516b84528575c16b5a7ae92f4bb5cf3edc75c1e4df74b9cc` |
| 36 | `def` | [embeddingsMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/embeddingsmatrix--c38916afcef91bd98d990571.md) | 509 | `declaration-track:c38916afcef91bd98d990571f26b25df53ca773bb78e4eaadd3b381e022b073b` |
| 37 | `theorem` | [embeddingsMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/embeddingsmatrix-apply--559854aaad5cfc408f8ab472.md) | 515 | `result-track:559854aaad5cfc408f8ab472e2e7a95edd39e8009846dd7e1c656f35c5f475e2` |
| 38 | `def` | [embeddingsMatrixReindex](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/embeddingsmatrixreindex--43f021e6502fc3732b9c8552.md) | 525 | `declaration-track:43f021e6502fc3732b9c8552d1c7b4d4f6a2a2c61b26b435c95f29890d691144` |
| 39 | `theorem` | [embeddingsMatrixReindex_eq_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/embeddingsmatrixreindex-eq-vandermonde--0b3ce7e897ea2959742385fe.md) | 531 | `result-track:0b3ce7e897ea2959742385fe88a078632775b99d6f88ec87738d4c2c926cf91f` |
| 40 | `theorem` | [traceMatrix_eq_embeddingsMatrix_mul_trans](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-eq-embeddingsmatrix-mul-trans--ac13353f4bbd0b98c55104a6.md) | 548 | `result-track:ac13353f4bbd0b98c55104a6d1ed21d9dccce898c45c53dec23cbfd70605a16c` |
| 41 | `theorem` | [traceMatrix_eq_embeddingsMatrixReindex_mul_trans](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/tracematrix-eq-embeddingsmatrixreindex-mul-trans--a33fab92f59cde7dc9253362.md) | 553 | `result-track:a33fab92f59cde7dc9253362b6e2ce73dbe70c7e997b674105ff4b2fbc806c08` |
| 42 | `theorem` | [det_traceMatrix_ne_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/det-tracematrix-ne-zero--67a20fd8e2cf076a52f334b2.md) | 568 | `result-track:67a20fd8e2cf076a52f334b2a77ecd30d17ecb5b21946d0932e9b6dc36b70090` |
| 43 | `theorem` | [det_traceForm_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/det-traceform-ne-zero--7ac76daa9da862a6e82c008e.md) | 586 | `result-track:7ac76daa9da862a6e82c008e098752c64ed0696c98285804cb933cfbb100186f` |
| 44 | `theorem` | [traceForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/declarations/traceform-nondegenerate--7830ce731af369048991a95e.md) | 610 | `result-track:7830ce731af369048991a95e2ebea268d4e60b5973f6727c3e2c0569e8e7bbe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
