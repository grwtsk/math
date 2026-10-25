# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c9695e696fb7d4e787c68ff5bd5c03107c21eec",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c9695e696fb7d4e787c68ff5bd5c03107c21eec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.SafeExponentiation` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/fromexpr--cf193f847d92fb7e1c626141.md) | 27 | `declaration-track:cf193f847d92fb7e1c6261412c417a631334d33ffb511bee2e39093f3309bd4e` |
| 2 | `def` | [reduceUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reduceunary--95ec206cf757a31ed10e42be.md) | 35 | `declaration-track:95ec206cf757a31ed10e42be3c666336f1e62b80cb3589d7cfbfd2a1a10509cf` |
| 3 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reducebin--c5a25c2e701ea6b167106538.md) | 40 | `declaration-track:c5a25c2e701ea6b167106538f552c309fd5647cb904c72dc3a24f6e4fc781486` |
| 4 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reducebinpred--e799db350e55ff915dd9da8a.md) | 46 | `declaration-track:e799db350e55ff915dd9da8abdc579f6b3dffe4015afe714557878acfd3176d1` |
| 5 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reduceboolpred--bc9c97500ff7f73791978348.md) | 52 | `declaration-track:bc9c97500ff7f7379197834872f7acef544188b9580ad6db75c1133ce50cf598` |
| 6 | `inductive` | [NatOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/natoffset--742f5e68d2830cf72e0bb820.md) | 102 | `declaration-track:742f5e68d2830cf72e0bb8205cf5b30f5eccba01469ed2d9792827b0236603b7` |
| 7 | `def` | [NatOffset.asOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/natoffset-asoffset--7b8a64596235775a01d529dd.md) | 109 | `declaration-track:7b8a64596235775a01d529ddf97478225157df07c13a98985e6b838222dfd280` |
| 8 | `def` | [NatOffset.fromExprAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/natoffset-fromexpraux--4b2784483fda1cac09f3aeaa.md) | 134 | `declaration-track:4b2784483fda1cac09f3aeaacb7af2d60c7ae10da65ec1b649f2ceaa51f76259` |
| 9 | `def` | [NatOffset.fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/natoffset-fromexpr--49dbe87d3a1bdce8004d6d5a.md) | 143 | `declaration-track:49dbe87d3a1bdce8004d6d5ab216f0a6864dc3174772029e7a86bbca5ed3dd91` |
| 10 | `def` | [mkAddNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkaddnat--6c88ef76aace71a60b0bb8d8.md) | 151 | `declaration-track:6c88ef76aace71a60b0bb8d8a8ff0e86b0e5c0150a996276f0c4686f20cad365` |
| 11 | `def` | [mkSubNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mksubnat--5202b02cc84ccc8360745f74.md) | 157 | `declaration-track:5202b02cc84ccc8360745f740452c93c289093d1c338acdc36cc5766dc17112a` |
| 12 | `def` | [mkEqNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkeqnat--a4b3d6e0c62203f2bc5257ee.md) | 164 | `declaration-track:a4b3d6e0c62203f2bc5257ee09df19ae13461a0d09a7081dcc89df5c971d7291` |
| 13 | `def` | [mkBEqNatInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkbeqnatinstance--2e492047d6b86d6730164038.md) | 167 | `declaration-track:2e492047d6b86d67301640381929717b80836bf765426ba46d38e07e62bc3c72` |
| 14 | `def` | [mkBEqNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkbeqnat--0fac55cf36ac09e3713ea897.md) | 170 | `declaration-track:0fac55cf36ac09e3713ea89776296518b62ad516861e74fd3f9454cce5493988` |
| 15 | `def` | [mkBneNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkbnenat--e6a393d2032647558cb3317f.md) | 173 | `declaration-track:e6a393d2032647558cb3317f6da08723f715d489fd6880b1a6ff296dd88d28c1` |
| 16 | `def` | [mkLENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mklenat--2db313f140256ef1126824c0.md) | 176 | `declaration-track:2db313f140256ef1126824c0cf10fad001bde9293e8560320d5ac9f2044927a5` |
| 17 | `def` | [mkGENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkgenat--c1ab8620612fda1a7737f126.md) | 179 | `declaration-track:c1ab8620612fda1a7737f1262206849b3332a2dd3b3b7b3dfa843b439e2c7344` |
| 18 | `def` | [mkLTNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkltnat--c8c9facb54fdb50d231bb4ce.md) | 181 | `declaration-track:c8c9facb54fdb50d231bb4cef6881fd695a8ddb2bf061de755ff51a064e86cea` |
| 19 | `def` | [mkGTNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkgtnat--9bc4aded17dd6de9792bed0b.md) | 184 | `declaration-track:9bc4aded17dd6de9792bed0bd92b89729e0b8f9b72d81534382aeb13b0be3074` |
| 20 | `def` | [mkOfDecideEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/mkofdecideeqtrue--032be8097984f8c313da9ee9.md) | 186 | `declaration-track:032be8097984f8c313da9ee9d1cb38e94e78adc02a1bf5e68a57cde9373537e7` |
| 21 | `def` | [applySimprocConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/applysimprocconst--5b924a9273d895e669bee1fc.md) | 190 | `declaration-track:5b924a9273d895e669bee1fc66af5864fc8d33844c69a32c35fc768bf47f8409` |
| 22 | `inductive` | [EqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/eqresult--54d9a8400955f8b7d4dbabae.md) | 195 | `declaration-track:54d9a8400955f8b7d4dbabae841f51b23da2db006b55708f5fb88458e1f7d695` |
| 23 | `def` | [applyEqLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/applyeqlemma--c4c59692d6e66ec8edad728d.md) | 200 | `declaration-track:c4c59692d6e66ec8edad728d3226d95b7a106c9dd1bc58ee22104ce99cadfb2e` |
| 24 | `def` | [reduceNatEqExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reducenateqexpr--e8bf086ecfe734e4d21d299a.md) | 205 | `declaration-track:e8bf086ecfe734e4d21d299a644beae403abe6551aaf2dffb4c9adae15993cfe` |
| 25 | `def` | [reduceLTLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant49d9e0505c5c9d5b34f2d6d7879064c3d621eff50538eeb7cac84723389de7b1.lean/declarations/reduceltle--09358903a1375191a31e218a.md) | 296 | `declaration-track:09358903a1375191a31e218aea4fd257463feb7bda6dd355c4ee9d0e5569ceb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
