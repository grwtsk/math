# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SurjectiveOnStalks.Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a250579080f050638e17995b571f66a9fdf7965f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a250579080f050638e17995b571f66a9fdf7965f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Surjective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.TensorProduct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SurjectiveOnStalks](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/surjectiveonstalks--ded7a4cfac358a2dea6125d7.md) | 41 | `declaration-track:ded7a4cfac358a2dea6125d7f6480be8129b7f6849d52cd472681876400f0d30` |
| 2 | `theorem` | [Scheme.Hom.stalkMap_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/scheme-hom-stalkmap-surjective--a2a5f5fbab107d5464c07b1e.md) | 44 | `result-track:a2a5f5fbab107d5464c07b1ee9d3ed91efccb9ca6cf9c4581fbf80f67b18b246` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/instance--5e10f1080f80fa940fa4497f.md) | 50 | `declaration-track:5e10f1080f80fa940fa4497fe785f31891259bc9dc212a642e6f4710e6a77538` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/instance--b803d4c3bfb808ede3ffed79.md) | 53 | `declaration-track:b803d4c3bfb808ede3ffed798d646d06f08a418ef73f50d5268bae34d9c0f0cf` |
| 5 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/comp--d1e58eeb062dc0f01dbc9af3.md) | 60 | `declaration-track:d1e58eeb062dc0f01dbc9af3c75017c5eb7f10d09aa5d3f413da9040d8458ea6` |
| 6 | `lemma` | [eq_stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/eq-stalkwise--9caed81dd37b31f2c69550f5.md) | 64 | `result-track:9caed81dd37b31f2c69550f5df3b9c4334071460c9377411035def3fcedff382` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/instance--dacddfbdbf9521d54b400a6a.md) | 68 | `declaration-track:dacddfbdbf9521d54b400a6a48fb5908a9accd1b70923b10efa24f8132b2f31a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/instance--2d7f0adc8029eb3e1afa3bd1.md) | 71 | `declaration-track:2d7f0adc8029eb3e1afa3bd1878c579657800a5b24f245ccd8933099c68c1dae` |
| 9 | `lemma` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/spec-iff--e18d636f59e7663505025238.md) | 74 | `result-track:e18d636f59e76635050252380868e420af2638de4ef76befce926071084df395` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/instance--a8238b3e542c35f7c2e9c0a7.md) | 79 | `declaration-track:a8238b3e542c35f7c2e9c0a7d2a0435bbd304718cc236eeb4f386f08a2fd8e87` |
| 11 | `lemma` | [iff_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/iff-of-isaffine--2c30789a68000ac2bf2056d9.md) | 83 | `result-track:2c30789a68000ac2bf2056d940035a630a47694bf481168b3839933eea5bef67` |
| 12 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/of-comp--0758a3a19381653dc3fb072e.md) | 87 | `result-track:0758a3a19381653dc3fb072e83a12131ea001adf006e8db1817cfd0b3a937456` |
| 13 | `instance` | [stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/stableunderbasechange--c5eb754c1e3cfd9572b44769.md) | 93 | `declaration-track:c5eb754c1e3cfd9572b44769ca80ebb756bb9cbac07976a9bbdc05b40b133942` |
| 14 | `lemma` | [mono_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/mono-of-injective--445b22a2d6ba30595a2477ec.md) | 102 | `result-track:445b22a2d6ba30595a2477ec2de218aa14dd3ec3328639500ac4f2ca9eff79a8` |
| 15 | `lemma` | [isEmbedding_pullback](../../../../../mathematics/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/declarations/isembedding-pullback--ab7de1f050e9909cd6cadb7b.md) | 111 | `result-track:ab7de1f050e9909cd6cadb7ba3afa9ecc0792b9940f2969c7f415f8d0dbe6171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
