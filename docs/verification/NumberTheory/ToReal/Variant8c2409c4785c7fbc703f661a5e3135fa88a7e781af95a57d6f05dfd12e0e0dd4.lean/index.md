# Verification target: GRWTSK.NumberTheory.ToReal.Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6274e7a274418257e29cabf57b9442c35994b3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6274e7a274418257e29cabf57b9442c35994b3`.

Source path: `GRWTSK/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toReal](../../../../mathematics/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean/declarations/toreal--d590578284b16b8b14ac0506.md) | 23 | `declaration-track:d590578284b16b8b14ac0506b146097c83172b8a3940ab3f801ca2192253eb4b` |
| 2 | `theorem` | [toReal_injective](../../../../mathematics/NumberTheory/ToReal/Variant8c2409c4785c7fbc703f661a5e3135fa88a7e781af95a57d6f05dfd12e0e0dd4.lean/declarations/toreal-injective--b4d520969139e892eb04fb40.md) | 26 | `result-track:b4d520969139e892eb04fb4010afbb63fa7c8e88f4c04fe87273dc4a2b9a2d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
