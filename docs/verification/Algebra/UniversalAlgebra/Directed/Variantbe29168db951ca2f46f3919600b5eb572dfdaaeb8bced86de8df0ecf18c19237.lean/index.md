# Verification target: GRWTSK.Algebra.UniversalAlgebra.Directed.Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e33b00875de2b99d730455dae7c2a5af82abaef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e33b00875de2b99d730455dae7c2a5af82abaef`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.UnionLift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/coe-isup-of-directed--d27890475b04b5f11b560593.md) | 29 | `result-track:d27890475b04b5f11b560593c57680e7104a37d58ae4313ff6a02774c4a4a770` |
| 2 | `def` | [iSupLift](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/isuplift--dc451dfcc4a1fbebf4a33d2f.md) | 45 | `declaration-track:dc451dfcc4a1fbebf4a33d2fd67b7a42e3c9866d581f9f9db00fc0edcae38de2` |
| 3 | `theorem` | [iSupLift_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/isuplift-inclusion--15e93faae744a1f27795981e.md) | 71 | `result-track:15e93faae744a1f27795981ec4d2c6243a709310c4e8499983d838f9011155e7` |
| 4 | `theorem` | [iSupLift_comp_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/isuplift-comp-inclusion--7029c7899e0ffc50ccdee7c8.md) | 79 | `result-track:7029c7899e0ffc50ccdee7c87bc62af62f5238a417075093ac1e0d2d2e364296` |
| 5 | `theorem` | [iSupLift_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/isuplift-mk--b3d37b3f52a12eb864d5ad11.md) | 85 | `result-track:b3d37b3f52a12eb864d5ad1100cf04f1eb20cbc5e2beaff867033602e91e74eb` |
| 6 | `theorem` | [iSupLift_of_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantbe29168db951ca2f46f3919600b5eb572dfdaaeb8bced86de8df0ecf18c19237.lean/declarations/isuplift-of-mem--da7569aac60c62d31d0707cb.md) | 92 | `result-track:da7569aac60c62d31d0707cbecbf741744ff910bdeabea74fb51e77d5b5f93a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
