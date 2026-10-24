# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060ff626fd9943d6be5b715678b6d04d50c417d9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060ff626fd9943d6be5b715678b6d04d50c417d9`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/declarations/instance--206a59b1f9911771487d34eb.md) | 39 | `declaration-track:206a59b1f9911771487d34ebb14eb993b287bda2985daf35865a1f4b36a3eba6` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/declarations/classnumber--3c083d0b55bced37c6fd4965.md) | 45 | `declaration-track:3c083d0b55bced37c6fd4965ded7eb4a51bfd031220d36c0b48fe4cc4b907b77` |
| 3 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/declarations/classnumber-eq-one-iff--ff6c669fb93a876ea0f13731.md) | 52 | `result-track:ff6c669fb93a876ea0f13731f779019c2f7600021cac9bcfc13899557e789197` |
| 4 | `theorem` | [classNumber_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variantdfc577b655a2667d89acc89ae64853162593b7ac3bb0d2d693bd5043d4c20061.lean/declarations/classnumber-eq--2b18acbc6e68d3b8fa865cea.md) | 62 | `result-track:2b18acbc6e68d3b8fa865ceadcdf5c4ea4549a4baed591ea2d3a48153f1ec877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
