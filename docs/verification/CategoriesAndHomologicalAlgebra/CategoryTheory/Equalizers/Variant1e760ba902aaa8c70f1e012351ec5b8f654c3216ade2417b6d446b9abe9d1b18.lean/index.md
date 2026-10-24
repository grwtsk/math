# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7338bf146abe30552ee3141a767d800b814137e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7338bf146abe30552ee3141a767d800b814137e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.SplitCoequalizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitEqualizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeForkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/islimitmapconeforkequiv--bcaa3cad506c7a6b286a3e65.md) | 48 | `declaration-track:bcaa3cad506c7a6b286a3e656adc1d15a47f644aafa7c671e7f692ed3ef13ce3` |
| 2 | `def` | [isLimitForkMapOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/islimitforkmapofislimit--f3e10eeaa273ee09c8f2a5ad.md) | 55 | `declaration-track:f3e10eeaa273ee09c8f2a5adf82647cf197156188a29b7a4c6275d3eff5b0c28` |
| 3 | `def` | [isLimitOfIsLimitForkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/islimitofislimitforkmap--c2d848f2ade716d70b46e7eb.md) | 60 | `declaration-track:c2d848f2ade716d70b46e7eb098a1c56f2733c07a9d2d099eff0ae01f3b80028` |
| 4 | `def` | [isLimitOfHasEqualizerOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/islimitofhasequalizerofpreserveslimit--59e5bb92746a88be9c890081.md) | 72 | `declaration-track:59e5bb92746a88be9c890081a0390e2fd634fd20c552825b739576461910d956` |
| 5 | `lemma` | [PreservesEqualizer.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservesequalizer-of-iso-comparison--194ff704238bff016e05e2db.md) | 83 | `result-track:194ff704238bff016e05e2db14bd28a97c9699449f944d466643cdece5ba2140` |
| 6 | `def` | [PreservesEqualizer.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservesequalizer-iso--738bfbd7c7b0548cb22f5b05.md) | 95 | `declaration-track:738bfbd7c7b0548cb22f5b050cd22b3b0036d7e776513f993692af65cd45c6ef` |
| 7 | `theorem` | [PreservesEqualizer.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservesequalizer-iso-hom--77e495ecb76bcee818fd665e.md) | 99 | `result-track:77e495ecb76bcee818fd665eea1ff3b84f0e1a8040b2db6f520fbef33944e6db` |
| 8 | `theorem` | [PreservesEqualizer.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservesequalizer-iso-inv--ee1dae14d487b642a0586a57.md) | 104 | `result-track:ee1dae14d487b642a0586a57929dae7946fc138174e47f8111b856c74c46a2da` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/instance--f9e32bc7994b64762aa0ce0b.md) | 110 | `declaration-track:f9e32bc7994b64762aa0ce0bdad7b0759aa4f984ae79cec5cb752638af405b2d` |
| 10 | `def` | [isColimitMapCoconeCoforkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/iscolimitmapcoconecoforkequiv--818e84f2db592eeed388c53c.md) | 123 | `declaration-track:818e84f2db592eeed388c53ca96b4295afa98230995110dee1828d7523a30aa1` |
| 11 | `def` | [isColimitCoforkMapOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/iscolimitcoforkmapofiscolimit--7edbc41183e869863a175b36.md) | 134 | `declaration-track:7edbc41183e869863a175b36e24333c9353bfe57deb85e72b01258d3293315eb` |
| 12 | `def` | [isColimitOfIsColimitCoforkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/iscolimitofiscolimitcoforkmap--ad3d277ef5fcbb2510ecdfbf.md) | 141 | `declaration-track:ad3d277ef5fcbb2510ecdfbfacd3e93a76f973176c670c9df8ceee780da7134f` |
| 13 | `def` | [isColimitOfHasCoequalizerOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/iscolimitofhascoequalizerofpreservescolimit--e0d2f98e8f2e508298b63d03.md) | 155 | `declaration-track:e0d2f98e8f2e508298b63d03901cfdd9535f4b165f5304033762512e3c69ed01` |
| 14 | `lemma` | [of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/of-iso-comparison--c68a5d0369c579737db96b41.md) | 165 | `result-track:c68a5d0369c579737db96b4138e58e71fbd7ca988ae0e43fa6b037278462b173` |
| 15 | `def` | [PreservesCoequalizer.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservescoequalizer-iso--276ee9fa00d5dc6a8b7b972a.md) | 178 | `declaration-track:276ee9fa00d5dc6a8b7b972a14d48023d2b16e9ae1aef649d25b6367b55141ea` |
| 16 | `theorem` | [PreservesCoequalizer.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/preservescoequalizer-iso-hom--4ae9fbfce6ee58cf3da021df.md) | 183 | `result-track:4ae9fbfce6ee58cf3da021df52c8ff7157ccd7f4e812b864a6aff3bdd24540a4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/instance--2752f4bf1380794d2d5f6b17.md) | 187 | `declaration-track:2752f4bf1380794d2d5f6b17d5e552821e3bf3556578ca4a14daec7de8fe5f26` |
| 18 | `instance` | [map_π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/map-epi--382b6c3c743be925c27c4205.md) | 191 | `declaration-track:382b6c3c743be925c27c420555326c01513602e439e1d91a19d991413570d17b` |
| 19 | `theorem` | [map_π_preserves_coequalizer_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/map-preserves-coequalizer-inv--054a7607d26dd125e0e2e76e.md) | 199 | `result-track:054a7607d26dd125e0e2e76e8442672b71d8d7204a3280e0ee0ee69bdb304e97` |
| 20 | `theorem` | [map_π_preserves_coequalizer_inv_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/map-preserves-coequalizer-inv-desc--98c5e14ee8cd3a29d71dae2b.md) | 206 | `result-track:98c5e14ee8cd3a29d71dae2be69568bd464f31d8f25d8a3030445b0aa01c3719` |
| 21 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/map-preserves-coequalizer-inv-colimmap--f31c9751dee17bf7f92fc236.md) | 212 | `result-track:f31c9751dee17bf7f92fc236f6ff0c5e4306dbd527724330393251bbe0295a4b` |
| 22 | `theorem` | [map_π_preserves_coequalizer_inv_colimMap_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/map-preserves-coequalizer-inv-colimmap-desc--77e6dc9083f4a98e0d9f440c.md) | 222 | `result-track:77e6dc9083f4a98e0d9f440ce64199e57ca2e02231cdee25cd00d0e8ae1e8971` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/instance--b6d8191bc06f2fc2911096a8.md) | 233 | `declaration-track:b6d8191bc06f2fc2911096a8e8bf35b42e616268b5ac1268dcac7c79f7d25a7c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/declarations/instance--7e68f987fc9952369eb0d701.md) | 242 | `declaration-track:7e68f987fc9952369eb0d701e40d6d01fe49679425190f4d5e0f0adfaf9c08a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
