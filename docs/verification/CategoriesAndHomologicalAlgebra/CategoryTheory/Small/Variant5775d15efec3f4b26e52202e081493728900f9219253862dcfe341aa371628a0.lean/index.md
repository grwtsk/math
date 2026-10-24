# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae839c77d03fb8e3ee75722194ae0842ff2d6472",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae839c77d03fb8e3ee75722194ae0842ff2d6472`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EssentiallySmall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [filteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/filteredclosure--2028e4ea4894d702f2f895ed.md) | 40 | `declaration-track:2028e4ea4894d702f2f895ed88232632d898f6bdd3bcffb24ad77176942b5a80` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--4658b2d62800e645935bb5a2.md) | 49 | `declaration-track:4658b2d62800e645935bb5a29a7ec0c7e143ff52919b8fffe606bb4c85494016` |
| 3 | `inductive` | [InductiveStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inductivestep--e96f28044377198ef1d22691.md) | 74 | `declaration-track:e96f28044377198ef1d22691cd78d33a7cc7b443b7ae65d36f9ab496adda2c96` |
| 4 | `def` | [inductiveStepRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inductivesteprealization--d96bc6921fc67d915e19a31d.md) | 82 | `declaration-track:d96bc6921fc67d915e19a31dfe82fb211a823be46610f4b735bce2f07cb25b27` |
| 5 | `def` | [bundledAbstractFilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/bundledabstractfilteredclosure--75633b1927866ad161994901.md) | 92 | `declaration-track:75633b1927866ad161994901bdfc104b0f0d444de15f95036153dda858ab86b8` |
| 6 | `def` | [AbstractFilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/abstractfilteredclosure--e418a17c344fb9f17b04e9ba.md) | 98 | `declaration-track:e418a17c344fb9f17b04e9ba7d8de033e67b94a70c749dd2ce249f22cfac5e98` |
| 7 | `def` | [abstractFilteredClosureRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/abstractfilteredclosurerealization--ed615bbde0133b1663c54434.md) | 102 | `declaration-track:ed615bbde0133b1663c5443426d769218e80d607357d674239dd0af8e78b9d3f` |
| 8 | `theorem` | [small_fullSubcategory_filteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/small-fullsubcategory-filteredclosure--30cea0ae6f559d59a5276821.md) | 107 | `result-track:30cea0ae6f559d59a527682192093518f164ec1238e1e5b8f490ae58f19a3119` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--84b36e3319653637dc6e5d61.md) | 127 | `declaration-track:84b36e3319653637dc6e5d61e14eedd5ae4c56efbe55b64ffcd74d41d72938ea` |
| 10 | `def` | [SmallFilteredIntermediate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/smallfilteredintermediate--dc2b8ed451b1d1aea3bffb71.md) | 140 | `declaration-track:dc2b8ed451b1d1aea3bffb716f312f3e25529acc73bb308a6a501c43bfcbb1be` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--582b97f8787d818f81d7252e.md) | 143 | `declaration-track:582b97f8787d818f81d7252e0751e8c4b284bc977131b80f37701404f08c81df` |
| 12 | `def` | [factoring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/factoring--28b63fd77948ad6f6e79738e.md) | 150 | `declaration-track:28b63fd77948ad6f6e79738e38c64f8aebd4e5f25bb5f079eda564cee711c917` |
| 13 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inclusion--13ada1feb462e8b2d9779d0b.md) | 155 | `declaration-track:13ada1feb462e8b2d9779d0b69d670e0114de619ae29ff40a75b53bd7c30e363` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--246b101bd06fa6bf290ab180.md) | 158 | `declaration-track:246b101bd06fa6bf290ab18067898e1d730deed8fba6bc6b7109f39f127b1a3a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--7497e2e05078ba1501afc8b9.md) | 161 | `declaration-track:7497e2e05078ba1501afc8b99a86fd1d0bd76ee820263b65efbaa3cf08852f62` |
| 16 | `def` | [factoringCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/factoringcompinclusion--9b25f47fc77d168b404d7d5b.md) | 166 | `declaration-track:9b25f47fc77d168b404d7d5bb16c5c5c90228e217d26470964d9fea33291e371` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--87fa2dce08da73bd1c6742e4.md) | 169 | `declaration-track:87fa2dce08da73bd1c6742e4c6ea6ef699acbeb9f6016163ab1f5977de21c876` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--1c62b0a98ee6dadf9630442e.md) | 172 | `declaration-track:1c62b0a98ee6dadf9630442e4b2198c497bed27a950aeea40477ce61f90964af` |
| 19 | `inductive` | [cofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/cofilteredclosure--13b4dc97f3f1eed9575e766f.md) | 190 | `declaration-track:13b4dc97f3f1eed9575e766feba4338d49541ed1e7e2a5ac87f3e17d21a8bfcc` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--66a4a7fea2de580590dc0698.md) | 199 | `declaration-track:66a4a7fea2de580590dc0698b2c3696b5d2cf9654e4c5481223aab13ee3b07f0` |
| 21 | `inductive` | [InductiveStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inductivestep--cb038b6ffac3336115ab14e4.md) | 209 | `declaration-track:cb038b6ffac3336115ab14e4a79fc06f520b053d103adb8d5cbcbf32b132a517` |
| 22 | `def` | [inductiveStepRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inductivesteprealization--01f6e1a07dc467ffcb2f413a.md) | 217 | `declaration-track:01f6e1a07dc467ffcb2f413abe0bf8a3d49c9c757e67b7ad200d68573959376c` |
| 23 | `def` | [bundledAbstractCofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/bundledabstractcofilteredclosure--5bd259fd5f68fa8667d0a398.md) | 227 | `declaration-track:5bd259fd5f68fa8667d0a39858792c5c00aee673cf8b6168202f6ca89aaa2160` |
| 24 | `def` | [AbstractCofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/abstractcofilteredclosure--496fd17e5b4d2f0995ce2f9b.md) | 234 | `declaration-track:496fd17e5b4d2f0995ce2f9be0795d5f22fac7af9300e4f8b924401f1a5d1eea` |
| 25 | `def` | [abstractCofilteredClosureRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/abstractcofilteredclosurerealization--5daddbc3917c7b88a469572d.md) | 239 | `declaration-track:5daddbc3917c7b88a469572d67912731751f2e7c02a054f66d0793fbe4ad67ec` |
| 26 | `theorem` | [small_fullSubcategory_cofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/small-fullsubcategory-cofilteredclosure--05dd122a44dad8fac03d1da3.md) | 244 | `result-track:05dd122a44dad8fac03d1da38bb8b8ef64a895713024b4614bbbf797fbb5d481` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--7eb32178e72b987953f14f31.md) | 265 | `declaration-track:7eb32178e72b987953f14f3136a59e42a0ddc8841a6bcdfb2accea75ccbe796a` |
| 28 | `def` | [SmallCofilteredIntermediate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/smallcofilteredintermediate--e69a83b8133d9719aaa745c0.md) | 279 | `declaration-track:e69a83b8133d9719aaa745c083ee7274119f9f27c6019bd9ed5dbf03e2b36dbf` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--497ba9a97c258fd0056cacdc.md) | 282 | `declaration-track:497ba9a97c258fd0056cacdcf539c491dbb326a026db17b37fe7f90c97621c5d` |
| 30 | `def` | [factoring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/factoring--4122af8eea0e44b7770796d5.md) | 289 | `declaration-track:4122af8eea0e44b7770796d5b583cbea0d59b876036adf46da28c62ef28f19bd` |
| 31 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/inclusion--5793824aef483e5254910051.md) | 294 | `declaration-track:5793824aef483e52549100510a6db07425f0096c8387f2e472a9217a6cacd2f3` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--e12d80c8d3f39ae8b098483f.md) | 297 | `declaration-track:e12d80c8d3f39ae8b098483f8800b89d000d27e60f3cc858113918facf0ade42` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--23a94378fca96446e4c8dfc1.md) | 300 | `declaration-track:23a94378fca96446e4c8dfc17e8873eb6bd068680c948fcab0891863501fce53` |
| 34 | `def` | [factoringCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/factoringcompinclusion--7ee6ad25bbda64c346e66870.md) | 305 | `declaration-track:7ee6ad25bbda64c346e66870234414662c1d0bcbcd2bee80e7df21a242d5d05f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--4272c6ee782dabb07a150a86.md) | 308 | `declaration-track:4272c6ee782dabb07a150a8698d6b3c62dcc4e55ab6e3b10f4a2e68fa54d2455` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/declarations/instance--529379807fa513b1139ccd9c.md) | 311 | `declaration-track:529379807fa513b1139ccd9ced502c2395c7debd850ca5ff97d0b569caa5b098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
