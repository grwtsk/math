# Verification target: GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07c561c1e13299baec78548ce80ac721d4ecf17c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteTraceIteratePacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07c561c1e13299baec78548ce80ac721d4ecf17c`.

Source path: `GRWTSK/Analysis/Fourier/FiniteTraceIteratePacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteTraceIteratePacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TraceShapedInput](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/traceshapedinput--1e2171469b497e039ccc305e.md) | 46 | `declaration-track:1e2171469b497e039ccc305efcfe90bc57fcb4e981493c58f596046901b345d2` |
| 2 | `def` | [iterateSources](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratesources--83998983cc38ffe307d97991.md) | 56 | `declaration-track:83998983cc38ffe307d97991f4e73f076a2a4b9a8c0c969ddf3cde86039ba5d4` |
| 3 | `def` | [iterateHomology](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratehomology--04fabbcbb6178c53dd2389a7.md) | 61 | `declaration-track:04fabbcbb6178c53dd2389a70d4d1266586e8fa6185221fffd106aeaef30a659` |
| 4 | `def` | [traceShapeWeight](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/traceshapeweight--7ee03a0472cd87fc20272558.md) | 68 | `declaration-track:7ee03a0472cd87fc2027255879a1a073a3746ee32c1d8e51dda92d1e6b4b4dbc` |
| 5 | `def` | [tracePacket](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/tracepacket--c70ff4409806b9d38a5f0765.md) | 75 | `declaration-track:c70ff4409806b9d38a5f076571c7a0b8dcbfa75e714e3ebf7ac55e27fe8cc51f` |
| 6 | `theorem` | [iterateHomology_add](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratehomology-add--bd9edf9ede3e5cbe3c062380.md) | 83 | `result-track:bd9edf9ede3e5cbe3c06238099bcd035b0d2dd838bf8a34afc1b9cb25d89708b` |
| 7 | `theorem` | [iterateHomology_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratehomology-zero--804cd9e13ab0112069ba7918.md) | 93 | `result-track:804cd9e13ab0112069ba791813e135327cf3f2064355a319a0c733f68ee0e5b0` |
| 8 | `theorem` | [traceShape_denominator_ne_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/traceshape-denominator-ne-zero--2d038262b58a06e8a0829026.md) | 101 | `result-track:2d038262b58a06e8a0829026d112ea8de5f5e9e3cf6e500bd64bd4e4f7c921fe` |
| 9 | `theorem` | [mem_iterateSources_iff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/mem-iteratesources-iff--96daa9ad707c1a395d990850.md) | 116 | `result-track:96daa9ad707c1a395d990850fa61d9f966cc3779af7bb8a98b20845ebda34d1b` |
| 10 | `theorem` | [iterateSources_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratesources-zero--337173eb36921b7bb860a823.md) | 122 | `result-track:337173eb36921b7bb860a823a4ab47aa797b664c4512e289ab57c41cd56a1b5b` |
| 11 | `theorem` | [iterateSources_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/iteratesources-mono--b61f937f51813d34ed1f5f77.md) | 127 | `result-track:b61f937f51813d34ed1f5f773ea0100f36d766e44e80cafbf9937e961565ba29` |
| 12 | `theorem` | [torsionProjection_eq_trace_double_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/torsionprojection-eq-trace-double-sum--7bab9496510e3f2780504f35.md) | 137 | `result-track:7bab9496510e3f2780504f354a7caca5835419b1ff07a632ab72e6b7ba350b75` |
| 13 | `def` | [omittedSources](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/omittedsources--c0424e7fd1bcabf9b8d2037e.md) | 155 | `declaration-track:c0424e7fd1bcabf9b8d2037e492593b4bf96e45227ed8a0978d847b4c9606287` |
| 14 | `def` | [omittedIntegral](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/omittedintegral--30011677056fa3ed30976e3c.md) | 160 | `declaration-track:30011677056fa3ed30976e3c01a5bedaf6bbd2cfed2376e74e3d63ccdf23b329` |
| 15 | `def` | [omittedMass](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/omittedmass--44cda4055d0d5f05575884af.md) | 165 | `declaration-track:44cda4055d0d5f05575884af64f68ddbd1b1edd228ceaf23fe26107a96e46730` |
| 16 | `theorem` | [integralProjection_large_eq_small_add_omitted](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/integralprojection-large-eq-small-add-omitted--ebb4945daf8980aa30fa4638.md) | 170 | `result-track:ebb4945daf8980aa30fa4638d4f9c1cc639bff475aabf4753b1e33598ddce8ea` |
| 17 | `theorem` | [omittedIntegral_norm_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/omittedintegral-norm-le--893688de28ed834c4debfb31.md) | 186 | `result-track:893688de28ed834c4debfb31a31fbf8f702d92dfa6ca2e698870a84aeef25b20` |
| 18 | `theorem` | [finite_trace_cutoff_alias_error](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/finite-trace-cutoff-alias-error--523f914ff449fe41f1c66222.md) | 205 | `result-track:523f914ff449fe41f1c6622254401c8cf5084f4d7047adfcec366d237f2d1a61` |
| 19 | `theorem` | [traceShapeWeight_zero_of_fourier_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/traceshapeweight-zero-of-fourier-zero--54906011639db1a6e91b076a.md) | 230 | `result-track:54906011639db1a6e91b076ac2045ddbdb8dd3ed63d3339da50572da812307ac` |
| 20 | `theorem` | [omittedMass_zero_of_fourier_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/omittedmass-zero-of-fourier-zero--f4d8a1fe759959d69089b568.md) | 238 | `result-track:f4d8a1fe759959d69089b56834d3f9865a6ff850929c34db36e3994aaf6a0e7f` |
| 21 | `theorem` | [finite_trace_cutoff_error_of_fourier_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/finite-trace-cutoff-error-of-fourier-zero--1934392e141946e10080a652.md) | 252 | `result-track:1934392e141946e10080a65226eb8c2728fc7164aba5713e08666c2039894144` |
| 22 | `theorem` | [tracePacket_zero_sources](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceIteratePacket.lean/declarations/tracepacket-zero-sources--b09e2b67ff4eb80bb38f0e44.md) | 266 | `result-track:b09e2b67ff4eb80bb38f0e44d8521df6ba513df437460a45a3be8badd27e32a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
