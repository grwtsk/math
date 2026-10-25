# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d9ee464994d5563431c41fba169e9e9bf48ef5f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d9ee464994d5563431c41fba169e9e9bf48ef5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Message` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.KVMap` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Classes.Dvd` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Data.String.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RunCmd` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Linter` — import line 21; external provider; requires a separately pinned dependency.
- `Std.Data.List.Count` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/updatename--b66efc25a7b257271b6e5633.md) | 76 | `declaration-track:b66efc25a7b257271b6e5633a618b9fd3ed267449dbc919c835838c35de4277d` |
| 2 | `def` | [mkSimpContextResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/mksimpcontextresult--672c9324a193fb700c080847.md) | 85 | `declaration-track:672c9324a193fb700c0808472160e1f4fd5cc273d82032755e140ed9facb091b` |
| 3 | `def` | [mkSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/mksimpcontext--5da2d3e1291b819608056b6c.md) | 118 | `declaration-track:5da2d3e1291b819608056b6caa8e80910a37671312b75cab8714fa860fe01745` |
| 4 | `def` | [hasSimpAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/hassimpattribute--8d6dcae78c560fce52eef966.md) | 127 | `declaration-track:8d6dcae78c560fce52eef96614400a0535ed979f110678ff5d30dd8e715f30d8` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--1f2d0178a37a2d732b54543e.md) | 149 | `declaration-track:1f2d0178a37a2d732b54543ef1728e262888e0b688817b85ed334c9c484ce7c5` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--a4a72c670e87f8296cd300ab.md) | 251 | `declaration-track:a4a72c670e87f8296cd300ab7c039e5552b2c86382df67efa36ec7b1e03f1d09` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/macro--885a7f245190a4dbfe299506.md) | 253 | `declaration-track:885a7f245190a4dbfe299506d242e7195565edce12fb604d7a516eb0bc3d7046` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/macro--3f4aac5eb279af6f3c81f054.md) | 254 | `declaration-track:3f4aac5eb279af6f3c81f054453f93c5bc9364cd1a067d816675ec88a5f0d36b` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/macro--d58704ceb2e40927a647b052.md) | 255 | `declaration-track:d58704ceb2e40927a647b052c5e392c864d414e836aca25c5a0ddbf7e39edfd4` |
| 10 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/macro--5a9173cccf5d8f380582a63e.md) | 256 | `declaration-track:5a9173cccf5d8f380582a63ef9cba9ac5d86e86c1a6b121dad9bacf16a7f3339` |
| 11 | `register_option` | [linter.simpsNoConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/linter-simpsnoconstructor--8ef94cf946dbd10f631f4bca.md) | 261 | `declaration-track:8ef94cf946dbd10f631f4bcae849e5e4af35da572cc471a5915cc080823fda09` |
| 12 | `register_option` | [linter.simpsUnusedCustomDeclarations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/linter-simpsunusedcustomdeclarations--ec17ae887e84075cc43558aa.md) | 266 | `declaration-track:ec17ae887e84075cc43558aa2001a55d825b2f6858a9b33f64ddd671a0ea5f20` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--b7f388b039a0ec85c079f5ac.md) | 273 | `declaration-track:b7f388b039a0ec85c079f5ac964fa6b2f321a558358329eb8b47a37c72996974` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--961def0c1cdd3996366c6907.md) | 275 | `declaration-track:961def0c1cdd3996366c6907667731d3c482be296dd3f7e35fe4264a1f3422d5` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--77d092cac62a11c3900d2a4c.md) | 277 | `declaration-track:77d092cac62a11c3900d2a4c8e691b33d3508799df46f5fb8c295a07993035ad` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--544a5d7a8b9cab953af7d163.md) | 279 | `declaration-track:544a5d7a8b9cab953af7d163f0d91e9a5bef51ade038ec32096323b5bd72ff1a` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--648920b1a3bef43e9a735932.md) | 281 | `declaration-track:648920b1a3bef43e9a735932a9dfd3ab6a1375b79675248b10157fd1ab954c36` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--282446864daf3865ddc8c5cc.md) | 283 | `declaration-track:282446864daf3865ddc8c5cce432da05d56849069d820214a3fe264296de3978` |
| 19 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/syntax--c89535424f8607f6340af708.md) | 350 | `declaration-track:c89535424f8607f6340af7089c2e5ebd5df625e50f6e04ecea8cb0cc9fe8fbd4` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/macro--1d63f5246afaa0e0e5ad2156.md) | 354 | `declaration-track:1d63f5246afaa0e0e5ad2156b1c4da444660958a33d94b95baee02924fd476db` |
| 21 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/initialize--ead58ab411a053699f9f486b.md) | 360 | `declaration-track:ead58ab411a053699f9f486b38c97f1009970e9398d7302b5a053687ff0f0a79` |
| 22 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/initialize--e1d49446410ccaf04f667c5f.md) | 361 | `declaration-track:e1d49446410ccaf04f667c5fa1d103811a63fc7e4f21860f0daab29235240bc7` |
| 23 | `structure` | [ProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/projectiondata--4eaec18196da63bd16366c1d.md) | 366 | `declaration-track:4eaec18196da63bd16366c1db0d881a9d3673191a7df4bedc2b67621d981b8f0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/instance--d3f9e763579644a18ede7693.md) | 387 | `declaration-track:d3f9e763579644a18ede7693878dabc5dd26316c4131d93600147cfae98f6114` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/initialize--da6988614cba2a5146e962a0.md) | 401 | `declaration-track:da6988614cba2a5146e962a06eedc403b4deba1ab5849a0f3f1c75aa21cb681e` |
| 26 | `structure` | [ParsedProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/parsedprojectiondata--5ef4555bc0f7170ff760e82d.md) | 405 | `declaration-track:5ef4555bc0f7170ff760e82dfa02f59a195a8f3cc44ae84e8902fd4938d66416` |
| 27 | `def` | [ParsedProjectionData.toProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/parsedprojectiondata-toprojectiondata--1333ea4f8d83b498b27b7511.md) | 426 | `declaration-track:1333ea4f8d83b498b27b75118dc6b2f2d3a2e7601e9427a241779a2cdeb4e6b8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/instance--3a60e0b1947bcdec772e8ed9.md) | 429 | `declaration-track:3a60e0b1947bcdec772e8ed98fe3251b2ab5414d68f6c2df8ecdf8464452798c` |
| 29 | `inductive` | [ProjectionRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/projectionrule--f62dafbfe226e2ac7150fb49.md) | 437 | `declaration-track:f62dafbfe226e2ac7150fb49c92562daad7552bf47ee4b10edb4676d9b2f776a` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/instance--e7f0a810d18bac5297ab20b9.md) | 450 | `declaration-track:e7f0a810d18bac5297ab20b9118d2564007f286df160e83a85f698021619a730` |
| 31 | `def` | [projectionsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/projectionsinfo--61ca5861d117a27cac554187.md) | 462 | `declaration-track:61ca5861d117a27cac554187501339116cae1a44977aaa937bd4753a960251db` |
| 32 | `def` | [findProjectionIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/findprojectionindices--0df163b1a4e192119759ba17.md) | 480 | `declaration-track:0df163b1a4e192119759ba17fc19bd845f146638c9b2251b91c52b6adf20b83c` |
| 33 | `def` | [getCompositeOfProjectionsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/getcompositeofprojectionsaux--2c89f089b4bae79ed6beedde.md) | 492 | `declaration-track:2c89f089b4bae79ed6beeddecb16838765d6442d08820a211a962ebb4af60f0b` |
| 34 | `def` | [getCompositeOfProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/getcompositeofprojections--9698da46c98b9bc2582d4452.md) | 526 | `declaration-track:9698da46c98b9bc2582d4452c75ea19496519b8e2a03cbb9ead2d68b9aace68e` |
| 35 | `def` | [mkParsedProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/mkparsedprojectiondata--5de8a09a1a657f6691fb251f.md) | 537 | `declaration-track:5de8a09a1a657f6691fb251f0f4fe61cbf15fa58c15bdaa5f1da32ad066b8f50` |
| 36 | `def` | [applyProjectionRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/applyprojectionrules--030aeee90079a4af440a98ab.md) | 552 | `declaration-track:030aeee90079a4af440a98abffabfd59aa951dfcf980f6b758071035c1ae8a9f` |
| 37 | `def` | [findProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/findprojection--f38272746dbc37e90389657e.md) | 600 | `declaration-track:f38272746dbc37e90389657e00ae4b9877b1f18164d4a79fa5a018e608e6b300` |
| 38 | `def` | [checkForUnusedCustomProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/checkforunusedcustomprojs--a50a9244cf8350664b52a501.md) | 637 | `declaration-track:a50a9244cf8350664b52a5014dd9a64f8672d50cc4b9252ddcfc244701e834af` |
| 39 | `def` | [findAutomaticProjectionsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/findautomaticprojectionsaux--2cfc06a657a2a2db9a1ebc17.md) | 657 | `declaration-track:2cfc06a657a2a2db9a1ebc1786052ead3377a40887bf445a79e72b4957f94b05` |
| 40 | `def` | [findAutomaticProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/findautomaticprojections--f64502e9352d4dca6118725f.md) | 696 | `declaration-track:f64502e9352d4dca6118725f59b2072af3295de39823cc3e5bced609e7ed8034` |
| 41 | `def` | [getRawProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/getrawprojections--ec17c17e8aa0ad8b5e6d4910.md) | 755 | `declaration-track:ec17c17e8aa0ad8b5e6d49104e9656a7d1f75ce8e09a37c97438ff6beb6f789a` |
| 42 | `def` | [elabSimpsRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/elabsimpsrule--f05e55ebaaf76bbc85dafad1.md) | 809 | `declaration-track:f05e55ebaaf76bbc85dafad1afcd41f4afb22d39ecd4ceb8d041c06d5f2e6b6a` |
| 43 | `def` | [elabInitializeSimpsProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/elabinitializesimpsprojections--b79615b153128da87db9c816.md) | 817 | `declaration-track:b79615b153128da87db9c816857054fb44abddf80b57c7c13e3834afa026af39` |
| 44 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/config--99175003ba1f5ce3f52afd7d.md) | 827 | `declaration-track:99175003ba1f5ce3f52afd7d7450f3e0de787f9eb40a89b53c08f1a77af892a8` |
| 45 | `def` | [Config.asFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/config-asfn--e15273c1a5d26435aae482fe.md) | 856 | `declaration-track:e15273c1a5d26435aae482fe128e6c8ab01347653cc226e5defea864299e1cdd` |
| 46 | `def` | [Config.lemmasOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/config-lemmasonly--d10a96d2848c4dce34410ab7.md) | 861 | `declaration-track:d10a96d2848c4dce34410ab7d4f5ab64fac7143285c401b894283bb049cc70d7` |
| 47 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionData.Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.Lean.Expr.instantiateLambdasOrApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-proje--3a3f89774ceb6f492f4081e2.md) | 870 | `declaration-track:3a3f89774ceb6f492f4081e283c9c63e4861d94d73246a5140cb596d030eb427` |
| 48 | `def` | [getProjectionExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/getprojectionexprs--c0096591b5433ee482cd14d5.md) | 898 | `declaration-track:c0096591b5433ee482cd14d590e3420054add27b9d050dd5036ae8063c4ba8d2` |
| 49 | `def` | [addProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/addprojection--e531fedffa56e18ddbc70bf7.md) | 919 | `declaration-track:e531fedffa56e18ddbc70bf7f1d50c7675cced92126d4acfb2939955607c9340` |
| 50 | `def` | [headStructureEtaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/headstructureetareduce--6faca8d0053d6744c8add282.md) | 971 | `declaration-track:6faca8d0053d6744c8add28291e7c4aee014da31909fab028e1c7708f4f16925` |
| 51 | `def` | [addProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/addprojections--3ce9fd51f53144b712fc0ba0.md) | 1004 | `declaration-track:3ce9fd51f53144b712fc0ba0cac32b44622aae5730c1dfc539fc519c49ef8e73` |
| 52 | `def` | [simpsTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/simpstac--5f8b48d0b64f009f143cdaec.md) | 1145 | `declaration-track:5f8b48d0b64f009f143cdaec437d3ae19a254ef063308d3d3484ace842cae339` |
| 53 | `def` | [simpsTacFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/simpstacfromsyntax--3fe94a420811f60a939a8e30.md) | 1157 | `declaration-track:3fe94a420811f60a939a8e304da287309a9b780a5a6c7386a404f63ebdd9d8f7` |
| 54 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/declarations/initialize--d8aca02406a8d81ffc84a2d7.md) | 1167 | `declaration-track:d8aca02406a8d81ffc84a2d7f1e9933dac086547f1cfe4aaeab72b6949a4d393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
