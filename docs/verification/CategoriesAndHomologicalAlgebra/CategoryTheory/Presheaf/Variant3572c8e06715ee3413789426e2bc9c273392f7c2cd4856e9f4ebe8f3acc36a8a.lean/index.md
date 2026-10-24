# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e99949f30354fd0f8a546ca4d261e532a162858b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e99949f30354fd0f8a546ca4d261e532a162858b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/presheafofmodules--865e1a6e92f624aa6f19c97c.md) | 35 | `declaration-track:865e1a6e92f624aa6f19c97c0b52e0d7ddb041498fa67a8ad3797233a2b527f8` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/obj--1181f7b5a5bb6b12283ef4a9.md) | 48 | `declaration-track:1181f7b5a5bb6b12283ef4a9dbeb93915d5866d4235e52a7d787e4f3d07d8e98` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/map--634d4e0b06ede2edfbfcb6d3.md) | 56 | `declaration-track:634d4e0b06ede2edfbfcb6d356943f79b0f551d1ee513320bb5932255cad9338` |
| 4 | `theorem` | [map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/map-apply--d2eb3a814da64872ba8d7976.md) | 62 | `result-track:d2eb3a814da64872ba8d7976c013d407e60042f0028271fe7dd9de205ce2d596` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--2364a5bd89972c57216b3fb1.md) | 66 | `declaration-track:2364a5bd89972c57216b3fb1b4be56d7d7464604ab57dac7f9500714ea3f8b7c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--f58cac3fc04dbcf7425173c2.md) | 69 | `declaration-track:f58cac3fc04dbcf7425173c2ac5c05a7d9f2f7cc4ad00db42dc65592f165f759` |
| 7 | `theorem` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/map-id--469e68ad936fbbba1ccef86b.md) | 74 | `result-track:469e68ad936fbbba1ccef86bd6fd49349555dd18c3facd4d3d794edf107addad` |
| 8 | `theorem` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/map-comp--8b9b8c4c54ef3701bb8639b5.md) | 80 | `result-track:8b9b8c4c54ef3701bb8639b572b2ed6afbd7703a365fc33ed8b31abbae729c7a` |
| 9 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/hom--e1d992abe186e8311f16ca74.md) | 86 | `declaration-track:e1d992abe186e8311f16ca748aba0640d22c3f9b8c78e05e15f23eac31ec6b43` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/id--819838208c1cbc564d85b759.md) | 93 | `declaration-track:819838208c1cbc564d85b7595a73e70de3923cc57b17317f8b0fdf7f19981b1c` |
| 11 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/comp--cfecd6487a3b7a5e12dc72b1.md) | 98 | `declaration-track:cfecd6487a3b7a5e12dc72b1b727fec3e66c3d91648df9106445ccee6978281c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--4a37e20f669fd338672cf36d.md) | 104 | `declaration-track:4a37e20f669fd338672cf36d8d14b278107f048a72416c68f86d48165d6c8a4c` |
| 13 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/app--769ee3c07b10e8523a4383ce.md) | 116 | `declaration-track:769ee3c07b10e8523a4383ce5dae98a21096d485dcc8d6c93f5f8cbbfd83d7dd` |
| 14 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/comp-app--ad1c832aa5922ff656fe1d94.md) | 121 | `result-track:ad1c832aa5922ff656fe1d94230bbb5c596b5c0a201a3efca589de9ea1187362` |
| 15 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/ext--1f6a78c3639d790e45dd4829.md) | 125 | `result-track:1f6a78c3639d790e45dd4829ec1b2712525713ffc44f7ff6691c4d172860310f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--25141d8e73c00e34c2258a40.md) | 131 | `declaration-track:25141d8e73c00e34c2258a40c424e6e5e6020e93318d95543433d14ac1d2bd28` |
| 17 | `lemma` | [zero_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/zero-app--bd1da621696d3d4a0a79ecfd.md) | 138 | `result-track:bd1da621696d3d4a0a79ecfd01fbce39f998e1c515042f28d19d23522b124806` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--51b05b4bede87d279d3fdb15.md) | 142 | `declaration-track:51b05b4bede87d279d3fdb1568fa14581018d1cb985b291d5735d10908d0c2a5` |
| 19 | `lemma` | [add_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/add-app--a1f07583c3aa353a1f2d871f.md) | 147 | `result-track:a1f07583c3aa353a1f2d871f2fca5738874d25e649d441df10ea0879421b72b1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--4f309565571c710897536f5d.md) | 149 | `declaration-track:4f309565571c710897536f5de783872ef9634546e3931e174b266d97e2ff17d8` |
| 21 | `lemma` | [sub_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/sub-app--098a22f50446bd834bfbb783.md) | 155 | `result-track:098a22f50446bd834bfbb78309f4675b784c83b1e8b96e8ba8268e1d9465da22` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--afeca224286987749c54aa8f.md) | 157 | `declaration-track:afeca224286987749c54aa8f39c64ab57be87504165fc8c8d270affa4c318963` |
| 23 | `lemma` | [neg_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/neg-app--71246651c85bf792fee9098a.md) | 163 | `result-track:71246651c85bf792fee9098aebd4e17af2b8bfad5bd47b65f72481e28eeb0808` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--e81a4db1dd774edd0217cc72.md) | 165 | `declaration-track:e81a4db1dd774edd0217cc727e08cd74540b6299dbbdbc3a2eb6d752b3750110` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--597f718e7cdd10d1d5641560.md) | 173 | `declaration-track:597f718e7cdd10d1d5641560d84463cc062087d85969a31d9a5f86b0b6a60b67` |
| 26 | `def` | [toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/topresheaf--cc9eb21aa5c5b47fb7f189fd.md) | 185 | `declaration-track:cc9eb21aa5c5b47fb7f189fd5fb79c5ecf388effa61898c32cb7849ef71cfe87` |
| 27 | `lemma` | [toPresheaf_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/topresheaf-map-app--7e02a01fa7dec9638981152a.md) | 192 | `result-track:7e02a01fa7dec9638981152a811a81fe98b2c6fb9c10ee2b7d796def396f12ee` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--8f2f5ce83391c9c72994ac8b.md) | 196 | `declaration-track:8f2f5ce83391c9c72994ac8b6399efdeb9578f5a0bbe1c2ab1b0391ff0f737c7` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean/declarations/instance--ee0ef1893e3e618ce8e44ef1.md) | 198 | `declaration-track:ee0ef1893e3e618ce8e44ef1606c0def71d91f47acfce78ac7ee82ec5c343299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
