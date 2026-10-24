# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24dbb67fccbb30106a54f8a1a0ed13526fa0c618",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24dbb67fccbb30106a54f8a1a0ed13526fa0c618`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Elements` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/isfiltered-costructuredarrow-yoneda-of-preservesfinitelimits--5e2e9886a75ff25bcda2f92e.md) | 57 | `result-track:5e2e9886a75ff25bcda2f92e72b4e61bb05a38f98e1906f8365724706a5d34de` |
| 2 | `def` | [functorToInterchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/functortointerchange--2369b99d30360a60e3f2535d.md) | 76 | `declaration-track:2369b99d30360a60e3f2535db06a5e580cd78c320170602c6993378b1926efee` |
| 3 | `def` | [functorToInterchangeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/functortointerchangeiso--ac59b8ba1637429dbbedd625.md) | 81 | `declaration-track:ac59b8ba1637429dbbedd62512464816206c179f4f7af16803230537767c5993` |
| 4 | `def` | [flipFunctorToInterchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/flipfunctortointerchange--e4a2416c0fc4e9adc37de1f3.md) | 90 | `declaration-track:e4a2416c0fc4e9adc37de1f3b860b6f93b9ffa918e1230b53e7aa9c369bed1af` |
| 5 | `def` | [isoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/isoaux--f8f0172eb81def8dc13c46c6.md) | 96 | `declaration-track:f8f0172eb81def8dc13c46c6472f42039d236b1ff9dc98ed6432bd03620c3579` |
| 6 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/iso--eca565aefa49d4a8bb7a269f.md) | 103 | `declaration-track:eca565aefa49d4a8bb7a269f6b14a33540a70124c1ca22af316082cf4a9c4082` |
| 7 | `theorem` | [iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/iso-hom--076ebc652d59619a2bca95c1.md) | 130 | `result-track:076ebc652d59619a2bca95c1dc51c7e517b5dd0c18e2a0658047b92798dbfd13` |
| 8 | `theorem` | [isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/isiso-post--881f1539d0b000a06562e1a9.md) | 163 | `result-track:881f1539d0b000a06562e1a94bd1f8d0029a9d472f1d2a7a53490b72acd062f0` |
| 9 | `lemma` | [preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/preservesfinitelimits-of-isfiltered-costructuredarrow-yoneda--1190a481a52c68d42c05a35a.md) | 175 | `result-track:1190a481a52c68d42c05a35a0b0da6c355bfff0883582a201e52855d47e830d4` |
| 10 | `theorem` | [isFiltered_costructuredArrow_yoneda_iff_nonempty_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variante555ce3b83e572b5ee1a58021493e9392c2fd3978021454d4d141660c552fafc.lean/declarations/isfiltered-costructuredarrow-yoneda-iff-nonempty-preservesfinitelimits--7bf9559c2425f8395a4f97e4.md) | 184 | `result-track:7bf9559c2425f8395a4f97e483d4d8406149a79ce970859797860209913540a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
