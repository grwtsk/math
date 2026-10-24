# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d8e16ae9c2b9ebccacc28d214cdd68fa82b6b68",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d8e16ae9c2b9ebccacc28d214cdd68fa82b6b68`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean.json)

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
| 1 | `class` | [Functor.Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/functor-linear--f5dac1225c8e6abd8f6da1d8.md) | 36 | `declaration-track:f5dac1225c8e6abd8f6da1d8df87b7097045ac29179f4c82e5a55674c28777fc` |
| 2 | `lemma` | [Functor.linear_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/functor-linear-iff--8a596e9a8006e5eee1e2aa03.md) | 40 | `result-track:8a596e9a8006e5eee1e2aa038ca2e9d483635e69df0295eedeff647f8583d727` |
| 3 | `theorem` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/map-smul--239d6a56fb54fb5447318149.md) | 58 | `result-track:239d6a56fb54fb544731814987cf304c5cccbb4732ef00fc4af10f8e4d5d202e` |
| 4 | `theorem` | [map_units_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/map-units-smul--e77596a8b7f8dded82a68c64.md) | 62 | `result-track:e77596a8b7f8dded82a68c647ea4fab870b07d1725d0dc88354715a7eb2f5400` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/instance--f3ff88bb29254b49f004d54c.md) | 65 | `declaration-track:f3ff88bb29254b49f004d54c69f3365b54cbcd48e0beca529ac81d4262046fe7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/instance--eb6a7762d8ae849da44fb1a5.md) | 71 | `declaration-track:eb6a7762d8ae849da44fb1a5980d511139b289ea90ac7df13d933b949a00b4e8` |
| 7 | `lemma` | [linear_of_full_essSurj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/linear-of-full-esssurj-comp--60b4684ebdfe21cea1527fdb.md) | 73 | `result-track:60b4684ebdfe21cea1527fdbf4904ac2b2fa489a6f77d9e563c467ff198e1142` |
| 8 | `lemma` | [linear_comp_iff_of_full_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/linear-comp-iff-of-full-of-esssurj--53a99b2b1dd5d0918de982f8.md) | 85 | `result-track:53a99b2b1dd5d0918de982f8bfd8e3f74d32f548be77d06d14804ed86a912b00` |
| 9 | `def` | [mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/maplinearmap--88cce49895e7603136c52257.md) | 95 | `declaration-track:88cce49895e7603136c522574dd1a170a50df5899fec7122af4273d85ef21f71` |
| 10 | `theorem` | [coe_mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/coe-maplinearmap--73c751bb621bb1acd3aedf60.md) | 98 | `result-track:73c751bb621bb1acd3aedf60131b2d60b870b21a39797a9815f5a841b84704aa` |
| 11 | `lemma` | [linear_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/linear-of-iso--73c189af2aad03e1f083eab5.md) | 103 | `result-track:73c189af2aad03e1f083eab5d12919c3c2701114b070c9c225635cd6f57e2a91` |
| 12 | `instance` | [inducedFunctorLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/inducedfunctorlinear--11368e96ecd1b413f18f6d8c.md) | 111 | `declaration-track:11368e96ecd1b413f18f6d8cbc675201508021903bd611a59091b4be198e1fab` |
| 13 | `instance` | [fullSubcategoryInclusionLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/fullsubcategoryinclusionlinear--3067f458cd405cb85bbf537d.md) | 115 | `declaration-track:3067f458cd405cb85bbf537d8a5024d4523ed80fa6112b036bb0dc7869be6212` |
| 14 | `instance` | [natLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/natlinear--b6f1eb9dc63c2c9c40dfc176.md) | 122 | `declaration-track:b6f1eb9dc63c2c9c40dfc176a86ae48f392bd37042c56002b65a7bf637ba4a54` |
| 15 | `instance` | [intLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/intlinear--88e40c9a242fc54c3d5866fe.md) | 125 | `declaration-track:88e40c9a242fc54c3d5866fe09adbd621613318c8e996800ea3940082e525d98` |
| 16 | `instance` | [ratLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/ratlinear--5ac034de068e01fd35368c9d.md) | 130 | `declaration-track:5ac034de068e01fd35368c9d8560ecbebf7b0af2efd52a3808d109cc08fef39e` |
| 17 | `instance` | [inverseLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variantc3e57ea76be315ef961dc05c539c9e60a2e58e12dd8473bde0c2f2fbe807552d.lean/declarations/inverselinear--3bada5c3d3a87022238d54cc.md) | 140 | `declaration-track:3bada5c3d3a87022238d54cc69338f2ac7b87be362edffdb733f022b71ae848f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
