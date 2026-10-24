# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Separation.Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "523e849d38d22f7f2b68d3394e8d4696c4ed96d7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `523e849d38d22f7f2b68d3394e8d4696c4ed96d7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/separate-convex-open-set--3941d579a056f80025cff61e.md) | 48 | `result-track:3941d579a056f80025cff61e08318914e906b6b45773b9095302ecbf3718d6f2` |
| 2 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open--dc3fe7c8d9b8362212e22f1b.md) | 87 | `result-track:dc3fe7c8d9b8362212e22f1b5d10977371d9b18803058bcca97f6d71e117ce73` |
| 3 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open-point--a07370cd2b53ff4ce210c246.md) | 117 | `result-track:a07370cd2b53ff4ce210c2464ecb89a839d649b788d4e2062fd2191aa527ad7a` |
| 4 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-open--49a1c0cdd5f3d3ddeadd3b35.md) | 123 | `result-track:49a1c0cdd5f3d3ddeadd3b3522deff38e47b6f00cedef8c4b96ae6d21e2d06b7` |
| 5 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open-open--ce66515c1a9e9614720f99e6.md) | 128 | `result-track:ce66515c1a9e9614720f99e625bbb5a2f414fe85c23e2a1da6430f9f0ae50222` |
| 6 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-compact-closed--05ce0bd393033faae2082093.md) | 152 | `result-track:05ce0bd393033faae208209361f9f3cfcab15c3217e75c27d70fc4a750b6eec4` |
| 7 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-closed-compact--8c422739cce3ec4b380955b1.md) | 172 | `result-track:8c422739cce3ec4b380955b12b17f18ae3d8589932c740fc7d939c7993f83f79` |
| 8 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-closed--d5df60d805a9f46e0d8b5472.md) | 178 | `result-track:d5df60d805a9f46e0d8b5472d37ad52088962a8b968f914140e35594750797da` |
| 9 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-closed-point--d8917ce3be110fd68653e12b.md) | 185 | `result-track:d8917ce3be110fd68653e12b241b1ae99fbd2ab5d72fb5ae145b10916855e70b` |
| 10 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-point--46eaf407fa5f78950ed71f99.md) | 193 | `result-track:46eaf407fa5f78950ed71f99fde208c8be543e6daecc9f0dec19f9973296e9fe` |
| 11 | `theorem` | [iInter_halfSpaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/iinter-halfspaces-eq--6aaefdcbfd694085b9b5be8a.md) | 201 | `result-track:6aaefdcbfd694085b9b5be8ab0d425e9e7f1a8c42217812ce8ab019f0ae6834a` |
| 12 | `def` | [extendTo𝕜'ₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/extendto--24f08966eaa8db6008e3c4fb.md) | 218 | `declaration-track:24f08966eaa8db6008e3c4fb65edaa77c83cc0c3baad038df4383797f1de9a75` |
| 13 | `lemma` | [re_extendTo𝕜'ₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/re-extendto--5acc366aed25dfee0c2320d0.md) | 228 | `result-track:5acc366aed25dfee0c2320d083e8829d5e2265f4f8e3488c43aa34c8f0f58a1a` |
| 14 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/separate-convex-open-set--facc67b5e61fdf7f86f40a1a.md) | 236 | `result-track:facc67b5e61fdf7f86f40a1a24c62855d103f55932b388df9b8d74b4a24d3432` |
| 15 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open--58ea64aafba25fc12ca87f70.md) | 245 | `result-track:58ea64aafba25fc12ca87f7032ac591ad1e335b93d65205c96816f7fe978b600` |
| 16 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open-point--7afb830a1dc9abdad1ca6dd0.md) | 254 | `result-track:7afb830a1dc9abdad1ca6dd0d721bc47189e36ca33f411a2dbb6162126485c10` |
| 17 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-open--845fd617d5b71c30b23ffeb0.md) | 262 | `result-track:845fd617d5b71c30b23ffeb0a21332461087da369be841bdcb56827eb20419f3` |
| 18 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-open-open--4dd4cc8c50a82455bcdb5563.md) | 267 | `result-track:4dd4cc8c50a82455bcdb55632809c6b015f01c29b13cecdc0784552a234e6317` |
| 19 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-compact-closed--62378166b2759001bab3589e.md) | 278 | `result-track:62378166b2759001bab3589e964d5b3163e10d5ba583b9fb8a7ffa7351fd98f4` |
| 20 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-closed-compact--f48b5673c178c862a7df030a.md) | 287 | `result-track:f48b5673c178c862a7df030a7845cfa04d80a739b97a4e542b7104965da79499` |
| 21 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-closed--1f0293b45101b786166c3c53.md) | 293 | `result-track:1f0293b45101b786166c3c53236ba037c5709bd849df81db965b477b79aea088` |
| 22 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-closed-point--e6b96267c27a9ecd8db6efa5.md) | 300 | `result-track:e6b96267c27a9ecd8db6efa52f14ebf0265ae9c75963f4c0a7cc9b7b0911aecb` |
| 23 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/geometric-hahn-banach-point-point--1ea99c65c6bfd5bb9206c74e.md) | 307 | `result-track:1ea99c65c6bfd5bb9206c74e078c4621c2e3a4c8fd1e6de6c576324bd2f3235f` |
| 24 | `theorem` | [iInter_halfSpaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/declarations/iinter-halfspaces-eq--c7faf93ee0ea0643c7313e47.md) | 314 | `result-track:c7faf93ee0ea0643c7313e47f5f0c5327d9a2beaa4e32bb6e48763c01ee53291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
