# Verification target: GRWTSK.Algebra.LinearAlgebra.DegreeHomology.Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f1bcf82d1174b49efbac84e0fb95fae99b6e4c4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.FiniteChain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycles](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/declarations/cycles--ff0305c938fdd9102a1b8846.md) | 24 | `declaration-track:ff0305c938fdd9102a1b884612b05910975438bb83af1ff3fceaba056973e5ca` |
| 2 | `theorem` | [boundary_mem_cycles](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/declarations/boundary-mem-cycles--417b103f22fad093a2cc7629.md) | 33 | `result-track:417b103f22fad093a2cc7629fc7447d0d3ab09b05465c2960d6fc6eba64f196b` |
| 3 | `def` | [boundaryIntoCycles](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/declarations/boundaryintocycles--83633a4cc7413b2eb87da43c.md) | 55 | `declaration-track:83633a4cc7413b2eb87da43ca1ab3d16be189110cdac141ae64e6967972b3dca` |
| 4 | `def` | [boundaries](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/declarations/boundaries--3a585b7dc4c00141f3823485.md) | 70 | `declaration-track:3a585b7dc4c00141f3823485dd8afaf2c313923b51ca918858a7db91dd407635` |
| 5 | `abbrev` | [DegreeHomology](../../../../../mathematics/Algebra/LinearAlgebra/DegreeHomology/Variant28610cd9effbf2a6e2e83bdd5956e7ff639bdcd64b8847b622bc03f0c361826c.lean/declarations/degreehomology--7d4cc07d835e1e9a6db090c1.md) | 76 | `declaration-track:7d4cc07d835e1e9a6db090c1039637901ee0e8d0d343fb218ce4570dee7711f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
