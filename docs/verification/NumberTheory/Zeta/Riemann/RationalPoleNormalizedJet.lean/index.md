# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleNormalizedJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a630238e699825c5b38e3732dffececf0d684e6e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a630238e699825c5b38e3732dffececf0d684e6e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedEndpointJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedEndpointJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalEndpointJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Rat.BigOperators` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/regularjet--bee491fc6b79c15fc79d64b4.md) | 31 | `declaration-track:bee491fc6b79c15fc79d64b4d0ac98def08e87899cf99d1c36dfed6cad60b0ff` |
| 2 | `def` | [coefficientJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/coefficientjet--be6eadb3934b6937efa76d9b.md) | 39 | `declaration-track:be6eadb3934b6937efa76d9b75b251eb209d4aad8528b27f6e6a60d96976d022` |
| 3 | `theorem` | [regularJet_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/regularjet-refines--8e1cf5a5f4032a47a0b47b45.md) | 44 | `result-track:8e1cf5a5f4032a47a0b47b45a31bfeb9bb3c49afa7a158cb583cb3feac1d7bcf` |
| 4 | `theorem` | [coefficientJet_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/coefficientjet-refines--99a599345295cd3077d7eb4f.md) | 57 | `result-track:99a599345295cd3077d7eb4fb2e9e08ade04ef471c3ab33fc27fa6282b82e190` |
| 5 | `def` | [assemble](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/assemble--4e64b1224ff359a88b7e4719.md) | 66 | `declaration-track:4e64b1224ff359a88b7e47190e66015ff9cb9a0b72e258ef48a2807cd7e7865d` |
| 6 | `theorem` | [assemble_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/assemble-sound--b834cc922986036078887d1b.md) | 77 | `result-track:b834cc922986036078887d1bdf4dfaa16ff3e34ed4da4edb5442860d326a51ec` |
| 7 | `def` | [tailAllowance](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/tailallowance--6d15e83db69bbdf1697c3522.md) | 108 | `declaration-track:6d15e83db69bbdf1697c3522526a932ddc5549dbf5fb06fa55883d113e28c521` |
| 8 | `def` | [sourceAllowance](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/sourceallowance--e854788c754a153018c291ec.md) | 113 | `declaration-track:e854788c754a153018c291ecf59bb16fb0eef379aeab0fad69d6ac737663bfe9` |
| 9 | `def` | [sourceBall](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/sourceball--e185e5869e69811729f6eef2.md) | 116 | `declaration-track:e185e5869e69811729f6eef2141f83005139461624642bdf8bcc5f4a452034bf` |
| 10 | `theorem` | [source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/source-error--bc1f064f4a9403da99c1847d.md) | 120 | `result-track:bc1f064f4a9403da99c1847d4f774d7f2dd79dd28dea722bbe098c13e1605289` |
| 11 | `theorem` | [sourceBall_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/declarations/sourceball-sound--7e333124725d2a0339ef2345.md) | 143 | `result-track:7e333124725d2a0339ef2345196f538f6fca5343a235927a441ea566c5a2ff15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
