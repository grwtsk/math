# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc2de01a85851a7ab8377917bb2a5dff21798f38",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc2de01a85851a7ab8377917bb2a5dff21798f38`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetData`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/declarations/projection--a86de65507efae55175300b1.md) | 22 | `declaration-track:a86de65507efae55175300b1b599319c6879601a9b5f7365cf173e2bc2cd3da1` |
| 2 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/declarations/coefficients--12e950d88b23799e05a99499.md) | 24 | `declaration-track:12e950d88b23799e05a9949978d767b5497e871d4fb6e7ebc533d3b212bbcc7a` |
| 3 | `lemma` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/declarations/tensor-identity--723243db7c463e54eefcbea8.md) | 39 | `result-track:723243db7c463e54eefcbea844c8d183993792c758cff83f5d097945b833c515` |
| 4 | `lemma` | [polynomial_projection_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetBernstein.lean/declarations/polynomial-projection-lower--dcac0dff023c5f1059a5507b.md) | 48 | `result-track:dcac0dff023c5f1059a5507b7ada3fbf9d64e15a881d6b663d411ebcaf945e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
