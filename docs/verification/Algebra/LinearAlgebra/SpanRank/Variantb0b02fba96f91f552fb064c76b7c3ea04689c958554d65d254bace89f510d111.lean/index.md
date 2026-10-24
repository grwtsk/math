# Verification target: GRWTSK.Algebra.LinearAlgebra.SpanRank.Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0a38c6cdbd59de5409ec9d89b7cd1e9b475cd3f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0a38c6cdbd59de5409ec9d89b7cd1e9b475cd3f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank--d66d098cc066d035a3ee26f3.md) | 69 | `declaration-track:d66d098cc066d035a3ee26f3ae90deef0055097b6803109a5b3ac0cade4c607d` |
| 2 | `def` | [spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanfinrank--bcbeabaaa93f71acc76ecb70.md) | 73 | `declaration-track:bcbeabaaa93f71acc76ecb7038ffa5c2c3afd1baa7fd84c910b4456c9b49a0b3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/instance--27f2f6324e32d1e599ad45e3.md) | 75 | `declaration-track:27f2f6324e32d1e599ad45e372223d4f12f71179569a621488e233a0bf63f9ac` |
| 4 | `lemma` | [spanRank_toENat_eq_iInf_encard](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-toenat-eq-iinf-encard--4179a59c39eae1ef4426edcb.md) | 77 | `result-track:4179a59c39eae1ef4426edcbbce01d42b3e333eeae4b94e57d6a24d7517ce838` |
| 5 | `lemma` | [spanRank_toENat_eq_iInf_finset_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-toenat-eq-iinf-finset-card--943ae7234d044fda8edfd835.md) | 93 | `result-track:943ae7234d044fda8edfd835e187b7651b293d165dc6987d778ee64a1c34e50a` |
| 6 | `lemma` | [spanFinrank_eq_iInf](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanfinrank-eq-iinf--9defe8be05b47f339e15e240.md) | 108 | `result-track:9defe8be05b47f339e15e240b1c0a205daecb2e7d7aa4d19dab99a4eac4d7387` |
| 7 | `lemma` | [spanRank_finite_iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-finite-iff-fg--71d5797ac7f7beec0f06f563.md) | 114 | `result-track:71d5797ac7f7beec0f06f563f4f27aae282a4d01694c65c04baf17c24420c5a7` |
| 8 | `lemma` | [fg_iff_spanRank_eq_spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-iff-spanrank-eq-spanfinrank--98141c58aa1248219e01f7fc.md) | 127 | `result-track:98141c58aa1248219e01f7fc42439eaf330dd4d0a720d2dfd43244d5614357af` |
| 9 | `lemma` | [spanRank_span_le_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-span-le-card--22d54110461f9cb96f3fbb50.md) | 131 | `result-track:22d54110461f9cb96f3fbb5087cb339e445a142788359d7ee5ceb867a983827c` |
| 10 | `lemma` | [spanFinrank_span_le_ncard_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanfinrank-span-le-ncard-of-finite--5dc0dbf2ba893807be610272.md) | 136 | `result-track:5dc0dbf2ba893807be6102726333a5916aaa0050550baa3801044d95e4e6807e` |
| 11 | `theorem` | [exists_span_set_card_eq_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/exists-span-set-card-eq-spanrank--5a054ffe3e8915cd28f03d9f.md) | 146 | `result-track:5a054ffe3e8915cd28f03d9f95d1f889b0cbfa24e4d8c48eace70034156e6cd0` |
| 12 | `theorem` | [FG.exists_span_set_encard_eq_spanFinrank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-exists-span-set-encard-eq-spanfinrank--e0f3f1e5a9250a1e9e505801.md) | 155 | `result-track:e0f3f1e5a9250a1e9e505801af5ef0fddc1db839e536da6a958861f091ee9de7` |
| 13 | `lemma` | [FG.spanRank_le_iff_exists_span_set_card_le](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-spanrank-le-iff-exists-span-set-card-le--8413cb5d4bcf81b1fba8cf48.md) | 165 | `result-track:8413cb5d4bcf81b1fba8cf48428b8a66568850844a5b25dfb9fbcdc5a9785dca` |
| 14 | `lemma` | [spanRank_eq_zero_iff_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-eq-zero-iff-eq-bot--8f4ca512f0edae99212edfea.md) | 174 | `result-track:8f4ca512f0edae99212edfea5d1f6d8833f92d465f1a36719a3c3fd4eda4834c` |
| 15 | `lemma` | [spanRank_bot](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-bot--82e2f1627aa4cf9f057aa300.md) | 185 | `result-track:82e2f1627aa4cf9f057aa300a2fbf583a10bd35d51b5fa582ec72bb2b9db7258` |
| 16 | `def` | [generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/generators--db915ebff7a5d14f937fe194.md) | 188 | `declaration-track:db915ebff7a5d14f937fe194ccb3eab976fdd69e9b06b9e967ac89b35fcfd7c3` |
| 17 | `lemma` | [generators_card](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/generators-card--07a9231b72b0b488bb4a5baa.md) | 191 | `result-track:07a9231b72b0b488bb4a5baa6d8a5eb7a02ff1665f3c5bcc431db941b368dd31` |
| 18 | `lemma` | [FG.generators_ncard](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-generators-ncard--b3d96ddc2656427071cbb890.md) | 194 | `result-track:b3d96ddc2656427071cbb89094024b408ef867d5bd2fd0d717403acb214fca13` |
| 19 | `lemma` | [FG.finite_generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-finite-generators--82c83fd2df81b88d5e54cfdc.md) | 200 | `result-track:82c83fd2df81b88d5e54cfdc13e088d7a8dd9c17437092e3cbc5ea59fb9c29f4` |
| 20 | `lemma` | [span_generators](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/span-generators--4324db68bde8ab99045fbdcf.md) | 206 | `result-track:4324db68bde8ab99045fbdcf00de96d50e59b768d61c36a1f0212588261563bc` |
| 21 | `lemma` | [FG.generators_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/fg-generators-mem--b46cef0bdbb6b5b25c14f71e.md) | 210 | `result-track:b46cef0bdbb6b5b25c14f71e500b96983f1f02ffa7407f67326dd10ef0016f5f` |
| 22 | `lemma` | [spanRank_sup_le_sum_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/spanrank-sup-le-sum-spanrank--6da0d6bc9177c4825f41233e.md) | 214 | `result-track:6da0d6bc9177c4825f41233e55061257724ad33dd3db13f4e026f3733de182a3` |
| 23 | `lemma` | [Basis.mk_eq_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/basis-mk-eq-spanrank--277be6c2c454d85ef66e74d2.md) | 231 | `result-track:277be6c2c454d85ef66e74d2cee2af883e2d65321483435cd9bba4c0f8ff4b56` |
| 24 | `theorem` | [rank_eq_spanRank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/rank-eq-spanrank-of-free--b83f4aa6c06b01ac54bc3acc.md) | 237 | `result-track:b83f4aa6c06b01ac54bc3accc44428dfae3780b69c94c86378c383a46166fb45` |
| 25 | `theorem` | [rank_le_spanRank](../../../../../mathematics/Algebra/LinearAlgebra/SpanRank/Variantb0b02fba96f91f552fb064c76b7c3ea04689c958554d65d254bace89f510d111.lean/declarations/rank-le-spanrank--deff1e23ba71683ceb034059.md) | 244 | `result-track:deff1e23ba71683ceb0340594640812db914488fd1551cadb47755f1efbe8afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
