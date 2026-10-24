# Verification target: GRWTSK.Topology.GeneralTopology.DynamicalEntourage.Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d84d8c980de74766576c128155143b2aeb13a80",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d84d8c980de74766576c128155143b2aeb13a80`.

Source path: `GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions.SumProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage--1286819efab47af9d33cc044.md) | 48 | `declaration-track:1286819efab47af9d33cc044992c1af33f56995a5b2e12da87d9ea2fb517f273` |
| 2 | `lemma` | [dynEntourage_eq_inter_Ico](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-eq-inter-ico--d1036147b586f4ea7aec59d7.md) | 51 | `result-track:d1036147b586f4ea7aec59d7c24e1384f48f7385125a91ad5d9ae614da53c760` |
| 3 | `lemma` | [mem_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/mem-dynentourage--04574a43a21aae7d8080f1af.md) | 55 | `result-track:04574a43a21aae7d8080f1afc5ee57340a126e0107345ea2984d15518043fb13` |
| 4 | `lemma` | [mem_ball_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/mem-ball-dynentourage--6a66f5d1a83cab3c39a04fb2.md) | 59 | `result-track:6a66f5d1a83cab3c39a04fb2881290f2ec7e3089becbf082067254b098346aed` |
| 5 | `lemma` | [dynEntourage_mem_uniformity](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-mem-uniformity--eb63c5a6954acf2de2df9e1d.md) | 63 | `result-track:eb63c5a6954acf2de2df9e1d2547b438f2cfac63930538c9acfd0cbacafafa3f` |
| 6 | `lemma` | [ball_dynEntourage_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/ball-dynentourage-mem-nhds--746c8375745ad9ca21336b9e.md) | 71 | `result-track:746c8375745ad9ca21336b9ec437876f77e7d473ade73d5bc089f14945eabad6` |
| 7 | `lemma` | [idRel_subset_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/idrel-subset-dynentourage--1daa4188aaa54392b367bffc.md) | 79 | `result-track:1daa4188aaa54392b367bffcc2a93464cb41957976a4fc43b87821b3925fdd6d` |
| 8 | `lemma` | [_root_.IsSymmetricRel.dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/root-issymmetricrel-dynentourage--7336ac8900e7700131691910.md) | 84 | `result-track:7336ac8900e770013169191011bb7d9f13b3fc814536d6b0e5524c1e98f88807` |
| 9 | `lemma` | [dynEntourage_comp_subset](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-comp-subset--2c05a502f781bab3fa554937.md) | 95 | `result-track:2c05a502f781bab3fa554937a8c60c79e74bc1ba4b7e96465c95036b9f494a76` |
| 10 | `lemma` | [_root_.isOpen.dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/root-isopen-dynentourage--0fe17a37c374a1a19712266b.md) | 103 | `result-track:0fe17a37c374a1a19712266b525e77e1bfb5520ab83af175c4e7a82dac6990bc` |
| 11 | `lemma` | [dynEntourage_monotone](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-monotone--51a28c4eb19387add6ea3ed4.md) | 110 | `result-track:51a28c4eb19387add6ea3ed4e1ee88e751c423cd8298d6b47ad7b4bd5560dbf6` |
| 12 | `lemma` | [dynEntourage_antitone](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-antitone--7eb8a660b619c1bb24cf20ff.md) | 114 | `result-track:7eb8a660b619c1bb24cf20ff0d8904f51f7eba3f8855d19ef6d48415a7cbc401` |
| 13 | `lemma` | [dynEntourage_zero](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-zero--c1dda72a5ed56861ddb779cd.md) | 119 | `result-track:c1dda72a5ed56861ddb779cd70e322f94f62c7623288ac520959d46b9b05205f` |
| 14 | `lemma` | [dynEntourage_one](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-one--aaa9f7938264754180af68cc.md) | 123 | `result-track:aaa9f7938264754180af68cc3b1e7b6589028543562708b03b72b18a6d28bb03` |
| 15 | `lemma` | [dynEntourage_univ](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/dynentourage-univ--39dba3c44b60cfe473fde708.md) | 127 | `result-track:39dba3c44b60cfe473fde7082bc6a3b52325ebc4cf6bd0249101ec28fc5a0676` |
| 16 | `lemma` | [mem_ball_dynEntourage_comp](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/mem-ball-dynentourage-comp--eda9f971898b09ec8f8263af.md) | 130 | `result-track:eda9f971898b09ec8f8263aff2a69b0f8519691bda6b1908d19ab8c72b3d1220` |
| 17 | `lemma` | [_root_.Function.Semiconj.preimage_dynEntourage](../../../../../mathematics/Topology/GeneralTopology/DynamicalEntourage/Variantaabf22922c77dbd75cdbf064f2aa98574d35c1f584bcc7020801cd7b1cadfb97.lean/declarations/root-function-semiconj-preimage-dynentourage--50ee8cf7a36d5af602dd9c77.md) | 137 | `result-track:50ee8cf7a36d5af602dd9c77ffef971c02d6775df531f4c97fb1426f4db592a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
