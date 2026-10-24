# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatCat.Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a7b56320fa3d11ac2b9944b1dea52ca6113b027",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a7b56320fa3d11ac2b9944b1dea52ca6113b027`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrdCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LatCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/latcat--9a392e30bfa2d8985c22bac7.md) | 39 | `declaration-track:9a392e30bfa2d8985c22bac7880dd75e1013bc8d4a22c95df52505a9d60a0983` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--1e15733093e9b21d61c7678e.md) | 46 | `declaration-track:1e15733093e9b21d61c7678ec2c15fe50c10bed4514149772582a59f3c7d8a78` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--cd887c322468f73c76a8b0bc.md) | 49 | `declaration-track:cd887c322468f73c76a8b0bcd4ed8eafd6730a2b453f3e11a93763fee4be77eb` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/of--da7a0575337a2bd30b0239da.md) | 53 | `declaration-track:da7a0575337a2bd30b0239da1f4b9843aee5948b7c71f86bfc0c78a614777eae` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/coe-of--793d37486b86353ad32146b0.md) | 58 | `result-track:793d37486b86353ad32146b03898dc8b09bff3bd0cbc8a601f93034e690345a6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--a9ad56951ff798d19979b323.md) | 62 | `declaration-track:a9ad56951ff798d19979b323f6bb7fe504652b7a4ba3be449a43e34e982b186d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--efbe3d95d97292b69848e9ff.md) | 65 | `declaration-track:efbe3d95d97292b69848e9ff79b9610d987d6677e0035a4832f01004b36b605e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--e22ae6f1ccd6dae8b404f4e5.md) | 71 | `declaration-track:e22ae6f1ccd6dae8b404f4e58fa38bdbf2f924a96ec5c43dd147dd2a22dc8a7f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/instance--95d376d8f90781acfd8691ef.md) | 74 | `declaration-track:95d376d8f90781acfd8691ef56bf2051695671d223bf404bd75e9941b16ecc9e` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/hasforgettopartord--20ef7e44629f536b61e871b6.md) | 77 | `declaration-track:20ef7e44629f536b61e871b6bb50d70bfe08aef515e123e8b4cb276ec8d396f3` |
| 11 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/iso-mk--da64910d3ec481e22ea9e3b4.md) | 85 | `declaration-track:da64910d3ec481e22ea9e3b46c492a47c6371b9a030aeb73c09554bf006df3eb` |
| 12 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/dual--1c51e2406788fd2924e07412.md) | 98 | `declaration-track:1c51e2406788fd2924e074124bdf69eec03ad81eec8f77e5fd3e225b6fb7144a` |
| 13 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/dualequiv--f9fc44cff3d5f321c2b6d1a8.md) | 105 | `declaration-track:f9fc44cff3d5f321c2b6d1a810704eca00fd90214d36129c22ad4c33a0857bb8` |
| 14 | `theorem` | [latCat_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatCat/Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d.lean/declarations/latcat-dual-comp-forget-to-partordcat--51fda9845d4d783d1d6feeed.md) | 114 | `result-track:51fda9845d4d783d1d6feeed509931fae3b75d1e6a39c60d6c1255f776a14375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
