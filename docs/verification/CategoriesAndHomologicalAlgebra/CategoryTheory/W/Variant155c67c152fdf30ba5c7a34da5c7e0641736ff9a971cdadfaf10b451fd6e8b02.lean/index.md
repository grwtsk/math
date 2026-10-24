# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.W.Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "443b329e048b4ce0ea0551c22608d6935bd23b61",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `443b329e048b4ce0ea0551c22608d6935bd23b61`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean.json)

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
| 1 | `inductive` | [WPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpath--b986df5a9438802753ecfd27.md) | 60 | `declaration-track:b986df5a9438802753ecfd27cccce5c7e3d13d8133bf25abb005c5fa5a45c814` |
| 2 | `instance` | [WPath.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpath-inhabited--c879c67798057907d8564113.md) | 67 | `declaration-track:c879c67798057907d8564113c5c19f15fcfd26839d64df2c3b730aff0a5404fd` |
| 3 | `def` | [wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathcaseson--226a8d2b3ebf4188b67be57e.md) | 75 | `declaration-track:226a8d2b3ebf4188b67be57e264e1103f627974f1839ce2dd2b424e209ac6ad9` |
| 4 | `def` | [wPathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathdestleft--8679d8bbd9d1187733d3beae.md) | 85 | `declaration-track:8679d8bbd9d1187733d3beae9649ab1ef8cb48ec3da06a475e081124cc711c9b` |
| 5 | `def` | [wPathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathdestright--4637e005c809cfebbb31b7ee.md) | 91 | `declaration-track:4637e005c809cfebbb31b7eebd9f70215eb9c25a9b5c1a4aecfc4b9be111180b` |
| 6 | `theorem` | [wPathDestLeft_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathdestleft-wpathcaseson--0948501e24fb745c516bfa0f.md) | 97 | `result-track:0948501e24fb745c516bfa0fd605ca39ecc4ea8e21e4f120c903f8dc32db8eba` |
| 7 | `theorem` | [wPathDestRight_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathdestright-wpathcaseson--677b843ace6160e59068d849.md) | 103 | `result-track:677b843ace6160e59068d84986f04c2707e54fb07be80eafb52c5cf56d1e03ba` |
| 8 | `theorem` | [wPathCasesOn_eta](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpathcaseson-eta--b62c0429d2f37cee94280a41.md) | 109 | `result-track:b62c0429d2f37cee94280a41775779b213398a954e5ccd50ea42c894e19dc173` |
| 9 | `theorem` | [comp_wPathCasesOn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/comp-wpathcaseson--9ddac7112f0844b07c7706f5.md) | 115 | `result-track:9ddac7112f0844b07c7706f573db9c3c8551e07138b32835f97835483ab1201b` |
| 10 | `def` | [wp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wp--1b611a93dbebab24bb30116e.md) | 126 | `declaration-track:1b611a93dbebab24bb30116ef895b19bc161485569fbfc80bd3d8f04a018ea2a` |
| 11 | `def` | [W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/w--af62d6a1b87372f4d6e77b18.md) | 134 | `declaration-track:af62d6a1b87372f4d6e77b188cae9de2f71b11694f889bb57c4f8f39c7af4183` |
| 12 | `instance` | [mvfunctorW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/mvfunctorw--425b2621e58d5ad2a83a3250.md) | 139 | `declaration-track:425b2621e58d5ad2a83a32503de49e55b89f5a883e101a93e8334e4efef3377c` |
| 13 | `def` | [wpMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wpmk--16ab082a80bea5d7af1bfffe.md) | 149 | `declaration-track:16ab082a80bea5d7af1bfffefe69b956aab57eb91d2bb29305aa015b14ec8bf9` |
| 14 | `def` | [wpRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wprec--822f451cecbfcc9ff95d2eab.md) | 155 | `declaration-track:822f451cecbfcc9ff95d2eab63f2ffe337897fcd4cc074376151fb0d00b9d894` |
| 15 | `theorem` | [wpRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wprec-eq--feeab2d3912038445c9538f0.md) | 162 | `result-track:feeab2d3912038445c9538f011a1fe3afd0172546335faaf28f5f185371d4dce` |
| 16 | `theorem` | [wp_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wp-ind--1fea11e75e410ddd97004b9a.md) | 170 | `result-track:1fea11e75e410ddd97004b9a7b4b7c5786174766bf958eb75b9c26c8de67ad8c` |
| 17 | `def` | [wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wmk--3e7a3149074c537a2432e657.md) | 187 | `declaration-track:3e7a3149074c537a2432e657a51a3cbe9f477b38e4c41c737ad3786b1423514a` |
| 18 | `def` | [wRec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wrec--dfb377c2f008b852c3915e89.md) | 195 | `declaration-track:dfb377c2f008b852c3915e8928d2ebd265e365a6a321284b3201dd3b1be384ce` |
| 19 | `theorem` | [wRec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wrec-eq--2fb0b2087f1bc203a59d141f.md) | 206 | `result-track:2fb0b2087f1bc203a59d141f6784966e8641af815c183240814c56e9ddb6bdf6` |
| 20 | `theorem` | [w_ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/w-ind--5701c2f8d2653961656c58f7.md) | 217 | `result-track:5701c2f8d2653961656c58f71ab4d511047a58debebfeb4f1d3c5ba49af4b302` |
| 21 | `theorem` | [w_cases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/w-cases--a75a4fe6c05bcd267872c03e.md) | 232 | `result-track:a75a4fe6c05bcd267872c03e874955cfd0d54cb31eb262b5244bff51cfc5f8eb` |
| 22 | `def` | [wMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wmap--91ace643468da19eee58b404.md) | 239 | `declaration-track:91ace643468da19eee58b40439a86dfee69e0777199577770fa7170a344d5330` |
| 23 | `theorem` | [wMk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wmk-eq--143d6e835d98a3bbd365f44b.md) | 243 | `result-track:143d6e835d98a3bbd365f44b164b5f1ea2ca779584635233b00633387ff8e65f` |
| 24 | `theorem` | [w_map_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/w-map-wmk--aee883deab06e29f0522c805.md) | 249 | `result-track:aee883deab06e29f0522c8055bc137605b39cbce9401d74d97c319a9a8d2f9e1` |
| 25 | `def` | [objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/objappend1--647c197593ee0e7502bf27ac.md) | 275 | `declaration-track:647c197593ee0e7502bf27ac88a0d341180a3345e44f274d27f74e9e3d9b58bd` |
| 26 | `theorem` | [map_objAppend1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/map-objappend1--3c4284c3a674ce7961e86abc.md) | 280 | `result-track:3c4284c3a674ce7961e86abc0a5cb33c3181de536d31a80e105b7f9a86904b01` |
| 27 | `def` | [wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wmk--126a0093ed9cce3c1c448665.md) | 295 | `declaration-track:126a0093ed9cce3c1c4486655130ba8822d910ed2ab94534a400dc28bd46aba2` |
| 28 | `def` | [wDest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wdest--d179468b4863fced34e3c954.md) | 301 | `declaration-track:d179468b4863fced34e3c954b834c158b797cf766d29d8e73435d442c4ff3edb` |
| 29 | `theorem` | [wDest'_wMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wdest-wmk--97398bb340b705facf33b217.md) | 306 | `result-track:97398bb340b705facf33b217d66bb66f8b3b40e78cbcb5da0e7f82ce3fc9b5e1` |
| 30 | `theorem` | [wDest'_wMk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/declarations/wdest-wmk--03842e438edc317f092c29de.md) | 311 | `result-track:03842e438edc317f092c29de68f874bbe7ae40cbdaa114c7d80ee283ef6b1ef9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
