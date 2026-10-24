# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "126fd231827bec665f02c78ef5167f5486f4d9a2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `126fd231827bec665f02c78ef5167f5486f4d9a2`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [units_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/units-eq-one--c301a3e65f0fa00bea73b10e.md) | 28 | `result-track:c301a3e65f0fa00bea73b10e6f1415683f4e73f37c9769750640435d86c32aef` |
| 2 | `lemma` | [addUnits_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/addunits-eq-zero--bdba0eb3813192262899ddd1.md) | 30 | `result-track:bdba0eb3813192262899ddd1817cd1a6582afae8470c956c93821d6508d2e2e1` |
| 3 | `instance` | [unique_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/unique-units--49c08631caa5c679d71eefa8.md) | 33 | `declaration-track:49c08631caa5c679d71eefa80ade96a54f770d2e4efe7f410b337e74dd3c934e` |
| 4 | `instance` | [unique_addUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/unique-addunits--ffc29506ba5e38219c4274f3.md) | 37 | `declaration-track:ffc29506ba5e38219c4274f396c46d32ede000a5f23f985dc305dff3ad44a303` |
| 5 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/isunit-iff--e08df699e48910d5084e5e6e.md) | 42 | `result-track:e08df699e48910d5084e5e6ef2617e58fec627b5364a894a151e16ce2250ddba` |
| 6 | `lemma` | [isAddUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variante4f89da74adefb92d91230f10f29062635658753912fa604634f6e407bdefa86.lean/declarations/isaddunit-iff--e0047aab8a1ae9a2cde282c7.md) | 45 | `result-track:e0047aab8a1ae9a2cde282c769307d3fe5dce839c6f9253f6264dd2eea69db2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
