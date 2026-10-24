# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec5cda870afbe0d73d03598f45ae7525ffbdeb2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec5cda870afbe0d73d03598f45ae7525ffbdeb2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_lift_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserves-lift-mapcone--102516a0e3d78bd6f6e01b4a.md) | 48 | `result-track:102516a0e3d78bd6f6e01b4ac7c0d28d994b4728728a138834e5b449a0c0f983` |
| 2 | `def` | [preservesLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserveslimitiso--ad255ca416b5cb73ac945170.md) | 57 | `declaration-track:ad255ca416b5cb73ac94517003e973b4454f53350ebe11ca4a048cb282aaafd1` |
| 3 | `theorem` | [preservesLimitIso_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserveslimitiso-hom--d56a7e92d2297fb0ca574dd3.md) | 61 | `result-track:d56a7e92d2297fb0ca574dd38b7bc76dd389be8137f85e9a58f2844bb6b0470d` |
| 4 | `theorem` | [preservesLimitIso_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserveslimitiso-inv--f6e03e8a34b2daaf3fecbd16.md) | 68 | `result-track:f6e03e8a34b2daaf3fecbd16bad01db68534a75ac08c52b42867d9da5a4241a7` |
| 5 | `theorem` | [lift_comp_preservesLimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/lift-comp-preserveslimitiso-hom--123ee2c46d59163ce85e9718.md) | 75 | `result-track:123ee2c46d59163ce85e9718b16271ae8d7659546e3d4486beca0c84b00ac7d9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/instance--40dc3f37751a82142ee10519.md) | 84 | `declaration-track:40dc3f37751a82142ee10519d5511ebae292fa60ed39925ea43a8e9adc7050e8` |
| 7 | `def` | [preservesLimitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserveslimitnatiso--bcdf16665cc8516088218ef7.md) | 92 | `declaration-track:bcdf16665cc8516088218ef76413064aa198f1a59a847324bd9fae0b31450e92` |
| 8 | `lemma` | [preservesLimit_of_isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserveslimit-of-isiso-post--32eb08f2e6bf25a0a7708f40.md) | 109 | `result-track:32eb08f2e6bf25a0a7708f40a1dc1609cb0c720016e4c550c2df0057f74866c6` |
| 9 | `theorem` | [preserves_desc_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preserves-desc-mapcocone--8c50efe234297f7ecdc65cc6.md) | 121 | `result-track:8c50efe234297f7ecdc65cc6ca0b38ee973cfdd11d34d0140cd49889f52ce3a8` |
| 10 | `def` | [preservesColimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimitiso--a3b8ae0cae578fae17cf9537.md) | 131 | `declaration-track:a3b8ae0cae578fae17cf953781ee087d1cbb348103d5f3245a2f0c7fddbd3802` |
| 11 | `theorem` | [ι_preservesColimitIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimitiso-inv--10742e608cd22e883553dd02.md) | 135 | `result-track:10742e608cd22e883553dd0288357afd88fd883564508798c4edd9c7422c2d00` |
| 12 | `theorem` | [ι_preservesColimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimitiso-hom--e276601394ba30e6be9b116e.md) | 143 | `result-track:e276601394ba30e6be9b116e781366a79bb8a22448e892006965a999fef6f8f2` |
| 13 | `theorem` | [preservesColimitIso_inv_comp_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimitiso-inv-comp-desc--143607d80047413818a308a0.md) | 151 | `result-track:143607d80047413818a308a043d7262149ad711e26ea7157564071c3da7cf925` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/instance--347a0c0a9aefc20ffc98b4ec.md) | 160 | `declaration-track:347a0c0a9aefc20ffc98b4ecfe3a5189ef0267efc2bf77a22ba23c8e84809496` |
| 15 | `def` | [preservesColimitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimitnatiso--366642f1bc262209d93e95e8.md) | 168 | `declaration-track:366642f1bc262209d93e95e80d2d82779c5945c92b3389c61e3f11b40d0e463c` |
| 16 | `lemma` | [preservesColimit_of_isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/declarations/preservescolimit-of-isiso-post--14b766a4bea40d09349d08fc.md) | 188 | `result-track:14b766a4bea40d09349d08fcc7cb0799c3db94831ffb5171085e245b9c4df07c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
