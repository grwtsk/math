# Verification target: GRWTSK.Analysis.FunctionalAnalysis.DivisorSourceBridge.Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85c8f3db51177904ee734a4c47a7597d0b76e5ec",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85c8f3db51177904ee734a4c47a7597d0b76e5ec`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.CyclicGraphWitness` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residualDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/residualdivisor--fc3f7ec23fd38c7c40b288c8.md) | 21 | `declaration-track:fc3f7ec23fd38c7c40b288c85373cf6171c358fcb2fad5b5ccfdb9d40571cb0b` |
| 2 | `def` | [extractedDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/extracteddivisor--32a491362645c89458c222ff.md) | 25 | `declaration-track:32a491362645c89458c222ff190c4c9ee3ddb089a8c41cdbe9f119119a64bc49` |
| 3 | `theorem` | [extractedDivisor_valuation](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/extracteddivisor-valuation--93c03300850c570fbd8fc162.md) | 30 | `result-track:93c03300850c570fbd8fc162b87d74721c477dc62bdcae02c6eda43d2fb91e12` |
| 4 | `theorem` | [state_valuation_partition](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/state-valuation-partition--7cb1e0602c74602868d3a8f8.md) | 35 | `result-track:7cb1e0602c74602868d3a8f8b7d10a86f2b2773db4e4737a6c0de62575558ae8` |
| 5 | `theorem` | [state_representation_reconstruction](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/state-representation-reconstruction--090553d7325f79ada12f405b.md) | 47 | `result-track:090553d7325f79ada12f405bba6e83505d970a8f9c30b84c97737f647a1b45e7` |
| 6 | `theorem` | [refinement_residual_order](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/refinement-residual-order--1dfb2e113886bc7f1d1e1bdb.md) | 54 | `result-track:1dfb2e113886bc7f1d1e1bdb60bd2a672cd5f1988653ea8844e10c2043fc538c` |
| 7 | `theorem` | [refinement_cyclic_subgroup](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/refinement-cyclic-subgroup--9e881c265e62d453bf84696a.md) | 58 | `result-track:9e881c265e62d453bf84696ac846aa257ad40f204c9fe9d088bf7c23436c9dc1` |
| 8 | `theorem` | [refinement_exclusion](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/refinement-exclusion--42e64458752969468d3ccf51.md) | 64 | `result-track:42e64458752969468d3ccf517a551905738a36594b80c509aef8c4400474e190` |
| 9 | `def` | [packingCongruenceOrderIso](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packingcongruenceorderiso--1b7197f6d4cadbabfea9c00c.md) | 69 | `declaration-track:1b7197f6d4cadbabfea9c00c26398cf2ba63cf433b6817c0dd706f90d03b247e` |
| 10 | `theorem` | [packing_graph_witness](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packing-graph-witness--c1dd11b919c3ffc148224634.md) | 75 | `result-track:c1dd11b919c3ffc148224634b55699ba3aa949f1ed8665546fe9cad39a7f51ca` |
| 11 | `def` | [packingKernelDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packingkerneldivisor--40965467bf15f0e7c03414db.md) | 80 | `declaration-track:40965467bf15f0e7c03414db438186f9cae944a75d3887a976e218e1cb659a1d` |
| 12 | `theorem` | [packing_reduction_threshold](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packing-reduction-threshold--c9b8c9690e05012b7ad50fd6.md) | 86 | `result-track:c9b8c9690e05012b7ad50fd6934cf6132c76c0acee3b7cc00675ba6cfc6b16f7` |
| 13 | `theorem` | [packing_forbidden_threshold](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packing-forbidden-threshold--d6776b9c18129532f27649c6.md) | 100 | `result-track:d6776b9c18129532f27649c6ad865a5489ce9b4242356280faf1ed4d0a96a4de` |
| 14 | `theorem` | [rawAdmissible_color_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/rawadmissible-color-consumer--34f7a15f2acd37e118ec7fad.md) | 121 | `result-track:34f7a15f2acd37e118ec7fadb79bc5c8344c117240e6222cf95d511d8da0bf14` |
| 15 | `theorem` | [packing_integer_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packing-integer-consumer--7f0ef9d34bf11fa533abdaa4.md) | 129 | `result-track:7f0ef9d34bf11fa533abdaa47b8ede98e12af454cc5f49346e79f8cf833e8e31` |
| 16 | `theorem` | [packing_card_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/declarations/packing-card-consumer--41f32e47ec0a56bff89f5394.md) | 135 | `result-track:41f32e47ec0a56bff89f5394ec48019272fc40acd9b146d9fc919dd01e6ccb45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
