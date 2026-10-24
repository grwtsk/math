# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "635113a6a0faebde1452434e593875955582c19f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `635113a6a0faebde1452434e593875955582c19f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/m--2d7968a83c5deca8c25253d7.md) | 47 | `declaration-track:2d7968a83c5deca8c25253d78b8ec0e3f31df1eb732dc34333bbe9a171d8b8f8` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/m-mk--84fcef5f41fa82772c3612d8.md) | 52 | `declaration-track:84fcef5f41fa82772c3612d80f06e2d25a478a6137e0446eee3365c426775732` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/m-mk-eq--3c90a47b290182617fbc37da.md) | 56 | `result-track:3c90a47b290182617fbc37da4807f60d693369371839e9d00bfcb2c5103b4c8a` |
| 4 | `instance` | [colimitOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitone--3cb4c775847bbc40e8e3bf36.md) | 69 | `declaration-track:3cb4c775847bbc40e8e3bf36a29049acbe547aa69e16b3692eaec01c263fb2e3` |
| 5 | `theorem` | [colimit_one_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimit-one-eq--bc2be3d8aacdb8ac9b5ace5a.md) | 80 | `result-track:bc2be3d8aacdb8ac9b5ace5a1fbc7bb43bdcc90a29cd780e53208db384177483` |
| 6 | `def` | [colimitMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmulaux--1059cbe73dedc0f6d79e6807.md) | 93 | `declaration-track:1059cbe73dedc0f6d79e6807d40fe598242a3297f1a5cc233de883bb19031653` |
| 7 | `theorem` | [colimitMulAux_eq_of_rel_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmulaux-eq-of-rel-left--7c4c1a473886c3989b7fc447.md) | 99 | `result-track:7c4c1a473886c3989b7fc4472cac159d0288f93724568393862c6cd813330d03` |
| 8 | `theorem` | [colimitMulAux_eq_of_rel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmulaux-eq-of-rel-right--0243bda916b03568ea83b1d8.md) | 116 | `result-track:0243bda916b03568ea83b1d8459960aba103c0bf40209c94fdb13563fddf391d` |
| 9 | `instance` | [colimitMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmul--1497314478c96d8ab008b1cd.md) | 133 | `declaration-track:1497314478c96d8ab008b1cd2e8ef2838fe4294a92fb4db50dc398a9d4fd07a3` |
| 10 | `theorem` | [colimit_mul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimit-mul-mk-eq--649d65e163eaef970220b15f.md) | 153 | `result-track:649d65e163eaef970220b15f36092224ef69c461b58094424d09d8c3f0f8ee32` |
| 11 | `instance` | [colimitMulOneClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmuloneclass--01f5554134b0d0f939b0252f.md) | 164 | `declaration-track:01f5554134b0d0f939b0252f446bc004fddf66f3e5f201ce0a0d8925a647a69f` |
| 12 | `instance` | [colimitMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitmonoid--c21c498d8c2ecc3e49695532.md) | 181 | `declaration-track:c21c498d8c2ecc3e4969553263d30c55b8f53d3e05dfe33e37c6b9d1b9d2cfda` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimit--0d36c7f6c656e96d3ef24dc5.md) | 209 | `declaration-track:0d36c7f6c656e96d3ef24dc5ec855bf14d16cdc5a9e54da6da61298ff07ae930` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/coconemorphism--1cd0bbb88e2a3603918433e4.md) | 216 | `declaration-track:1cd0bbb88e2a3603918433e427cf5f5edeff84a3da5fd00df421e1865c3acdae` |
| 15 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/cocone-naturality--f1950c0abc3a629c14b592f4.md) | 226 | `result-track:f1950c0abc3a629c14b592f4f297bded3417eb15ab6221f3035f04d1ef69d528` |
| 16 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitcocone--034272702249e74c5f57e08a.md) | 233 | `declaration-track:034272702249e74c5f57e08a5d591c5639c709181288931b7a4185e159013378` |
| 17 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitdesc--8007df36b86ac637e5cec00f.md) | 246 | `declaration-track:8007df36b86ac637e5cec00f40bae58c75aa2cc07ec44d2c9bcbc6b089927055` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitcoconeiscolimit--99b4650da4f6f4ae34d3a626.md) | 267 | `declaration-track:99b4650da4f6f4ae34d3a62661b523a28e0f09cc0ea514be9fd421c42f0a09fd` |
| 19 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/forget-preservesfilteredcolimits--0d8b2a9530a269160a17b9a5.md) | 277 | `declaration-track:0d8b2a9530a269160a17b9a5dc00dc64167ba951fa13b41c4c57433460e6e628` |
| 20 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/m--fad4fbbbf782737f487c5783.md) | 302 | `declaration-track:fad4fbbbf782737f487c5783ef5efa61b2999449ba696ae47e5b481406497b98` |
| 21 | `instance` | [colimitCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitcommmonoid--f3d3bef87f77d7b66865245f.md) | 306 | `declaration-track:f3d3bef87f77d7b66865245f3e92bf685eb0346a14d4c07fc8ce9ab953432fe1` |
| 22 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimit--53e68a4a76fdac1b97be6402.md) | 322 | `declaration-track:53e68a4a76fdac1b97be6402079bd686235be6d5900ff2ad73dc2042ebe4d876` |
| 23 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitcocone--5de360c3b87fb7ede59ee9c9.md) | 327 | `declaration-track:5de360c3b87fb7ede59ee9c9b1e96efaa7c9ff324aa3259786e388086fffe634` |
| 24 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/colimitcoconeiscolimit--dc8d15986d6852922af69341.md) | 337 | `declaration-track:dc8d15986d6852922af6934160c332ebeaa3a2dd9a1b44283ee5bd4f55072f50` |
| 25 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/forget-mon-preservesfilteredcolimits--426adf03a61309a599182314.md) | 353 | `declaration-track:426adf03a61309a5991823142623cc5139dda7177ac55690c530ef0c492bd828` |
| 26 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/declarations/forget-preservesfilteredcolimits--9543d0f0b3bcbe7f7c07d7e7.md) | 360 | `declaration-track:9543d0f0b3bcbe7f7c07d7e79884a31c865a2cea47bfed46f6ec432d462b4895` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
