# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomEquiv.Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e72da814e93f4692ef2d7bd04fe6d2520760e0f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e72da814e93f4692ef2d7bd04fe6d2520760e0f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Restriction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Boundary` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/haslift--79a13c6a0c21a54ddb43e212.md) | 43 | `declaration-track:79a13c6a0c21a54ddb43e2123a367423b291f81630f1f02a0dc7db5efba97a6c` |
| 2 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/f--7fddbc9a8b602a39962b3e0f.md) | 55 | `declaration-track:7fddbc9a8b602a39962b3e0f71628184624d273f8ff8e3afceaf668a1c8186d6` |
| 3 | `lemma` | [f_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/f-eq--dc90f816c73ecf56c3d51a99.md) | 61 | `result-track:dc90f816c73ecf56c3d51a991189d9889ad09a80ac52703c41ee5b0b4512f88c` |
| 4 | `lemma` | [comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/comm--cec847da38e267c3bd538393.md) | 71 | `result-track:cec847da38e267c3bd5383931f278879845da1e824708903fe8d4c7b4a3572d5` |
| 5 | `def` | [liftExtend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/liftextend--aa6f0c58a9dfff3fc09c9535.md) | 103 | `declaration-track:aa6f0c58a9dfff3fc09c9535a7a73be097c574e32e3a63f303e85fd02f10425c` |
| 6 | `lemma` | [liftExtend_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/liftextend-f--ebffc7d7da07a883d745f7cc.md) | 110 | `result-track:ebffc7d7da07a883d745f7cc5c96697bf1de00645c7334fa813a2ed131e11943` |
| 7 | `def` | [liftExtendfArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/liftextendfarrowiso--68fcdee0a917f54d2a69da34.md) | 118 | `declaration-track:68fcdee0a917f54d2a69da34f84d795320faee396b4cc47485dde638f38773a0` |
| 8 | `lemma` | [isIso_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/isiso-liftextend-f-iff--6fdba202ca008fe8417b3651.md) | 123 | `result-track:6fdba202ca008fe8417b3651c05739e5ef329a1c29bbabb485bb8737c7cb2a22` |
| 9 | `lemma` | [mono_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/mono-liftextend-f-iff--41288b7f0d42cac6fe4f42bb.md) | 127 | `result-track:41288b7f0d42cac6fe4f42bbbfa2d0d57e9be43f923400af8b183fd2aec10015` |
| 10 | `lemma` | [epi_liftExtend_f_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/epi-liftextend-f-iff--e8ff95cffe90e67101cc9a02.md) | 131 | `result-track:e8ff95cffe90e67101cc9a024d767472214b1f4d04c1543cd5bcf7bad2632ad9` |
| 11 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/f--34f2168ccc4cfcafa2f569bc.md) | 143 | `declaration-track:34f2168ccc4cfcafa2f569bc078310dc2ec66b3641a2e998e9b3d902b58ab046` |
| 12 | `lemma` | [f_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/f-eq--6a4eaaefea49fbc7567e12c0.md) | 146 | `result-track:6a4eaaefea49fbc7567e12c0807f3d8e8c9454d08181a47d6bdac1b05bcd647a` |
| 13 | `lemma` | [comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/comm--1ddc9c073c7c34efa0801027.md) | 152 | `result-track:1ddc9c073c7c34efa08010271d99c4e33f8b2a4469c1061b16e1bfdb31ffd969` |
| 14 | `def` | [homRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict--2935e73428f20cd112aba8c3.md) | 160 | `declaration-track:2935e73428f20cd112aba8c3423b3b20c040f8dabef55410a99ad862873c840c` |
| 15 | `lemma` | [homRestrict_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict-f--811f7c8201caa91fc571578d.md) | 163 | `result-track:811f7c8201caa91fc571578d4acbe734ceda241db30ec1f70ac56e83b3758e24` |
| 16 | `lemma` | [homRestrict_hasLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict-haslift--e844c8589131f74dc611672b.md) | 167 | `result-track:e844c8589131f74dc611672baece024964ea6e712311a9a793235172e59e5c06` |
| 17 | `lemma` | [liftExtend_homRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/liftextend-homrestrict--1bebe5e104ab90234ec87255.md) | 177 | `result-track:1bebe5e104ab90234ec872558248d1eaebdf043fadeffbb2869f48738e57d8aa` |
| 18 | `lemma` | [homRestrict_liftExtend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict-liftextend--c3c98c3d4701b571255e122a.md) | 186 | `result-track:c3c98c3d4701b571255e122a517af86871dc1de85681a736578fd5725ff86e21` |
| 19 | `lemma` | [homRestrict_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict-precomp--4daf5b0a5ac3bf654e51fe91.md) | 192 | `result-track:4daf5b0a5ac3bf654e51fe91522f6712a8f497d1e88783c668ff0e219ed13aa8` |
| 20 | `lemma` | [homRestrict_comp_extendMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homrestrict-comp-extendmap--efc34bdff80726b8b6082426.md) | 198 | `result-track:efc34bdff80726b8b6082426d1212dd848d5994ea9c6924788eaffdeca00ee3a` |
| 21 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomEquiv/Variantcd99a34b7c9f86222fab69f6107d4471ac48fa82bb118ac7b162ad3dfd6dcc35.lean/declarations/homequiv--a43ba478bff487b4b6f76c90.md) | 209 | `declaration-track:a43ba478bff487b4b6f76c9038fd2cf85d0feaa53f0974c1c36205f95a2033fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
