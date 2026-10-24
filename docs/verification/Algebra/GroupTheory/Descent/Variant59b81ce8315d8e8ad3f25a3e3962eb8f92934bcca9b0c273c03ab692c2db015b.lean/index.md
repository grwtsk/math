# Verification target: GRWTSK.Algebra.GroupTheory.Descent.Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `042a904f46d950bea9f607d67fbf827873c6c0b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Group.fg_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/group-fg-of-descent--7caa2dd371a00b224db1f398.md) | 69 | `result-track:7caa2dd371a00b224db1f3981b05abe40c5355e5f0cc7b6feaead9905e465a19` |
| 2 | `theorem` | [CommGroup.fg_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/commgroup-fg-of-descent--85ddf01fe7f2b2ada5598855.md) | 112 | `result-track:85ddf01fe7f2b2ada559885593d8e8109097efa6a787fd80d5af1618ceb81a19` |
| 3 | `theorem` | [CommGroup.fg_of_descent'](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/commgroup-fg-of-descent--379d2fd8b62a0bfb26d31896.md) | 149 | `result-track:379d2fd8b62a0bfb26d318964665e51f681f4cec22925c36b8a3ba3341e3f102` |
| 4 | `theorem` | [Monoid.finite_set_isOfFiniteOrder_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/monoid-finite-set-isoffiniteorder-of-descent--a908aa7852f829ff5d88527a.md) | 170 | `result-track:a908aa7852f829ff5d88527aae7ae543699de00db9d5dc0a63258de1abc52d65` |
| 5 | `theorem` | [CommGroup.finite_torsion_of_descent](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/commgroup-finite-torsion-of-descent--454af1399d1bdabe0453b367.md) | 195 | `result-track:454af1399d1bdabe0453b367a3798bb0bfa3881c57baccdbc7de57f46e8cbe65` |
| 6 | `theorem` | [CommGroup.finite_torsion_of_descent'](../../../../../mathematics/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/declarations/commgroup-finite-torsion-of-descent--291a7bf63261b771cad03d85.md) | 212 | `result-track:291a7bf63261b771cad03d856d5f641f0e101eba52c2b51c9790cb50dfdf1bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
