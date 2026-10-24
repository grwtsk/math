# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.M.Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "262d6118784c59493f44f05d67bb5c6d102535fb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `262d6118784c59493f44f05d67bb5c6d102535fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.M` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [M.Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-path--7b86ebfa19785ed82a48f05c.md) | 61 | `declaration-track:7b86ebfa19785ed82a48f05ca7afa6478100a474ca94d5592eea093dbb203ed5` |
| 2 | `instance` | [M.Path.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-path-inhabited--4b2cdad3be25356664ce0f18.md) | 79 | `declaration-track:4b2cdad3be25356664ce0f18a992a3902e9f874fc0d58fcf6db0676edd8c5030` |
| 3 | `def` | [mp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/mp--ab0711a0a37129241f96a321.md) | 97 | `declaration-track:ab0711a0a37129241f96a3215a044128ae19c6f90ade7f3607aa0a8a2bb53018` |
| 4 | `def` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m--4f396e0a9111bb4aab16a506.md) | 105 | `declaration-track:4f396e0a9111bb4aab16a506ef3ed7caad47adee8ddd2c777fe1e028945c266f` |
| 5 | `instance` | [mvfunctorM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/mvfunctorm--21bfb2eba38bfbf11814d729.md) | 111 | `declaration-track:21bfb2eba38bfbf11814d72900a31c8f92bb6ec9d10848aa25b11f040821ecd2` |
| 6 | `instance` | [inhabitedM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/inhabitedm--10ff3eaae637a0638d7e54e4.md) | 116 | `declaration-track:10ff3eaae637a0638d7e54e49dd647d8c2527ab1113f815a6cb06cbf71e6670a` |
| 7 | `def` | [M.corecShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-corecshape--5cf3724f847b01d3fcb210e9.md) | 125 | `declaration-track:5cf3724f847b01d3fcb210e9343db4a5da0eae39b4541352dd4968164f0d193e` |
| 8 | `def` | [castDropB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/castdropb--2daffb3d36d5f81a49ba4d6e.md) | 133 | `declaration-track:2daffb3d36d5f81a49ba4d6e0938d3ba87c46c2cfbc259638ff166a868a99a28` |
| 9 | `def` | [castLastB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/castlastb--4c8235c90d44eea918a5a9eb.md) | 139 | `declaration-track:4c8235c90d44eea918a5a9eb21c64c48b022f291f4805bf7360eff5328a371d5` |
| 10 | `def` | [M.corecContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-coreccontents--6abc0540708f3c9c00fac68e.md) | 145 | `declaration-track:6abc0540708f3c9c00fac68efa46d452b45de82ae093138325994ab8469f39db` |
| 11 | `def` | [M.corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-corec--cbdf310f4f59715787a85885.md) | 175 | `declaration-track:cbdf310f4f59715787a85885d91ff41f3049e4022928e94e65640856edb11ddf` |
| 12 | `def` | [M.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-corec--df3751d63d7070031d5f2898.md) | 183 | `declaration-track:df3751d63d7070031d5f289895e678a6704e5b43cb16e9598cc34d0862fde1a2` |
| 13 | `def` | [M.pathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-pathdestleft--28205c15c780b39dc513ea80.md) | 190 | `declaration-track:28205c15c780b39dc513ea80d10372bb39304155595a0195cf28a40382b895a4` |
| 14 | `def` | [M.pathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-pathdestright--1965d964e037fe041b024b7f.md) | 198 | `declaration-track:1965d964e037fe041b024b7f56fbc08f487a6fd264fca07e0d9246adca2ed1c2` |
| 15 | `def` | [M.dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest--346aae9f14ee505ec8c83f13.md) | 206 | `declaration-track:346aae9f14ee505ec8c83f13718a502aed9b5cb22637859400814202be9bbb5b` |
| 16 | `def` | [M.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest--a75debc23a08bf93f06f5df1.md) | 214 | `declaration-track:a75debc23a08bf93f06f5df1b6be3b283b3af52de9d9499df98a599bbd145b04` |
| 17 | `def` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-mk--5f153989e1799aaa415a356c.md) | 221 | `declaration-track:5f153989e1799aaa415a356cf4da197693ba54d232b3eb7b2091dfcb2ff5bf62` |
| 18 | `theorem` | [M.dest'_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest-eq-dest--1eed53c4adcad7916f019f82.md) | 227 | `result-track:1eed53c4adcad7916f019f82f1ba17fae458414b00cf300eb9f4054c335834b1` |
| 19 | `theorem` | [M.dest_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest-eq-dest--1a44d28cb27fbe12fcd933cd.md) | 235 | `result-track:1a44d28cb27fbe12fcd933cd047b9a06acba45ee2e54a388ebfa97143c903977` |
| 20 | `theorem` | [M.dest_corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest-corec--ea24569adfa4cef277a193a5.md) | 243 | `result-track:ea24569adfa4cef277a193a55edb307bf7155f6f1afba53a80c96292929d9414` |
| 21 | `theorem` | [M.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest-corec--a854cda178df71d7ff8cbad2.md) | 251 | `result-track:a854cda178df71d7ff8cbad25cf67b1cf002a7f4cc1c672f4ae7134c4fea125a` |
| 22 | `theorem` | [M.bisim_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-bisim-lemma--950f80d23a118506f167d95a.md) | 264 | `result-track:950f80d23a118506f167d95aeb51c79dd030d65a2fc570c45fa3aae61ff2487f` |
| 23 | `theorem` | [M.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-bisim--1d41d8475028d0038cc4f860.md) | 279 | `result-track:1d41d8475028d0038cc4f860c806d569752ced18f4630805ba9c2e1434b1d779` |
| 24 | `theorem` | [M.bisim₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-bisim--13a77aa46f97fe1cd5fecb49.md) | 315 | `result-track:13a77aa46f97fe1cd5fecb49de0ef5a55eaa02b80f7c3e1d2066e319bf9df9c8` |
| 25 | `theorem` | [M.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-bisim--9099d385f7335a1950c84fc2.md) | 349 | `result-track:9099d385f7335a1950c84fc23e99d598413a100c797ae92c8f6e33244d1dc818` |
| 26 | `theorem` | [M.dest_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-dest-map--2a8b067aaf67cf1f9874aacc.md) | 367 | `result-track:2a8b067aaf67cf1f9874aacc9a1c11455cff7f413a420f51df0b14a3cbabb5f3` |
| 27 | `theorem` | [M.map_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/declarations/m-map-dest--230e65dc6691477b18c10c89.md) | 378 | `result-track:230e65dc6691477b18c10c890958043d86c89c9b2b099b1dead436838ea13a2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
