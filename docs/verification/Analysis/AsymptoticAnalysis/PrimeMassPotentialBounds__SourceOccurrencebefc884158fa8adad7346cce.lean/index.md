# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9305ad5575f1e86d3109712e26845bda583a4b2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeTranslationBoundContracts__SourceOccurrence639d86d7014d0b023ad24fe3.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence87b55907d2ba6a854b10e417.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds`](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BudgetedChain](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/budgetedchain--26c37276951a3cba30b6e1af.md) | 19 | `declaration-track:26c37276951a3cba30b6e1afa7606304c5bf4177740263352f61b8d0488b01f5` |
| 2 | `def` | [PrimeHarmonicEstimate](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/primeharmonicestimate--cb6d3e3cb11190c647f9c2e8.md) | 26 | `declaration-track:cb6d3e3cb11190c647f9c2e830935a6edb2eca994909b5edf47937adf51b7808` |
| 3 | `theorem` | [harmonicMass_nonnegative](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/harmonicmass-nonnegative--f9d5a07c36116d281077b94b.md) | 29 | `result-track:f9d5a07c36116d281077b94b297a007872bdda8d0ac70755abed1909ebd1d3c0` |
| 4 | `theorem` | [prefixSum_const_mul](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/prefixsum-const-mul--0c11eee1696da8cfb79e2702.md) | 33 | `result-track:0c11eee1696da8cfb79e2702944b936cc427046d9b3bb28116b17fab4919550e` |
| 5 | `theorem` | [log_horizon_subadditive](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/log-horizon-subadditive--7459f711978d5702a1ef8fc0.md) | 39 | `result-track:7459f711978d5702a1ef8fc0fa3466174c96c0b8c1ddfb4d6b2fa9973654db13` |
| 6 | `theorem` | [log_horizon_linear](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/log-horizon-linear--98801f53662016eabf418e7f.md) | 46 | `result-track:98801f53662016eabf418e7f19b0c8ebc452f736b142c1177a7d32923b1b1509` |
| 7 | `theorem` | [initial_potential_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/initial-potential-bound--883d1aa4ce37fb4aa99631e8.md) | 51 | `result-track:883d1aa4ce37fb4aa99631e8309472031d4a1088e3c79301446650b796cff384` |
| 8 | `theorem` | [cost_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/cost-budget--35d4a30e7167fff24b43d810.md) | 73 | `result-track:35d4a30e7167fff24b43d810aca6f96a9ac4e30634594890954a54586c34cd58` |
| 9 | `theorem` | [debit_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/debit-budget--abd635a70381db6a8ea61ddd.md) | 87 | `result-track:abd635a70381db6a8ea61dddba36bf71eb29697937d3a9c82eb4feac42838ba3` |
| 10 | `def` | [completionFromAS](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/completionfromas--9a6b74c4c182828e19a6bb2c.md) | 107 | `declaration-track:9a6b74c4c182828e19a6bb2c50c526990c2088382727765309423d0da7135f8b` |
| 11 | `theorem` | [AS_implies_literal_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/declarations/as-implies-literal-p04--eb1a644d040e264df59de9b6.md) | 132 | `result-track:eb1a644d040e264df59de9b6171cba78c7083ac54a65d36bea22dd71bb5224ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
