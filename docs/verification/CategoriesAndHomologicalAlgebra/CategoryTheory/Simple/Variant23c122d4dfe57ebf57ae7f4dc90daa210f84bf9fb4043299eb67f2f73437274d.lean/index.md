# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b98e1626445a35a127fef5d4496ed35327528ca0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b98e1626445a35a127fef5d4496ed35327528ca0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple--cb8e66588d63241518ae183c.md) | 50 | `declaration-track:cb8e66588d63241518ae183c4bf4843640bfc95798c2f5941101930742b381ed` |
| 2 | `theorem` | [isIso_of_mono_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/isiso-of-mono-of-nonzero--28e7571e06cca4e0d35b9c4c.md) | 54 | `result-track:28e7571e06cca4e0d35b9c4cd25f871fdc267226bdf5814a1dfaaaa3d6effe71` |
| 3 | `theorem` | [Simple.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-of-iso--d3f1b461921aad3408aa723e.md) | 57 | `result-track:d3f1b461921aad3408aa723ee89ce67efc964aa0e4a30d80e6cee3b1ec2ffd8f` |
| 4 | `theorem` | [Simple.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-iff-of-iso--3e4d3e8d7565540b2bbedd6e.md) | 74 | `result-track:3e4d3e8d7565540b2bbedd6e1c226711c7e5debbee15844886b7844bafc5e1c5` |
| 5 | `theorem` | [kernel_zero_of_nonzero_from_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/kernel-zero-of-nonzero-from-simple--dcd54aeff495a3a8bc36b5c5.md) | 77 | `result-track:dcd54aeff495a3a8bc36b5c5705f7ad53ca88d6a516a45f2ee597fd22e78fc8e` |
| 6 | `theorem` | [epi_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/epi-of-nonzero-to-simple--1a7e07134c9df91d52bb45e5.md) | 88 | `result-track:1a7e07134c9df91d52bb45e5e1f6e7848fdf0cc74bcfaf4a46077fdbf3b5ec01` |
| 7 | `theorem` | [mono_to_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/mono-to-simple-zero-of-not-iso--617678e171b361422aa4deb1.md) | 94 | `result-track:617678e171b361422aa4deb179e5dbd375befca4b22aa391f806a513d92dbc98` |
| 8 | `theorem` | [id_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/id-nonzero--012bb9af9926d50fc7fd6636.md) | 100 | `result-track:012bb9af9926d50fc7fd6636dc5996295fe3f3ce99449fb800892e2d20d9e1bc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/instance--97cb577d8c11b77ad14bbab8.md) | 103 | `declaration-track:97cb577d8c11b77ad14bbab826af1a74ddeba61375e9bdcff54e288b23f8e6d4` |
| 10 | `theorem` | [Simple.not_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-not-iszero--4c075d7ea8cfe082fb703359.md) | 108 | `result-track:4c075d7ea8cfe082fb7033593f2b59e0b9cd95118d76dce7b27e760859e8c88e` |
| 11 | `theorem` | [zero_not_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/zero-not-simple--341d987eefd5b817d89b45c0.md) | 118 | `result-track:341d987eefd5b817d89b45c0b7c8cdbb6fff9313f400b1299e5d023674b26245` |
| 12 | `theorem` | [simple_of_cosimple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-of-cosimple--0810989a559918fb35be45d4.md) | 132 | `result-track:0810989a559918fb35be45d41225fc956a3b5c62d2977e2d78896b9430fb9163` |
| 13 | `theorem` | [isIso_of_epi_of_nonzero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/isiso-of-epi-of-nonzero--dbba2ef4077b8fbff191d6f8.md) | 149 | `result-track:dbba2ef4077b8fbff191d6f84e7fc7e44fa0e0d68fd82e68844a54806d24ea5f` |
| 14 | `theorem` | [cokernel_zero_of_nonzero_to_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/cokernel-zero-of-nonzero-to-simple--90b95dabed56c1192566ec2f.md) | 155 | `result-track:90b95dabed56c1192566ec2fcd4e4604a1edebbdad4d9874f499e326d7fb258b` |
| 15 | `theorem` | [epi_from_simple_zero_of_not_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/epi-from-simple-zero-of-not-iso--3affb091825ec1d4b64c9378.md) | 162 | `result-track:3affb091825ec1d4b64c93789d740bb9a5214ee3583f7fc39a1f9568cec5b734` |
| 16 | `theorem` | [Biprod.isIso_inl_iff_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/biprod-isiso-inl-iff-iszero--7bf6ceea29d1bd6224238ea7.md) | 176 | `result-track:7bf6ceea29d1bd6224238ea73e90aef409f903bf235b5631d1d79a57b09dfe6a` |
| 17 | `theorem` | [indecomposable_of_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/indecomposable-of-simple--ccc2554417d761a75902e838.md) | 187 | `result-track:ccc2554417d761a75902e83847410bd48606c698861d6ad2a733e451d01f0349` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/instance--f0dfeac1654b31f09a2338e4.md) | 206 | `declaration-track:f0dfeac1654b31f09a2338e4e8e55fdc1f984fef45956b1440aeaf59454af523` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/instance--8f3a1f0a28ae651624ec1312.md) | 209 | `declaration-track:8f3a1f0a28ae651624ec1312912272a35fc78449741bd9422b6d8b8066308e1e` |
| 20 | `theorem` | [simple_of_isSimpleOrder_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-of-issimpleorder-subobject--0c92458386cc45421d81dd4a.md) | 218 | `result-track:0c92458386cc45421d81dd4aacb5dfadabc69fccc812c98446faf31863a858e6` |
| 21 | `theorem` | [simple_iff_subobject_isSimpleOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/simple-iff-subobject-issimpleorder--86e649a532775b354b9e595c.md) | 232 | `result-track:86e649a532775b354b9e595c0d102bfd03e74939907f3e931a488014767745da` |
| 22 | `theorem` | [subobject_simple_iff_isAtom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant23c122d4dfe57ebf57ae7f4dc90daa210f84bf9fb4043299eb67f2f73437274d.lean/declarations/subobject-simple-iff-isatom--a693b75374e19201e29e1414.md) | 240 | `result-track:a693b75374e19201e29e141426d15866cc10bd7337fb09d7ff94f8d55f4e162d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
