# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38bfb1ca6249cfb327385cac6688e50254e395e9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38bfb1ca6249cfb327385cac6688e50254e395e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Congruence` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/compsub--5c3ee8f5ab3f1dd61cb3d550.md) | 30 | `declaration-track:5c3ee8f5ab3f1dd61cb3d55094865fc7adac7e40cf7e0a3f0bb7f6c8cc9f9b94` |
| 2 | `theorem` | [subst_compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/subst-compsub--350d68d0bbb60443629915d1.md) | 31 | `result-track:350d68d0bbb60443629915d1f549ac1e54b27448c6265071da870bba2cda9356` |
| 3 | `theorem` | [lift_comp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/lift-comp-cons--fce1d673aafd2f5e65e045a4.md) | 33 | `result-track:fce1d673aafd2f5e65e045a4a9a6167e6b40c13fb43d1a41f117427e2b2893a0` |
| 4 | `theorem` | [raise_subst_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/raise-subst-cons--87a7c4c5e6e823ee5b199e2c.md) | 38 | `result-track:87a7c4c5e6e823ee5b199e2c2be3de5ce62235b1231d02884809fab9aefd269d` |
| 5 | `theorem` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/lift--641d9cd42dadb911a45695a5.md) | 48 | `result-track:641d9cd42dadb911a45695a5ecd8b914723e9090b0c818961362aaddb33863ac` |
| 6 | `def` | [GoodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/goodreplacement--3735067ebf24bd7f633a83c0.md) | 63 | `declaration-track:3735067ebf24bd7f633a83c0a8bbffc98b043253c99323c50e5376987eee9407` |
| 7 | `theorem` | [goodReplacement_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/goodreplacement-lift--a5d35995a2224335bd401771.md) | 68 | `result-track:a5d35995a2224335bd401771527ef88bdb8f2ac346255f46a0f8821a93f904c1` |
| 8 | `theorem` | [neutral_readGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/neutral-readgood--17575fb6f6a5b66258440404.md) | 103 | `result-track:17575fb6f6a5b66258440404f202807d1d52f59151d1980a17e4cc7eec8115d3` |
| 9 | `theorem` | [sort_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/sort-val-retarget--e9a1f51d388f0766809ba19c.md) | 130 | `result-track:e9a1f51d388f0766809ba19c742f04fb52fe630499faba26bd01b4cc6ce7e83b` |
| 10 | `theorem` | [lookup_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/lookup-val-retarget--971b321da971c5b830924526.md) | 139 | `result-track:971b321da971c5b8309245269e9f08eafad4078eae283d10c68e685b076bebee` |
| 11 | `theorem` | [abstractionAction_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/abstractionaction-retarget--3cab5053a48ee30ff203d9ee.md) | 148 | `result-track:3cab5053a48ee30ff203d9eeb59eb290291c03f17d131f5282b52bf668377221` |
| 12 | `theorem` | [abstraction_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/abstraction-val-retarget--42c3036c76c3703501c739f0.md) | 180 | `result-track:42c3036c76c3703501c739f0200c7bbd4fcb65f9f5a49c23692f5ceacda51b97` |
| 13 | `theorem` | [product_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/product-val-retarget--f96878979dc060397da2ad22.md) | 193 | `result-track:f96878979dc060397da2ad22e41f9f760b3b2501560c722c13a3a0785e550fea` |
| 14 | `theorem` | [application_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/application-val-retarget--d9315f43cf01c3b8ae30f5d1.md) | 210 | `result-track:d9315f43cf01c3b8ae30f5d16c2fb14ebe889165ff29b844182a5a0f7b31f48d` |
| 15 | `theorem` | [preEvaluate_retarget_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/preevaluate-retarget-val--49b05f1e3e34f232bc66a9ce.md) | 228 | `result-track:49b05f1e3e34f232bc66a9cea297e7f74e31fa61ee8730ef91debce35a61161b` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/preevaluate-retarget-parameter--792bfa0e4d7c437557afd413.md) | 250 | `result-track:792bfa0e4d7c437557afd413a6df2d726dfb56dab48a2c1d93b8bbe49c7530bf` |
| 17 | `structure` | [Assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/assigned--41dc30b0fec73d57f69927c4.md) | 260 | `declaration-track:41dc30b0fec73d57f69927c4fd9af5dfa94a003cedfa3a04d6e249201add01ad` |
| 18 | `theorem` | [raw_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/raw-eq--8ebc280fc5a14f10ba8bbda3.md) | 271 | `result-track:8ebc280fc5a14f10ba8bbda3eec4c467c4a698374749bb49da54b13036d51116` |
| 19 | `theorem` | [normal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/normal-eq--f7063294613fc0db821177ac.md) | 274 | `result-track:f7063294613fc0db821177ac6755d327a89fb77e2933de1596faf30d7fd67ee0` |
| 20 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/cons--8caf674c7d9a59e0139adb34.md) | 278 | `result-track:8caf674c7d9a59e0139adb345edda4dc203b3b036c6b9c653413f941c4c8e64b` |
| 21 | `theorem` | [preEvaluate_read_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/preevaluate-read-outside--77066b619d864893d55f3edb.md) | 316 | `result-track:77066b619d864893d55f3edb12b9fb305038b256d10572c060fd2fca959d282e` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/preevaluate-neutral-read-inactive--eff8b01645a54c5dbd59a863.md) | 333 | `result-track:eff8b01645a54c5dbd59a863b3a6b7ded58c1bd7977dc6087a01145abb25ac4b` |
| 23 | `theorem` | [readGood_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/readgood-outside--1e01d4198cdf39718dda38a0.md) | 356 | `result-track:1e01d4198cdf39718dda38a0b9e5eb24789f291bebd5d97843e76747ccb3c403` |
| 24 | `abbrev` | [ProductGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/productgood--ce33055bad98558dc5c00eb8.md) | 366 | `declaration-track:ce33055bad98558dc5c00eb8c6b3cb2f002f4397da6473d7bc54034b868b9c0a` |
| 25 | `theorem` | [goodness_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/goodness-subst--b06354ccd7748c0223acb2e0.md) | 373 | `result-track:b06354ccd7748c0223acb2e0b65fee89649e6d5275e428154c855be04848d006` |
| 26 | `theorem` | [baseRead_substitution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/baseread-substitution--30d8b8f588d5bc6303df5a48.md) | 498 | `result-track:30d8b8f588d5bc6303df5a4892857edad281ffeff297a9a67f23cb53360688c3` |
| 27 | `theorem` | [preEvaluate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/preevaluate-subst--5e363042a43b452f10e3e413.md) | 533 | `result-track:5e363042a43b452f10e3e4135e5ff2b60cfc4b3228a6af1a11535ddcae60902f` |
| 28 | `theorem` | [comp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/comp-single--b10ce07ef1ed522de97abd4b.md) | 669 | `result-track:b10ce07ef1ed522de97abd4b1f9c6adaa35a48cfc993c81469a4e8adcf01ee66` |
| 29 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/single--2c3ebc2089155495616b12f0.md) | 675 | `declaration-track:2c3ebc2089155495616b12f09981e0a3e2730645a9065c623c532350c2266aff` |
| 30 | `theorem` | [goodness_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/goodness-recontext--74e402ec664000c8904cdd68.md) | 697 | `result-track:74e402ec664000c8904cdd68f3a51a7a577eda928b4e3fccfbca44240650c698` |
| 31 | `theorem` | [single_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/single-guard--8024a6b5cdda7ce2fe24a197.md) | 732 | `result-track:8024a6b5cdda7ce2fe24a197b28575b0a8fd061d1fcb1737b7361750e8e7fd97` |
| 32 | `theorem` | [single_goodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/single-goodreplacement--007abe9eeb991fd4cc6e9627.md) | 744 | `result-track:007abe9eeb991fd4cc6e9627ffa00b176179e83c593a9601bc7bf64cd0f01b67` |
| 33 | `theorem` | [single_assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/declarations/single-assigned--936a49a965070a51e23567e1.md) | 758 | `result-track:936a49a965070a51e23567e11c7b44e09ec6710af1b985fd2c8d464eeb05b26d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
