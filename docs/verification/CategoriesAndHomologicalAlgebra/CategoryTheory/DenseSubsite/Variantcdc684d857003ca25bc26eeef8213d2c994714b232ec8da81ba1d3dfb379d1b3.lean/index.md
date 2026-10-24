# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DenseSubsite.Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c35cb0b2b6f6938685785b2638dca2c1b0b3ada7",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c35cb0b2b6f6938685785b2638dca2c1b0b3ada7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presieve-coverbyimagestructure--ce7f467abe23aa3e9b70b4d3.md) | 66 | `declaration-track:ce7f467abe23aa3e9b70b4d39ece8378b75cb481fe82c98d28f0515a3526b533` |
| 2 | `def` | [Presieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presieve-coverbyimage--694b5c99ea72c447c35c35f3.md) | 80 | `declaration-track:694b5c99ea72c447c35c35f30246141ad75b21f029f22aed7d9d544d0d386976` |
| 3 | `def` | [Sieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sieve-coverbyimage--1d478f59cc95eec9d3e12b78.md) | 87 | `declaration-track:1d478f59cc95eec9d3e12b78386f9c13b4e79ee08f0a957ae0f7e362472f921f` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presieve-in-coverbyimage--29ce3116113e2824de9824bb.md) | 92 | `result-track:29ce3116113e2824de9824bbb39aa16970c85add5f072a3a1b9b2f7a51a05dab` |
| 5 | `structure` | [CoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/coverdense--5ab090be31867a496cfb3670.md) | 102 | `declaration-track:5ab090be31867a496cfb3670de8943396973b46122b70a8dc6acf634be6fc775` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/ext--942c974e9b402421b0c8ce4a.md) | 117 | `result-track:942c974e9b402421b0c8ce4a6a7408b567b1a2a053d69fb20b9aaab7fde7aed4` |
| 7 | `theorem` | [functorPullback_pushforward_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/functorpullback-pushforward-covering--0c48179af304e7b1128e5f44.md) | 124 | `result-track:0c48179af304e7b1128e5f44d352691d57aec15bbe63e651a4bb733e696ca7b6` |
| 8 | `def` | [homOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/homover--5e3dbaca63d189cf5783e637.md) | 138 | `declaration-track:5e3dbaca63d189cf5783e6372abc27da771449bc33b0b870a03e4a87ba4db55f` |
| 9 | `def` | [isoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/isoover--4ebb25d2e99291c294aea47d.md) | 147 | `declaration-track:4ebb25d2e99291c294aea47df36c5742c3f34e80ee672aabe52f38e804821d4d` |
| 10 | `theorem` | [sheaf_eq_amalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheaf-eq-amalgamation--1f1e44902143e2acce66209e.md) | 152 | `result-track:1f1e44902143e2acce66209e130f7149d70e63e791cd17ad296751ffe6ca752d` |
| 11 | `def` | [pushforwardFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/pushforwardfamily--699729998d5cfd6685d85fcd.md) | 168 | `declaration-track:699729998d5cfd6685d85fcd50d8e895a200ae43d2e5dda448ab0bec4bff9ac9` |
| 12 | `theorem` | [pushforwardFamily_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/pushforwardfamily-def--8627de9ec7560d63be48ba00.md) | 178 | `result-track:8627de9ec7560d63be48ba00ab99bc4f41fa3fcb3c0bda693b9ed925ae6b182c` |
| 13 | `theorem` | [pushforwardFamily_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/pushforwardfamily-compatible--b2decd16e60f0342d014eea5.md) | 183 | `result-track:b2decd16e60f0342d014eea59ba3360d51a967f959f3a0f09bb17e39327d5161` |
| 14 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/apphom--1194daa29488a3fceabf095d.md) | 206 | `declaration-track:1194daa29488a3fceabf095d25c04e92af56272bd5ffcb9122d64f348661b5b7` |
| 15 | `theorem` | [pushforwardFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/pushforwardfamily-apply--8e5ebe3e312375c2cd15141c.md) | 212 | `result-track:8e5ebe3e312375c2cd15141c38dfe88f8987d96778fc752e71fe7cc3cf15bd32` |
| 16 | `theorem` | [appHom_restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/apphom-restrict--a4a3b031b73281b4c69f28cc.md) | 231 | `result-track:a4a3b031b73281b4c69f28cc0c19811b30771f8ea5cfcc82fd9f9b53a5548677` |
| 17 | `theorem` | [appHom_valid_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/apphom-valid-glue--5573cb828508b752eb67070a.md) | 241 | `result-track:5573cb828508b752eb67070a81455e4f49b0be46d31b3c6a326e432f71976acf` |
| 18 | `def` | [appIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/appiso--c5d73bbe87f0a3a1c40b1f9a.md) | 251 | `declaration-track:c5d73bbe87f0a3a1c40b1f9a4776b12b93891268b9ed0cb698758580dc530c27` |
| 19 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presheafhom--ced294a430d3817a1575df16.md) | 271 | `declaration-track:ced294a430d3817a1575df16fb26374be16bb67a9f9f9e8927bb01f3fffff9cc` |
| 20 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presheafiso--4b2864e82b7663525b2ffab5.md) | 285 | `declaration-track:4b2864e82b7663525b2ffab50852ab41a9ae0cb6b8ea56340e442944ae818224` |
| 21 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafiso--189c4edf38e58a32bc5902c2.md) | 294 | `declaration-track:189c4edf38e58a32bc5902c259ee1e4061521ee09f77a8a4facbc875cc479ed9` |
| 22 | `def` | [sheafCoyonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafcoyonedahom--c4bceb5861b809933f89cb28.md) | 314 | `declaration-track:c4bceb5861b809933f89cb287b4aa9117d40f220918ca6c3d87e723f054e6398` |
| 23 | `def` | [sheafYonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafyonedahom--cd430d5d82007247e4ca4500.md) | 343 | `declaration-track:cd430d5d82007247e4ca4500bfc62d72ed05efd74cfc31e0799605005fd65c0e` |
| 24 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafhom--74296dff02e5413662ea638c.md) | 362 | `declaration-track:74296dff02e5413662ea638cae0d27f89c91017e9bd0f8d2ffeab3636ea2f181` |
| 25 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/presheafiso--ed5074ef6e6ab87ea23915a4.md) | 373 | `declaration-track:ed5074ef6e6ab87ea23915a4e0e895d41ea0fbfbcaf5d0170c8e1db51ba8a29c` |
| 26 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafiso--803a937909e9469fb62eeff0.md) | 397 | `declaration-track:803a937909e9469fb62eeff0a29a4405f049c3ae227a2ab7d65466674116656f` |
| 27 | `theorem` | [sheafHom_restrict_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafhom-restrict-eq--8cb2e3fb7a3a7a0b08ba48ca.md) | 410 | `result-track:8cb2e3fb7a3a7a0b08ba48ca9a1584a9742966ed577bfb30f083e428f7714d7b` |
| 28 | `theorem` | [sheafHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafhom-eq--2d89eef3deb34144d0a3f205.md) | 438 | `result-track:2d89eef3deb34144d0a3f20590008b4cfc1ac58f9491cb7ceaebca562d4dd9e3` |
| 29 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/restricthomequivhom--efcfec36075f13ca9df7b6ab.md) | 459 | `declaration-track:efcfec36075f13ca9df7b6ab9f4d44025655994b93755f4e08c81a5c348d9e92` |
| 30 | `theorem` | [iso_of_restrict_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/iso-of-restrict-iso--67c8b340b2828d9e8ea22013.md) | 469 | `result-track:67c8b340b2828d9e8ea220130ee5cbb333374b4bd36e610edfbe5aa267be9702` |
| 31 | `theorem` | [compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/compatiblepreserving--9afe079414ab8f63cb7ab1fa.md) | 477 | `result-track:9afe079414ab8f63cb7ab1fad12d2e11b5606bde4b1ed9bf6af4ec4fb77dc390` |
| 32 | `instance` | [Sites.Pullback.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sites-pullback-full--2e9ce10f708b2b2843ffaf33.md) | 490 | `declaration-track:2e9ce10f708b2b2843ffaf336b1a781961f1b9d7ff2e77100712e5fe44546164` |
| 33 | `instance` | [Sites.Pullback.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sites-pullback-faithful--8135fec3e4f566aa8f94fc21.md) | 496 | `declaration-track:8135fec3e4f566aa8f94fc21e5d1fb7c66038dff7e08b1d70dea9eb75d215dd7` |
| 34 | `def` | [sheafEquivOfCoverPreservingCoverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafequivofcoverpreservingcoverlifting--8844de82deeb7ed12bc25ebd.md) | 528 | `declaration-track:8844de82deeb7ed12bc25ebd0771ea8cc1aa032908a544c35a1cc56be128e9f6` |
| 35 | `abbrev` | [sheafEquivOfCoverPreservingCoverLiftingSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variantcdc684d857003ca25bc26eeef8213d2c994714b232ec8da81ba1d3dfb379d1b3.lean/declarations/sheafequivofcoverpreservingcoverliftingsheafificationcompatibility--662dc86d08f7b5171f399716.md) | 566 | `declaration-track:662dc86d08f7b5171f39971645849ec984534be8cece5301058301cab4ec9039` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
