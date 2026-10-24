# Verification target: GRWTSK.Algebra.FieldTheory.FieldExtensions.FiniteCumulativeComposita

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d7cf1b46d6e024281ce0cc5de290b374d03432e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d7cf1b46d6e024281ce0cc5de290b374d03432e`.

Source path: `GRWTSK/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/declarations/cumulativefield--e7edda5ac0d821233c8c8bd0.md) | 27 | `declaration-track:e7edda5ac0d821233c8c8bd0369106c20f66f9dcbf73e094bbc61b80698dfb81` |
| 2 | `theorem` | [cumulative_field_mono](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/declarations/cumulative-field-mono--3354faaae01d08a13044d2b6.md) | 31 | `result-track:3354faaae01d08a13044d2b6391f16c1143260c39d5a68b32cd62147033878c5` |
| 3 | `theorem` | [component_le_cumulative](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/declarations/component-le-cumulative--fbd418b9bfe9457135679bcc.md) | 36 | `result-track:fbd418b9bfe9457135679bcc95496b154f996ea2a8612bbe5021e455d2f53e25` |
| 4 | `def` | [cumulativeInclusion](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/declarations/cumulativeinclusion--036538f39f0fdb79fedd05ff.md) | 41 | `declaration-track:036538f39f0fdb79fedd05ff4aafe0658f442ac43236404dc5dbf11d967ef3ec` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../../mathematics/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean/declarations/cumulative-inclusion-comp--c248ab18f82f2c5d15c20303.md) | 46 | `result-track:c248ab18f82f2c5d15c203033d6bfbe901d54c85ee8dad480888174f39b05ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
