# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZetaSpectralGRHBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4626f58fe293d37943a4ec1900e64f84e29598b0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4626f58fe293d37943a4ec1900e64f84e29598b0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover`](../../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrdinateSoficLanguageCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaZeroProblem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetazeroproblem--f39440d56dcb26c529b38e56.md) | 44 | `declaration-track:f39440d56dcb26c529b38e5692c280d1a68548b290d3ba85a6e35e67ed8dbb81` |
| 2 | `theorem` | [zetaZeroProblem_hypothesis_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetazeroproblem-hypothesis-iff--ad2929ddddf5e37199d1436c.md) | 50 | `result-track:ad2929ddddf5e37199d1436c288a6594459ad14386c4c6a0c73f377a2ad47209` |
| 3 | `theorem` | [zetaCriticalPlacement_implies_generalized_of_spectralCovers](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetacriticalplacement-implies-generalized-of-spectralcovers--c191eb084d6a67fece5ea93f.md) | 58 | `result-track:c191eb084d6a67fece5ea93f9d6ee62cb96b727fab4d12e68eb941f3e34d2d33` |
| 4 | `theorem` | [generalized_implies_zetaCriticalPlacement_of_member_specialization](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/generalized-implies-zetacriticalplacement-of-member-specialization--ab1570298a8bdd9f39c0145a.md) | 70 | `result-track:ab1570298a8bdd9f39c0145a7f84d1b1ce7c9498ad87e2a9b2314b87bb538da0` |
| 5 | `theorem` | [zetaCriticalPlacement_iff_generalized_of_spectralCovers_and_specialization](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetacriticalplacement-iff-generalized-of-spectralcovers-and-specializati--be8c12122fbac88669c0ec4d.md) | 86 | `result-track:be8c12122fbac88669c0ec4d6f21a6916046f9956837823dae2b4a8ea6fb6579` |
| 6 | `theorem` | [zetaCriticalPlacement_transports_and_splits_ordinates](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetacriticalplacement-transports-and-splits-ordinates--7900f63b4706e805e2cebfed.md) | 101 | `result-track:7900f63b4706e805e2cebfedafbf47876cfffdf0f519583c224ffe43a4ee322b` |
| 7 | `theorem` | [zetaCriticalPlacement_transports_with_rightContext_certificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetacriticalplacement-transports-with-rightcontext-certificate--b2cbe04b3f8f1d4eb1c2c282.md) | 129 | `result-track:b2cbe04b3f8f1d4eb1c2c282ba8ade1ed63c58f6d77b310bfb355eb9a1b61fe8` |
| 8 | `theorem` | [zetaCriticalPlacement_transports_with_all_capacityCertificates](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/declarations/zetacriticalplacement-transports-with-all-capacitycertificates--6de32a785fbf35d7a273730d.md) | 166 | `result-track:6de32a785fbf35d7a273730d8c72f15c16ab77fba4e0f7c0539c5241810e1881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
