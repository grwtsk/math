# Verification target: GRWTSK.Algebra.GroupTheory.Cardinality.Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbaeaf47fcf7a1b96913e6f770c817c240116a71",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbaeaf47fcf7a1b96913e6f770c817c240116a71`.

Source path: `GRWTSK/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [oreDiv_one_surjective_of_finite_left](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/orediv-one-surjective-of-finite-left--8d4f413167555ac281271487.md) | 33 | `result-track:8d4f413167555ac281271487650177c3193a53afbfd683bbd0b92e33dfaa972a` |
| 2 | `theorem` | [oreDiv_one_surjective_of_finite_right](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/orediv-one-surjective-of-finite-right--c5adf5db044dc0fca43e4aa2.md) | 47 | `result-track:c5adf5db044dc0fca43e4aa244a1b511d9f59851a562fd7217c3c64f7ce57c82` |
| 3 | `theorem` | [numeratorHom_surjective_of_finite](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/numeratorhom-surjective-of-finite--430ddcb937ccaab5018e315e.md) | 61 | `result-track:430ddcb937ccaab5018e315e2871b8e5687b326cd4f17681871e06155add97c5` |
| 4 | `theorem` | [cardinalMk_le_max](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/cardinalmk-le-max--6b2ec7dc69cbe5a60712baa6.md) | 65 | `result-track:6b2ec7dc69cbe5a60712baa6d5c5e90cba79a2c72d89b420ed2333f3348ed0e1` |
| 5 | `theorem` | [cardinalMk_le](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/cardinalmk-le--83f1604f69ef2ba74a2cfd0b.md) | 80 | `result-track:83f1604f69ef2ba74a2cfd0bb84c039ce0bfe447a5e669376d9e5cd5591619e5` |
| 6 | `theorem` | [cardinalMk_le_lift_cardinalMk_of_commute](../../../../../mathematics/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/declarations/cardinalmk-le-lift-cardinalmk-of-commute--e3cf916540ef276d07b2786d.md) | 86 | `result-track:e3cf916540ef276d07b2786d5d27747ed2d5395cfc7a0606454069f29641b0fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
