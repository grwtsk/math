# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afba63f365e0d00c913d9f626c02bac6d7c329fb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afba63f365e0d00c913d9f626c02bac6d7c329fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NormalMonoidalObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalmonoidalobject--363c068d4150a4f98d2aa359.md) | 57 | `declaration-track:363c068d4150a4f98d2aa359c075248ff0a2d739bf58404188e74ea61615bb15` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/instance--007ca6ce727696f82db53a0c.md) | 71 | `declaration-track:007ca6ce727696f82db53a0caef0af2c54b67d07dae6e10b890a57312b7e28f0` |
| 3 | `def` | [inclusionObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/inclusionobj--fda007a7d51477e6f7e786de.md) | 75 | `declaration-track:fda007a7d51477e6f7e786deb54ff122e6cc53d3ebefeb5d11d4e87cf06357bb` |
| 4 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/inclusion--be18ab345d449984f9ba6da3.md) | 82 | `declaration-track:be18ab345d449984f9ba6da3c0626c82807d3ee04b9d5e97c8c09f100cfd24e1` |
| 5 | `def` | [normalizeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeobj--4c484b6d4f5ee793359353b5.md) | 88 | `declaration-track:4c484b6d4f5ee793359353b57933b1ebe945045531514a0843fe0370a2c5e2b9` |
| 6 | `theorem` | [normalizeObj_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeobj-unitor--723f23abb6f09314f1b7e5a4.md) | 95 | `result-track:723f23abb6f09314f1b7e5a4a1d8dd0a70be31fc01a8f6f6e39d117f76775a5d` |
| 7 | `theorem` | [normalizeObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeobj-tensor--bb45111f8e03644185282a24.md) | 100 | `result-track:bb45111f8e03644185282a24c45b17fdc81a49d54aea6da33aebb57ff6804f7b` |
| 8 | `def` | [normalizeMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizemapaux--4a3ffcb100cbe58aec6b03ce.md) | 115 | `declaration-track:4a3ffcb100cbe58aec6b03cedbb209c71b40269ed158744e44c17eec0ccb7115` |
| 9 | `def` | [normalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalize--e70c0fa83134291659118c50.md) | 142 | `declaration-track:e70c0fa83134291659118c50bbd30189524c877751964500f99fd7cfb1b397b7` |
| 10 | `def` | [normalize'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalize--f808df36f16d06d74cff4ffc.md) | 151 | `declaration-track:f808df36f16d06d74cff4ffcea47fa344be5622d2af72d1016509b010f040dc7` |
| 11 | `def` | [fullNormalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/fullnormalize--6eb6ba886209f1193cb8bba7.md) | 156 | `declaration-track:6eb6ba886209f1193cb8bba785e1e502b0a75bebc6248fa30a4cc7e3d2308158` |
| 12 | `def` | [tensorFunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/tensorfunc--8de75b5bf05bccf856e106d7.md) | 164 | `declaration-track:8de75b5bf05bccf856e106d7273f2185c89df15c7d77aeb4b17be539735cee83` |
| 13 | `theorem` | [tensorFunc_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/tensorfunc-map-app--d5404e48f7b1cf73dace0c1d.md) | 169 | `result-track:d5404e48f7b1cf73dace0c1dee1bf9291da55493bc8ccbe496bd1f3dbe2baafa` |
| 14 | `theorem` | [tensorFunc_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/tensorfunc-obj-map--826a3f8bfec5b62b82986dde.md) | 173 | `result-track:826a3f8bfec5b62b82986ddeaea1901bfdeeee48021683f137440adc9192316e` |
| 15 | `def` | [normalizeIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeisoapp--e2bde3bee7d14ff798bacaf6.md) | 187 | `declaration-track:e2bde3bee7d14ff798bacaf686e1125d0053fe5291c92320aefafcb7f972d4b8` |
| 16 | `theorem` | [normalizeIsoApp_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeisoapp-tensor--da47241cc4a034fab2cfbcbb.md) | 196 | `result-track:da47241cc4a034fab2cfbcbba0493ddfc83c8d25171fdbe6edafb9efc2e41a05` |
| 17 | `theorem` | [normalizeIsoApp_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeisoapp-unitor--286274a8224f8fda139c8841.md) | 203 | `result-track:286274a8224f8fda139c8841731d1fa3bccc9777ab284011b07dcb35ca4518cc` |
| 18 | `def` | [normalizeIsoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeisoaux--3d960574085b8e8d00ad353f.md) | 209 | `declaration-track:3d960574085b8e8d00ad353fc53d2af4e774569b48c7355f2f12d6b333b5781b` |
| 19 | `theorem` | [discrete_functor_obj_eq_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/discrete-functor-obj-eq-as--f7e54d7c0eee4e0188d346f1.md) | 225 | `result-track:f7e54d7c0eee4e0188d346f18ebf265f0682822d6418b1c28fbb9bd54201bc7e` |
| 20 | `theorem` | [discrete_functor_map_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/discrete-functor-map-eq-id--f37aee6af0d2674bc954401d.md) | 231 | `result-track:f37aee6af0d2674bc954401d9f103dcc2edbb4c3ddcc04053b405dcbf754507f` |
| 21 | `def` | [normalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/normalizeiso--0b70546fcda8c8511068bd09.md) | 239 | `declaration-track:0b70546fcda8c8511068bd098f404fd7e2b965dd1f949183db8e1467fff48c7d` |
| 22 | `def` | [fullNormalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/fullnormalizeiso--3801592838e5ecd99cb4419b.md) | 315 | `declaration-track:3801592838e5ecd99cb4419b2ef24c5365ad4a267bcf54f381a158540bbfc078` |
| 23 | `instance` | [subsingleton_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/subsingleton-hom--9591697e65b3597681d35f5b.md) | 330 | `declaration-track:9591697e65b3597681d35f5b6a880e7d9c91d830e36356ff9e8f5eb1b68435a8` |
| 24 | `def` | [inverseAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/inverseaux--ea972414a58b44cf85753598.md) | 346 | `declaration-track:ea972414a58b44cf857535984ae772930d376b567f4efdaae47212898601e81a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/declarations/instance--4407711c94cd6416bbe22a1a.md) | 360 | `declaration-track:4407711c94cd6416bbe22a1aa54ec4b61a28a7aa8d302546aa1d6b829965dd86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
