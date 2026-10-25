# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictInitial.Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a6ba61d1b35c40e27ae69bb74e2d659ca0aebeb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a6ba61d1b35c40e27ae69bb74e2d659ca0aebeb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasStrictInitialObjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/hasstrictinitialobjects--cc5b07f2c1a6b475eff949be.md) | 58 | `declaration-track:cc5b07f2c1a6b475eff949bedd5c19bcc878a0dc24145db786f8ce98353c2c56` |
| 2 | `theorem` | [IsInitial.isIso_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitial-isiso-to--e40fc20f1ee78a4c22cee5e5.md) | 67 | `result-track:e40fc20f1ee78a4c22cee5e545e94208048f200be183540f4e56ce0486e84fb4` |
| 3 | `theorem` | [IsInitial.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitial-strict-hom-ext--967aae0b5b86c946e0f79213.md) | 70 | `result-track:967aae0b5b86c946e0f792137838c37c5a8332f22db4127e391d2e2a327a9c3f` |
| 4 | `theorem` | [IsInitial.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitial-subsingleton-to--802274fa71d420c6b5832249.md) | 75 | `result-track:802274fa71d420c6b5832249ae838052ff0d1d7933a1e95385dfc6b82c76ad41` |
| 5 | `def` | [IsInitial.ofStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitial-ofstrict--83d97b640d7bb2d7c6de9fc3.md) | 80 | `declaration-track:83d97b640d7bb2d7c6de9fc305e5d918a6f893474ea2ec5519a41c3a292e11d1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/instance--37d8d0cb9701a1ce881e0681.md) | 85 | `declaration-track:37d8d0cb9701a1ce881e06812575eb8379872f9bb22510a0725933975fb5909b` |
| 7 | `def` | [mulIsInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/mulisinitial--a1b398cc1b22587976d24283.md) | 90 | `declaration-track:a1b398cc1b22587976d24283f1bb43e3dc15e80c108521f9afec8f01248a4c20` |
| 8 | `theorem` | [mulIsInitial_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/mulisinitial-inv--52bdf973cb3963879a2cc60a.md) | 95 | `result-track:52bdf973cb3963879a2cc60ae9dc97b4987bf9ab7c020e963d8893a4c067d0ea` |
| 9 | `def` | [isInitialMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitialmul--342769cfe901d973ef8afa8b.md) | 101 | `declaration-track:342769cfe901d973ef8afa8bc0cb0b9e0d21deacd3e4af988b95f4a13215c38a` |
| 10 | `theorem` | [isInitialMul_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isinitialmul-inv--25beb963222133fbaf7d3f27.md) | 106 | `result-track:25beb963222133fbaf7d3f272fada630193b7b373c1002dfc8ff8febd7ff475d` |
| 11 | `instance` | [initial_isIso_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/initial-isiso-to--58900bb4bdd8efaa84471036.md) | 112 | `declaration-track:58900bb4bdd8efaa8447103603dfcd1782c532ecc7b5f154d518204aac4755e2` |
| 12 | `theorem` | [initial.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/initial-strict-hom-ext--72193344b0f3e13d31c3fe34.md) | 116 | `result-track:72193344b0f3e13d31c3fe34f082e36ab63afc24d5ddb2e31efb0516e550e2f4` |
| 13 | `theorem` | [initial.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/initial-subsingleton-to--a7d5d57b19903d1f18617edf.md) | 119 | `result-track:a7d5d57b19903d1f18617edf11425141eba27a984705cade215d36ed6a96f634` |
| 14 | `def` | [mulInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/mulinitial--cd670922e43c9404cbf6a249.md) | 127 | `declaration-track:cd670922e43c9404cbf6a249b8c584d7e2e445a3d7dba8f0d9c62e009b0b68fa` |
| 15 | `theorem` | [mulInitial_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/mulinitial-inv--bd0c1dd87762420a93aa2173.md) | 131 | `result-track:bd0c1dd87762420a93aa21739687189ffd87a9a5d01631438cdd37ce99d01d16` |
| 16 | `def` | [initialMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/initialmul--d5b521564b4c055c060dba48.md) | 139 | `declaration-track:d5b521564b4c055c060dba48fbcf125895053ebf9847163421f91988fa4feea7` |
| 17 | `theorem` | [initialMul_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/initialmul-inv--84a6aa79c112c59fa50adcfd.md) | 143 | `result-track:84a6aa79c112c59fa50adcfd049f0de944e863772494c299d09fd528ddba8f6f` |
| 18 | `theorem` | [hasStrictInitialObjects_of_initial_is_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/hasstrictinitialobjects-of-initial-is-strict--dceec7cb692fa4ecd9a310ba.md) | 150 | `result-track:dceec7cb692fa4ecd9a310baad83fdcde3197c2837d9bb2475d7f0068ee0b7f2` |
| 19 | `class` | [HasStrictTerminalObjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/hasstrictterminalobjects--de41f0b2ab47b3b7b000a91e.md) | 166 | `declaration-track:de41f0b2ab47b3b7b000a91ebbf7f1b64d88c2081cf0ef041c5b2c8346c9e85d` |
| 20 | `theorem` | [IsTerminal.isIso_from](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isterminal-isiso-from--260e9b0d04988576069bdf9f.md) | 175 | `result-track:260e9b0d04988576069bdf9fb8850f556b4f8fbe641777e2ca7cb06c90091a52` |
| 21 | `theorem` | [IsTerminal.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isterminal-strict-hom-ext--c2dc188169fad03f6ec2a648.md) | 178 | `result-track:c2dc188169fad03f6ec2a64858cbcad2d9f8e4ed5bc49db58fbd6d5ebd7229e4` |
| 22 | `def` | [IsTerminal.ofStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isterminal-ofstrict--725b3a1324d3d32bb0a656dd.md) | 185 | `declaration-track:725b3a1324d3d32bb0a656dd4caa29ef6397a0a5a48f20ce34bf38f3c043c262` |
| 23 | `theorem` | [IsTerminal.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/isterminal-subsingleton-to--d4a0c30b85bbfdc4b42121f3.md) | 190 | `result-track:d4a0c30b85bbfdc4b42121f3ae66c76ab163157e07987f8315f25b286306cb64` |
| 24 | `theorem` | [limit_π_isIso_of_is_strict_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/limit-isiso-of-is-strict-terminal--1a18515587ccf3b7bcb77e36.md) | 197 | `result-track:1a18515587ccf3b7bcb77e36c79cbf58bb1b01183ac10714443176c24211ca31` |
| 25 | `instance` | [terminal_isIso_from](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/terminal-isiso-from--29d810d2c1d1f227659be5d9.md) | 232 | `declaration-track:29d810d2c1d1f227659be5d991f7561f8b95f1d6ef79540429704fdaafd6b4de` |
| 26 | `theorem` | [terminal.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/terminal-strict-hom-ext--69a577e69eb4a7546649fe1b.md) | 236 | `result-track:69a577e69eb4a7546649fe1ba8113510cff65debc29d9d677399a719ed2af42b` |
| 27 | `theorem` | [terminal.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/terminal-subsingleton-to--dd66937ed8de106fb4af0bdb.md) | 239 | `result-track:dd66937ed8de106fb4af0bdb9ea3b3e7b29c590db6aa79c8ecc8c1def2dbbf66` |
| 28 | `theorem` | [hasStrictTerminalObjects_of_terminal_is_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/declarations/hasstrictterminalobjects-of-terminal-is-strict--2f2b69ae4f253271a2b91b27.md) | 246 | `result-track:2f2b69ae4f253271a2b91b271aa8d813a8e86596628651014e89473d2057b6fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
