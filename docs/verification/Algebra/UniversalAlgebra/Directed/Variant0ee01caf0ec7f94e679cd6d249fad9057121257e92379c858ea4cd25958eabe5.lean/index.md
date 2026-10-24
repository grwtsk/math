# Verification target: GRWTSK.Algebra.UniversalAlgebra.Directed.Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac0cff335a0e9eca79dcea8eb71a67efad1b022",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac0cff335a0e9eca79dcea8eb71a67efad1b022`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.UnionLift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/coe-isup-of-directed--8d90b280cbe0013873c7931e.md) | 37 | `result-track:8d90b280cbe0013873c7931ea1e317bb752b3dc917d8912b80d12d3d30e56118` |
| 2 | `def` | [iSupLift](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/isuplift--62055bc507b35d2816ed5807.md) | 53 | `declaration-track:62055bc507b35d2816ed5807645a5cbf5edd73ab7772874d98ba30fdb1b59c1f` |
| 3 | `theorem` | [iSupLift_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/isuplift-inclusion--806d6b991ba26d7742385abd.md) | 79 | `result-track:806d6b991ba26d7742385abdbb9a0f0bf1c7e564bc6f75f08fc0300e788a881b` |
| 4 | `theorem` | [iSupLift_comp_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/isuplift-comp-inclusion--bec087e47016a37179444b61.md) | 87 | `result-track:bec087e47016a37179444b61643a586ac007e8687fe31da4e4385d374ee5f111` |
| 5 | `theorem` | [iSupLift_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/isuplift-mk--8dc66757ea03e2cdba2c6630.md) | 93 | `result-track:8dc66757ea03e2cdba2c663078ddea4b9f2e4dedfe2a83521b58592cd456d924` |
| 6 | `theorem` | [iSupLift_of_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/declarations/isuplift-of-mem--31f574d81e5995cbb9417bb6.md) | 100 | `result-track:31f574d81e5995cbb9417bb679b9805b0feb2548dd40892a0a0952e1521a5d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
