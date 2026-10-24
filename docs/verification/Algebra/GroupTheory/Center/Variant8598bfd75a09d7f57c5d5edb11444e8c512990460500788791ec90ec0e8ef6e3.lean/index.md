# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "532f0a891c559481e5f1b41c20bd75431c19f63c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `532f0a891c559481e5f1b41c20bd75431c19f63c`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/declarations/center--32f20aa94809384f737bffad.md) | 39 | `declaration-track:32f20aa94809384f737bffad64ef3e46ba0f18aca06c14e469e5a8be14871617` |
| 2 | `instance` | [center.commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/declarations/center-commsemigroup--1395306210653c09da7e35e2.md) | 49 | `declaration-track:1395306210653c09da7e35e2713c80f4f77d758d3e947be5b6dd6e93ae2229c0` |
| 3 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/declarations/mem-center-iff--1686f589391f1b7aedce5fba.md) | 59 | `result-track:1686f589391f1b7aedce5fba2c1b293d3d9fac72f711555e0c8c90009d48f1d3` |
| 4 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/declarations/decidablememcenter--bd3f4aca99372c0c8a6e7e9f.md) | 64 | `declaration-track:bd3f4aca99372c0c8a6e7e9fe25d925551e8f446a43981abc39fa9834715d29f` |
| 5 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3.lean/declarations/center-eq-top--91e95c4f050e7c1d6b32f63f.md) | 74 | `result-track:91e95c4f050e7c1d6b32f63f2420c8e724ffcbfd331063c56e03eed00d9a8091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
