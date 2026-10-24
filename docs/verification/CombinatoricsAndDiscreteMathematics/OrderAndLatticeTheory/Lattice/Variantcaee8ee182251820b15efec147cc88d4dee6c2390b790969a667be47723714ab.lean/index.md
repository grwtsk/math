# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8a84f2abb3d9b2523f927a26b08914f564c824c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8a84f2abb3d9b2523f927a26b08914f564c824c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Image` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gc_upperBounds_lowerBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/declarations/gc-upperbounds-lowerbounds--4d5cf6cb5a9d92682d1e7c15.md) | 31 | `result-track:4d5cf6cb5a9d92682d1e7c1573f9832d8a76eceffd6cc88a8340b0cfcfd57843` |
| 2 | `theorem` | [upperBounds_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/declarations/upperbounds-iunion--d8faeba437731f29f4ae9074.md) | 38 | `result-track:d8faeba437731f29f4ae90743dc9b9f3005b824cec1d8819e53e296433e19e59` |
| 3 | `theorem` | [lowerBounds_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/declarations/lowerbounds-iunion--02dce7e0cd9d59b453d20b2c.md) | 43 | `result-track:02dce7e0cd9d59b453d20b2c8ff24546e1a3cea4cc1e1d9e4f52a54c0dab73cc` |
| 4 | `theorem` | [isLUB_iUnion_iff_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/declarations/islub-iunion-iff-of-islub--fb6edd299ecaba8366187937.md) | 47 | `result-track:fb6edd299ecaba83661879379af7141012c97a8e2dc5605544b8b72f41fa298b` |
| 5 | `theorem` | [isGLB_iUnion_iff_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantcaee8ee182251820b15efec147cc88d4dee6c2390b790969a667be47723714ab.lean/declarations/isglb-iunion-iff-of-islub--75ec989de5cdd0ca18a007fc.md) | 52 | `result-track:75ec989de5cdd0ca18a007fc07c3c2d8088ee2ac700aac438ba6bdb098116ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
