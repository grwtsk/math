# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fde55a17f601fc6f0a2f372ef7920ef4dc4c602",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fde55a17f601fc6f0a2f372ef7920ef4dc4c602`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftContinuousMonoidHom](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/declarations/liftcontinuousmonoidhom--9e405d39f0066b34f62680e0.md) | 25 | `declaration-track:9e405d39f0066b34f62680e08f8ca594d50476d2c4cffe8b79466789e2d39b08` |
| 2 | `theorem` | [liftContinuousCommMonoidHom_mk](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/declarations/liftcontinuouscommmonoidhom-mk--100848d86d6ac0cdaa8c741b.md) | 34 | `result-track:100848d86d6ac0cdaa8c741bc3b46496a3f85a84e432255ba2dda717c084e6c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
