# Verification target: GRWTSK.NumberTheory.Zeta.GreenMellinContinuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d5ca3ac5b2d554941613a61dcb3ef65b444e842",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d5ca3ac5b2d554941613a61dcb3ef65b444e842`.

Source path: `GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/GreenMellinContinuation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.VonMangoldt.DyadicEulerIdentification`](../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicEulerIdentification.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence`](../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuation_of_energy](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/declarations/continuation-of-energy--ee012ee7323c86f2797d4f79.md) | 29 | `result-track:ee012ee7323c86f2797d4f797f51f14a4206f8f20f02c90a48fb67c38563e14e` |
| 2 | `theorem` | [continuation_differentiableAt_one](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/declarations/continuation-differentiableat-one--44345322e4affb77185af7de.md) | 37 | `result-track:44345322e4affb77185af7dee59526458cfa8bbe57c16ee67f17c0b681256aef` |
| 3 | `theorem` | [exists_holomorphic_extension](../../../../mathematics/NumberTheory/Zeta/GreenMellinContinuation.lean/declarations/exists-holomorphic-extension--ed4c862f207edfb780fd616f.md) | 46 | `result-track:ed4c862f207edfb780fd616f97d4a59ca97a071a34d9fb89768eca5efb4c8a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
