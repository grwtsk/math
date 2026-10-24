# Verification target: GRWTSK.NumberTheory.SourceNativeDirichlet.Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0602c92933415326830e60965961d3b732d17bd4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0602c92933415326830e60965961d3b732d17bd4`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightLineMajorant](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/rightlinemajorant--21d81365d1cbcd4117e918f1.md) | 28 | `declaration-track:21d81365d1cbcd4117e918f118c5ae3f33691209931355606f45dc6a6bbc2ad4` |
| 2 | `def` | [combinedMultiplier](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/combinedmultiplier--34e292f4ddce826f04ddb09b.md) | 32 | `declaration-track:34e292f4ddce826f04ddb09b2a8dc9e905c556f42edec22e11bae1a1c30fd7a0` |
| 3 | `theorem` | [term_norm](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/term-norm--98b13b4d645b24030b34e9c1.md) | 34 | `result-track:98b13b4d645b24030b34e9c1bbb4170d4f8a7958d4a9958c7fc0170cc4ff4492` |
| 4 | `theorem` | [rightLineMajorant_summable](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/rightlinemajorant-summable--c6b905eeaaed306bd56328b3.md) | 44 | `result-track:c6b905eeaaed306bd56328b39eed11afc41cbfa23ba4c8f9ba3e60afd5c39e97` |
| 5 | `theorem` | [norm_series_eq_majorant](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/norm-series-eq-majorant--62f906e03967737d51852694.md) | 50 | `result-track:62f906e03967737d51852694877df76c198fce6302156b6941d3d0018dce662f` |
| 6 | `theorem` | [combinedMultiplier_norm_le](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/combinedmultiplier-norm-le--af413d9fc2dd7a46e76d4026.md) | 62 | `result-track:af413d9fc2dd7a46e76d40266b06a0388a065fa704f4a738d00c8c9c5eff188d` |
| 7 | `theorem` | [rightLineMajorant_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variantd8a3fe9d0d8ab7def6887589fb8f39e98719fdeee982cbbfe7f97f662627b143.lean/declarations/rightlinemajorant-nonneg--d6efd2ffb47b398c3d4c423b.md) | 76 | `result-track:d6efd2ffb47b398c3d4c423b4aee8a513742bcba426ad43dba0fdfd6f7f330cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
