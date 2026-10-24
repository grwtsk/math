# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83bf1c11eee251c28e8f9cfac49cf67abad333ad",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83bf1c11eee251c28e8f9cfac49cf67abad333ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.InducedCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory--5fbd3f1c2e108e13805e5bbf.md) | 35 | `declaration-track:5fbd3f1c2e108e13805e5bbf039647a71ecf6215f67a039cbafe5606c39d6773` |
| 2 | `instance` | [FullSubcategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-category--3462036081c0f64a0b8e34f9.md) | 41 | `declaration-track:3462036081c0f64a0b8e34f9f9befcabcd3405c19b6cefaa879190ee93f11336` |
| 3 | `lemma` | [FullSubcategory.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-id-def--5f307f5996128debbb7444e5.md) | 46 | `result-track:5f307f5996128debbb7444e5a663a4fd6cc6ae4d2f9cd7326eff41ab84b3c839` |
| 4 | `lemma` | [FullSubcategory.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-comp-def--18b2e6aa19e2851253b30a96.md) | 48 | `result-track:18b2e6aa19e2851253b30a966562543c3cf9abeed9c7ba7efb8bfaec9cb87a02` |
| 5 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/anonymous--d156424696ce25eb73c18a4e.md) | 54 | `declaration-track:d156424696ce25eb73c18a4eaec3d352cddcdccff92489dadd8cbe9447f526c2` |
| 6 | `theorem` | [ι_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/obj--cda6e9f7f9c1ea51576a5170.md) | 58 | `result-track:cda6e9f7f9c1ea51576a517050acf27ca27cccd4abb656fa7015eee091d6f1af` |
| 7 | `theorem` | [ι_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/map--79f8615ecdef22befda27cb8.md) | 62 | `result-track:79f8615ecdef22befda27cb829bfaf3e41f27a8c0cb63c64aa3497b9cc2fdeff` |
| 8 | `abbrev` | [fullyFaithfulι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullyfaithful--b398de6c2ce6372ae233e01e.md) | 66 | `declaration-track:b398de6c2ce6372ae233e01ec50af12b3f49017650fd1a85a13e796e66d12386` |
| 9 | `instance` | [full_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/full--efcc2440039e6e4823b0d288.md) | 70 | `declaration-track:efcc2440039e6e4823b0d288ba7c20da6b1fda9d9fe75b7136de839b48c766be` |
| 10 | `instance` | [faithful_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/faithful--69cbf0fafb4a290b6b788a41.md) | 71 | `declaration-track:69cbf0fafb4a290b6b788a4160b7f71d17277ffa1b14b9478c9da5d727a2749d` |
| 11 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/isomk--15ff5f57f458452fbd3c8c4c.md) | 76 | `declaration-track:15ff5f57f458452fbd3c8c4cfaa25b80f905a9dfcff867befeffe823c10dc0a5` |
| 12 | `def` | [ιOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/ofle--c606b264955938de08003d82.md) | 88 | `declaration-track:c606b264955938de08003d8255fcb613b522ff0be995846e5a1ed89b4b7ecd03` |
| 13 | `def` | [fullyFaithfulιOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullyfaithful-ofle--09caac5aaf065b0e8aae5125.md) | 93 | `declaration-track:09caac5aaf065b0e8aae51256ec8d9d09ae0258a5e4935994b4c8a88f6c378ef` |
| 14 | `instance` | [full_ιOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/full-ofle--0c3830343df2cd5d6d96bcff.md) | 97 | `declaration-track:0c3830343df2cd5d6d96bcfff54ba4db52ac2f03161dda4c46450dc521cfb7db` |
| 15 | `instance` | [faithful_ιOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/faithful-ofle--838ab07e57ed005d66e6c8a8.md) | 98 | `declaration-track:838ab07e57ed005d66e6c8a8e5202055e05373a957085f3049e18036820c8043` |
| 16 | `theorem` | [FullSubcategory.map_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-map-inclusion--2b577408bce76ed913a5e296.md) | 101 | `result-track:2b577408bce76ed913a5e296a8fafa69e766168aa0af65415deb215339335592` |
| 17 | `def` | [ιOfLECompιIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/oflecomp-iso--0be7155f3f409bef03f0509f.md) | 106 | `declaration-track:0be7155f3f409bef03f0509fabd7d884abb2527b86973c2e4913f404b26ae671` |
| 18 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/lift--61bd9ffbed61a1cf1ad52230.md) | 118 | `declaration-track:61bd9ffbed61a1cf1ad52230131e5e0eeb7527238c2e4fb3d648d86c74b79c5a` |
| 19 | `theorem` | [FullSubcategory.lift_comp_inclusion_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-lift-comp-inclusion-eq--1998e378180a5bbb76ce2b7e.md) | 123 | `result-track:1998e378180a5bbb76ce2b7efecb4f2da68bc0767b6e2ede5248c6e52aa4afed` |
| 20 | `def` | [liftCompιIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/liftcomp-iso--e9b9f781d0f3abb5e8c6b712.md) | 129 | `declaration-track:e9b9f781d0f3abb5e8c6b712ad2c01e611c33c3341bd43fd650bf3baead80eb3` |
| 21 | `lemma` | [ι_obj_lift_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/obj-lift-obj--b21972ec6980da8aeab9048e.md) | 132 | `result-track:b21972ec6980da8aeab9048e847927997c55b32bc4311c8ee8199f6c11bedc3e` |
| 22 | `lemma` | [ι_obj_lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/obj-lift-map--9d604db2315210c590f7b983.md) | 136 | `result-track:9d604db2315210c590f7b983239a7a7ae7847098da53b1f7a6c7d6559382e4a0` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/instance--327781e5e95f4a1235af10cd.md) | 139 | `declaration-track:327781e5e95f4a1235af10cd0371633ef97672d3a203737aeb087d1ea69689f8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/instance--29c59b6de095b15e3b0733c5.md) | 142 | `declaration-track:29c59b6de095b15e3b0733c5f4c0cad7001ad2c7b96b959e6e26e2aa6ece860b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/instance--ff65ffc5072301e56a576b78.md) | 145 | `declaration-track:ff65ffc5072301e56a576b78621325d6b523684ec02b46ec11a1510d8e7acf38` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/instance--0306a2b4f0ddc8a30d5cc6e7.md) | 148 | `declaration-track:0306a2b4f0ddc8a30d5cc6e7dc8c7df66723f4de2e3e80d2c13a56215fa66e35` |
| 27 | `def` | [liftCompιOfLEIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/liftcomp-ofleiso--9918795e27961764f301e63e.md) | 155 | `declaration-track:9918795e27961764f301e63e99c742baa2f8f51f4a9bcb474da120ea4e765ba6` |
| 28 | `theorem` | [FullSubcategory.lift_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant8618e6e549e2f535ad162b01fbb0b1d072fa24c7c2b34705392c86a25591f35f.lean/declarations/fullsubcategory-lift-comp-map--ea1d225417813b77c874e14c.md) | 159 | `result-track:ea1d225417813b77c874e14cd117a2240906a190b8351ecc397402bede3b7ba9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
