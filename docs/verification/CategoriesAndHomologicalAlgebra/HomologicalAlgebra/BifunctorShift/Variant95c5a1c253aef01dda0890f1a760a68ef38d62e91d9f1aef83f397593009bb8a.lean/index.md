# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BifunctorShift.Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83a5a29a3a8d242a56320759aa42f26bef2dcf1a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83a5a29a3a8d242a56320759aa42f26bef2dcf1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.TotalComplexShift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/hasmapbifunctor--0f4d6e75965264812411aec7.md) | 43 | `declaration-track:0f4d6e75965264812411aec78e8acc1d59c53ab9319dd2a979293d20340a2eae` |
| 2 | `abbrev` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctor--7b28f16ce201e0e2d569af75.md) | 48 | `declaration-track:7b28f16ce201e0e2d569af754b26b1c781ffd9713e10aa5e305ea2e50d020e02` |
| 3 | `abbrev` | [ιMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctor--4633d0856e91596e06264c80.md) | 53 | `declaration-track:4633d0856e91596e06264c80b176169b3b86df6439613cc610114a2c216cfb45` |
| 4 | `def` | [mapBifunctorHomologicalComplexShift₁Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctorhomologicalcomplexshift-iso--79efa6fedda83623bfa76909.md) | 68 | `declaration-track:79efa6fedda83623bfa76909122aa968b86da201432e84575d3316f781d3b2f0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/instance--99d646dc38bca721a95c3173.md) | 79 | `declaration-track:99d646dc38bca721a95c3173f24fb85355bd429083f2e8891e4ec1b9283f4f61` |
| 6 | `def` | [mapBifunctorShift₁Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctorshift-iso--b758a73e5317138fa4791cf7.md) | 84 | `declaration-track:b758a73e5317138fa4791cf76fe7fd1a800cbd11c7eda519add18411e8fb5c56` |
| 7 | `def` | [mapBifunctorHomologicalComplexShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctorhomologicalcomplexshift-iso--b38af158f15f131250316d65.md) | 100 | `declaration-track:b38af158f15f131250316d6543697f3b0e6b03f7e76afdf3c6ff49dd9d94c7b8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/instance--f4dbca70689e065be08ae42c.md) | 111 | `declaration-track:f4dbca70689e065be08ae42c78ca85ca2b2230b08f464749a1b1b615273cd542` |
| 9 | `def` | [mapBifunctorShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctorshift-iso--cd14a851a2d0c597c0794f4d.md) | 117 | `declaration-track:cd14a851a2d0c597c0794f4d256e156f3733dd32d309d5dad50784cc688577d5` |
| 10 | `lemma` | [mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/declarations/mapbifunctorshift-iso-trans-mapbifunctorshift-iso--e09cfe336346fc7d288d51ff.md) | 132 | `result-track:e09cfe336346fc7d288d51ff0fbe0031d40f8d0a9a49d33327752b0ad9cfd643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
