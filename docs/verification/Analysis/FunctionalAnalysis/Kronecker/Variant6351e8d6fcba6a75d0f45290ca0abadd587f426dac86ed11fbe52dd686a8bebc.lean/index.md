# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Kronecker.Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88aad76501255337703dc921fdc8466326cf0f7e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88aad76501255337703dc921fdc8466326cf0f7e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.FeatureMap` — import line 1; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Kronecker` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [raw_eq_zero_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/raw-eq-zero-of-posdef--098681ad3d81ffbac7fc60b0.md) | 27 | `result-track:098681ad3d81ffbac7fc60b0a739faabde41c7d46e7998b1480230a2cfdf6d8c` |
| 2 | `theorem` | [kernelVector_injective_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kernelvector-injective-of-posdef--cc31580d7edded3bc356da4b.md) | 40 | `result-track:cc31580d7edded3bc356da4b2720748f5fc3aaf9dc2ee1c7e30c632873d3719d` |
| 3 | `theorem` | [kernelVector_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kernelvector-injective--5cadfcf994efb997f778719e.md) | 64 | `result-track:5cadfcf994efb997f778719e0e01434fc1e02baca7f0ebe3ac0668b0a2a9966e` |
| 4 | `theorem` | [kernelKronecker_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kernelkronecker-apply--32a42a2fa3a82a53828792ea.md) | 81 | `result-track:32a42a2fa3a82a53828792ea1d4f1a6fc320d2b26bbb4e839f145fe7046ff966` |
| 5 | `theorem` | [kronecker_kernelVector_orthonormal](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kronecker-kernelvector-orthonormal--ac0d4d48c860cc6cc96eb8ec.md) | 87 | `result-track:ac0d4d48c860cc6cc96eb8ecb8e2f56dce6393a47b3df46b28be56654353dfc8` |
| 6 | `theorem` | [kronecker_kernelVector_total](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kronecker-kernelvector-total--a3d69ea3a43551ac1a77a8a2.md) | 94 | `result-track:a3d69ea3a43551ac1a77a8a24c92477384313f2b1a127973bb15b4ecad223e34` |
| 7 | `def` | [kroneckerHilbertBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kroneckerhilbertbasis--21b1104e0524fc601c2ae046.md) | 101 | `declaration-track:21b1104e0524fc601c2ae046a48887ae668758992b4f94c70bea27fb7072133e` |
| 8 | `theorem` | [kroneckerHilbertBasis_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kroneckerhilbertbasis-apply--ac9370dbc4bbcd4872d78630.md) | 109 | `result-track:ac9370dbc4bbcd4872d786308a99b37bf006182d23529cc4f646cc7032f4ebe7` |
| 9 | `def` | [kroneckerCompletionEquivL2](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kroneckercompletionequivl2--0eb682be3ca4dc7da1ecdae3.md) | 116 | `declaration-track:0eb682be3ca4dc7da1ecdae3f87b3a10db84304bcf31cf469bbff02b747dbb79` |
| 10 | `theorem` | [kroneckerCompletionEquivL2_kernelVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/declarations/kroneckercompletionequivl2-kernelvector--baabcff8587b7a8f2ed49c94.md) | 124 | `result-track:baabcff8587b7a8f2ed49c94bf728a2511180fd3a87aa1f48233d376a141cb21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
