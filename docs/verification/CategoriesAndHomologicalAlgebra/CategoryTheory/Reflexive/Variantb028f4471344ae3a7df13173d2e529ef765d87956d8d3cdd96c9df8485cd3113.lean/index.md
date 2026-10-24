# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflexive.Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79a872a233132bbe5306e111c17c69930954e06a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79a872a233132bbe5306e111c17c69930954e06a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/isreflexivepair--6e959de14ba86020103a0a8e.md) | 52 | `declaration-track:6e959de14ba86020103a0a8ec7aae86a9ee5ba80a49b0258cc1aa39dedb5e5e3` |
| 2 | `theorem` | [IsReflexivePair.common_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/isreflexivepair-common-section--f3d6971667a056344c36a8f1.md) | 57 | `result-track:f3d6971667a056344c36a8f107f9c4aeae87ef3c880c106f8392caed05f15883` |
| 3 | `class` | [IsCoreflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/iscoreflexivepair--83577fc2e6346d9c6d8f0e2d.md) | 63 | `declaration-track:83577fc2e6346d9c6d8f0e2db70b532c593f793997c2aebef77960c34fe2d9ce` |
| 4 | `theorem` | [IsCoreflexivePair.common_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/iscoreflexivepair-common-retraction--850afed54c5dae31bc0b7a9d.md) | 68 | `result-track:850afed54c5dae31bc0b7a9d6351fd2ef6e0fe39599288135665f527c3a5cc1a` |
| 5 | `theorem` | [IsReflexivePair.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/isreflexivepair-mk--9fca5b6578e2204ea2d0e10a.md) | 71 | `result-track:9fca5b6578e2204ea2d0e10aee0a3b55b36603cd1326b902939ce4c17b3f7937` |
| 6 | `theorem` | [IsCoreflexivePair.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/iscoreflexivepair-mk--cc2c132d7ccfe5fd345ff35c.md) | 76 | `result-track:cc2c132d7ccfe5fd345ff35c649fe3af72239be315f68ff562c1b2c5a889b150` |
| 7 | `def` | [commonSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/commonsection--ffdd5196d4e0116529ff1e93.md) | 82 | `declaration-track:ffdd5196d4e0116529ff1e93c69c004f8b0d7d92d41d449a04bb4d164c44b2c4` |
| 8 | `theorem` | [section_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/section-comp-left--58fe1490a89d62c760ab2393.md) | 87 | `result-track:58fe1490a89d62c760ab239304286a735d30e66f699cca822dbf38a41dbe3869` |
| 9 | `theorem` | [section_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/section-comp-right--170938e945b10f4b98a7f873.md) | 92 | `result-track:170938e945b10f4b98a7f873367f3ed6c47629251c5a346c8740689bc99cefd2` |
| 10 | `def` | [commonRetraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/commonretraction--0e12059da91885bdce27dbcb.md) | 97 | `declaration-track:0e12059da91885bdce27dbcb954d6ddf08c9eae2f15b5c8bc1b3fae34783530f` |
| 11 | `theorem` | [left_comp_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/left-comp-retraction--2e5b7dcbb0b1e81aa99794be.md) | 102 | `result-track:2e5b7dcbb0b1e81aa99794beef9c0e763a50a05c80b1ce3328ec5300e8419618` |
| 12 | `theorem` | [right_comp_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/right-comp-retraction--12fc4c43c4f4f2e3390bff1b.md) | 108 | `result-track:12fc4c43c4f4f2e3390bff1b989992c531f7acd16496037cb56635a86a99f190` |
| 13 | `theorem` | [IsKernelPair.isReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/iskernelpair-isreflexivepair--c68a7a214d0f77fa714cbc57.md) | 114 | `result-track:c68a7a214d0f77fa714cbc57a8ef32862cf7fd6df22d8d546e080aa4cbbc10ae` |
| 14 | `theorem` | [IsReflexivePair.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/isreflexivepair-swap--0cc5e33800925b535f8397ce.md) | 121 | `result-track:0cc5e33800925b535f8397ce9032f37111dd2fd3a3e24ee1067ce3acb6aa8d68` |
| 15 | `theorem` | [IsCoreflexivePair.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/iscoreflexivepair-swap--332d01cc0374986f2c2b2e88.md) | 127 | `result-track:332d01cc0374986f2c2b2e8870ed61dc717f619a840bfcb339daeb3d0073daef` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/instance--61dca4205000470806a6e19c.md) | 134 | `declaration-track:61dca4205000470806a6e19ccbccde4f83030ffcee93ef57d4af135560e07bc4` |
| 17 | `class` | [HasReflexiveCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/hasreflexivecoequalizers--e14d158163485e3530a4f853.md) | 147 | `declaration-track:e14d158163485e3530a4f853f33c19924a944f5d7742295d6fac236c71dbf5c9` |
| 18 | `class` | [HasCoreflexiveEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/hascoreflexiveequalizers--1959f64b73f6fec982f4b974.md) | 152 | `declaration-track:1959f64b73f6fec982f4b97455b0db0c0ee4907a2e194db9d6cbda021617fd01` |
| 19 | `theorem` | [hasCoequalizer_of_common_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/hascoequalizer-of-common-section--4ab3a0b7498985779d5e1ae9.md) | 160 | `result-track:4ab3a0b7498985779d5e1ae95761b23b4b318a2d27f7cb1a04036628c0fac677` |
| 20 | `theorem` | [hasEqualizer_of_common_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/hasequalizer-of-common-retraction--af3c438a61427ff2bfd09d12.md) | 166 | `result-track:af3c438a61427ff2bfd09d1273ac54696976002b57cadcaaca4d7879b7a0f830` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/instance--595513e107e7c2087b754535.md) | 173 | `declaration-track:595513e107e7c2087b7545356f0a388337d9d87c5cb9a6e78c1c2648543f04da` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantb028f4471344ae3a7df13173d2e529ef765d87956d8d3cdd96c9df8485cd3113.lean/declarations/instance--b8e2aa891760d1d1ac4c6ed2.md) | 178 | `declaration-track:b8e2aa891760d1d1ac4c6ed271d092ccc2269e2620271a1762b17a2aaef9c000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
