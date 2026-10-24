# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeGroupoid.Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00de7f533d59a6e1c752a7e58f2445827b350d3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00de7f533d59a6e1c752a7e58f2445827b350d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [_root_.Quiver.Hom.toPosPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/root-quiver-hom-topospath--02286c47df249c0bd5746c14.md) | 46 | `declaration-track:02286c47df249c0bd5746c14b2a7ca2b77a7f80feaa5baff831166c405a31597` |
| 2 | `abbrev` | [_root_.Quiver.Hom.toNegPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/root-quiver-hom-tonegpath--7c441e223c66e1d7d1c9638f.md) | 51 | `declaration-track:7c441e223c66e1d7d1c9638f7c248ad13794ada0e1bddffe43344f843c3acfe0` |
| 3 | `inductive` | [redStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/redstep--93cc9c0893bf9ded2644bb17.md) | 56 | `declaration-track:93cc9c0893bf9ded2644bb1779e91b949af614c8aa44b46ef3214d052bbda774` |
| 4 | `def` | [_root_.CategoryTheory.FreeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/root-categorytheory-freegroupoid--ef0eb53e16ead80d4bac66c5.md) | 61 | `declaration-track:ef0eb53e16ead80d4bac66c5537bc4a1f59e00a753b6de7eabb89a99fb2979fd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/instance--16c5bcbb1f30d3a9d9dbadbc.md) | 64 | `declaration-track:16c5bcbb1f30d3a9d9dbadbc7c628d401843eb2a2419c41427e98991b806d54b` |
| 6 | `theorem` | [congr_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/congr-reverse--57bacae290630c402939d270.md) | 67 | `result-track:57bacae290630c402939d2709476c23bd81d6f6d2e95caf8a70770bf81260d69` |
| 7 | `theorem` | [congr_comp_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/congr-comp-reverse--52837e278902960c9639bc0e.md) | 79 | `result-track:52837e278902960c9639bc0e360315cfe606a8a94b0442e021893909cab32c9b` |
| 8 | `theorem` | [congr_reverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/congr-reverse-comp--1f603071188728b0e44288d8.md) | 106 | `result-track:1f603071188728b0e44288d8ac57a39dfef5acfcde090686fb8a6466f3ff78b6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/instance--0716e0b90b4b809b7e2d66c5.md) | 112 | `declaration-track:0716e0b90b4b809b7e2d66c597f866ce209e858963a6c2be9d0a6b4bc0fe582b` |
| 10 | `def` | [quotInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/quotinv--0221a5e6ba15b58e9fa45038.md) | 116 | `declaration-track:0221a5e6ba15b58e9fa45038c30802f4f9a4df41c2c104a74548d86d9763066a` |
| 11 | `instance` | [_root_.CategoryTheory.FreeGroupoid.instGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/root-categorytheory-freegroupoid-instgroupoid--02fb020fcacf0ba5b2b15e89.md) | 120 | `declaration-track:02fb020fcacf0ba5b2b15e898ae1c9c675dce2dc461cbe70ac31020bf058fc36` |
| 12 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/of--69ae2f3d59cf809827cc9f64.md) | 126 | `declaration-track:69ae2f3d59cf809827cc9f64ceb14a8e9a703897abad1343036b6dadc79fa0e3` |
| 13 | `theorem` | [of_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/of-eq--b03c06a34b3eb0e07527f34d.md) | 130 | `result-track:b03c06a34b3eb0e07527f34d917e15961b67f4a8848c75c2478f36e89dfe6383` |
| 14 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/lift--0214fa06fb9de0b8648e77f7.md) | 139 | `declaration-track:0214fa06fb9de0b8648e77f7bf28ed34169905e61d7e767ae47ec88c70749a74` |
| 15 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/lift-spec--6c44f5db24dea6e3e3db2572.md) | 148 | `result-track:6c44f5db24dea6e3e3db25721c90e1b66fb22d0931be74d5a7994269ac8d0adf` |
| 16 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/lift-unique--3e1a675239dd27af716b0480.md) | 153 | `result-track:3e1a675239dd27af716b04804b718a97abe7966fbfff1ac107a2b0c396cd3852` |
| 17 | `def` | [_root_.CategoryTheory.freeGroupoidFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/root-categorytheory-freegroupoidfunctor--863ed9f90deaa74c5c8ba01c.md) | 174 | `declaration-track:863ed9f90deaa74c5c8ba01c8dd3b59a7aad03700a541b58195298d0c2bc6274` |
| 18 | `theorem` | [freeGroupoidFunctor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/freegroupoidfunctor-id--821cf0bb005e35d2736f3dff.md) | 177 | `result-track:821cf0bb005e35d2736f3dff072ac40ed9e4037f37e94f3aaa8e17087acdc568` |
| 19 | `theorem` | [freeGroupoidFunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variantd563ab96930887c526ea859c2c48be92c8a94b633d751c2a42ec6b1bb7876c68.lean/declarations/freegroupoidfunctor-comp--4ecf8c6609b91435fbffa137.md) | 182 | `result-track:4ecf8c6609b91435fbffa137d0b560facc0c684bb51ea9dfbe90e098139344cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
