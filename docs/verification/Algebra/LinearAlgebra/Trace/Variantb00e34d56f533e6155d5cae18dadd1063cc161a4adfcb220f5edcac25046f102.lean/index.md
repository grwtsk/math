# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45908c839d031d8bbfd5ece1602bc65b034f5681",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45908c839d031d8bbfd5ece1602bc65b034f5681`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Flow.IntMatrix.traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-traceaux--2f1b55b9aac8266aa9be5f3a.md) | 41 | `declaration-track:2f1b55b9aac8266aa9be5f3a4f03800ff1cf9d8a47a42a9089b24790c6dd610c` |
| 2 | `def` | [Flow.IntMatrix.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-trace--3d69798511ed71e3da0dc760.md) | 54 | `declaration-track:3d69798511ed71e3da0dc760185fc97abd548f48dfe3326750a47e6133773d47` |
| 3 | `theorem` | [Flow.IntMatrix.traceAux_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-traceaux-zero--1e0155662dfe2bcc35da4b8f.md) | 60 | `result-track:1e0155662dfe2bcc35da4b8fb12eed1d14fadacf25164e30b8941690d8c94ffe` |
| 4 | `theorem` | [Flow.IntMatrix.traceAux_eq_of_diag_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-traceaux-eq-of-diag-one--53805461876245ca18f0569d.md) | 71 | `result-track:53805461876245ca18f0569d54b7c15d653dff0f00970cc6a03c232f853b0510` |
| 5 | `theorem` | [Flow.IntMatrix.trace_eq_of_diag_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-trace-eq-of-diag-one--bf0b87e5f8fbaa9b82a4fcbf.md) | 91 | `result-track:bf0b87e5f8fbaa9b82a4fcbfc9fd9efa0a578d9e526bb71d3a53d325db05436b` |
| 6 | `theorem` | [Flow.IntMatrix.trace_identity](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-intmatrix-trace-identity--44ca889d1614d4122f209eb8.md) | 103 | `result-track:44ca889d1614d4122f209eb8fcba040074554f8049ce97c81bf583b6c09a9805` |
| 7 | `def` | [Flow.Expression.zetaTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-zetatrace--a7e43088961b03acdf364ed3.md) | 112 | `declaration-track:a7e43088961b03acdf364ed3d4cb34f27bd15b52c96d67e533b9cfa70c9fc323` |
| 8 | `def` | [Flow.Expression.mobiusTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-mobiustrace--4ef46e162c6a34b52ce08e5e.md) | 119 | `declaration-track:4ef46e162c6a34b52ce08e5e6b346ef0b9bbd8fe3d0c1c920a7e36d2a2ae1b7d` |
| 9 | `theorem` | [Flow.Expression.zeta_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-zeta-trace-eq-nodecount--1996f20a88ef534bb22b85aa.md) | 130 | `result-track:1996f20a88ef534bb22b85aa9509a8d17238d426a898ae769de2581b9aa8feb0` |
| 10 | `theorem` | [Flow.Expression.mobius_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-mobius-trace-eq-nodecount--47b52f7fec8000c5d6ab0989.md) | 144 | `result-track:47b52f7fec8000c5d6ab0989a85b3508421a53adb9e44b13c4cdca0b1bd26a00` |
| 11 | `theorem` | [Flow.Expression.zeta_trace_eq_mobius_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-zeta-trace-eq-mobius-trace--40a57f6018da0ec5600933f0.md) | 153 | `result-track:40a57f6018da0ec5600933f016d4858a9da0adad09b6a1a66d200152cfe44788` |
| 12 | `structure` | [Flow.TraceCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-tracecertificate--a6cfef0d1b3f968eede4e986.md) | 161 | `declaration-track:a6cfef0d1b3f968eede4e9868eab913c2f3e12edf03bcd47204c6a461f74b853` |
| 13 | `def` | [Flow.TraceCertificate.mobiusTree](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-tracecertificate-mobiustree--ca894f551888fb1f76f291c7.md) | 167 | `declaration-track:ca894f551888fb1f76f291c78d3b08bcae7a745d53ec3d8e9fc38dcf7518ef7e` |
| 14 | `theorem` | [Flow.TraceCertificate.mobiusTree_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-tracecertificate-mobiustree-trace--84ffb28fa1a27d0ffaec30b0.md) | 174 | `result-track:84ffb28fa1a27d0ffaec30b06b62c799f94b9275b74f5821a5236911d0a52c27` |
| 15 | `structure` | [Flow.TraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-tracetriple--7b22845dcdbb27f3ee002d62.md) | 192 | `declaration-track:7b22845dcdbb27f3ee002d62e51acff5f54077c9e755452f36d6cb7f57880005` |
| 16 | `def` | [Flow.TraceTriple.theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-tracetriple-theoremready--b06890ed9228241c5b7bcc23.md) | 208 | `declaration-track:b06890ed9228241c5b7bcc235c07edbe7c049ff9efcb080b462d3ce6d12c293d` |
| 17 | `def` | [Flow.Expression.traceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple--d87d3b68ee22b131ae578043.md) | 219 | `declaration-track:d87d3b68ee22b131ae57804332f2afcf5f9af66a258099a48d0720e189c4ccbb` |
| 18 | `theorem` | [Flow.Expression.traceTriple_matrix_eq_mobius](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple-matrix-eq-mobius--22598ccfd04a0c48582e78cd.md) | 231 | `result-track:22598ccfd04a0c48582e78cd9c095c121bf08dba76488efd90be2e9ce3474084` |
| 19 | `theorem` | [Flow.Expression.traceTriple_tree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple-tree-eq--95343feca8f6173b3b9f3238.md) | 238 | `result-track:95343feca8f6173b3b9f32383815bf58300577917724d96542776d8680243f17` |
| 20 | `theorem` | [Flow.Expression.traceTriple_not_theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple-not-theoremready--93bd72af8e70784366091831.md) | 244 | `result-track:93bd72af8e70784366091831b4801ebc1166e5fadfd19c98ab9cba238313227b` |
| 21 | `theorem` | [Flow.Expression.traceTriple_trace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple-trace-eq-nodecount--2b5c3f148b434a62c51d3dd9.md) | 252 | `result-track:2b5c3f148b434a62c51d3dd9c6466bcb92f52104418edd6c634768af00215f57` |
| 22 | `theorem` | [Flow.Expression.traceTriple_trace_matches_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-tracetriple-trace-matches-matrix-trace--bd7b187518e0bcd6010edabd.md) | 259 | `result-track:bd7b187518e0bcd6010edabd537e2bfb7dd290e8f123f5316dc40ee9cf4fd6d1` |
| 23 | `def` | [Flow.MobiusInversion.zetaTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-mobiusinversion-zetatrace--8b6823792b89ce799b0dec51.md) | 269 | `declaration-track:8b6823792b89ce799b0dec5199a4179c34cfb94d739b730893501c6899af4688` |
| 24 | `def` | [Flow.MobiusInversion.mobiusTrace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-mobiusinversion-mobiustrace--2842fe3fa821f6d61e5f44d4.md) | 275 | `declaration-track:2842fe3fa821f6d61e5f44d4b153b7393c0045bbe6b413a3b9f749585e5a0466` |
| 25 | `theorem` | [Flow.Expression.mobiusInversion_mobiusTrace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-mobiusinversion-mobiustrace-eq-nodecount--4fbec2bcc7c0cfa8595bbd43.md) | 281 | `result-track:4fbec2bcc7c0cfa8595bbd43d7e813e5489d400b432a0f299e86857875d9db56` |
| 26 | `theorem` | [Flow.Expression.mobiusInversion_zetaTrace_eq_nodeCount](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-expression-mobiusinversion-zetatrace-eq-nodecount--7d4221ce37ae77d579caa369.md) | 288 | `result-track:7d4221ce37ae77d579caa369a27d214db9fe767dafa98e084c2a330db0f094e2` |
| 27 | `def` | [Flow.Examples.bsdMotivatedTraceTriple](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-examples-bsdmotivatedtracetriple--d52832356e9a84ba4b1da2e2.md) | 295 | `declaration-track:d52832356e9a84ba4b1da2e2bc54b58bfc74f0cf11548ab0d17b0b3232311d60` |
| 28 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-examples-bsdmotivatedtracetriple-trace--9375b0f0358a556016a58334.md) | 301 | `result-track:9375b0f0358a556016a58334395385f31a22fc38a7e76c808cb70b552f64f0ec` |
| 29 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_matches_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-examples-bsdmotivatedtracetriple-matches-matrix-trace--586521b9e4e20e49b68a2d76.md) | 308 | `result-track:586521b9e4e20e49b68a2d76ceb74e0a982c310282a9596fed502a901f5df7a7` |
| 30 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-examples-bsdmotivatedtracetriple-midpoint--5500f864f992e18aef2f5035.md) | 327 | `result-track:5500f864f992e18aef2f5035b005b3ebece9e21f14a1ddfe98a00c770ebd4e9e` |
| 31 | `theorem` | [Flow.Examples.bsdMotivatedTraceTriple_not_theoremReady](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variantb00e34d56f533e6155d5cae18dadd1063cc161a4adfcb220f5edcac25046f102.lean/declarations/flow-examples-bsdmotivatedtracetriple-not-theoremready--97247166f16773819de67e99.md) | 338 | `result-track:97247166f16773819de67e990c48ec4b3c23e8fafb61cfa83dbd9fd5d68d1e87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
