# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bf8b6d24a4e04b31005ecc2f855a23eb4a83f8d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map-condition--35a92455dc6893a2e3f5b9f3.md) | 37 | `result-track:35a92455dc6893a2e3f5b9f39376e9cdc560e0b4966f194c4e65275c1b16aae3` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map--53b8c04426b7e2622e840526.md) | 42 | `declaration-track:53b8c04426b7e2622e840526e36576cdbc1aa74e34e72e5ec9f999286e58b1a7` |
| 3 | `lemma` | [map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map--ff430a8fe4c467530f207b39.md) | 46 | `result-track:ff430a8fe4c467530f207b399fab599b164c037d9e0909884fd24ea872cd02a9` |
| 4 | `def` | [isLimitMapConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/islimitmapconeequiv--bab026299f7f77944a00c41f.md) | 50 | `declaration-track:bab026299f7f77944a00c41fbcb66754767ad473c1aa0b0e18fe58957c1b9a81` |
| 5 | `def` | [mapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/mapislimit--e1297b16b928e61a3b63049b.md) | 58 | `declaration-track:e1297b16b928e61a3b63049bc8ff7a36264f7002dd7153cb139867e24da33a4d` |
| 6 | `def` | [isLimitMapConeForkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/islimitmapconeforkequiv--a307c6230c08a4d8815b5c76.md) | 77 | `declaration-track:a307c6230c08a4d8815b5c76c9e8fd5e79bc86df88d9ed8c18c5779696902cc5` |
| 7 | `def` | [isLimitForkMapOfIsLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/islimitforkmapofislimit--d000ee98bfa5224784eb85f1.md) | 89 | `declaration-track:d000ee98bfa5224784eb85f10e22c0426440e4bf253597f30c22f5156c0be02e` |
| 8 | `def` | [isLimitOfHasKernelOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/islimitofhaskernelofpreserveslimit--9fc8453f069b55335ddbcf1c.md) | 102 | `declaration-track:9fc8453f069b55335ddbcf1cf8f8f89afce74f9823b68778de59cccffc4e1f20` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/instance--c4adeb71c3908b87bec9b555.md) | 109 | `declaration-track:c4adeb71c3908b87bec9b55579f8a9e07bd1e57d3528393fbce3d584f51a7ea4` |
| 10 | `lemma` | [PreservesKernel.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-of-iso-comparison--940ae7d152de45619cec95b0.md) | 117 | `result-track:940ae7d152de45619cec95b0cf6751416cf4f7ea1fa443fc66f4a499b16b2044` |
| 11 | `def` | [PreservesKernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-iso--e3f554dc9de7f5d781386339.md) | 128 | `declaration-track:e3f554dc9de7f5d7813863394f366ddced3a4619fd82b1a0a0ebbd157d105194` |
| 12 | `theorem` | [PreservesKernel.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-iso-inv--07c05219e62da864c2c4abb2.md) | 132 | `result-track:07c05219e62da864c2c4abb223e858ae761276a79ec0eb59e724a98c3b7842d8` |
| 13 | `theorem` | [PreservesKernel.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-iso-hom--b0746606f4639d5169e45f0f.md) | 138 | `result-track:b0746606f4639d5169e45f0faf511ef363280694e666716a0f0866163ecf3a12` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/instance--47a166a09cd1d9aaff7f5bf1.md) | 142 | `declaration-track:47a166a09cd1d9aaff7f5bf1392a73d17a53768cb3cd91f925f0de10675dcffb` |
| 15 | `theorem` | [kernel_map_comp_preserves_kernel_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/kernel-map-comp-preserves-kernel-iso-inv--44ba68d015cf76801a0f29d8.md) | 147 | `result-track:44ba68d015cf76801a0f29d80303b6af69a45aaf7ce20f754680e27a083f9271` |
| 16 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map-condition--283535a7590bb6f67e21c4a6.md) | 164 | `result-track:283535a7590bb6f67e21c4a6554df2522786c0c0349b1efa274a81afd990b58d` |
| 17 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map--0b179230a37577c055934347.md) | 169 | `declaration-track:0b179230a37577c055934347ba756ac0fca5b7b420aaffd47bdce11d14da205e` |
| 18 | `lemma` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/map--b48a1e6ef343747501463a5a.md) | 173 | `result-track:b48a1e6ef343747501463a5af3fac2be233d4716d7246804abcec94d0c6d7e73` |
| 19 | `def` | [isColimitMapCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/iscolimitmapcoconeequiv--5af71e62692a454798be3b15.md) | 177 | `declaration-track:5af71e62692a454798be3b151851e012917093d24820be4c9df0b8fc6b668b97` |
| 20 | `def` | [mapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/mapiscolimit--59130cfc719c8383df36a620.md) | 185 | `declaration-track:59130cfc719c8383df36a6209866a4f777e79eedc89776d8192a4f755460269f` |
| 21 | `def` | [isColimitMapCoconeCoforkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/iscolimitmapcoconecoforkequiv--813ec6b19f18e00587513550.md) | 204 | `declaration-track:813ec6b19f18e00587513550ba1ce548645ee2bfcd09db89944588d46fa2dd59` |
| 22 | `def` | [isColimitCoforkMapOfIsColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/iscolimitcoforkmapofiscolimit--4a7378094433a86b9fb3ad18.md) | 216 | `declaration-track:4a7378094433a86b9fb3ad18b34fd9bc89e0c693c9eeecb6536a0ecc52dd56c5` |
| 23 | `def` | [isColimitOfHasCokernelOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/iscolimitofhascokernelofpreservescolimit--9f12e42274200bb2cf8f5d29.md) | 230 | `declaration-track:9f12e42274200bb2cf8f5d2964a4e7dc3eb68aa7464c8f3f9c692846d49e284e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/instance--1f55962671104e4a6ee66483.md) | 237 | `declaration-track:1f55962671104e4a6ee6648331661797bdd867adac639911e8a32b670372b775` |
| 25 | `lemma` | [PreservesCokernel.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-of-iso-comparison--6ae0724aeca48b6082c8b780.md) | 245 | `result-track:6ae0724aeca48b6082c8b780a2784a425a41fe8e21a6a0eb60e11061e22852fa` |
| 26 | `def` | [PreservesCokernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-iso--460ff51ac29aef3924910407.md) | 256 | `declaration-track:460ff51ac29aef3924910407d43ca4887a5d96b76f76869d8c71d8763acfeb26` |
| 27 | `theorem` | [PreservesCokernel.π_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-iso-hom--e36efbf7dff35ff3e4aaea4b.md) | 261 | `result-track:e36efbf7dff35ff3e4aaea4b5f365b21633b418f210fc8632aeb49a2ccb5ab96` |
| 28 | `theorem` | [PreservesCokernel.iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-iso-inv--1734fbbd46316c3a2d5c9dea.md) | 266 | `result-track:1734fbbd46316c3a2d5c9dea7a1d202b58e6db4e60ed1716411496a930e87f13` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/instance--85279e2a5f3d094ea891c03c.md) | 270 | `declaration-track:85279e2a5f3d094ea891c03c77fbf22bea9eb1da8550b97b671291d56b901677` |
| 30 | `theorem` | [preserves_cokernel_iso_comp_cokernel_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserves-cokernel-iso-comp-cokernel-map--a65da2edfea8c0ef163ea28c.md) | 275 | `result-track:a65da2edfea8c0ef163ea28cd5413cc397381a0250470356f1e327b2f9853b12` |
| 31 | `instance` | [preservesKernel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-zero--c9165e5083490f463fefe33e.md) | 289 | `declaration-track:c9165e5083490f463fefe33e5eda62b2413fc1829fab452a259b07c213e30627` |
| 32 | `instance` | [preservesCokernel_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-zero--16e6cd1f39f8b3f22e73deb1.md) | 297 | `declaration-track:16e6cd1f39f8b3f22e73deb138595e37cb12c5977e01240c0a5cd683433857ea` |
| 33 | `lemma` | [preservesKernel_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preserveskernel-zero--900e13ee8a4bf7a5f18c3e6b.md) | 308 | `result-track:900e13ee8a4bf7a5f18c3e6bdd060c5026a9e0fbb34b9ddf4589df2f57ec1146` |
| 34 | `lemma` | [preservesCokernel_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant816cf58197a58e0ef6ed2456636b6b8090ad765636e0558a5e37630c750ca86d.lean/declarations/preservescokernel-zero--791eaa00721b36b836b7e7ae.md) | 314 | `result-track:791eaa00721b36b836b7e7ae428695fb004c0f5d73f4c2c7db3d539e1be1eb5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
