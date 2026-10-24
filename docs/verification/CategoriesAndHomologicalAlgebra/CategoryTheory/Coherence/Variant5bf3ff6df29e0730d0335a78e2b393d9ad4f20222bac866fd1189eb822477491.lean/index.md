# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39c3bab9fc48319cf474c20d825e94fef2df73fd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39c3bab9fc48319cf474c20d825e94fef2df73fd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NormalMonoidalObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalmonoidalobject--5fc5e41ff865d0f6c0b383f3.md) | 53 | `declaration-track:5fc5e41ff865d0f6c0b383f385dd16f1217eb21f928941abc2950c7e10060e32` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/instance--935be9e1cd72a8ec662ede62.md) | 66 | `declaration-track:935be9e1cd72a8ec662ede62d7cb2ad7e1ea6338ac04397746f1b67aef468671` |
| 3 | `def` | [inclusionObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/inclusionobj--b79481cd9b9e9ff431136e63.md) | 70 | `declaration-track:b79481cd9b9e9ff431136e63cfe9ea73343ccfa0985194161a417c52a7bd3fb0` |
| 4 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/inclusion--2862c1e57b8da0388f2e3f5f.md) | 75 | `declaration-track:2862c1e57b8da0388f2e3f5f35cc8646a2bcb35a64b4543874c82faf4fc70f23` |
| 5 | `theorem` | [inclusion_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/inclusion-obj--f3c8044fb6608a53101c224d.md) | 79 | `result-track:f3c8044fb6608a53101c224dd3d5a93288265316f24b29ece07f124ea053b869` |
| 6 | `theorem` | [inclusion_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/inclusion-map--cf223712002073c382f30881.md) | 84 | `result-track:cf223712002073c382f30881ad986c51c375738fab8c307fc601265f614129c8` |
| 7 | `def` | [normalizeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeobj--636b9ca141ed899b6d0d88c3.md) | 91 | `declaration-track:636b9ca141ed899b6d0d88c3feb21f2ba3ecf6595774e3153b610bdd0f88a07a` |
| 8 | `theorem` | [normalizeObj_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeobj-unitor--4bbeffb76ce4cc559a923542.md) | 97 | `result-track:4bbeffb76ce4cc559a923542b65b73ad5723fb2e1067a9a64a4d30d766946479` |
| 9 | `theorem` | [normalizeObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeobj-tensor--61b0b1009753f6b119494e89.md) | 101 | `result-track:61b0b1009753f6b119494e89dfaa0f88baf43d522581b0270745563c9a93a4da` |
| 10 | `def` | [normalizeObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeobj--8c1e595e0c2b3326b229be39.md) | 106 | `declaration-track:8c1e595e0c2b3326b229be39627ab024612b4ba5438256d1cc0edc9aa6cd9e3b` |
| 11 | `def` | [normalizeMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizemapaux--dee7319d4accf79d95714262.md) | 115 | `declaration-track:dee7319d4accf79d95714262c49be3eef37d50dd9f8a1541ffba2946014d4fdd` |
| 12 | `def` | [normalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalize--0ceacb1a0c7e2dd39d686f68.md) | 142 | `declaration-track:0ceacb1a0c7e2dd39d686f68035932b7884893408cbc316f947506b23d6e32d0` |
| 13 | `def` | [normalize'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalize--1d99f5452207fc8e07f20918.md) | 150 | `declaration-track:1d99f5452207fc8e07f20918d512b9a2918fbdaf37e470b7895740f12e706c02` |
| 14 | `def` | [fullNormalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/fullnormalize--51cb785941709b30d2229fc1.md) | 154 | `declaration-track:51cb785941709b30d2229fc15042caa203905803780715c8b995503a0720e8ba` |
| 15 | `def` | [tensorFunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/tensorfunc--7a67d866d9c184e014fb65af.md) | 161 | `declaration-track:7a67d866d9c184e014fb65afc5e89f9790179b3f37c548b2af68bd493b26853a` |
| 16 | `theorem` | [tensorFunc_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/tensorfunc-map-app--58ade1dc5d15eb83ef8851e0.md) | 165 | `result-track:58ade1dc5d15eb83ef8851e011a326f9003b1d030beb6a5fb7e7ae1fe8d0f1c3` |
| 17 | `theorem` | [tensorFunc_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/tensorfunc-obj-map--3a298c9d1cdea1f6947ab84f.md) | 168 | `result-track:3a298c9d1cdea1f6947ab84f55789443f44d1169be2b555249592e75c755919a` |
| 18 | `def` | [normalizeIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoapp--603e7fddecae9eafb0044d50.md) | 180 | `declaration-track:603e7fddecae9eafb0044d50bd73a5fac0ecd1b30684bc6970595cd5454d3da3` |
| 19 | `def` | [normalizeIsoApp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoapp--fcf143136126caf664c8afd4.md) | 190 | `declaration-track:fcf143136126caf664c8afd40724b7668f9e3e7cca6653526938ffe6b6641c0e` |
| 20 | `theorem` | [normalizeIsoApp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoapp-eq--4da528a778ff9e5549fd4eb1.md) | 197 | `result-track:4da528a778ff9e5549fd4eb15446ff485701449d54ce9edd2ec0666f07a74cc5` |
| 21 | `theorem` | [normalizeIsoApp_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoapp-tensor--0bec0023ba1850d78383df66.md) | 208 | `result-track:0bec0023ba1850d78383df666fb221091b97045ed943f1960d681a0a53f313a9` |
| 22 | `theorem` | [normalizeIsoApp_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoapp-unitor--1d48582639d5c342827de1af.md) | 214 | `result-track:1d48582639d5c342827de1afbbf3bb3953cde03a0d9682628c0110f144483cdc` |
| 23 | `def` | [normalizeIsoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeisoaux--33bb9629847563dfc2103309.md) | 219 | `declaration-track:33bb9629847563dfc2103309c8a8aee5e811a5b1b8ec769d4028fa364735a643` |
| 24 | `theorem` | [normalizeObj_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeobj-congr--ff2a6b0b5a07c8254d3a81c7.md) | 233 | `result-track:ff2a6b0b5a07c8254d3a81c78959f5f1f493fd9889aa7e5775e418a0f2ecdc22` |
| 25 | `theorem` | [normalize_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalize-naturality--c16fa3daf1968d8c0c6ad8bf.md) | 247 | `result-track:c16fa3daf1968d8c0c6ad8bff2e764b9a51b94bccb5f6f01ab6a6292e909ce32` |
| 26 | `def` | [normalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/normalizeiso--e674de46895d92e38c4cdfac.md) | 274 | `declaration-track:e674de46895d92e38c4cdfac34bedd493dbb38de2770fe44a5e6df15d7786245` |
| 27 | `def` | [fullNormalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/fullnormalizeiso--8b1a15cd3c60850c625c84fb.md) | 283 | `declaration-track:8b1a15cd3c60850c625c84fb88105f5e898823b9fd332b6c56ce38e90ddbf487` |
| 28 | `instance` | [subsingleton_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/subsingleton-hom--2df27325b0cf9659e5f5d9bd.md) | 297 | `declaration-track:2df27325b0cf9659e5f5d9bd7a2fe5f6c455a2f430d75028856dcc52303ecf18` |
| 29 | `def` | [inverseAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/inverseaux--f1c837ace0e89ad6210af2fb.md) | 312 | `declaration-track:f1c837ace0e89ad6210af2fbd32e8f31938e54bb7fab67f81f9e301d1ccfa311` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant5bf3ff6df29e0730d0335a78e2b393d9ad4f20222bac866fd1189eb822477491.lean/declarations/instance--20f4643b32338bf34de553f0.md) | 327 | `declaration-track:20f4643b32338bf34de553f070885e81bfb290c9a7e2f2ecf65b92fa15feff11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
