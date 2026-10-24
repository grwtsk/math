# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformFiniteC1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b29233df2adc8c915dabbce81ca8ccf6f08d96",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b29233df2adc8c915dabbce81ca8ccf6f08d96`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPowerC1`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Config](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/config--6cf54a340acebcc56423ad7b.md) | 27 | `declaration-track:6cf54a340acebcc56423ad7b4b8eb99254c90504bbd78ca68fc33241664e2496` |
| 2 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/guard--459a43438dbce95c598dcfbb.md) | 36 | `declaration-track:459a43438dbce95c598dcfbbb5fcdd3cc95ac4349c42d7c83228a6511f27c0f2` |
| 3 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/check--6923d2171326960d5575afba.md) | 39 | `declaration-track:6923d2171326960d5575afbacadef0e7192a8c0a0f015e18b09f6c3ff8a9d3bb` |
| 4 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/check-iff--e135e680b9da32b8681f2dc3.md) | 40 | `result-track:e135e680b9da32b8681f2dc308b555bc8904342bdccb3734075ff964583a8b97` |
| 5 | `def` | [e0](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/e0--b5c29384d3120c40839285ce.md) | 42 | `declaration-track:b5c29384d3120c40839285ce62c69f8e964ea8e5df48ba658391aa389f8df96c` |
| 6 | `def` | [e1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/e1--94cd919526f40d24c7e45f9e.md) | 44 | `declaration-track:94cd919526f40d24c7e45f9e7538068d7994d4f37d240c224b3c41441ddd9d09` |
| 7 | `def` | [weightBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/weightbound--2892f1b47197c36490b43344.md) | 47 | `declaration-track:2892f1b47197c36490b433446ee79ba892e76b91b08448634dd3b31f2c9f5183` |
| 8 | `def` | [weightSlopeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/weightslopebound--db02acaeeb57264420e1aa09.md) | 50 | `declaration-track:db02acaeeb57264420e1aa09512536d180c68abfd0803a992b25670057870cb6` |
| 9 | `def` | [valueRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/valueradius--04cd8531aab79de5f1efb619.md) | 53 | `declaration-track:04cd8531aab79de5f1efb619699babc645c13e4afa9b84989dacbb8031370661` |
| 10 | `def` | [derivativeRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/derivativeradius--49de7e59270b2e28ee3cb908.md) | 56 | `declaration-track:49de7e59270b2e28ee3cb908387d04b4970d5653a7cfd1323ea2562f21b1966d` |
| 11 | `lemma` | [radii_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/radii-nonneg--2389730583976e252fe7e93d.md) | 61 | `result-track:2389730583976e252fe7e93deaa80545bcdea2e7edb0bb7c2a2690949641a933` |
| 12 | `def` | [polynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/polynomial--f6a8d697def3704ba0b5ab78.md) | 79 | `declaration-track:f6a8d697def3704ba0b5ab78bbdf58e855a0c2854f7698976a04041d3fa120fe` |
| 13 | `def` | [weightSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/weightslope--08e970e8ac5049df86c5955f.md) | 83 | `declaration-track:08e970e8ac5049df86c5955fbdcb3d48fe30cbef61f0cb4e5a0321f801bd54cc` |
| 14 | `lemma` | [weight_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/weight-hasderivat--021d8793e3b29f41f19064da.md) | 86 | `result-track:021d8793e3b29f41f19064da0895d8dd9e16a32b08b818cc0d43808e2b249e11` |
| 15 | `def` | [polynomialSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/polynomialslope--b8eed3322b2ecc8d7670fe30.md) | 95 | `declaration-track:b8eed3322b2ecc8d7670fe302dff99da423617420d9c2eab7595b905ec68b92c` |
| 16 | `lemma` | [polynomial_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/polynomial-hasderivat--20586a6a78836e6acb83194d.md) | 101 | `result-track:20586a6a78836e6acb83194d5a99de2a4ac73957415f3f28bdff6a3059864856` |
| 17 | `def` | [powerSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/powerslope--03b864dab600eec7e1ebeabe.md) | 110 | `declaration-track:03b864dab600eec7e1ebeabef3fdbf3487be2da1965e02902975cfe688999839` |
| 18 | `def` | [finiteSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/finiteslope--47f888d890ba6819b13b2f9a.md) | 113 | `declaration-track:47f888d890ba6819b13b2f9a2477043c2f54c1093b6b69a770155fa726add0e2` |
| 19 | `lemma` | [finite_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/finite-hasderivat--78e1f3a8cc90d3acdda29b67.md) | 118 | `result-track:78e1f3a8cc90d3acdda29b6722bbad45bb225dce34397422c9533a27ccfbe9bd` |
| 20 | `lemma` | [region_weight_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/region-weight-bounds--19b51eb92ce2d917a89258c9.md) | 131 | `result-track:19b51eb92ce2d917a89258c9946e7a9b7fa7cb4279199a73fed3a2af9f524de9` |
| 21 | `theorem` | [errors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/errors--6a98cabc4d132b02035a0615.md) | 176 | `result-track:6a98cabc4d132b02035a06151f2d3747b3f1ff2594ad57646549b6a95f6cd2a6` |
| 22 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/evaluate--7c3653685e851fe226702909.md) | 253 | `declaration-track:7c3653685e851fe2267029098227f04bfa4756c6a63f80bb877438cfa4929f48` |
| 23 | `lemma` | [evaluate_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/declarations/evaluate-value--7da29a4243f8d145c2ea784a.md) | 261 | `result-track:7da29a4243f8d145c2ea784a4889f0c1de5d9f6773274731fe7eb6028886b8cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
