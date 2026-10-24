# Verification target: GRWTSK.Algebra.Field.Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9a9653907ee03dec489f24bf8ebe8cc92893dd8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9a9653907ee03dec489f24bf8ebe8cc92893dd8`.

Source path: `GRWTSK/Algebra/Field/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Field` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isSeparable_aux](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/declarations/of-isseparable-aux--ed751ff54a5e9676bb166c1b.md) | 57 | `result-track:ed751ff54a5e9676bb166c1bbd3ddc9e4d98b40f7bf02093a398aeaf2d94deb2` |
| 2 | `lemma` | [of_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/declarations/of-isseparable--161d232abdd11b7347f2f808.md) | 99 | `result-track:161d232abdd11b7347f2f8084d7b4ed98cd2e88187aa4872d4b9b28d20ae14df` |
| 3 | `theorem` | [iff_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/declarations/iff-isseparable--d5212b4f309f818d1da80c94.md) | 160 | `result-track:d5212b4f309f818d1da80c944a09c6f85a157350b47b714d6d4c73aeaa3599c5` |
| 4 | `theorem` | [iff_exists_algEquiv_prod](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/declarations/iff-exists-algequiv-prod--42aae828180be425c2fd2ecd.md) | 169 | `result-track:42aae828180be425c2fd2ecdcb0f095cb240dd29b6855b55bd92e0ab40794fd2` |
| 5 | `theorem` | [Algebra.Etale.iff_exists_algEquiv_prod](../../../../mathematics/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/declarations/algebra-etale-iff-exists-algequiv-prod--38c90346057a217318192d93.md) | 196 | `result-track:38c90346057a217318192d93946fa2acadf7bdaf5308d2602e57a4d191fcea0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
