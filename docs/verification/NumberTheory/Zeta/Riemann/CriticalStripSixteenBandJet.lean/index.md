# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b4c46eed5df6994f448f1d7557ba5533b3f05a6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b4c46eed5df6994f448f1d7557ba5533b3f05a6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/center--a23832e578f0281f6db6f770.md) | 23 | `declaration-track:a23832e578f0281f6db6f770368696d1db2b77e1afebe304dd1b2414546d5c30` |
| 2 | `abbrev` | [logRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/logradius--b69d8c28c391d9fc9d05453b.md) | 25 | `declaration-track:b69d8c28c391d9fc9d05453b79f3057dcaaba5dd99597976b5fb34e7fc4b73f4` |
| 3 | `abbrev` | [sampleRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/sampleradius--910e6de4d82598b91055c9e5.md) | 26 | `declaration-track:910e6de4d82598b91055c9e5a0bbe452ddcd249c0ed7d8f5d6e34506d62b064d` |
| 4 | `abbrev` | [logCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/logcenter--3621272b0ff85dd7f1c2cd3f.md) | 27 | `declaration-track:3621272b0ff85dd7f1c2cd3f896e55f55e0db1eddecd4d69e52eddde68e8cc61` |
| 5 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/sample--51275e6f2c4df014e1b8fb41.md) | 29 | `declaration-track:51275e6f2c4df014e1b8fb41c1fe6448e97d3f00b93621d586b074f144622561` |
| 6 | `def` | [powerJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/powerjet--bce1cd4da8d1f8c7d00f1ccf.md) | 31 | `declaration-track:bce1cd4da8d1f8c7d00f1ccf2230e8bada5edacfc3ebce61d15a1b7b8a6d8aa1` |
| 7 | `def` | [powerError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/powererror--a35df20d44f7206b518dc220.md) | 34 | `declaration-track:a35df20d44f7206b518dc220d60a1ade9a281490e5409c635d8eda52f7aedcfd` |
| 8 | `lemma` | [center_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/center-norm-le--61dfe063bf78fe80dec4640d.md) | 38 | `result-track:61dfe063bf78fe80dec4640da159dc9692dd8ee01f43c99e3f7502f4c0840969` |
| 9 | `lemma` | [log_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/log-enclosed--95e4c7600eb897697e4fc434.md) | 43 | `result-track:95e4c7600eb897697e4fc43488afca044061657de9ec215f85b887ae2ce374ea` |
| 10 | `lemma` | [center_power_helper](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/center-power-helper--d1a53b40fd2f89dd160a93fc.md) | 47 | `result-track:d1a53b40fd2f89dd160a93fcec2798e36430c8805be1b436f613a334b51d9c05` |
| 11 | `lemma` | [sample_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/sample-enclosed--c486b2203e46e088614f6fe3.md) | 71 | `result-track:c486b2203e46e088614f6fe32523ff2416c11c30c0329d84982bb21074cd0b5b` |
| 12 | `lemma` | [powerError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/powererror-nonneg--ac328f1eab321fd03bd85a79.md) | 81 | `result-track:ac328f1eab321fd03bd85a795bde391b67348d22cb53dd9e1d31dd60997031be` |
| 13 | `lemma` | [powerJet_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/powerjet-enclosed--8f71f7488a4d2178a22aeed9.md) | 84 | `result-track:8f71f7488a4d2178a22aeed9c14be64233ea7f38531fb4ca96b30005f9919b7e` |
| 14 | `abbrev` | [weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/weight--779f78525c18e57c6ed684b5.md) | 102 | `declaration-track:779f78525c18e57c6ed684b5d609b52457286f1073f907be8f97c3fbbc92e9b1` |
| 15 | `def` | [sourcePolynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/sourcepolynomial--890a12d959e0a604fb69b285.md) | 104 | `declaration-track:890a12d959e0a604fb69b2856f20959afce291496c8f33a13593f2e492605fc0` |
| 16 | `def` | [weightCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/weightcoefficient--28f0cbe8731f61c550016811.md) | 108 | `declaration-track:28f0cbe8731f61c5500168114b5ea2238b04ae1a253c4b9cf68b898b443a4892` |
| 17 | `lemma` | [weight_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/weight-identity--f3966ec418533fcaf03c630c.md) | 110 | `result-track:f3966ec418533fcaf03c630ccb5dbd843422a1d58dce55ad3251965535419dbd` |
| 18 | `def` | [expCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/expcoefficient--9487002d2a729c3dd8627e64.md) | 116 | `declaration-track:9487002d2a729c3dd8627e64b9744290d08129698df5f08e2c35f7784f1d2275` |
| 19 | `def` | [exactCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/exactcoefficient--8cd82b888a9d6796a48f38f8.md) | 119 | `declaration-track:8cd82b888a9d6796a48f38f8e6dcd5e77fa6795fceec89bdd8f30a389882e9a8` |
| 20 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/coefficient--b136b3d9fe22418c5bd86ac7.md) | 126 | `declaration-track:b136b3d9fe22418c5bd86ac7fa2336ceb781785b2963e90c75b68467599e2b66` |
| 21 | `def` | [polynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/polynomial--2701eefcc510b1e60b8f4fbd.md) | 128 | `declaration-track:2701eefcc510b1e60b8f4fbd863f02e85e88337d1c1e5fbbea1437b1a44edc2c` |
| 22 | `lemma` | [sourcePolynomial_coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/sourcepolynomial-coefficients--f13a1a07cd9a8bdec78fd5be.md) | 130 | `result-track:f13a1a07cd9a8bdec78fd5be0eb6a5086f073497fdeac0d03c2a84b8c64fc6fb` |
| 23 | `lemma` | [coefficient_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/coefficient-rounding--4e49872ea9cf5ae275781314.md) | 140 | `result-track:4e49872ea9cf5ae275781314bed0abe6b6744b60fcf0d987e3cd6e76bd31f73f` |
| 24 | `lemma` | [polynomial_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/polynomial-rounding--cd77f2d0f01880ec81518a31.md) | 148 | `result-track:cd77f2d0f01880ec81518a31cd3a527e771e2b1f84cc4d58be228ed61875d472` |
| 25 | `lemma` | [finite_error_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenBandJet.lean/declarations/finite-error-budget--75d146247de9b57a43353b0b.md) | 163 | `result-track:75d146247de9b57a43353b0bce4cb6136489ef3952c251d765ae1104922e9de7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
