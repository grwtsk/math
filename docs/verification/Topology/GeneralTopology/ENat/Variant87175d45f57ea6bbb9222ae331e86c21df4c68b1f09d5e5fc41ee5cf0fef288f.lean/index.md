# Verification target: GRWTSK.Topology.GeneralTopology.ENat.Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b3cf7102181046af09371ff640b9d1c5b654a2f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b3cf7102181046af09371ff640b9d1c5b654a2f`.

Source path: `GRWTSK/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.WithBotTop` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pointwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/instance--48e9f3a0df79af11215fa7f1.md) | 34 | `declaration-track:48e9f3a0df79af11215fa7f18c855d522b4b02210da5281e64f3c9e8871f78a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/instance--67d094d8adef99e31a496123.md) | 36 | `declaration-track:67d094d8adef99e31a496123bc0d4d5db43d53b73d7b9f8b16837ffdf55c5406` |
| 3 | `theorem` | [range_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/range-natcast--c590022114cb5f794e9edac3.md) | 38 | `result-track:c590022114cb5f794e9edac368bbb9a3389d93bc13875ebf34cec34f8e38f5fc` |
| 4 | `theorem` | [isEmbedding_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/isembedding-natcast--6a86c7893df5cde2d523d60f.md) | 41 | `result-track:6a86c7893df5cde2d523d60f41d3f5f325df5dc538e3e65732d8264525b372ff` |
| 5 | `theorem` | [isOpenEmbedding_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/isopenembedding-natcast--2b7c93dab150650359be5529.md) | 47 | `result-track:2b7c93dab150650359be5529abcb9c9ccf4f60c4b9a0d0ad4953872de0d89a05` |
| 6 | `theorem` | [nhds_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/nhds-natcast--d252c03fea771347509dbb46.md) | 50 | `result-track:d252c03fea771347509dbb465a3c69ad96926cd1007518b1509e05a6b29779b4` |
| 7 | `theorem` | [nhds_eq_pure](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/nhds-eq-pure--32d52d2dded4bbcd539543ab.md) | 54 | `result-track:32d52d2dded4bbcd539543ab4449749ba65d7fa8a6772098ea6eaaf55d394989` |
| 8 | `theorem` | [isOpen_singleton](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/isopen-singleton--80d9a34c66c91e8c7e1f1d2c.md) | 58 | `result-track:80d9a34c66c91e8c7e1f1d2cfa4ee3997f3283ed1ab48ddb50c0ad94f19feb44` |
| 9 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/mem-nhds-iff--b2d60afca2336025101f21f6.md) | 61 | `result-track:b2d60afca2336025101f21f6b4401ca284eb3ad2c276f8c24a8727aafdb6bb58` |
| 10 | `theorem` | [mem_nhds_natCast_iff](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/mem-nhds-natcast-iff--70b75d76ce1e101365033b3e.md) | 64 | `result-track:70b75d76ce1e101365033b3e7d90c522612e222453f6361f472305cec697edb0` |
| 11 | `theorem` | [tendsto_nhds_top_iff_natCast_lt](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/tendsto-nhds-top-iff-natcast-lt--16ae7781b751f1ecf992d151.md) | 67 | `result-track:16ae7781b751f1ecf992d151bd5fead023ccd835f52707247ba0cf6197cfcb5c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/instance--de3b93219beca7bb14c4e693.md) | 72 | `declaration-track:de3b93219beca7bb14c4e69349932b415cdf650545d1fd8b34c7f7d0cb2b54b9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/instance--79d3ae69830a65c44e6c6cf0.md) | 79 | `declaration-track:79d3ae69830a65c44e6c6cf07bdd4763b780116c51dd1c4bc11198d2cb918bba` |
| 14 | `theorem` | [continuousAt_sub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/continuousat-sub--e7376c5bc0867b2fc0b4eb8d.md) | 96 | `result-track:e7376c5bc0867b2fc0b4eb8df17aedc4177b7d4917422e25ef8ab158e955c1fb` |
| 15 | `theorem` | [Filter.Tendsto.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/filter-tendsto-enatsub--57a0b436b04fe0037d034ffc.md) | 111 | `result-track:57a0b436b04fe0037d034ffc36c8ca2dbaafedb04a6793b7991bd248fe3fc2bc` |
| 16 | `theorem` | [ContinuousWithinAt.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/continuouswithinat-enatsub--c8f149d30ab68577d563605b.md) | 118 | `result-track:c8f149d30ab68577d563605b42b541a831ec16ade8b608198a6af6a81b290db8` |
| 17 | `theorem` | [ContinuousAt.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/continuousat-enatsub--1ddcbc77c68b6bb01d8d2282.md) | 123 | `result-track:1ddcbc77c68b6bb01d8d2282da9aa00795d1a0d2783fc37e1b08b23b26ec1f75` |
| 18 | `theorem` | [ContinuousOn.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/continuouson-enatsub--5dacca12b8e6e62d44d65542.md) | 128 | `result-track:5dacca12b8e6e62d44d65542ff5ca93d5b8dcdb91220145364b2893e3408678d` |
| 19 | `theorem` | [Continuous.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant87175d45f57ea6bbb9222ae331e86c21df4c68b1f09d5e5fc41ee5cf0fef288f.lean/declarations/continuous-enatsub--3ad27ee43a1f639e751fcc59.md) | 133 | `result-track:3ad27ee43a1f639e751fcc59c95281b9fed5e82b20753d3811eda14716d77e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
