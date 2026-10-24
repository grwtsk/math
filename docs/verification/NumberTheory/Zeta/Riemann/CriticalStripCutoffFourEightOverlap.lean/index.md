# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffFourEightOverlap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f088e71b427eb082a1b2569b51175ecec4a2fd67",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f088e71b427eb082a1b2569b51175ecec4a2fd67`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetFourteenHeight`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [centers_agree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/centers-agree--6f8d5ba223aea4e33666d9a8.md) | 27 | `result-track:6f8d5ba223aea4e33666d9a87b54f53d68fbe9769b10205571c60831f6a33609` |
| 2 | `theorem` | [finite_cutoff_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/finite-cutoff-telescope--7228a9e766a14cfa93ce60d0.md) | 30 | `result-track:7228a9e766a14cfa93ce60d0f7b351990efd5f165a600f5665c542190c498e4b` |
| 3 | `theorem` | [polynomial_cutoff_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/polynomial-cutoff-telescope--535daee5ed2c6ce65c657e04.md) | 39 | `result-track:535daee5ed2c6ce65c657e04f07154b5cd6354081edfedae0a2783bb1d12030a` |
| 4 | `theorem` | [model_source_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/model-source-telescope--c327b61ace9d56ff26bb6ef0.md) | 49 | `result-track:c327b61ace9d56ff26bb6ef03871a2ec920f86b0fba279c146383da6a8e793d8` |
| 5 | `theorem` | [model_distance_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/model-distance-le--7c8b98e5f24124cd40bafef5.md) | 55 | `result-track:7c8b98e5f24124cd40bafef5159584c46ed09d38b1916a96e7a969d6b569b6db` |
| 6 | `lemma` | [norm_lower_from_diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/norm-lower-from-diagonal--a5026826d0373b17f76fca9b.md) | 63 | `result-track:a5026826d0373b17f76fca9b81773d49c57068d1e696890ec9b9a87290502579` |
| 7 | `theorem` | [source_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/source-norm-lower--57895291751cc34e63a45297.md) | 73 | `result-track:57895291751cc34e63a45297ec342c3bad7443f820f09a168a97828e3e608125` |
| 8 | `theorem` | [homotopy_source_endpoints](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourEightOverlap.lean/declarations/homotopy-source-endpoints--69a1f884a3a51b6d27997e65.md) | 78 | `result-track:69a1f884a3a51b6d27997e6537829d7950215097a9c5b989760c179bb73eb644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
