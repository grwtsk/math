# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pointed.Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fee62cfe4b0fc0a07fc7e93548db5ddb6bf5112f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fee62cfe4b0fc0a07fc7e93548db5ddb6bf5112f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/pointed--abf794917aab28bbc0661d30.md) | 38 | `declaration-track:abf794917aab28bbc0661d30e8cc5ef1400e702ea9f46c85d5c6a09a5109be42` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/instance--22dc2ba94f5d35413b04e274.md) | 46 | `declaration-track:22dc2ba94f5d35413b04e2746cae0df97b4bb1b5fe5f9ea846d96aefbb6a61ab` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/of--a84b0e1a9a38657f5f7980ce.md) | 50 | `declaration-track:a84b0e1a9a38657f5f7980ce5e384778566b730fb5b308cae59f4380b767df53` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/coe-of--14b8a7c92e9d9feb7a863cf1.md) | 53 | `result-track:14b8a7c92e9d9feb7a863cf17e4e8411ff0b214b717f80ee46c75dd9ab849d74` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/instance--d6c2e406d885be8c03d2cb17.md) | 58 | `declaration-track:d6c2e406d885be8c03d2cb177595ffc32095885bb7ca08b35edfdb2cca891aee` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/hom--d7a643816ad95f8749b87cf1.md) | 63 | `declaration-track:d7a643816ad95f8749b87cf101b4eae368434f6b9aa51c4a420bafc4e93e1e22` |
| 7 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/id--a2e641958f7043fde6bca019.md) | 73 | `declaration-track:a2e641958f7043fde6bca01928b2977aac61bdb888d89112c6f2003bec6c996d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/instance--4b68100bd6dcc52ac32c25d3.md) | 76 | `declaration-track:4b68100bd6dcc52ac32c25d33452b23befcb628c837ab1f7753e83de4d66bafa` |
| 9 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/comp--b571c4f8367cc1724b0eb340.md) | 81 | `declaration-track:b571c4f8367cc1724b0eb3400adf6cfce603efbdbc95025654ff1bad42d8647e` |
| 10 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/largecategory--e1ca47b9d47c136bd54a87c3.md) | 86 | `declaration-track:e1ca47b9d47c136bd54a87c33f06b850ef4bcc4927279617d2e92e7119bc9f24` |
| 11 | `lemma` | [Hom.id_toFun'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/hom-id-tofun--abe64a02ea3d64aa4e3c08d6.md) | 91 | `result-track:abe64a02ea3d64aa4e3c08d6a1c3007692cece3961faff6976e5aa781ad23f72` |
| 12 | `lemma` | [Hom.comp_toFun'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/hom-comp-tofun--56c073ebc861ed1bd5431b40.md) | 93 | `result-track:56c073ebc861ed1bd5431b409b4426bc7e066cc379f89567a0b0508682e8515e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/instance--161a5aea206048871902658e.md) | 97 | `declaration-track:161a5aea206048871902658e68c50ee054c152009906dce0b683c0d48c1d9ae0` |
| 14 | `instance` | [hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/hasforget--cd2ca824d58b1893e9cba65e.md) | 101 | `declaration-track:cd2ca824d58b1893e9cba65eef1386e715eb61d58dd57263ccfbc51612504b75` |
| 15 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/iso-mk--453d510ebe5e062928d9b36f.md) | 108 | `declaration-track:453d510ebe5e062928d9b36fc477eaa0d87aafa1cbf277913bb07da1c22eab04` |
| 16 | `def` | [typeToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/typetopointed--68206cab9e983b1a80529f3d.md) | 118 | `declaration-track:68206cab9e983b1a80529f3de7df316285b8c22ee418c7d8faf9eadf9a3e7fdb` |
| 17 | `def` | [typeToPointedForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/declarations/typetopointedforgetadjunction--0170bf39b348c7452121741c.md) | 125 | `declaration-track:0170bf39b348c7452121741cb1b9fc3687234e8b80a38a781a92c8acc640a695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
