# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Characterization.Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "609b43545d9205de9c6388773a61af5de6a124e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `609b43545d9205de9c6388773a61af5de6a124e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean.json)

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
| 1 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete--483ca96063cd2bebb2b8a581.md) | 47 | `declaration-track:483ca96063cd2bebb2b8a581821c646150108a3b3cf156882ed7260f3cf70d87` |
| 2 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--61398ac96dc86722542947b2.md) | 55 | `result-track:61398ac96dc86722542947b26af06d8b830fd024667252c75aade92b775c57b3` |
| 3 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/locallyconstant-adjunction--fae242a24cb03e0d47fb072d.md) | 69 | `declaration-track:fae242a24cb03e0d47fb072dce3a200146bf7e4387a113eeecb47bcb90e16dfe` |
| 4 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-tfae--2f9ac8fc4aa8737dffaf8d84.md) | 76 | `result-track:2f9ac8fc4aa8737dffaf8d84fa0b176b51d8b7d36a87d7d9cfb76cfb914e30c1` |
| 5 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-iff-isdiscrete-forget--ce62a7ddc0c0a39f69405833.md) | 114 | `result-track:ce62a7ddc0c0a39f69405833a5bc3463fb1d710f5de5c1b7033250c6fd196320` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/instance--4fd4afe99ed7bf03d332e0a4.md) | 119 | `declaration-track:4fd4afe99ed7bf03d332e0a4e525050ef3573531c524cc01c41f3cdf8a3478b5` |
| 7 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-tfae--97b6084f641d959af23c03b0.md) | 123 | `result-track:97b6084f641d959af23c03b0a4aea1b5da568f1a4429bffc4b1f75f21976b4cb` |
| 8 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete--e9a7a671df5dc7e3720b7ed8.md) | 172 | `declaration-track:e9a7a671df5dc7e3720b7ed8bcce310069ecd35e52b0029b2ae2af40294fc9bf` |
| 9 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--9c354ccaabfdb797da94bfaf.md) | 178 | `result-track:9c354ccaabfdb797da94bfafc15acdc7ecc0f45376dc0d60d70408aaa94d198c` |
| 10 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/locallyconstant-adjunction--1b55f539b67dbee5a2bc8515.md) | 190 | `declaration-track:1b55f539b67dbee5a2bc85150bdda20486794c4e2fe8ece2771ef3faf9850554` |
| 11 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-tfae--984c8860788be3266ccd480f.md) | 195 | `result-track:984c8860788be3266ccd480f0a89ca81053c2be2f87856ee405c3600bbb3c59e` |
| 12 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-iff-isdiscrete-forget--e446753f7322c81feb92bbaa.md) | 226 | `result-track:e446753f7322c81feb92bbaac600e95c96d3dae99c2b58599d0a729493025c13` |
| 13 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/declarations/isdiscrete-tfae--92fb1ff25f5f2cbc1d50e41c.md) | 232 | `result-track:92fb1ff25f5f2cbc1d50e41c649835def07db49b96ffc715e01db6bf240e92a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
