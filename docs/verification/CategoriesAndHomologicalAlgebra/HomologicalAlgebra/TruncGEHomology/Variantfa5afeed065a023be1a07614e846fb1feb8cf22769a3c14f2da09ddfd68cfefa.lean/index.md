# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncGEHomology.Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaeed8ef11962f9fbf4ff22a3473ef036600bb39",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaeed8ef11962f9fbf4ff22a3473ef036600bb39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.ExtendHomology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.TruncGE` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.RestrictionHomology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasHomology_sc'_of_not_mem_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/hashomology-sc-of-not-mem-boundary--3edb2a617d396ce9e7ba3946.md) | 45 | `result-track:3edb2a617d396ce9e7ba3946b7ae015c5a4937f83e1f61e46057dcaecd8f3301` |
| 2 | `lemma` | [hasHomology_of_not_mem_boundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/hashomology-of-not-mem-boundary--12a3da62e28dcb191472bf10.md) | 57 | `result-track:12a3da62e28dcb191472bf10923c6b022317b4f82b1e13ccc911dabb507442c8` |
| 3 | `lemma` | [quasiIsoAt_restrictionToTruncGE'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/quasiisoat-restrictiontotruncge--6b0fcb1b6803aa49fb304614.md) | 62 | `result-track:6b0fcb1b6803aa49fb3046148ef45bca642c8525ce94796b03ecfb22254d0b2c` |
| 4 | `lemma` | [homologyι_truncGE'XIsoOpcycles_inv_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/homology-truncge-xisoopcycles-inv-d--25f3b6fa4956681c18574b46.md) | 76 | `result-track:25f3b6fa4956681c18574b4679b71f0feab48c1af87d016292192137acac67a9` |
| 5 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/islimitkernelfork--bfffde3f9430ca0a3b5453ae.md) | 84 | `declaration-track:bfffde3f9430ca0a3b5453aeeda5d902600d7facd91adeba0c8e1c31c51d8403` |
| 6 | `def` | [homologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/homologydata--1f137803499eba4be7c6da18.md) | 104 | `declaration-track:1f137803499eba4be7c6da189962ad7b2ab900d4607a6934bfdf756b70916b45` |
| 7 | `lemma` | [homologyData_right_g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/homologydata-right-g--a0cc8a3ffd2a387255960d97.md) | 112 | `result-track:a0cc8a3ffd2a387255960d974ecb3f392da0241d2a9947dfa5a5e2c81bde4003` |
| 8 | `instance` | [truncGE'_hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/truncge-hashomology--c89309a3de98a7d6061f14de.md) | 117 | `declaration-track:c89309a3de98a7d6061f14de26c2229f754619eb59b09c961d436f3d504ba25a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/instance--573b33ab59f318307b858e41.md) | 128 | `declaration-track:573b33ab59f318307b858e41e9ce06d9505b1c82b9ac1d1fe97bc746ae03509d` |
| 10 | `def` | [rightHomologyMapData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/righthomologymapdata--9f34ca624a8d4d96b8ed7df6.md) | 135 | `declaration-track:9f34ca624a8d4d96b8ed7df6d8e2ecccb91e763a9fda8348e864bf6a750e3796` |
| 11 | `lemma` | [quasiIsoAt_πTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/quasiisoat-truncge--3d009b785c9aac042cc107dc.md) | 167 | `result-track:3d009b785c9aac042cc107dc8c27b92d6d1030ec81cc7c9ea133ab863420d80f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/instance--a4d5e5600af19a61fdc5832c.md) | 193 | `declaration-track:a4d5e5600af19a61fdc5832c4eda61b6aae8d78495478852cf83eecc9da905c0` |
| 13 | `lemma` | [quasiIso_πTruncGE_iff_isSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/quasiiso-truncge-iff-issupported--f17f6e7765e569c2819d5584.md) | 195 | `result-track:f17f6e7765e569c2819d5584d9c31764898d31d4c849056007a9cd49aac66591` |
| 14 | `lemma` | [acyclic_truncGE_iff_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/acyclic-truncge-iff-issupportedoutside--877c6a538e05d5441000de7c.md) | 211 | `result-track:877c6a538e05d5441000de7c45e06cca6f7c316bd23864a02d841309e0b2ad2a` |
| 15 | `lemma` | [quasiIso_truncGEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantfa5afeed065a023be1a07614e846fb1feb8cf22769a3c14f2da09ddfd68cfefa.lean/declarations/quasiiso-truncgemap-iff--35f979e2040a6c4b02d5db38.md) | 225 | `result-track:35f979e2040a6c4b02d5db38396a6c130a378031b394d9254a4bfec2ccf38738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
