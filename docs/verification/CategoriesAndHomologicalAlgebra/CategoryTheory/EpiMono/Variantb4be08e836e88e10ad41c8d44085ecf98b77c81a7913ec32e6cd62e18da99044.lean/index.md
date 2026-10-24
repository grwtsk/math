# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22ac2ee3f1fec83a6db301606b600d63a93366f3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22ac2ee3f1fec83a6db301606b600d63a93366f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Concrete` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/mono-of-injective--fef331880e9ace0f99cf1b4c.md) | 38 | `result-track:fef331880e9ace0f99cf1b4caaea011e127df68800698446703ef427aa297c56` |
| 2 | `instance` | [forget₂_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/forget-preservesmonomorphisms--ee92360e02e2200e6fd456ba.md) | 42 | `declaration-track:ee92360e02e2200e6fd456ba6a47d5481b899cf5500a3c0ed47b4643c54b5dd0` |
| 3 | `instance` | [forget₂_preservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/forget-preservesepimorphisms--ad178e0ac3fc36e26ea46930.md) | 51 | `declaration-track:ad178e0ac3fc36e26ea46930cf6f182f9f2db76fcb0e44f0583223b3b86e2d09` |
| 4 | `lemma` | [surjective_le_epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/surjective-le-epimorphisms--f657aa4b016f80b6f502f41d.md) | 62 | `result-track:f657aa4b016f80b6f502f41dccefb0b25bd0750e65703e4887a871b69d6e1e58` |
| 5 | `lemma` | [injective_le_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/injective-le-monomorphisms--004305c7c74d80db9674f98a.md) | 66 | `result-track:004305c7c74d80db9674f98ab3edac7529230dbcb2d50d10148611ed5f69c0ad` |
| 6 | `lemma` | [surjective_eq_epimorphisms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/surjective-eq-epimorphisms-iff--357527d6fd8bb479baed6c80.md) | 70 | `result-track:357527d6fd8bb479baed6c807ffa1ae459cd5bd1e58dc1c15635844e8f0b10d1` |
| 7 | `lemma` | [injective_eq_monomorphisms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/injective-eq-monomorphisms-iff--2159982887aae9eb5cf4c2d5.md) | 87 | `result-track:2159982887aae9eb5cf4c2d52856c36d79829e4cfa57b67adb5fbe05c54b10e6` |
| 8 | `lemma` | [injective_eq_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/injective-eq-monomorphisms--f3e2d6404a2cc996d5917401.md) | 104 | `result-track:f3e2d6404a2cc996d5917401b6c1dc9414b1778f7f68b48011cb104a937b88c1` |
| 9 | `lemma` | [surjective_eq_epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/surjective-eq-epimorphisms--7b6f21544ee1ee675b0401ff.md) | 109 | `result-track:7b6f21544ee1ee675b0401ff06286cac46a7f3fba84eff559e3e14dcd9af387e` |
| 10 | `def` | [functorialSurjectiveInjectiveFactorizationData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/functorialsurjectiveinjectivefactorizationdata--00c669a2b6b251f6f23f8c63.md) | 120 | `declaration-track:00c669a2b6b251f6f23f8c637a870dd9d69181d52cd55a86c4597e76241c7c25` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/instance--ebe14c6354d6380133de0309.md) | 126 | `declaration-track:ebe14c6354d6380133de03090d4df50e6e7ad48ac897c8fd0f6de72a0ec328b8` |
| 12 | `theorem` | [injective_of_mono_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/injective-of-mono-of-preservespullback--791dbcced8c030d98d74039b.md) | 136 | `result-track:791dbcced8c030d98d74039b54e1f598b61117505f59ee87f5027b659e772d08` |
| 13 | `theorem` | [mono_iff_injective_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/mono-iff-injective-of-preservespullback--2bfd96f58d606b61b65b9101.md) | 140 | `result-track:2bfd96f58d606b61b65b9101de05e4e66d40426ce9ce55371dafffe1c8cc4745` |
| 14 | `theorem` | [epi_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/epi-of-surjective--e4154ef4480afc27408e5b3c.md) | 145 | `result-track:e4154ef4480afc27408e5b3cc7e18187c2257521de4ee95378a1fe88f8dbd207` |
| 15 | `theorem` | [surjective_of_epi_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/surjective-of-epi-of-preservespushout--8a407d08d06aefa5b8f12776.md) | 149 | `result-track:8a407d08d06aefa5b8f12776429863e627867232d3d01b17d5b31a4bb22c0b2c` |
| 16 | `theorem` | [epi_iff_surjective_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/epi-iff-surjective-of-preservespushout--f875f33171d4f66adad7bcda.md) | 153 | `result-track:f875f33171d4f66adad7bcda68ad5e8820aece9bc72a69c7f849e56f5c9a233a` |
| 17 | `theorem` | [bijective_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/bijective-of-isiso--d76d5f52ca459a248575a46e.md) | 157 | `result-track:d76d5f52ca459a248575a46ea7d7881b9d6733bdfd5ab6dc1c0888f5148a8749` |
| 18 | `theorem` | [isIso_iff_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantb4be08e836e88e10ad41c8d44085ecf98b77c81a7913ec32e6cd62e18da99044.lean/declarations/isiso-iff-bijective--3ba16268b98bcdc63490454a.md) | 164 | `result-track:3ba16268b98bcdc63490454a547f6a157e69945d90fcc4a93b90f6f6c9c8d953` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
