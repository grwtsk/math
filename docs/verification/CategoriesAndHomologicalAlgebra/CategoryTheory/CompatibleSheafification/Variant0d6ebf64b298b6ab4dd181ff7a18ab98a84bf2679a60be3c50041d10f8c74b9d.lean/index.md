# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatibleSheafification.Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a562774486eec15376033c1b85de39e7a3e1c1d5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a562774486eec15376033c1b85de39e7a3e1c1d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean.json)

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
| 1 | `def` | [sheafifyCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafifycompiso--b3cb28571f26c4f3f9e104c1.md) | 60 | `declaration-track:b3cb28571f26c4f3f9e104c17d61429011ead6b981c9b6106f3f32de00760c06` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerleftiso--ef373f51831303b6d43189cb.md) | 65 | `declaration-track:ef373f51831303b6d43189cba852f652a597a9d637c107933e281e2bb375eaf7` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerleftiso-hom-app--19b79b4e9212f93038a049dc.md) | 78 | `result-track:19b79b4e9212f93038a049dc0ea14a2857e8e7938aa0741ce83335593bdd6a3c` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerleftiso-inv-app--0be3ef48cd1deba44c3848f6.md) | 89 | `result-track:0be3ef48cd1deba44c3848f617c58371e782e59adef182223d1c0504c6946d35` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerrightiso--e150805f897a402111510755.md) | 99 | `declaration-track:e150805f897a4021115107551ea8214be1f24f77a12c9cec406bc1757809aaac` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerrightiso-hom-app--7284ea8837ba9bb6384e9398.md) | 111 | `result-track:7284ea8837ba9bb6384e93982e4543976a2d66c60f46cadc9a4b4859f5030cb2` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafificationwhiskerrightiso-inv-app--5644794fb5b819ec5628cdb2.md) | 119 | `result-track:5644794fb5b819ec5628cdb23c5e601fbc3e8f3f32527ddacc332dea526dd496` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom--b712566a449d7c8eafdb8efb.md) | 127 | `result-track:b712566a449d7c8eafdb8efb5c82810af8eca3980f87e654dd55c36e88d2d94b` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/tosheafify-comp-sheafifycompiso-inv--53682a10476f827bf64b2008.md) | 136 | `result-track:53682a10476f827bf64b2008b2106f56f424de6ddd1fd70b31087230340fc77c` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant0d6ebf64b298b6ab4dd181ff7a18ab98a84bf2679a60be3c50041d10f8c74b9d.lean/declarations/sheafifycompiso-inv-eq-sheafifylift--16f185107653b8b0ea14a97e.md) | 148 | `result-track:16f185107653b8b0ea14a97e0a0a7b1ce3b6085ca715cde09bb415fe728f4c8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
