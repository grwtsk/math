# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConstantSheaf.Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fadd9a877215ac2a72a54d82e58210baccfa7933",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fadd9a877215ac2a72a54d82e58210baccfa7933`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean.json)

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
| 1 | `def` | [constantPresheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantpresheafadj--8c93b9506e450c7b2acd8e6c.md) | 46 | `declaration-track:8c93b9506e450c7b2acd8e6ceeeaa50e4d861e813bba17d3b2539c76c1829f2c` |
| 2 | `def` | [constantSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantsheaf--f1a94fc717c80e127f64c989.md) | 65 | `declaration-track:f1a94fc717c80e127f64c9894151393a2f1a85431293fe668af79399db3c8046` |
| 3 | `def` | [constantSheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantsheafadj--c335056c3f36ec055c44cc7d.md) | 69 | `declaration-track:c335056c3f36ec055c44cc7dbf94d00e653b30ec7ada14676c86f449a3266153` |
| 4 | `class` | [IsConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant--510d007980293413bb3e13ed.md) | 80 | `declaration-track:510d007980293413bb3e13edaa1db180ee53d8e15368c0c99966a8e64fb4f70b` |
| 5 | `lemma` | [mem_essImage_of_isConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/mem-essimage-of-isconstant--118cb35e4dac2dfc49aa157b.md) | 83 | `result-track:118cb35e4dac2dfc49aa157b39be188507c9721f3437f3f132ff79dd34a27256` |
| 6 | `lemma` | [isConstant_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-congr--7e64f2b5c3eb50922a94e02d.md) | 87 | `result-track:7e64f2b5c3eb50922a94e02d465a014143416111cf64ba09beca1bf533eb2b95` |
| 7 | `lemma` | [isConstant_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-of-iso--c19010179c6fa1629f13cdd8.md) | 90 | `result-track:c19010179c6fa1629f13cdd8c3f54f0e817889b806aa41a0d7f399f248057d1e` |
| 8 | `lemma` | [isConstant_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-iff-mem-essimage--0fd0bd329bd59bf703478e2a.md) | 93 | `result-track:0fd0bd329bd59bf703478e2ab641b2f7adeb7d0b7c748a95a6feaf1104b070c3` |
| 9 | `lemma` | [isConstant_of_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-of-isiso-counit-app--73e2785526e4045d606a98c1.md) | 99 | `result-track:73e2785526e4045d606a98c1bbb14ec5144c5d0e89d2e23228d95624b64a2279` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/instance--098827446e7643b17f0fed02.md) | 103 | `declaration-track:098827446e7643b17f0fed02407ac3af92cedd30ed8b232865546575d11126d8` |
| 11 | `lemma` | [isConstant_iff_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-iff-isiso-counit-app--0c5ca2874d6c0d6362c9580e.md) | 113 | `result-track:0c5ca2874d6c0d6362c9580e969e3ce573319dc356d15c721dc5bff8deb4be06` |
| 12 | `lemma` | [isConstant_iff_isIso_counit_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/isconstant-iff-isiso-counit-app--9fb55ca67611179b7fae7be6.md) | 122 | `result-track:9fb55ca67611179b7fae7be6e670e0a6e9bdd4647e43c763f258327e2b5eba26` |
| 13 | `def` | [equivCommuteConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/equivcommuteconstant--33b0fcfa7ae19869c39fab66.md) | 141 | `declaration-track:33b0fcfa7ae19869c39fab667498fa6b9188ad76275f2f064531973dedb9feb7` |
| 14 | `def` | [equivCommuteConstant'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/equivcommuteconstant--54186693f418570a46a68825.md) | 151 | `declaration-track:54186693f418570a46a68825193e19abea53744af85b8843dc67e702b8524617` |
| 15 | `lemma` | [Sheaf.isConstant_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/sheaf-isconstant-iff-of-equivalence--42f6be2c1c123dfed20e574b.md) | 164 | `result-track:42f6be2c1c123dfed20e574b7435333a854ea37b7642aaae8b0fcb82561d11e6` |
| 16 | `def` | [constantCommuteCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantcommutecompose--8ba3f20f9e7b7cc2474ad53b.md) | 183 | `declaration-track:8ba3f20f9e7b7cc2474ad53bf531dfe4e3d4681edfe7c4086c025c3906de0743` |
| 17 | `lemma` | [constantCommuteCompose_hom_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantcommutecompose-hom-app-hom--2828685d57176aee67b4975a.md) | 189 | `result-track:2828685d57176aee67b4975aae2ec451bf2931a6e000dda94ab19139be5753f4` |
| 18 | `lemma` | [constantSheafAdj_counit_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/constantsheafadj-counit-w--aa9b494e20245c1adfedd91f.md) | 198 | `result-track:aa9b494e20245c1adfedd91f470e33957abe4432473df9588446b9d4d2e1b816` |
| 19 | `lemma` | [Sheaf.isConstant_of_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/sheaf-isconstant-of-forget--a0c0246a0808b12f63d054e3.md) | 211 | `result-track:a0c0246a0808b12f63d054e39058ac36b7fa1a329add583677c6ff9b7be7ef62` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/instance--70e2ad814045fffd1892bafc.md) | 221 | `declaration-track:70e2ad814045fffd1892bafcac5852d2694aad497b78f75e609c5dd5e166d2ff` |
| 21 | `lemma` | [Sheaf.isConstant_iff_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/declarations/sheaf-isconstant-iff-forget--8596223ad117548e753942ef.md) | 228 | `result-track:8596223ad117548e753942efc22de63fbacacb1ef49fc32612eabf05a02ea607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
