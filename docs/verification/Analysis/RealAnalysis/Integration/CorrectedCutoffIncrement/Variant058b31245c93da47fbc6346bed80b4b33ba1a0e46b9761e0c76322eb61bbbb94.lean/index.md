# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrectedCutoffIncrement.Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "556ef46eda5af9be110c8db193bc887dd223ea9b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `556ef46eda5af9be110c8db193bc887dd223ea9b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffShape](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/cutoffshape--0d3d4aaff4d602cdd8f41a6b.md) | 12 | `declaration-track:0d3d4aaff4d602cdd8f41a6bc882a241441aa5b429075f6a4501c06ff6ec4c84` |
| 2 | `theorem` | [correctedNumerator_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/correctednumerator-one--1a02975fbe893de6db8d69d6.md) | 17 | `result-track:1a02975fbe893de6db8d69d6f6a0cf5b5da9aea08046e0b243e5153f801422f7` |
| 3 | `theorem` | [exponential_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/exponential-split--307e9137fc388817bf5db034.md) | 20 | `result-track:307e9137fc388817bf5db034b4b9e3d94cc40bce7306aa2c62256f092a61f6db` |
| 4 | `theorem` | [reciprocal_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/reciprocal-succ--f3e5e42a32e5e4a336a74077.md) | 31 | `result-track:f3e5e42a32e5e4a336a74077235e76da73583c2b2e8dc808b6602ecb9faacd24` |
| 5 | `theorem` | [correctedNumerator_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/correctednumerator-succ-sub--95e7240de0c146109d39041a.md) | 38 | `result-track:95e7240de0c146109d39041a5fa35e75613fa5f3d15f1bbce4f6b7e2fd476373` |
| 6 | `theorem` | [correctedNumerator_eq_sum_increments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/correctednumerator-eq-sum-increments--4ec5df357d061281c7392b2f.md) | 50 | `result-track:4ec5df357d061281c7392b2f0e5694791aef9a6bfa0cabe610b0bffe1903c8b4` |
| 7 | `def` | [boundaryResidual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/boundaryresidual--8aa7387565151eeab587f06f.md) | 61 | `declaration-track:8aa7387565151eeab587f06f661a06c24067afbf7e672f76eab7a16675ee0179` |
| 8 | `theorem` | [boundaryResidual_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/boundaryresidual-succ-sub--f2ed42c03959b02622e46f7d.md) | 66 | `result-track:f2ed42c03959b02622e46f7d7ebea025f5df524c6b33ef3f96dadca2e0ae771e` |
| 9 | `theorem` | [boundaryResidual_increment_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/boundaryresidual-increment-product--a8c72eb81e8e5bbdd52b6f07.md) | 76 | `result-track:a8c72eb81e8e5bbdd52b6f070dfaa2df1ac644b8323b590e5660d69e684d65fc` |
| 10 | `theorem` | [boundaryResidual_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/boundaryresidual-memlp--3610ee6da4556c698f638c0c.md) | 90 | `result-track:3610ee6da4556c698f638c0cc24c2458b4370204e1359f3ca2a9771398639901` |
| 11 | `theorem` | [boundaryResidual_increment_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant058b31245c93da47fbc6346bed80b4b33ba1a0e46b9761e0c76322eb61bbbb94.lean/declarations/boundaryresidual-increment-product-integrable--8f1a55996ead87e4f2c2215c.md) | 116 | `result-track:8f1a55996ead87e4f2c2215c25768baad48eaf3a510e8f0ccdfacf00d253a8f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
