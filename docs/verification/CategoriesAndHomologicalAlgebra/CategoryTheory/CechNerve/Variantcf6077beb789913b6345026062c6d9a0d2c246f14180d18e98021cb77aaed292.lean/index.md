# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CechNerve.Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c109d29c9186cc7b545f41affe966f2ecc4c049",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c109d29c9186cc7b545f41affe966f2ecc4c049`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechnerve--5c39e9c778515fc15c731e5b.md) | 58 | `declaration-track:5c39e9c778515fc15c731e5bf9ccb9a3b46e1b17ff06a6916b4c17ff354827b2` |
| 2 | `def` | [mapCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/mapcechnerve--e39f2497494c0639725e260b.md) | 65 | `declaration-track:e39f2497494c0639725e260b67b165b024fe4f689fd48f3d4079b040cb1a7c2e` |
| 3 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/augmentedcechnerve--02eb54cf1be0e6a3e76156d0.md) | 75 | `declaration-track:02eb54cf1be0e6a3e76156d0bfaa1633f9035311757e92c36a9bb997aab805de` |
| 4 | `def` | [mapAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/mapaugmentedcechnerve--97b0f6da4adaf166d6d3da23.md) | 82 | `declaration-track:97b0f6da4adaf166d6d3da23a16001de36f41bb3cbd701e6fc483cbbc6b8de25` |
| 5 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechnerve--3492c4aaa601a4bdff05f44f.md) | 100 | `declaration-track:3492c4aaa601a4bdff05f44fccee456a3a2560e424dd7bb14c030684d7f11fe9` |
| 6 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/augmentedcechnerve--a5d69c5bbbe882d49695e09b.md) | 106 | `declaration-track:a5d69c5bbbe882d49695e09b7350b5c5d3710ca2e143bb1ca03a61b80787bdf2` |
| 7 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/equivalencerighttoleft--b56eb67021d680e151512c81.md) | 112 | `declaration-track:b56eb67021d680e151512c81e667f718c34ebf85694a2115b52e9be895d224e2` |
| 8 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/equivalencelefttoright--046520f346a187e475addbc1.md) | 123 | `declaration-track:046520f346a187e475addbc16829b59fd00124125f2bb872c6d63d8f57df8265` |
| 9 | `def` | [cechNerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechnerveequiv--79c085f7c3ccbb970220600a.md) | 142 | `declaration-track:79c085f7c3ccbb970220600a50e55b044162cf907fe031c8d336b5bdd97531d8` |
| 10 | `abbrev` | [cechNerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechnerveadjunction--b50e1dd16547cff71b864fd9.md) | 170 | `declaration-track:b50e1dd16547cff71b864fd9bb7aae82ecdffc46f45ea356bd765c0b80ee4e99` |
| 11 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechconerve--1b2834e5922b0b33749c54e8.md) | 194 | `declaration-track:1b2834e5922b0b33749c54e8dafb2e9d17bed4f0a0a7a582e9d17f24b66745ab` |
| 12 | `def` | [mapCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/mapcechconerve--16cc2b7b22f4531dd11ac433.md) | 203 | `declaration-track:16cc2b7b22f4531dd11ac433cb95a4da193bfea2c3782d41378fbf1ac840702d` |
| 13 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/augmentedcechconerve--899f474fd2f2c67a56455b5e.md) | 213 | `declaration-track:899f474fd2f2c67a56455b5e340ee9491f4e74ede7069f9d87fb197929fbd2cf` |
| 14 | `def` | [mapAugmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/mapaugmentedcechconerve--456f529b5f5357b2c8c02162.md) | 221 | `declaration-track:456f529b5f5357b2c8c021621056ea9fe807820500bb27f90574b88bcd14615e` |
| 15 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechconerve--bbfeb0c788d85a4c9bb8dc74.md) | 239 | `declaration-track:bbfeb0c788d85a4c9bb8dc74f5a10828b1839fad94af3e4a5e69b80e3ade3ff8` |
| 16 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/augmentedcechconerve--aafba4f3229eed97d79c5616.md) | 245 | `declaration-track:aafba4f3229eed97d79c561656f72ce14331076cb4703f8fdc2d978f50b396b3` |
| 17 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/equivalencelefttoright--3e1bb25f0ae9af90af1ebc73.md) | 251 | `declaration-track:3e1bb25f0ae9af90af1ebc730c263c9137dc0856514e110ebecbb7a93e8293db` |
| 18 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/equivalencerighttoleft--f7d1c430aa711092300b5af8.md) | 263 | `declaration-track:f7d1c430aa711092300b5af83faca4609b0caa497dbe9fdb2dd7ffc9a4f0a0d1` |
| 19 | `def` | [cechConerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechconerveequiv--e58bf870787b0c9247af2606.md) | 290 | `declaration-track:e58bf870787b0c9247af26068febf9c1867df841b044be3a1f14f51c1f1d5256` |
| 20 | `abbrev` | [cechConerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechconerveadjunction--9fffadc2943d2161dbe22141.md) | 320 | `declaration-track:9fffadc2943d2161dbe221410f68fd27cacc1ff7edffc7cb6bcba573f9fb6a4f` |
| 21 | `def` | [cechNerveTerminalFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/cechnerveterminalfrom--4f207805e6298421cdb14c41.md) | 326 | `declaration-track:4f207805e6298421cdb14c41d33a5013dc3eed8ec9b8856d59b01b9cc4321137` |
| 22 | `def` | [wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/widecospan--72643d7dd4a811e3d778b148.md) | 336 | `declaration-track:72643d7dd4a811e3d778b1488c56585f82b0f5e700d9dd675b5191c1bb398f60` |
| 23 | `instance` | [uniqueToWideCospanNone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/uniquetowidecospannone--9ba44be721412be8a79fea8f.md) | 339 | `declaration-track:9ba44be721412be8a79fea8f5190e910073757f7b60ef294f0d21c1e4d88627b` |
| 24 | `def` | [wideCospan.limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/widecospan-limitcone--72d8f797f9b2fd4a8eb59dcd.md) | 346 | `declaration-track:72d8f797f9b2fd4a8eb59dcd80b39f36ffd66052e63b9095559674b39973ec14` |
| 25 | `instance` | [hasWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/haswidepullback--4199d6ef6ae6a41e7ee2cef2.md) | 368 | `declaration-track:4199d6ef6ae6a41e7ee2cef2f1a1af27ac3f5776001e817e4cecc358d96866bc` |
| 26 | `instance` | [hasWidePullback'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/haswidepullback--0793956e54c72e1c42828edb.md) | 375 | `declaration-track:0793956e54c72e1c42828edb5e4a63e0c14fe5edd443c7c7687416214885ec14` |
| 27 | `instance` | [hasLimit_wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/haslimit-widecospan--9418e059e32dc8df2e83eec3.md) | 381 | `declaration-track:9418e059e32dc8df2e83eec32a186826ac976e446267a646f22ee731ad10a12d` |
| 28 | `def` | [wideCospan.limitIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/widecospan-limitisopi--f357327e55a164454974c50e.md) | 384 | `declaration-track:f357327e55a164454974c50e6df8ae817af7452655bca77ed08dba2c7862f199` |
| 29 | `lemma` | [wideCospan.limitIsoPi_inv_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/widecospan-limitisopi-inv-comp-pi--7dac3b14a294c6b1a5b7317e.md) | 390 | `result-track:7dac3b14a294c6b1a5b7317ea9c8b004569492a0f2e875f2c0f387c95c12f86e` |
| 30 | `lemma` | [wideCospan.limitIsoPi_hom_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/widecospan-limitisopi-hom-comp-pi--21611880072ed31f33cdd4a8.md) | 395 | `result-track:21611880072ed31f33cdd4a8233a1188359c2741da10dba061c8bbed921ce77a` |
| 31 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantcf6077beb789913b6345026062c6d9a0d2c246f14180d18e98021cb77aaed292.lean/declarations/iso--ccc04bc8b7c1c0de176909a1.md) | 402 | `declaration-track:ccc04bc8b7c1c0de176909a1a1b8d48c3c4f947defac9c4b2a6a3f8b639ca070` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
