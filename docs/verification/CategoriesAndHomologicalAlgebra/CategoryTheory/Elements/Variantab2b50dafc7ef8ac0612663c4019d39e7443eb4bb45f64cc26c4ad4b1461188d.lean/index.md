# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elements.Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a41ebf1f5b662213cf67a0c6adec870c81e8af1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a41ebf1f5b662213cf67a0c6adec870c81e8af1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.StructuredArrow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.Elements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/functor-elements--000920e8bd4f5a8bd7b98866.md) | 46 | `declaration-track:000920e8bd4f5a8bd7b98866f188553c20109a73dfdfdb250be77415b51428a9` |
| 2 | `lemma` | [Functor.Elements.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/functor-elements-ext--8e3af35edce8f7e447b341a8.md) | 51 | `result-track:8e3af35edce8f7e447b341a8dd7fb305b24e28ace152501bf0972c919a7090ae` |
| 3 | `instance` | [categoryOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/categoryofelements--7e13bbd1df8948210f530fe5.md) | 62 | `declaration-track:7e13bbd1df8948210f530fe5fb93c2064061b57639c18da95476314bd5efeed4` |
| 4 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/ext--2f81aedccf70d5a14fb09ce8.md) | 71 | `result-track:2f81aedccf70d5a14fb09ce8d249753b0c1f9cb683c6048b12570611641c555a` |
| 5 | `theorem` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/comp-val--d3dd868bef8e4beb9377e83e.md) | 76 | `result-track:d3dd868bef8e4beb9377e83e51d540d5fe3cfb7e4d56892429f8f375a0b58c10` |
| 6 | `theorem` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/id-val--f4b1f21b0527a58c3fd68203.md) | 82 | `result-track:f4b1f21b0527a58c3fd68203fecfd0a95d785ac6562ad20618d9868a9fbc7e40` |
| 7 | `instance` | [groupoidOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/groupoidofelements--99044db8f5434bcb96dc8828.md) | 88 | `declaration-track:99044db8f5434bcb96dc88281aaa06e86997b9a2aa83e9e9f005394a26950d98` |
| 8 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/anonymous--d5d0216ff2055d7d0fa9d39e.md) | 114 | `declaration-track:d5d0216ff2055d7d0fa9d39ebeacb753a1571096ad97d98c4517dd105f72c441` |
| 9 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/map--755b03a3742fdc95ef88c05c.md) | 122 | `declaration-track:755b03a3742fdc95ef88c05c6527d4f24f0d9340df213e17d3bb6c53ecf37832` |
| 10 | `theorem` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/map--a83f8a1cd3eaff377c383ccf.md) | 129 | `result-track:a83f8a1cd3eaff377c383ccfc18c0a6bee1547ea6f02ab020053f3573c18d43d` |
| 11 | `def` | [toStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/tostructuredarrow--58729a4783a959fe76593cc2.md) | 134 | `declaration-track:58729a4783a959fe76593cc20bc5b3d81b0542775ec737a345bc23071d5c2bf0` |
| 12 | `theorem` | [toStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/tostructuredarrow-obj--b184e4f461102eb910af5f99.md) | 140 | `result-track:b184e4f461102eb910af5f9921e2dc03cf2ac886f5541357bda34013499b205c` |
| 13 | `theorem` | [to_comma_map_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/to-comma-map-right--e02e2d4e545aa087e6bbd3c0.md) | 149 | `result-track:e02e2d4e545aa087e6bbd3c026c878ab94b4d8ad1ce66d5c97d34de5983422cb` |
| 14 | `def` | [fromStructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/fromstructuredarrow--c47a88af5843ba6cd347b5a3.md) | 154 | `declaration-track:c47a88af5843ba6cd347b5a308839211a05f1ed4f6b071e14662f3096c8cb286` |
| 15 | `theorem` | [fromStructuredArrow_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/fromstructuredarrow-obj--84c7d86da09353142575ab95.md) | 160 | `result-track:84c7d86da09353142575ab95113d330e8ddbcad928e23a29d9f1a093dc07581a` |
| 16 | `theorem` | [fromStructuredArrow_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/fromstructuredarrow-map--4111831c61ba9539827729b2.md) | 165 | `result-track:4111831c61ba9539827729b2faed600492e4f68e853985a4fbf43e096414e123` |
| 17 | `def` | [structuredArrowEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/structuredarrowequivalence--8c770e6050110310a6d57c94.md) | 174 | `declaration-track:8c770e6050110310a6d57c948f2c433edcf86881b803124946692c912b60c877` |
| 18 | `def` | [toCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/tocostructuredarrow--32e7992b9161ba81ef3011f1.md) | 186 | `declaration-track:32e7992b9161ba81ef3011f1bc001718b46010fa08aa0742cf1337409a0655fa` |
| 19 | `def` | [fromCostructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/fromcostructuredarrow--bc331fe093b82af30826f20b.md) | 201 | `declaration-track:bc331fe093b82af30826f20b7a6037c32e18a752b196484dd5fe34fe535cf199` |
| 20 | `theorem` | [fromCostructuredArrow_obj_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/fromcostructuredarrow-obj-mk--6626a1eb8b633520d05f0f64.md) | 216 | `result-track:6626a1eb8b633520d05f0f643ac7c7d9cd0af69828814539c74b818c34244c65` |
| 21 | `theorem` | [from_toCostructuredArrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/from-tocostructuredarrow-eq--dfe3174d04a98f7a652239d9.md) | 222 | `result-track:dfe3174d04a98f7a652239d96dd474fbf90c628fd9f140387c8d8d7891135a4a` |
| 22 | `theorem` | [to_fromCostructuredArrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/to-fromcostructuredarrow-eq--15673b39f4c913115611ed8f.md) | 237 | `result-track:15673b39f4c913115611ed8fed00415fa1240985f6338ac3f650e5ba81b6d341` |
| 23 | `def` | [costructuredArrowYonedaEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/costructuredarrowyonedaequivalence--d0b86fcb48dd4825ad4907b4.md) | 256 | `declaration-track:d0b86fcb48dd4825ad4907b44dde09549afb1a8f35c1f55e73c36f98043b4fd2` |
| 24 | `theorem` | [costructuredArrow_yoneda_equivalence_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/declarations/costructuredarrow-yoneda-equivalence-naturality--7a112e0e765654f1680be72f.md) | 269 | `result-track:7a112e0e765654f1680be72f7583eb2bdfbfc77b8efa258f6206854370d13240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
