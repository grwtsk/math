# Verification target: GRWTSK.Topology.GeneralTopology.CompletelyRegular.Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aee4768bf286971cc440af6b5cd5a3da33d49f1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aee4768bf286971cc440af6b5cd5a3da33d49f1`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UrysohnsLemma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/completelyregularspace--411f7e54288eb16462250f45.md) | 62 | `declaration-track:411f7e54288eb16462250f4586348023acf359c9a035a4300df02ae5a0d05e3b` |
| 2 | `instance` | [CompletelyRegularSpace.instRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/completelyregularspace-instregularspace--86213050e1d0d9659c073599.md) | 66 | `declaration-track:86213050e1d0d9659c0735996ecaf55deb6b81d9aea95dffa4c5d18b31c7c521` |
| 3 | `instance` | [NormalSpace.instCompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/normalspace-instcompletelyregularspace--8be36ae247f6b31275ea3e46.md) | 75 | `declaration-track:8be36ae247f6b31275ea3e4643031e65f61505a3fe2db38c00eb97fc7e6a97b9` |
| 4 | `lemma` | [Topology.IsInducing.completelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/topology-isinducing-completelyregularspace--74cf4568d8ba70a5cce8fca0.md) | 91 | `result-track:74cf4568d8ba70a5cce8fca08f1a6ce49b270488de4aa11ba8489e8d377ba696` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/instance--3c86d8f8ffbfcf4dd3575862.md) | 103 | `declaration-track:3c86d8f8ffbfcf4dd357586208cfef36f7c1b3281dddeab7d81fbc1e3499db74` |
| 6 | `class` | [T35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/t35space--a20e02505bd84c50e3fda9c1.md) | 108 | `declaration-track:a20e02505bd84c50e3fda9c130ed875a632541ed70cd96158646edfcac6c1fd4` |
| 7 | `instance` | [T35Space.instT3space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/t35space-instt3space--4938ec0d0b21787ac92450c5.md) | 110 | `declaration-track:4938ec0d0b21787ac92450c5522f1f408445b359c371920699eefc29b5c0939c` |
| 8 | `instance` | [T4Space.instT35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/t4space-instt35space--e35c12dc486f9e274b6e993e.md) | 112 | `declaration-track:e35c12dc486f9e274b6e993e6eb463ae1c99ebec19ad7ad24ed1357b90068b40` |
| 9 | `lemma` | [Topology.IsEmbedding.t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/topology-isembedding-t35space--a3a1b02c93d2e3a0c13acf2b.md) | 114 | `result-track:a3a1b02c93d2e3a0c13acf2b5650a45b3c0cb469d93abad53d82bb2631bb80fd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/instance--22d37ca3eeef6e736e2af38c.md) | 119 | `declaration-track:22d37ca3eeef6e736e2af38c3655eb6ea7ac6fc04ddf8eed6dca450f8c526b97` |
| 11 | `lemma` | [separatesPoints_continuous_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/separatespoints-continuous-of-t35space--c28590ace1dc72d1d511364e.md) | 121 | `result-track:c28590ace1dc72d1d511364e24dc4acf231f6e7066caeed8cafb90ea71730a4e` |
| 12 | `lemma` | [separatesPoints_continuous_of_t35Space_Icc](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/separatespoints-continuous-of-t35space-icc--45c3d4fae4e84c2f9175de5b.md) | 131 | `result-track:45c3d4fae4e84c2f9175de5bd0bed207b963163733dbcbf81456fa3f3c805ebc` |
| 13 | `lemma` | [injective_stoneCechUnit_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant6ab66bc535ca0cc921c670c5d557dc44c72a64955a23da52cde2705c215f8755.lean/declarations/injective-stonecechunit-of-t35space--8524ec219829a8f386a0b39c.md) | 142 | `result-track:8524ec219829a8f386a0b39c55387228b6579e11a37380b93f374adf6396ea8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
