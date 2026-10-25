# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Frontend.Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0697a012031c4b77134cc42bd821710396ed7cfc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0697a012031c4b77134cc42bd821710396ed7cfc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.BuiltinTactic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/succ--2e34eb361c563e3877f2d9f8.md) | 44 | `declaration-track:2e34eb361c563e3877f2d9f82e5146c9a9de0777567ffd35448a0d356ebb351f` |
| 2 | `structure` | [MetaProblem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/metaproblem--85cfccc6d4eb65ca240b6cdf.md) | 67 | `declaration-track:85cfccc6d4eb65ca240b6cdf6657c3f720f49aebfa2bba3861f360c5bb8cc907` |
| 3 | `def` | [mkEvalRflProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/mkevalrflproof--b9992c5fb9a17868426d4254.md) | 80 | `declaration-track:b9992c5fb9a17868426d42545751f178eeea7fce718979b2ef4c02e9a1df5c89` |
| 4 | `def` | [mkCoordinateEvalAtomsEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/mkcoordinateevalatomseq--21ca7baa6bb1013176f936de.md) | 85 | `declaration-track:21ca7baa6bb1013176f936de4968baede3f488d337bf6636005641fb1966a310` |
| 5 | `def` | [mkAtomLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/mkatomlinearcombo--6c7347021ec504083b4e852b.md) | 99 | `declaration-track:6c7347021ec504083b4e852b2fdf62967ba7572b680ef0ca31f70e25f49dffdb` |
| 6 | `def` | [asLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/aslinearcombo--f9270875b26f431c7af78c6e.md) | 113 | `declaration-track:f9270875b26f431c7af78c6e5737f2174f4d93f755b5a90c0ded2b2ca149e927` |
| 7 | `def` | [asLinearComboImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/aslinearcomboimpl--16b843db864792a8e83ab985.md) | 139 | `declaration-track:16b843db864792a8e83ab985586bc2af78d5636cd06a8dd4dd0079079067b2e5` |
| 8 | `def` | [trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/trivial--2019c11e5050b630a808b4c7.md) | 344 | `declaration-track:2019c11e5050b630a808b4c780976f33f505530c6f6d9fc1bf35a30d3c1c1906` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/instance--a886c6a6d82927b7c46ad8b5.md) | 347 | `declaration-track:a886c6a6d82927b7c46ad8b5f83253c84de8509cdacd69be0057d7bed76876dd` |
| 10 | `def` | [addIntEquality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/addintequality--f758be5400ac0fffc06e9fdf.md) | 354 | `declaration-track:f758be5400ac0fffc06e9fdf32f138b3f68487ccc433c9da61ec321cf62eabf4` |
| 11 | `def` | [addIntInequality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/addintinequality--71f064976db9b9fb08970fdd.md) | 369 | `declaration-track:71f064976db9b9fb08970fddfba4a9b349a9f6b89bccbabee895a69c07b4d6c3` |
| 12 | `def` | [pushNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/pushnot--fe7e88e9f808c22545803e70.md) | 380 | `declaration-track:fe7e88e9f808c22545803e7043339042204e5bb6f9c653e2fa6cc7f7bb3ea3d1` |
| 13 | `def` | [addFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/addfact--d3d076824ff27c7a07c8b045.md) | 433 | `declaration-track:d3d076824ff27c7a07c8b0459a7fe14942a4f48fc12ce9897bbfa117bb75400b` |
| 14 | `def` | [processFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/processfacts--6240e375f32fab1a5d624105.md) | 523 | `declaration-track:6240e375f32fab1a5d624105b70736c4eb21ee673f812c2354cf285312e49690` |
| 15 | `def` | [formatErrorMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/formaterrormessage--27284e6e1dfcd327a020d020.md) | 541 | `declaration-track:27284e6e1dfcd327a020d02086d3442387d7f70c735f6d2a1f3987ce827a9738` |
| 16 | `def` | [splitDisjunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/splitdisjunction--6cfc424d3176b9763743503e.md) | 628 | `declaration-track:6cfc424d3176b9763743503e4bbf06c902529b69dfdeed1501eddeff3d9749f0` |
| 17 | `def` | [omegaImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/omegaimpl--3830f85a162c36249da25438.md) | 657 | `declaration-track:3830f85a162c36249da254382b93f5714414ec21bc1638ddbdcd4312ee82f71f` |
| 18 | `def` | [omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/omega--3df0563992883369c49e13bb.md) | 680 | `declaration-track:3df0563992883369c49e13bb7caea9079185a11c23ec246290a4186817a0874c` |
| 19 | `def` | [omegaTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/omegatactic--f9cda1e8f835378414a274d9.md) | 688 | `declaration-track:f9cda1e8f835378414a274d98df26dc7853834776f81c16a809e3c666b0a5fc0` |
| 20 | `def` | [omegaDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/omegadefault--c763efe4e39ab7a032cec3cb.md) | 709 | `declaration-track:c763efe4e39ab7a032cec3cbdf2383bda539341677333db72a3329dbf74ad13e` |
| 21 | `def` | [evalOmega](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/evalomega--3596f9e13a79c8b4c49d973d.md) | 712 | `declaration-track:3596f9e13a79c8b4c49d973db18d7493bd9b9970729b22e45de63b95afb42b32` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/declarations/builtin-initialize--c5fe62ba50e010af4d6e249d.md) | 720 | `declaration-track:c5fe62ba50e010af4d6e249d78b9335a24044699c01ea6a56abaa0e8a4d3929a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
