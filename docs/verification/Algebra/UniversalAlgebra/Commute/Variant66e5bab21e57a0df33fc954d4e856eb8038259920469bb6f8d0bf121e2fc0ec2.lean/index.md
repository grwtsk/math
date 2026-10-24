# Verification target: GRWTSK.Algebra.UniversalAlgebra.Commute.Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d7d1b7bd5a0b3128a7f44c2547d2c544103012",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d7d1b7bd5a0b3128a7f44c2547d2c544103012`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SemiconjBy.map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/declarations/semiconjby-map--a0842e3de5d5035c45cfb595.md) | 22 | `result-track:a0842e3de5d5035c45cfb595f8fd8c68dcce7b44e0aa2191876b745fa11e55f3` |
| 2 | `theorem` | [Commute.map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/declarations/commute-map--e2b1e1e7ba7e327f9f861642.md) | 28 | `result-track:e2b1e1e7ba7e327f9f861642d068d7c56f6d01d1f8a5cfbed94ef5b45d55bd3f` |
| 3 | `theorem` | [SemiconjBy.of_map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/declarations/semiconjby-of-map--661dbdff0eac887356f27291.md) | 34 | `result-track:661dbdff0eac887356f272918db436d104c0026c09dc735ccca6b611a2fe42d7` |
| 4 | `theorem` | [Commute.of_map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2.lean/declarations/commute-of-map--d011530a059f3231f9f54aca.md) | 39 | `result-track:d011530a059f3231f9f54acac75fc60853c8136e52e3dbcdc2d817887b07aa00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
