# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchPrimePowerCutoff.Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1dc0eea28aba23e01af59d227a0209de44fa88",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1dc0eea28aba23e01af59d227a0209de44fa88`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchScaleCutoff` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/partialmoment--5ad7787c15dcf48329e58cc4.md) | 30 | `declaration-track:5ad7787c15dcf48329e58cc40884e6f3566050256bea80da345cbe4e687483e8` |
| 2 | `def` | [priorMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/priormoment--03b2f82d3d00fb28730963d2.md) | 34 | `declaration-track:03b2f82d3d00fb28730963d2a5e692b7394f3dfdd4ea6c86e741b2d771d18f31` |
| 3 | `theorem` | [primePowerTerm_eq_source_coefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/primepowerterm-eq-source-coefficient--a6544f882a4e25c4ccbba660.md) | 38 | `result-track:a6544f882a4e25c4ccbba6606affd554ed97e293bb4a6001bff827c12dfb681f` |
| 4 | `theorem` | [closedPrimeMoment_eq_partialMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-eq-partialmoment--8baea60b842da282ea022f7d.md) | 47 | `result-track:8baea60b842da282ea022f7d92273f90535d657146ef9dd366933e14724312f8` |
| 5 | `theorem` | [closedPrimeMoment_eq_fixed_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-eq-fixed-sum--079ec1a0f001ae5627f1381e.md) | 56 | `result-track:079ec1a0f001ae5627f1381e242ae5a10b8e460a0954cf7e789a27a2bff997d3` |
| 6 | `theorem` | [closedPrimeMoment_eventually_eq_partial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-eventually-eq-partial--002a2b768f769ee03e198314.md) | 78 | `result-track:002a2b768f769ee03e1983143ac6b68a6d60877c051c87086befecc3fc1aed8a` |
| 7 | `theorem` | [partialMoment_eq_prior_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/partialmoment-eq-prior-add--53e359b5633c47afc0e68942.md) | 96 | `result-track:53e359b5633c47afc0e68942f9d79b5af444b3ddfc1f4507e6302ec68ddbbcd2` |
| 8 | `theorem` | [priorMoment_contDiffAt_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/priormoment-contdiffat-five--288aa25868be33b6e353f225.md) | 104 | `result-track:288aa25868be33b6e353f2256a07753f91468e2f37027257eca90c6211bd2258` |
| 9 | `theorem` | [primePowerTerm_inward_contDiffWithin_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/primepowerterm-inward-contdiffwithin-five--59188afa89c4973154d15b02.md) | 120 | `result-track:59188afa89c4973154d15b0281cfff0e80d8a2150ce866025e90db3ef6742b7c` |
| 10 | `theorem` | [primePowerTerm_outward_contDiffWithin_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/primepowerterm-outward-contdiffwithin-five--a57d1be29a0ebbf5c53cae92.md) | 136 | `result-track:a57d1be29a0ebbf5c53cae92b8eed9e833ccb3e686b6a7cf0e2737e59349b923` |
| 11 | `theorem` | [closedPrimeMoment_contDiffAt_four](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-contdiffat-four--37894f25ce49c5c244dea893.md) | 152 | `result-track:37894f25ce49c5c244dea893c57a9504a3e8f95c01e43938cddd601b15042e2c` |
| 12 | `theorem` | [closedPrimeMoment_inward_fifth_jet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-inward-fifth-jet--2d4a5d5c2e92d044b1dc94c5.md) | 161 | `result-track:2d4a5d5c2e92d044b1dc94c5c8242afd4fd7e8c6f593edb555c7786b9feedd92` |
| 13 | `theorem` | [closedPrimeMoment_outward_fifth_jet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-outward-fifth-jet--c00c6b1fb9497ec69c0dfa3e.md) | 185 | `result-track:c00c6b1fb9497ec69c0dfa3e40cbc276ade12e5ae02614dc366cb6225fc8d858` |
| 14 | `theorem` | [closedPrimeMoment_fifth_jump](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-fifth-jump--633e05aa3d8006e82796411e.md) | 210 | `result-track:633e05aa3d8006e82796411edd2600847aec48327032fa47150e3142282422fd` |
| 15 | `theorem` | [closedPrimeMoment_fifth_jump_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-fifth-jump-pos--e47ad9b83673c2062763ea32.md) | 221 | `result-track:e47ad9b83673c2062763ea32660bb77efc65d7d9321ceb3843344c7e825ea979` |
| 16 | `theorem` | [closedPrimeMoment_not_contDiffAt_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchPrimePowerCutoff/Variant7f404472d2305501203b6c716caf2f5b9761864621c96cbc9663c706f23d3e76.lean/declarations/closedprimemoment-not-contdiffat-five--9770cd7c6cd21a5dc09b2cd0.md) | 230 | `result-track:9770cd7c6cd21a5dc09b2cd0975daca00c20f69a60f80dc15213ae5acb184454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
