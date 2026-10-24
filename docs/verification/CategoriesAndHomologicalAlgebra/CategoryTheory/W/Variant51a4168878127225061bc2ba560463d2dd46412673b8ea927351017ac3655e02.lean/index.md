# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.W.Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1208f943c626ce5e61f08eec979709d2f97da0cb",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1208f943c626ce5e61f08eec979709d2f97da0cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpath--f870a9b4df5a64f3db7749fa.md) | 58 | `declaration-track:f870a9b4df5a64f3db7749fa5600af05797dde485dd47c792ea215ab147a4e97` |
| 2 | `instance` | [WPath.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpath-inhabited--b95305c49bd40c438a352ac4.md) | 63 | `declaration-track:b95305c49bd40c438a352ac4eaa7552cfe1130034c714a73c6f664d1de6570ab` |
| 3 | `def` | [wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathcaseson--170af3bc1063c2d18a0bd1c3.md) | 69 | `declaration-track:170af3bc1063c2d18a0bd1c38bf6afc1dcea157aaee1e151403b1996ec355e91` |
| 4 | `def` | [wPathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathdestleft--7092f81cc779ea342ea80878.md) | 77 | `declaration-track:7092f81cc779ea342ea808787f5a00cb73d60268a64245649abe9ca2b4e8b1aa` |
| 5 | `def` | [wPathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathdestright--94bd5228f3bc0b5b05303285.md) | 81 | `declaration-track:94bd5228f3bc0b5b053032857dfaa536c679a52d44c5614de547a2a81e5322e4` |
| 6 | `theorem` | [wPathDestLeft_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathdestleft-wpathcaseson--44ea8f25a58eedb38f68d4d5.md) | 85 | `result-track:44ea8f25a58eedb38f68d4d5a37a99e4d8a952c0562f6aefcd122fc995edc83a` |
| 7 | `theorem` | [wPathDestRight_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathdestright-wpathcaseson--753b4e56967d30784db44fb9.md) | 89 | `result-track:753b4e56967d30784db44fb9e49a224669e846d34b642b830a95482b526caaee` |
| 8 | `theorem` | [wPathCasesOn_eta](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpathcaseson-eta--11d6a51eb86fe5b5b94ff543.md) | 93 | `result-track:11d6a51eb86fe5b5b94ff5436391b57538ff88d77285196ddfdc4af5275acf25` |
| 9 | `theorem` | [comp_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/comp-wpathcaseson--440ae893dc30523bc4d4a41b.md) | 97 | `result-track:440ae893dc30523bc4d4a41b93f47a597ebb6f3a09b55c9a0552fbb92f068e2e` |
| 10 | `def` | [wp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wp--2046d4220a6abadffbd1fb7d.md) | 106 | `declaration-track:2046d4220a6abadffbd1fb7d6fc7cf45417936a80c3d8d9401d86e5fc2472ace` |
| 11 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/w--10b0715489d702eb08444c31.md) | 111 | `declaration-track:10b0715489d702eb08444c314472fc86e6525f901bd9ddcfa579c735ac9c8784` |
| 12 | `instance` | [mvfunctorW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/mvfunctorw--1332dc785997e91030d938c5.md) | 114 | `declaration-track:1332dc785997e91030d938c5e38246082fe351d620c925ff26e466ee1f3a9f96` |
| 13 | `def` | [wpMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wpmk--b5a3d6c98c1f11e4ca5d89fb.md) | 122 | `declaration-track:b5a3d6c98c1f11e4ca5d89fb430cf2d711d8206320991f7b86afdd667e25239c` |
| 14 | `def` | [wpRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wprec--505cd55e46ab7e8827032abf.md) | 126 | `declaration-track:505cd55e46ab7e8827032abf7162229c45ec31e75b0efa3bade5ee38da7fb159` |
| 15 | `theorem` | [wpRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wprec-eq--492438ba6775eb3e0c304607.md) | 131 | `result-track:492438ba6775eb3e0c304607b31469b176979f5606c187294efa4b39120d5459` |
| 16 | `theorem` | [wp_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wp-ind--ae1660f111dd300488fd8632.md) | 137 | `result-track:ae1660f111dd300488fd863270d28d4ae1deba6b0044be1549a12e5f91bcaa14` |
| 17 | `def` | [wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wmk--7b371a1e9ecdf0c4f6224dbb.md) | 152 | `declaration-track:7b371a1e9ecdf0c4f6224dbbb0623a115a8c3f5106d74c6bef6d16d5b302aebc` |
| 18 | `def` | [wRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wrec--7204d493a1b6d28d6a8a2737.md) | 158 | `declaration-track:7204d493a1b6d28d6a8a27371b0506d96f2575c1f676fe67a1209952e9d8d684` |
| 19 | `theorem` | [wRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wrec-eq--ea964439bcd80babf9f1575a.md) | 167 | `result-track:ea964439bcd80babf9f1575a9f14ae8a69b867a44a5b17b66a27b345aa83ad67` |
| 20 | `theorem` | [w_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/w-ind--4cb6699ec74b3c6548655c16.md) | 176 | `result-track:4cb6699ec74b3c6548655c161cedcd1640406e5694c881099de01407ecb89e4c` |
| 21 | `theorem` | [w_cases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/w-cases--0e8201d5537747f0b1651bc5.md) | 189 | `result-track:0e8201d5537747f0b1651bc558d603c433fb9dcf3ff02a1158be3b015245edf2` |
| 22 | `def` | [wMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wmap--a9c2e401a87d8cd0701af4b4.md) | 194 | `declaration-track:a9c2e401a87d8cd0701af4b41e7d714dec74e67589b65d2118401fab4ffee8f8` |
| 23 | `theorem` | [wMk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wmk-eq--dcf77c73657223f881ddb8d1.md) | 196 | `result-track:dcf77c73657223f881ddb8d11bfd6d0965705de40f2d7de260a2ea50b916a456` |
| 24 | `theorem` | [w_map_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/w-map-wmk--fd612bfb0db558acfac1547a.md) | 200 | `result-track:fd612bfb0db558acfac1547a10f40917e3d2569e78bc3c7472671ea47ad5e240` |
| 25 | `abbrev` | [objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/objappend1--e982b3072d83b06ca32fc7a4.md) | 223 | `declaration-track:e982b3072d83b06ca32fc7a44794cf8bacc865b48e37ce5f6969703e275657c9` |
| 26 | `theorem` | [map_objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/map-objappend1--e82ee1e8140e563621a0bcfb.md) | 227 | `result-track:e82ee1e8140e563621a0bcfb0e4d506e397fbe317bfdaf9d2b4eb66b1cef444d` |
| 27 | `def` | [wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wmk--de68eba91919eb224605b332.md) | 241 | `declaration-track:de68eba91919eb224605b33266f1233c56035a483a99b162a39c8dd13b3cff80` |
| 28 | `def` | [wDest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wdest--33c628d6a45034adcd046e7e.md) | 245 | `declaration-track:33c628d6a45034adcd046e7ee13ccea25402cf157b21178e77ce34fa19c26a5f` |
| 29 | `theorem` | [wDest'_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wdest-wmk--e00399d938e4831cce91ffdd.md) | 248 | `result-track:e00399d938e4831cce91ffddca149da557ba7906f5d6789aeb9677c4c07d3b83` |
| 30 | `theorem` | [wDest'_wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant51a4168878127225061bc2ba560463d2dd46412673b8ea927351017ac3655e02.lean/declarations/wdest-wmk--95804583b1ec42503f8d39aa.md) | 251 | `result-track:95804583b1ec42503f8d39aa32b263d43d2663206a03c316f8ce93ad97ddd0b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
