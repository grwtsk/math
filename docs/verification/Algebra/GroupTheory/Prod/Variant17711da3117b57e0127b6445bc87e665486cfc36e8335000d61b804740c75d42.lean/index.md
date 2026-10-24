# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4593fd244fc56c199622e6ee146f4f174e915bc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4593fd244fc56c199622e6ee146f4f174e915bc`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_dvd_iff](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/declarations/prod-dvd-iff--cedb452f189719ba9be6c674.md) | 24 | `result-track:cedb452f189719ba9be6c674ffbe298f420eae0730f1050f4f29e3da58606d1f` |
| 2 | `theorem` | [Prod.mk_dvd_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/declarations/prod-mk-dvd-mk--66548e432999ac5a5acbd7aa.md) | 31 | `result-track:66548e432999ac5a5acbd7aa5c254c26bec3c28e49621219d3e001bb55b003a0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/declarations/instance--0866525792e19e39b3d7114e.md) | 35 | `declaration-track:0866525792e19e39b3d7114e653edbd50bfca2b3546ded31cc4c093b73b75545` |
| 4 | `theorem` | [pi_dvd_iff](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/declarations/pi-dvd-iff--e47cf67156689afb4d0ed54e.md) | 43 | `result-track:e47cf67156689afb4d0ed54eb2e7956f5869751445075ddd588e1fc26df32e61` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant17711da3117b57e0127b6445bc87e665486cfc36e8335000d61b804740c75d42.lean/declarations/instance--498dab9b09cc9d34912ddca4.md) | 46 | `declaration-track:498dab9b09cc9d34912ddca4be9f7b8d4d841c19c7af72c64506cce4b5ed6f88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
