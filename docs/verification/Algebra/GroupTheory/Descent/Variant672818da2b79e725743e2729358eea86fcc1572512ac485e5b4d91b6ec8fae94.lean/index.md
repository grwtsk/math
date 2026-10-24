# Verification target: GRWTSK.Algebra.GroupTheory.Descent.Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f`.

Source path: `GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Group.fg_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/group-fg-of-descent--7157f433d24a08b72c580429.md) | 77 | `result-track:7157f433d24a08b72c580429d6cffe317e54e354f70c28fc34140d784675bf4d` |
| 2 | `theorem` | [CommGroup.fg_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/commgroup-fg-of-descent--af2b2f0d0cf37f355ded0ed8.md) | 120 | `result-track:af2b2f0d0cf37f355ded0ed8d0fbc5c8fea502f616b847819b7e9dc0d84a132b` |
| 3 | `theorem` | [CommGroup.fg_of_descent'](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/commgroup-fg-of-descent--f62da37d7e11ed9f03de88e2.md) | 157 | `result-track:f62da37d7e11ed9f03de88e28eeee24d4f64cfb9034e3c57936b4cb79ac3da53` |
| 4 | `theorem` | [Monoid.finite_set_isOfFiniteOrder_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/monoid-finite-set-isoffiniteorder-of-descent--ec1f6d7ae72289a2c4f9059b.md) | 178 | `result-track:ec1f6d7ae72289a2c4f9059b9c2a6e563952e72bfd4ada39778911cddc4e5a99` |
| 5 | `theorem` | [CommGroup.finite_torsion_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/commgroup-finite-torsion-of-descent--99768089039ae3776924582c.md) | 203 | `result-track:99768089039ae3776924582c9d4f590ebcc4888bd16de75c80ad0d3307794bce` |
| 6 | `theorem` | [CommGroup.finite_torsion_of_descent'](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/declarations/commgroup-finite-torsion-of-descent--775888375d51014545d214b2.md) | 220 | `result-track:775888375d51014545d214b2657f337c830a4213d57b092858e80b487a0468aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
