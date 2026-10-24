# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df2b26bdfa04904872c016d1efb6e5f17bc43ba0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df2b26bdfa04904872c016d1efb6e5f17bc43ba0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Tropical.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSupTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instsuptropical--752b4bee08b0851d4c07a72e.md) | 42 | `declaration-track:752b4bee08b0851d4c07a72ebc9efe08cd81636e048b28fc9277d4a390c539f0` |
| 2 | `instance` | [instInfTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instinftropical--13f3bec3bad96d279c4b6b62.md) | 45 | `declaration-track:13f3bec3bad96d279c4b6b62771c270535d12f9c817141a299e3f9140d0fd6e6` |
| 3 | `instance` | [instSemilatticeInfTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instsemilatticeinftropical--5ab8484afc1d68b2d332571e.md) | 48 | `declaration-track:5ab8484afc1d68b2d332571ef8ce82380af0c5b3a0c235b275c6f69c1ecf5e4a` |
| 4 | `instance` | [instSemilatticeSupTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instsemilatticesuptropical--702102bfcdccc1e3dece2b97.md) | 55 | `declaration-track:702102bfcdccc1e3dece2b972ba23607fac5d7e5448bb6e9c10411308838a2c5` |
| 5 | `instance` | [instLatticeTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instlatticetropical--f89323077c2bc101ff9032b9.md) | 62 | `declaration-track:f89323077c2bc101ff9032b9aa770e319f8e3624786c70bf865a3bf23bcfd698` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instance--479f4ddcef391b305191f5b5.md) | 65 | `declaration-track:479f4ddcef391b305191f5b54678a8af9d8e97806b9937553074533c84f14738` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instance--bba2283d906a7f7b3d6b7075.md) | 67 | `declaration-track:bba2283d906a7f7b3d6b7075db1c54247e8d5a95c032e5d6d2511e6a463b9bfe` |
| 8 | `instance` | [instConditionallyCompleteLatticeTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instconditionallycompletelatticetropical--98b94b4ee7f49117a96ec390.md) | 69 | `declaration-track:98b94b4ee7f49117a96ec3900e0db808d7cbb6fe5e869621632401623857e9b7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc8eab3bf61048784a1d86e9845264b6f4bc89ec47a8d3d910ce33a68fc463200.lean/declarations/instance--f2efc9ac1c782b7e86924c0b.md) | 82 | `declaration-track:f2efc9ac1c782b7e86924c0bb06076c51f102340433f3a346c340f4a8ccce211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
