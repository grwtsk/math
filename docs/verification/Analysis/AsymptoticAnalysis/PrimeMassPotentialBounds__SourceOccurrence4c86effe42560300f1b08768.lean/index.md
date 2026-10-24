# Verification target: GRWTSK.Analysis.Asymptotics.PrimeMassPotentialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9305ad5575f1e86d3109712e26845bda583a4b2`.

Source path: `GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/PrimeMassPotentialBounds.lean.json)

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
| 1 | `structure` | [BudgetedChain](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/budgetedchain--0341430b2a55c29c238a56ba.md) | 19 | `declaration-track:0341430b2a55c29c238a56ba684217ea7d3989353e3b37ee3536c3e7a195f11a` |
| 2 | `def` | [PrimeHarmonicEstimate](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/primeharmonicestimate--044e7186515d24d8b4f00550.md) | 26 | `declaration-track:044e7186515d24d8b4f00550bf60dffc30a30dc4e7ba7f83378ad1e9d505a0ec` |
| 3 | `theorem` | [harmonicMass_nonnegative](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/harmonicmass-nonnegative--dca22b898a72348023091d14.md) | 29 | `result-track:dca22b898a72348023091d14e83e5ae04fc68a95ac4ed85b0324350dafae8986` |
| 4 | `theorem` | [prefixSum_const_mul](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/prefixsum-const-mul--ca91940299180ede0ec60c1c.md) | 33 | `result-track:ca91940299180ede0ec60c1cbbae19c1690ab0c1235f2818985810b5e9273782` |
| 5 | `theorem` | [log_horizon_subadditive](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/log-horizon-subadditive--6eb158b8e7428e83b3ae1f31.md) | 39 | `result-track:6eb158b8e7428e83b3ae1f3172c74676b085b07934203853f1a2510249cf355d` |
| 6 | `theorem` | [log_horizon_linear](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/log-horizon-linear--c591941ad854aab061b6cad0.md) | 46 | `result-track:c591941ad854aab061b6cad0527881901095ce5a722090fddfb27da8d3a58151` |
| 7 | `theorem` | [initial_potential_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/initial-potential-bound--a971e7f72beb2755fc6aed4f.md) | 51 | `result-track:a971e7f72beb2755fc6aed4ffc59f7342c090052d8edab8f34ed140f67e9f661` |
| 8 | `theorem` | [cost_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/cost-budget--5256cb0e8eaa7abbf11b1fbd.md) | 73 | `result-track:5256cb0e8eaa7abbf11b1fbde25347f8d15022c939f2ad1afefbad3cf16ac65c` |
| 9 | `theorem` | [debit_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/debit-budget--4fd684bbc4f260f43fc80f9d.md) | 87 | `result-track:4fd684bbc4f260f43fc80f9df146224be7ad0ba92b02a2087eb7ef8a0a50cca8` |
| 10 | `def` | [completionFromAS](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/completionfromas--5c71cba48af89e54ea04adcf.md) | 107 | `declaration-track:5c71cba48af89e54ea04adcfcaff3d77b9afd2a2b66453ec4136bf44fd62fafd` |
| 11 | `theorem` | [AS_implies_literal_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/declarations/as-implies-literal-p04--05b8c7dfa97584ea37f7b482.md) | 132 | `result-track:05b8c7dfa97584ea37f7b482d85191bb50b2969f793ab68c2d392a50182d7f35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
