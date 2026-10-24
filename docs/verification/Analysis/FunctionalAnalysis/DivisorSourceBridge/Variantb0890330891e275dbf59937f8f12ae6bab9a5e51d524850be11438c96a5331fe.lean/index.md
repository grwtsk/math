# Verification target: GRWTSK.Analysis.FunctionalAnalysis.DivisorSourceBridge.Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31892397b4f508e0e077c8704f7ecf21c2a4811e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31892397b4f508e0e077c8704f7ecf21c2a4811e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.CyclicGraphWitness` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residualDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/residualdivisor--6a1ad0fab0bf42e0bdb4f529.md) | 29 | `declaration-track:6a1ad0fab0bf42e0bdb4f529a4af41569248326d0f5f1f277e7851d0fddb3175` |
| 2 | `def` | [extractedDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/extracteddivisor--17c19dac4a2e9e3dd0c455b6.md) | 33 | `declaration-track:17c19dac4a2e9e3dd0c455b681b76ccaaabe06fc5fc559c18d9c5e46b2a82c0b` |
| 3 | `theorem` | [extractedDivisor_valuation](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/extracteddivisor-valuation--7425d0bc32f0fbd230ccafa7.md) | 38 | `result-track:7425d0bc32f0fbd230ccafa7d628573abcf85680d51a6039a7e898923ac56529` |
| 4 | `theorem` | [state_valuation_partition](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/state-valuation-partition--ba1145fdce9b156241942ca9.md) | 43 | `result-track:ba1145fdce9b156241942ca9ea783e5e86732e575d2258f303b4369484c4af2b` |
| 5 | `theorem` | [state_representation_reconstruction](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/state-representation-reconstruction--4a5daa91b82980213faee858.md) | 55 | `result-track:4a5daa91b82980213faee858e47b06319912f9d98f5813107e4bbb85cfbd1d1b` |
| 6 | `theorem` | [refinement_residual_order](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/refinement-residual-order--7c94e532078e501abd6a98d4.md) | 62 | `result-track:7c94e532078e501abd6a98d4b9435bcc868f3de86a5aeff857e8bd37861adb4f` |
| 7 | `theorem` | [refinement_cyclic_subgroup](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/refinement-cyclic-subgroup--150b2d4c332e61b03cb493df.md) | 66 | `result-track:150b2d4c332e61b03cb493dff2b7c56d300ac4a30766ce900d7d1a854e9a472c` |
| 8 | `theorem` | [refinement_exclusion](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/refinement-exclusion--d071b7a547158f3276df757b.md) | 72 | `result-track:d071b7a547158f3276df757b3ddcdd9fe82c483dc7d222a360a056deaa44261c` |
| 9 | `def` | [packingCongruenceOrderIso](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packingcongruenceorderiso--dada275ec190a3a6582b2308.md) | 77 | `declaration-track:dada275ec190a3a6582b23081172da8709fa1a076e626dd7ce46d7b2a53028e2` |
| 10 | `theorem` | [packing_graph_witness](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packing-graph-witness--3a8f3605bfc9de051b47a996.md) | 83 | `result-track:3a8f3605bfc9de051b47a99637b2aee6a870f368f4be518514261e392298423c` |
| 11 | `def` | [packingKernelDivisor](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packingkerneldivisor--5e44fd3d267fe51e1cebc2b3.md) | 88 | `declaration-track:5e44fd3d267fe51e1cebc2b36c30f54bc791e6803d8dc994893660d7f26a2743` |
| 12 | `theorem` | [packing_reduction_threshold](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packing-reduction-threshold--5398b236289000ea0238d73e.md) | 94 | `result-track:5398b236289000ea0238d73e04be010430c1ccf3dc95bdc71c0ea0db17ffd509` |
| 13 | `theorem` | [packing_forbidden_threshold](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packing-forbidden-threshold--d6cfd740c34243e41620571f.md) | 108 | `result-track:d6cfd740c34243e41620571fd67537708f44b0ffa392f5c2378c5795acc66a99` |
| 14 | `theorem` | [rawAdmissible_color_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/rawadmissible-color-consumer--2438d1583dc11fa7350d2fac.md) | 129 | `result-track:2438d1583dc11fa7350d2fac88cac12834566291d37e694842204e55a04ab60a` |
| 15 | `theorem` | [packing_integer_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packing-integer-consumer--fa21648466138e07f3755b59.md) | 137 | `result-track:fa21648466138e07f3755b5912d04bbefa2df2f6922f80c901287c372d73f3cb` |
| 16 | `theorem` | [packing_card_consumer](../../../../../mathematics/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/declarations/packing-card-consumer--e7da27e9a9a5dcb34b096502.md) | 143 | `result-track:e7da27e9a9a5dcb34b09650242bb96db99064ad0a73cedcae3e75e0cdf48020f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
