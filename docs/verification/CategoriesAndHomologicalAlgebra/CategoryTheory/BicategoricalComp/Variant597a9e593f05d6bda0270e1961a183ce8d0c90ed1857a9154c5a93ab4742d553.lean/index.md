# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoricalComp.Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a43d5c5ea901b93b838e61c770598072acb466b2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a43d5c5ea901b93b838e61c770598072acb466b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BicategoricalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/bicategoricalcoherence--8c75106d3151181f24c6f63f.md) | 27 | `declaration-track:8c75106d3151181f24c6f63f86d413865b988a23a4fb6836289951f27dc6ba55` |
| 2 | `abbrev` | [bicategoricalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/bicategoricaliso--f0005ae69dfe0bda3e8abdc7.md) | 37 | `declaration-track:f0005ae69dfe0bda3e8abdc7bf558eacec3cb54652ce65f1e69cee456fe6a1c4` |
| 3 | `def` | [bicategoricalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/bicategoricalcomp--4b3cc2bd17a94256e4f24f2f.md) | 42 | `declaration-track:4b3cc2bd17a94256e4f24f2f42fafe6551c4e6110ef56e79f4a92e3b028bafd9` |
| 4 | `def` | [bicategoricalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/bicategoricalisocomp--aec05b0e4edf13a5755028e9.md) | 52 | `declaration-track:aec05b0e4edf13a5755028e903e36e982d9859151c3d040366f3a3a8fa9f6b8c` |
| 5 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/refl--8c5250f684fa7434472c4baf.md) | 63 | `declaration-track:8c5250f684fa7434472c4baf21a6a7059f915462c7cf67b31743fd37a3479b50` |
| 6 | `instance` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/whiskerleft--fb8a9534073fa0eb0f61c5c3.md) | 67 | `declaration-track:fb8a9534073fa0eb0f61c5c3286a0ffb5b8045220c559e51dafcbe9d3a2500e2` |
| 7 | `instance` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/whiskerright--64a4863befc4b501093adbfd.md) | 72 | `declaration-track:64a4863befc4b501093adbfd4bf47a8efda2133450a9ce0acff45544f12e901a` |
| 8 | `instance` | [tensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/tensorright--d140f941da1d10731d8a17b9.md) | 77 | `declaration-track:d140f941da1d10731d8a17b92d80630303c9a45e08ec345d320f4242f402c5d1` |
| 9 | `instance` | [tensorRight'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/tensorright--74db1961253acd55896d0d82.md) | 82 | `declaration-track:74db1961253acd55896d0d8267504234ebea155b0820c336e356d7d1339c5b98` |
| 10 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/left--ee77760cfcd68c107cfa772a.md) | 87 | `declaration-track:ee77760cfcd68c107cfa772a2d79ad13b1041deaf3d3454b04c331cfd45e22ba` |
| 11 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/left--c05ebb7123e2f5fe7a023182.md) | 92 | `declaration-track:c05ebb7123e2f5fe7a02318292581371ce788d48754400ea76891886c921b189` |
| 12 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/right--c214081b966b5612810af95e.md) | 97 | `declaration-track:c214081b966b5612810af95ecb7aacc36a77545aa3eb84a39a4279c40105f1e0` |
| 13 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/right--47194660ccfd03831cdfdb6b.md) | 102 | `declaration-track:47194660ccfd03831cdfdb6b06b20b02c3a7a7ac2b94c2e733ecaaa95a9c70bc` |
| 14 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/assoc--b2199105f812a2b98851f69e.md) | 107 | `declaration-track:b2199105f812a2b98851f69ebf8cb2db31ddcb95eb3b95aaa92ce4337207b41f` |
| 15 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/assoc--cb5fe454f6b2b1d81076254c.md) | 113 | `declaration-track:cb5fe454f6b2b1d81076254c2f9fab2e9de972186cf8ee4768750d491b84dccc` |
| 16 | `theorem` | [bicategoricalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoricalComp/Variant597a9e593f05d6bda0270e1961a183ce8d0c90ed1857a9154c5a93ab4742d553.lean/declarations/bicategoricalcomp-refl--6eb283d6d74424808b758714.md) | 121 | `result-track:6eb283d6d74424808b758714f54b3f8cd4d604a6130fb44e33f4705be1b6a888` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
