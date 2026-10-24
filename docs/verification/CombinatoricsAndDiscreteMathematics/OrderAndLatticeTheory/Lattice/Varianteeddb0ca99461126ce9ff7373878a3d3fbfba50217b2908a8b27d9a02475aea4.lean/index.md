# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de3f3f1ca0c3a5de40289e1a64cceb5a0c10c27f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de3f3f1ca0c3a5de40289e1a64cceb5a0c10c27f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Tropical.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSemilatticeInfTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instsemilatticeinftropical--811bb8f46db60c74d7236338.md) | 32 | `declaration-track:811bb8f46db60c74d72363383d6767da3e2530b9ec360df5716f44bab3c756cd` |
| 2 | `instance` | [instSemilatticeSupTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instsemilatticesuptropical--dff36888d741d76fad72c631.md) | 39 | `declaration-track:dff36888d741d76fad72c631de1fddc453252f42d24217b9c290aa0b63d87820` |
| 3 | `instance` | [instLatticeTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instlatticetropical--781f89a99cec2f15d354da85.md) | 46 | `declaration-track:781f89a99cec2f15d354da857218749291e152aca891db844caf1f224cee00a8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instance--ae9563ebc77599731a03a417.md) | 49 | `declaration-track:ae9563ebc77599731a03a417d042540db01c879909ed979223e7fec7c29b2382` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instance--7c401c7c86ba3ff920495c72.md) | 51 | `declaration-track:7c401c7c86ba3ff920495c72bb9966a01423cd4672fa13f5b240a8d3e65d8908` |
| 6 | `instance` | [instConditionallyCompleteLatticeTropical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instconditionallycompletelatticetropical--3c8203b5a393f62a35bc635a.md) | 53 | `declaration-track:3c8203b5a393f62a35bc635a9912b198e58484c8b33bf786306f4cb97cd7cd01` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianteeddb0ca99461126ce9ff7373878a3d3fbfba50217b2908a8b27d9a02475aea4.lean/declarations/instance--d53969e5245b1eaa8669b343.md) | 65 | `declaration-track:d53969e5245b1eaa8669b3432b06b1980db9d4dab47deb6983fdce6799723f1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
