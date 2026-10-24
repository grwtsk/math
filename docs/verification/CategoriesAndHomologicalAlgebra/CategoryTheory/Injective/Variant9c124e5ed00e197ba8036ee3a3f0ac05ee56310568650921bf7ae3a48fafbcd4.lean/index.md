# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d1cc20d3094214e0a38c6c5c76d5c870b9fd32c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d1cc20d3094214e0a38c6c5c76d5c870b9fd32c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective--628a5ed53c3b0355b84fd270.md) | 34 | `declaration-track:628a5ed53c3b0355b84fd270bfaef71dd5e2e59fa5a8f46b67d4f458c0013616` |
| 2 | `structure` | [InjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injectivepresentation--4ba2cbfc742d4fc928a3e44e.md) | 45 | `declaration-track:4ba2cbfc742d4fc928a3e44ee451072ab43ec5694de4d5686b800a093e962cd3` |
| 3 | `class` | [EnoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/enoughinjectives--0c0e7d72fa12e656e58f3875.md) | 61 | `declaration-track:0c0e7d72fa12e656e58f387545dfb05cf99989a3772cad9d22e97d962f80799f` |
| 4 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/factorthru--319a9db1866af95744f67cd6.md) | 74 | `declaration-track:319a9db1866af95744f67cd6fa676eb4008a699487160ac004bd4af2daee28a4` |
| 5 | `theorem` | [comp_factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/comp-factorthru--e792fb1d8ebd8f97ba7bf204.md) | 79 | `result-track:e792fb1d8ebd8f97ba7bf204a413788637789545efcb47aa837f2e4cfdba8d61` |
| 6 | `instance` | [zero_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/zero-injective--a0eb7b67c5de397668d12ebc.md) | 88 | `declaration-track:a0eb7b67c5de397668d12ebc2ec8f5f40cac2f5ca6af78859500dafe61fd987f` |
| 7 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/of-iso--ac7737eb7ac69872bc9422df.md) | 94 | `result-track:ac7737eb7ac69872bc9422dffce8b957c34947e7cfd31d0540f38dd90a2317a1` |
| 8 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/iso-iff--f112b2100dae25b030f6f28f.md) | 102 | `result-track:f112b2100dae25b030f6f28f7fa51c7286af3caeb6ee13ff25534a4fc5b436de` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--57b96a975d0062919c48c558.md) | 107 | `declaration-track:57b96a975d0062919c48c558c901cd43d6c0361f8d3e1a70bb6566f6336644b1` |
| 10 | `instance` | [Type.enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/type-enoughinjectives--c167c6876d41c68ea3ff32a2.md) | 121 | `declaration-track:c167c6876d41c68ea3ff32a256fdfdc4dd4bf27351f6bcf5f5f95b125ba1d8c9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--0653fa5bdc32fedfbc462e5f.md) | 132 | `declaration-track:0653fa5bdc32fedfbc462e5f29ddbe7da43599ab6d5e822e98a3479a3994877b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--f9cae7abb2e5e1c1dac83a03.md) | 141 | `declaration-track:f9cae7abb2e5e1c1dac83a03fdd736c5f1f9361d08f30a5c9c600f98d77ed9a8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--b6d2e65a6824ac4b5b5825b8.md) | 148 | `declaration-track:b6d2e65a6824ac4b5b5825b804d8040dddcd2edc1cc0337778cdd4d804a61bc2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--45ee88c3e5919c6756140c80.md) | 157 | `declaration-track:45ee88c3e5919c6756140c80b414f3765c1aedba54fbcb51f34e0b3ca39248f0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--3bd735accc6f68a2c21c656e.md) | 165 | `declaration-track:3bd735accc6f68a2c21c656ebc141c9d186795847d002e6ca32e5e0e66c57729` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--99f641f72477241f8e198886.md) | 169 | `declaration-track:99f641f72477241f8e19888687e31a97aebe63d46a6d12ff783dadf97a3fac90` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--c7741bf4010afb52086ebbcd.md) | 173 | `declaration-track:c7741bf4010afb52086ebbcd0a8e7fe71e5dfde097f20b23c76aef3055a3d695` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--cc58bb1615300101bab0b017.md) | 177 | `declaration-track:cc58bb1615300101bab0b0172f28ce651c8b0f9b45032afd280ccb26039b8b62` |
| 19 | `theorem` | [injective_iff_projective_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective-iff-projective-op--74c706bc4f65ec80cd32eff6.md) | 181 | `result-track:74c706bc4f65ec80cd32eff6404d99948fbdfee813c7a85f614729fc56f46710` |
| 20 | `theorem` | [projective_iff_injective_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/projective-iff-injective-op--fc1a209bbfed65dc569e3873.md) | 185 | `result-track:fc1a209bbfed65dc569e38730e7c7a220e2c6d8e515c088a8c09501e6481d277` |
| 21 | `theorem` | [injective_iff_preservesEpimorphisms_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective-iff-preservesepimorphisms-yoneda-obj--728134cd5b8432c927882a44.md) | 189 | `result-track:728134cd5b8432c927882a44222d280dd21b5134098e5f5650faa9c45310e0d9` |
| 22 | `theorem` | [injective_of_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective-of-adjoint--e3250b39d17568a42ef9258d.md) | 203 | `result-track:e3250b39d17568a42ef9258def860c8a8e75fe4e491feb2adbcbcf0c82d894f7` |
| 23 | `def` | [under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/under--03cdf7b4cab026042c744fb3.md) | 218 | `declaration-track:03cdf7b4cab026042c744fb307368492e081ad6a2f3b4d72c20f24b699f3588f` |
| 24 | `instance` | [injective_under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective-under--2b3afe2cdce7a0f170139c74.md) | 222 | `declaration-track:2b3afe2cdce7a0f170139c742caf476e9c17472390a1504527eb108e672df3d8` |
| 25 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/anonymous--6a5eaaa7312ef514da8e0622.md) | 229 | `declaration-track:6a5eaaa7312ef514da8e0622f04a96b8511e590a2f2fee68d93183ff2d9856c5` |
| 26 | `instance` | [ι_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/mono--33bc0bc81807636f4d2bf308.md) | 233 | `declaration-track:33bc0bc81807636f4d2bf30855a41e92143f510890a27765159c9892131da3fb` |
| 27 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/syzygies--8fc771340b4d9cd6a46a7cab.md) | 244 | `declaration-track:8fc771340b4d9cd6a46a7cab94ed9f17a2c24f4c53f2d4d968529d39bb01675d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--ae547d8a63f5a6ca35a28c9f.md) | 248 | `declaration-track:ae547d8a63f5a6ca35a28c9f925183bc4738646890c6c9768dff923217f9b0de` |
| 29 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/d--11653c52286087eb9bfc62bc.md) | 256 | `declaration-track:11653c52286087eb9bfc62bc288e8a9b9b53158a439b213e932150cb0dce8396` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--064e39a65a5032488737ee22.md) | 264 | `declaration-track:064e39a65a5032488737ee22c2b603ad3e7910dbc956b6df47ab9f4603d3976c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/instance--466494d1814dd70fdd2e4e04.md) | 267 | `declaration-track:466494d1814dd70fdd2e4e047c7de9147800657a694481d245a6b5987fde6bac` |
| 32 | `theorem` | [enoughProjectives_of_enoughInjectives_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/enoughprojectives-of-enoughinjectives-op--6b26524ec9ef3ce44f962152.md) | 270 | `result-track:6b26524ec9ef3ce44f9621527b32ad4d477f54190dbfa4188049e23f5fa949d5` |
| 33 | `theorem` | [enoughInjectives_of_enoughProjectives_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/enoughinjectives-of-enoughprojectives-op--8fa96077ea691a266629b5b1.md) | 274 | `result-track:8fa96077ea691a266629b5b190c3466498c1c470bd759c6123b5818f305396fa` |
| 34 | `def` | [Exact.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/exact-desc--b8a9467e490d84eccb1e1fe5.md) | 295 | `declaration-track:b8a9467e490d84eccb1e1fe5da7a24372eb01fde997940ec4ab5bae72ebc7ddf` |
| 35 | `theorem` | [Exact.comp_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/exact-comp-desc--5494efd8af318295a5a35d23.md) | 301 | `result-track:5494efd8af318295a5a35d234616ceb9681a13b4cb7c2ec0d2e4e4c346f7e43f` |
| 36 | `theorem` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/map-injective--ceae9f249250acde8356379a.md) | 314 | `result-track:ceae9f249250acde8356379ad8c712001c105a4c11064beaeda293174427396c` |
| 37 | `theorem` | [injective_of_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injective-of-map-injective--d899d32f19e6f2f450502624.md) | 324 | `result-track:d899d32f19e6f2f45050262450db5f61cd691a13dac2c258b0241bd1fdb21ef9` |
| 38 | `def` | [mapInjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/mapinjectivepresentation--a9f97e5c5857983a972b4a2c.md) | 337 | `declaration-track:a9f97e5c5857983a972b4a2c6dd61936c3028318e0d8746af6fa2fc5555326d7` |
| 39 | `def` | [injectivePresentationOfMapInjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/injectivepresentationofmapinjectivepresentation--cb3c7514831a0d9f48a627ab.md) | 354 | `declaration-track:cb3c7514831a0d9f48a627abaacb1553f17a53a66499c73397d04cc05ef1ea7f` |
| 40 | `theorem` | [enoughInjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/declarations/enoughinjectives-iff--8f2145dfecaa7551b33f9c79.md) | 362 | `result-track:8f2145dfecaa7551b33f9c799cc836f91d9cd58f098d02184780bc00c7ff43a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
