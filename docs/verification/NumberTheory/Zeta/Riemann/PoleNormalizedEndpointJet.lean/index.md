# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedEndpointJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdac2fc55af87acb9c2b6a8e98e532d574978a1c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdac2fc55af87acb9c2b6a8e98e532d574978a1c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.EndpointBernoulliResidual`](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regular](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/regular--e16f56820ef1e04d9b9ea513.md) | 26 | `declaration-track:e16f56820ef1e04d9b9ea5136888732da131743a101ebe126f0ee969ecf39b15` |
| 2 | `def` | [regularSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/regularslope--72759bc8f37fbfd6edea29f9.md) | 30 | `declaration-track:72759bc8f37fbfd6edea29f9a91b7f3276863b138eb0cfb18cc68ac4e2bd7894` |
| 3 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/coefficient--9bc9471db43d11adba12f1d2.md) | 34 | `declaration-track:9bc9471db43d11adba12f1d2677591f56a3a69e92df430bd8e91e147bf488dac` |
| 4 | `def` | [coefficientSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/coefficientslope--c2af888df5ed7e3ca0d32b80.md) | 36 | `declaration-track:c2af888df5ed7e3ca0d32b8055bfdaf30060e2f182f7d826d658218c9e573f4b` |
| 5 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/model--8f0e0862f5dfd8bf244fa686.md) | 40 | `declaration-track:8f0e0862f5dfd8bf244fa686019ceec51417f57150f6af64580991a18765187f` |
| 6 | `def` | [slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/slope--be5dd16fac3c38a35345ff69.md) | 43 | `declaration-track:be5dd16fac3c38a35345ff69f0a1001ac732ea2499b9cdbecd3eb6cd606d93d9` |
| 7 | `theorem` | [regular_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/regular-succ--5cf03d047372e9ef5914f045.md) | 47 | `result-track:5cf03d047372e9ef5914f0454b6a9d17efcf1acb335c9ee1a5805ca54819124c` |
| 8 | `theorem` | [regularSlope_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/regularslope-succ--93d0986d0279e956dd48a948.md) | 53 | `result-track:93d0986d0279e956dd48a9483828602810ee2369a679bfcce06bcbc3f27d06c5` |
| 9 | `theorem` | [hasDerivAt_regular](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/hasderivat-regular--3482f7d077d71f29ffb1aa19.md) | 58 | `result-track:3482f7d077d71f29ffb1aa1984fda7fbbb11f9588b187f7e6bef9f71acc05bfc` |
| 10 | `theorem` | [hasDerivAt_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/hasderivat-coefficient--3769b8f5897f0283bd3bca50.md) | 65 | `result-track:3769b8f5897f0283bd3bca50dd873ea42082281fddb1b3e1d1423f847b7d6c2c` |
| 11 | `theorem` | [hasDerivAt_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/hasderivat-model--7e6414617f294e1fae2fe7a2.md) | 71 | `result-track:7e6414617f294e1fae2fe7a21659c2f11d4b31e5a48d03f28707572cb2a23aec` |
| 12 | `theorem` | [differentiable_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/differentiable-model--9ffc5ccb8976e26fa79faaf2.md) | 83 | `result-track:9ffc5ccb8976e26fa79faaf2c911084ef7c156643e978e26233e0ae640a4b0a0` |
| 13 | `theorem` | [deriv_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/deriv-model--98de5fd1550b9a23a8c534e2.md) | 86 | `result-track:98de5fd1550b9a23a8c534e2f7a483d6d36c860f344c20e5cd48ce0627c2677f` |
| 14 | `theorem` | [model_eq_mul_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/model-eq-mul-previous--7033785aaa8a89c79c1fa981.md) | 90 | `result-track:7033785aaa8a89c79c1fa981f9e77091fe3f18554635f760474473e0781f576e` |
| 15 | `theorem` | [model_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/model-one--9473c242c623f5a64b2cac60.md) | 96 | `result-track:9473c242c623f5a64b2cac6031a10284ad3e07491e669ac7403c4ef7c254ab8c` |
| 16 | `theorem` | [model_one_ne_raw_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/model-one-ne-raw-product--b7e7f68d2aaeff263a7e59e2.md) | 101 | `result-track:b7e7f68d2aaeff263a7e59e27ed7bb27780c01098489b5d6624742d441200fc4` |
| 17 | `theorem` | [slope_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/slope-one--8264a4fa0eca5c2d2242486b.md) | 106 | `result-track:8264a4fa0eca5c2d2242486b73dd64ea0a40b1a96a8fef44e95fea9e3e9e83b4` |
| 18 | `theorem` | [source_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/source-residual--dbf28877c55cb51b04b6077d.md) | 117 | `result-track:dbf28877c55cb51b04b6077d976f48298282871fead36a4ac2765cf255a023b5` |
| 19 | `theorem` | [source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/source-error--ea23f19a3432266bbe18dd57.md) | 128 | `result-track:ea23f19a3432266bbe18dd57a592694ee4179a7911fed644104a728f6bccd039` |
| 20 | `theorem` | [derivative_error_of_uniform_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/declarations/derivative-error-of-uniform-source--bf610d7c9e99d17780d94828.md) | 142 | `result-track:bf610d7c9e99d17780d94828c71089eeb87d4819f04f94c8143580ef2888153b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
