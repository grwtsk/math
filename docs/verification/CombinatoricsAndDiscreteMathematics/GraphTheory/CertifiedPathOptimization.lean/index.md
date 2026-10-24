# Verification target: GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b314963acc791be7375c8a91f33ee7786a4d528",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/CertifiedPathOptimization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b314963acc791be7375c8a91f33ee7786a4d528`.

Source path: `GRWTSK/Combinatorics/GraphTheory/CertifiedPathOptimization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/CertifiedPathOptimization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Data.TypedMoments`](../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedMoments.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Aspect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/aspect--ff3e113f1e7118d363a17a71.md) | 34 | `declaration-track:ff3e113f1e7118d363a17a71174c1dbdd9a0fadde61bfcd374f367521f9600e8` |
| 2 | `def` | [Woven](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/woven--943fc6538004815f88a28db6.md) | 38 | `declaration-track:943fc6538004815f88a28db6751b1b92628b396b1e0b825d5ee99f6a3857e5d0` |
| 3 | `def` | [combine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/combine--3ff5652322451749d41553ad.md) | 43 | `declaration-track:3ff5652322451749d41553ad63b73244724cf163d752f2c2f079f87ee384dd7b` |
| 4 | `theorem` | [woven_combine_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/woven-combine-iff--aec3a709a4ca61d9a6f96e07.md) | 48 | `result-track:aec3a709a4ca61d9a6f96e07494b7930fe93ca4048da780be87b14bd190200c1` |
| 5 | `structure` | [Certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/certified--ec64ac7535415551eb4f6b93.md) | 61 | `declaration-track:ec64ac7535415551eb4f6b9344215029e81fe12e4d6bc8d7da20ca03d26ca784` |
| 6 | `def` | [momentAgreementAspect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/momentagreementaspect--df7e6c94db6ff3a15a7ac463.md) | 66 | `declaration-track:df7e6c94db6ff3a15a7ac4636ed4d0f3b49cbd981e5c4f04210ae3d09ca42c17` |
| 7 | `def` | [trackerPositiveAspect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/trackerpositiveaspect--a15afd1eb9551f29b923990a.md) | 70 | `declaration-track:a15afd1eb9551f29b923990abe949828ec4148dfc30ea2d3456b574651b5a12e` |
| 8 | `structure` | [TrackedFiniteStateBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/trackedfinitestateboundary--c5c5cde35bf7a140791f38a2.md) | 76 | `declaration-track:c5c5cde35bf7a140791f38a26436d6b0fe1f62484ad3853a3670be05a26e99a8` |
| 9 | `def` | [TrackedFiniteStateBoundary.path_state_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/trackedfinitestateboundary-path-state-path--1964717dafeb2b67ab5a309f.md) | 88 | `declaration-track:1964717dafeb2b67ab5a309ff956d98fad830e8b1a5c04415a36c4eb88cc1de7` |
| 10 | `theorem` | [TrackedFiniteStateBoundary.tracker_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/trackedfinitestateboundary-tracker-nonnegative--ae012cd7434ce7f08ca4d4ff.md) | 101 | `result-track:ae012cd7434ce7f08ca4d4ffcd1ab81583a31d4cc1ac247880a1fcfa513c4e76` |
| 11 | `structure` | [Objective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/objective--63d680ff35702d536b1c938d.md) | 110 | `declaration-track:63d680ff35702d536b1c938d3a319a893d75cda55839d1b73f3551e24d733fd4` |
| 12 | `structure` | [StrictImprovement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/strictimprovement--f8fc0c1cff31c9627a1f829e.md) | 114 | `declaration-track:f8fc0c1cff31c9627a1f829eef127ef2f6cc2adbae6dc64a034ade361608774c` |
| 13 | `def` | [optimize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/optimize--d63cd6d3c189b317eca1c03e.md) | 120 | `declaration-track:d63cd6d3c189b317eca1c03e8a80a741ba588193707eac1833e80294a27ef3d5` |
| 14 | `theorem` | [optimize_value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/optimize-value--3d32ea30d443279a225fcd14.md) | 126 | `result-track:3d32ea30d443279a225fcd14a2b4af3211a576ca5d80f2548be0c50ec4c8b254` |
| 15 | `theorem` | [optimize_cost_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/optimize-cost-lt--e067ffced4db48741190ba74.md) | 132 | `result-track:e067ffced4db48741190ba74b8e73baa0e102ada23bb100e4f244f4c3aafe5e7` |
| 16 | `inductive` | [Reaches](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/reaches--760d66b50e0157ca82e07f63.md) | 140 | `declaration-track:760d66b50e0157ca82e07f6324c2e9aed4837759c06155801581d29cb8436730` |
| 17 | `theorem` | [Reaches.cost_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CertifiedPathOptimization.lean/declarations/reaches-cost-le--f0dc02621c8240cbe8a12d0f.md) | 149 | `result-track:f0dc02621c8240cbe8a12d0f4e99efc1a39ff993a5b16ddd0f0e9e861d936c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
