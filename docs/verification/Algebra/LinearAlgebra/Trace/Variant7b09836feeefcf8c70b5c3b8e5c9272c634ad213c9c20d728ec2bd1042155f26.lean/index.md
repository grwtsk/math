# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb2b61f54ecc77103b65fbf22f9b09f0fad0b7c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb2b61f54ecc77103b65fbf22f9b09f0fad0b7c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Matrix` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Flow.IntMatrix.traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-traceaux--6322010eb828532a9551205a.md) | 33 | `declaration-track:6322010eb828532a9551205a853cbe3d9b5e65dcca9e85789a582450394b23e1` |
| 2 | `def` | [Flow.IntMatrix.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-trace--508217b7ef1d06090745657d.md) | 46 | `declaration-track:508217b7ef1d06090745657dd50eea69f491f2e3c031046aa006a776d7ff44ad` |
| 3 | `theorem` | [Flow.IntMatrix.traceAux_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-traceaux-zero--f03f86586f2d2a544afc66b5.md) | 52 | `result-track:f03f86586f2d2a544afc66b5238f27c4785338d44c426444ba9b7bb94c124c2e` |
| 4 | `theorem` | [Flow.IntMatrix.traceAux_eq_of_diag_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-traceaux-eq-of-diag-one--e74f59f73449a74868268432.md) | 63 | `result-track:e74f59f73449a748682684320c2bc2f92d9ce63880a3f040e08e8031a82f5bbb` |
| 5 | `theorem` | [Flow.IntMatrix.trace_eq_of_diag_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-trace-eq-of-diag-one--9a54e1b8d25fe0b209f0c157.md) | 83 | `result-track:9a54e1b8d25fe0b209f0c157ca92919bcfbbd9f19013cf62b6466cd82d9c75bb` |
| 6 | `theorem` | [Flow.IntMatrix.trace_identity](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-intmatrix-trace-identity--302bca5a6c19471af2f16fe5.md) | 95 | `result-track:302bca5a6c19471af2f16fe5fd6702c0050851f3e35453685772ded65e205bdc` |
| 7 | `def` | [Flow.Expression.zetaTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-zetatrace--0aec900f37588f8b1342b12b.md) | 104 | `declaration-track:0aec900f37588f8b1342b12b46257d83c6ec1c81ced8014a8107524dbd6432fd` |
| 8 | `def` | [Flow.Expression.mobiusTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-mobiustrace--3a874615c72d6c485f5ae181.md) | 111 | `declaration-track:3a874615c72d6c485f5ae1817f82c1ede42295556652edb31f4d93c789fa0c48` |
| 9 | `theorem` | [Flow.Expression.zeta_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-zeta-trace-eq-nodecount--625e8da96065624264abd762.md) | 122 | `result-track:625e8da96065624264abd76251ab569148b44e59bd336d4d24f1b2c7696fffb5` |
| 10 | `theorem` | [Flow.Expression.mobius_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-mobius-trace-eq-nodecount--669696eb4a3db12283ad5600.md) | 136 | `result-track:669696eb4a3db12283ad5600378097459422158f610c18286380f68b0bb83596` |
| 11 | `theorem` | [Flow.Expression.zeta_trace_eq_mobius_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-zeta-trace-eq-mobius-trace--f88cac4ad048882e4a19281e.md) | 145 | `result-track:f88cac4ad048882e4a19281ed8add5be1950d2bcf0a9bac18c29fe6bc04e98ba` |
| 12 | `structure` | [Flow.TraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-tracecertificate--480fb2a0c101542e3f177f8b.md) | 153 | `declaration-track:480fb2a0c101542e3f177f8b0bbf3ecf80b487fdfdaa0ac8a6f03caf4629dac9` |
| 13 | `def` | [Flow.TraceCertificate.mobiusTree](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-tracecertificate-mobiustree--db3c35a6cc7d3d3d0a24ec98.md) | 159 | `declaration-track:db3c35a6cc7d3d3d0a24ec98989583913e09ca039a664f3a9d77da6127375c91` |
| 14 | `theorem` | [Flow.TraceCertificate.mobiusTree_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-tracecertificate-mobiustree-trace--e8ec80b5702f68ae68e7577d.md) | 166 | `result-track:e8ec80b5702f68ae68e7577dc6fa181db2131f397f7a0512ec023a1aa1464342` |
| 15 | `structure` | [Flow.TraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-tracetriple--6e77f3e889d6c3d94a7fa01e.md) | 184 | `declaration-track:6e77f3e889d6c3d94a7fa01edd35d6049186af09c8acb9875f6e22d69c70b830` |
| 16 | `def` | [Flow.TraceTriple.theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-tracetriple-theoremready--6e623aeaafd1aa76ed27582a.md) | 200 | `declaration-track:6e623aeaafd1aa76ed27582aaab76cb01715184bd2acec39af3cf64ddbb5a139` |
| 17 | `def` | [Flow.Expression.traceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple--3c4fc18a008cc1dd4d55c6a7.md) | 211 | `declaration-track:3c4fc18a008cc1dd4d55c6a74a62e79422a10f1c645fb0bb0ee623538eaf8fca` |
| 18 | `theorem` | [Flow.Expression.traceTriple_matrix_eq_mobius](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple-matrix-eq-mobius--0760cc4b08562d884f0abdd4.md) | 223 | `result-track:0760cc4b08562d884f0abdd40f7262ae4b510aa3d7c4406bccef2b4187a38cbd` |
| 19 | `theorem` | [Flow.Expression.traceTriple_tree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple-tree-eq--e68dd15d8ded60d68d74d72b.md) | 230 | `result-track:e68dd15d8ded60d68d74d72bbb558e1eb69a7072e486be5641a9de157b8b7147` |
| 20 | `theorem` | [Flow.Expression.traceTriple_not_theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple-not-theoremready--f3e9d61f5cb96dc8baae71ef.md) | 236 | `result-track:f3e9d61f5cb96dc8baae71efc784c85025b8eed17be2c0bb12360cb18a370722` |
| 21 | `theorem` | [Flow.Expression.traceTriple_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple-trace-eq-nodecount--ef21c9ca52c1cc2d89d85bcd.md) | 244 | `result-track:ef21c9ca52c1cc2d89d85bcd6b6c476389ca88da7f8e0f89e77ea9e4a267d1d1` |
| 22 | `theorem` | [Flow.Expression.traceTriple_trace_matches_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-tracetriple-trace-matches-matrix-trace--e4d85eb52143b743bd9eb632.md) | 251 | `result-track:e4d85eb52143b743bd9eb6322117cbdf48f48b6b00a8c6df84af4c7034925cc7` |
| 23 | `def` | [Flow.MobiusInversion.zetaTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-mobiusinversion-zetatrace--9515aa08f3d311ad989a12d2.md) | 261 | `declaration-track:9515aa08f3d311ad989a12d2ff127ed5136d9a95a8a6621e455e7d639e9073eb` |
| 24 | `def` | [Flow.MobiusInversion.mobiusTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-mobiusinversion-mobiustrace--eec76568c509c7152a5490e6.md) | 267 | `declaration-track:eec76568c509c7152a5490e6d3f478c140493b40fd33f4423fb50b3914275bee` |
| 25 | `theorem` | [Flow.Expression.mobiusInversion_mobiusTrace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-mobiusinversion-mobiustrace-eq-nodecount--3362a629cc6091c402879858.md) | 273 | `result-track:3362a629cc6091c402879858d56dccf98158206fc4866043e469776fa495435a` |
| 26 | `theorem` | [Flow.Expression.mobiusInversion_zetaTrace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-expression-mobiusinversion-zetatrace-eq-nodecount--fcf2c4ae93e418f01294e8c1.md) | 280 | `result-track:fcf2c4ae93e418f01294e8c1ec20d38de57ac832609abfe3140045e7f460c6ee` |
| 27 | `def` | [Flow.Examples.bsdMotivatedTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-examples-bsdmotivatedtracetriple--4828cfcd5ff8df2e7871c33e.md) | 287 | `declaration-track:4828cfcd5ff8df2e7871c33e2308e55996246d34660a02295b2c4553cd13bf01` |
| 28 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-examples-bsdmotivatedtracetriple-trace--f5d8fe76257567922ef60e78.md) | 293 | `result-track:f5d8fe76257567922ef60e784e30ec5ed0b76710b008f324553c8b61748bcc04` |
| 29 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_matches_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-examples-bsdmotivatedtracetriple-matches-matrix-trace--06682a35f4e845c096fb20ad.md) | 300 | `result-track:06682a35f4e845c096fb20addba270daa90b643e290e232b7dd34b925f6f0fb4` |
| 30 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-examples-bsdmotivatedtracetriple-midpoint--07868067a5adba19b9db57cb.md) | 319 | `result-track:07868067a5adba19b9db57cbe07d951d4f12be33c1a276588b0007ebfa974de5` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_not_theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant7b09836feeefcf8c70b5c3b8e5c9272c634ad213c9c20d728ec2bd1042155f26.lean/declarations/flow-examples-bsdmotivatedtracetriple-not-theoremready--2f642e5a44217cf4e1d99663.md) | 330 | `result-track:2f642e5a44217cf4e1d996639bc449b38b782f23a7ba4e89af04f5976ce51a05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
