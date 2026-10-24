# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb45581a4210bde963c8c3d32234ea72d33952b5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb45581a4210bde963c8c3d32234ea72d33952b5`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulSupport_comp_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/declarations/mulsupport-comp-inv-smul--92cb0e5afc8c498b47e53419.md) | 32 | `result-track:92cb0e5afc8c498b47e534194df72ccb5b5fbaa901e9f4976c0f9f102d96d04d` |
| 2 | `theorem` | [support_comp_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/declarations/support-comp-inv-smul--a95693205dd476c9cde84ae7.md) | 39 | `result-track:a95693205dd476c9cde84ae72593ff59a5193547413db1fdd1cec385cbf0f8fa` |
| 3 | `theorem` | [mulSupport_comp_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/declarations/mulsupport-comp-inv-smul--8645bdd7e1be97a6f7944fb1.md) | 50 | `result-track:8645bdd7e1be97a6f7944fb1a670d5451873f362b9010e4a5f1c209d98d37d49` |
| 4 | `theorem` | [support_comp_inv_smul₀](../../../../../mathematics/Algebra/GroupTheory/Support/Variantf0fe22ebbf26e91d9c63889a65fb464c9d002b04ae71e8bf554a32d54b7def96.lean/declarations/support-comp-inv-smul--69990d1d8ff8b9c2b60029ed.md) | 57 | `result-track:69990d1d8ff8b9c2b60029ed7a5d4ca4f6c7d0c8d9bb7d21bb5cfb51aadfd91c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
