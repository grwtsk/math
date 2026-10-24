# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e0059d6f22783e7695e655955045203e164476",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e0059d6f22783e7695e655955045203e164476`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence`](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence87b55907d2ba6a854b10e417.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionChain](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/declarations/completionchain--052a146d046f1b5c2295889d.md) | 14 | `declaration-track:052a146d046f1b5c2295889dc475102fa7394f0f2b741b13e779512c3e236a84` |
| 2 | `structure` | [AmortizedCompletion](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/declarations/amortizedcompletion--277e6a28012ae1f7260f22e9.md) | 27 | `declaration-track:277e6a28012ae1f7260f22e9deb5bf718ccec421d9b4d198c4435b3fa81df943` |
| 3 | `theorem` | [completion_energy_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/declarations/completion-energy-bound--8ca072be72663c2ef1ac356e.md) | 43 | `result-track:8ca072be72663c2ef1ac356ec65f587bf298a881fd7860a7cff748456d53e143` |
| 4 | `theorem` | [amortized_completion_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/declarations/amortized-completion-implies-p04--c6ccea171845405513e223fe.md) | 85 | `result-track:c6ccea171845405513e223fe7666855f0857d7807bcb361176275ee2be5f8436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
