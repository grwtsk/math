# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61d06c9c811662c404043286e0bb9ebaa072aee6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61d06c9c811662c404043286e0bb9ebaa072aee6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/topcat--18b2b8e18fbd0bf941583047.md) | 37 | `declaration-track:18b2b8e18fbd0bf941583047017032128964ddb7196cd0cc49b6545c288d1fc5` |
| 2 | `instance` | [bundledHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/bundledhom--3e6e3cde4f0ebb1af53abd6e.md) | 45 | `declaration-track:3e6e3cde4f0ebb1af53abd6ecdd4283a5da440b3cc9e665d105480e5dfbe9e70` |
| 3 | `instance` | [concreteCategory](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/concretecategory--ee3fed1d7df8cb5caec3e33b.md) | 55 | `declaration-track:ee3fed1d7df8cb5caec3e33b01cc4690ee91f2d4612c2c6df5247f074258042b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/instance--3cfbb7f962106b990cd2130f.md) | 59 | `declaration-track:3cfbb7f962106b990cd2130ffb00332c4ff9973c040f009ee6a860117ead0a35` |
| 5 | `instance` | [topologicalSpaceUnbundled](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/topologicalspaceunbundled--9daac688c6c41730f0ab7573.md) | 62 | `declaration-track:9daac688c6c41730f0ab75730413352ff0dce331c0f22f0c07a29cfe68eb213d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/instance--ca6e71aec4f6998c71f993d9.md) | 69 | `declaration-track:ca6e71aec4f6998c71f993d9f90cb8e4c54ed3d73eb46e43480b8d1c480ecc1a` |
| 7 | `theorem` | [id_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/id-app--45cee0bb8e7ae4a693dcc4c3.md) | 73 | `result-track:45cee0bb8e7ae4a693dcc4c3c820b2fcf5584fc5b627037dcc6c36c2fb0ddc3e` |
| 8 | `theorem` | [comp_app](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/comp-app--f3a5f45873d879fe196fc33e.md) | 78 | `result-track:f3a5f45873d879fe196fc33ec32d58a1f4e3ef1d6ab587526cf6bbc8ef182178` |
| 9 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/of--db5e008d029bfeec1dbbde86.md) | 84 | `declaration-track:db5e008d029bfeec1dbbde86aa1bed712b0e070547527e5f2f600bcaca91eae1` |
| 10 | `instance` | [topologicalSpace_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/topologicalspace-coe--15daad020585e351fccee39f.md) | 90 | `declaration-track:15daad020585e351fccee39fef3acf968c7c1dd053e20e91614bbbf26b3444a6` |
| 11 | `instance` | [topologicalSpace_forget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/topologicalspace-forget--1a7797fe1269f08390aae2f5.md) | 95 | `declaration-track:1a7797fe1269f08390aae2f5e95eb81e974431dbffc09726a2359a209cbd9d59` |
| 12 | `theorem` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/coe-of--a74c7e0e969deb74b0c0be1f.md) | 99 | `result-track:a74c7e0e969deb74b0c0be1f56e08ad2d4742a8438908cec654d6ad51059dcdb` |
| 13 | `instance` | [inhabited](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/inhabited--e8c2f2ed03273045be80906a.md) | 103 | `declaration-track:e8c2f2ed03273045be80906af53cb45bf60d3d3152f7c1667ad33620101b9f9d` |
| 14 | `lemma` | [hom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/hom-apply--46fff89ad3d820c1f7562b44.md) | 107 | `result-track:46fff89ad3d820c1f7562b449e68f508d381e2662c6acd9fdde12b4c4b3b9443` |
| 15 | `def` | [discrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/discrete--54de95ce8bd07f5c8fefbc90.md) | 111 | `declaration-track:54de95ce8bd07f5c8fefbc903f9f4fb294ac859e99c7d8b6420d2a9f3b6acf3b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/instance--847af64d6e6d844580976e79.md) | 117 | `declaration-track:847af64d6e6d844580976e79f009aab39c9b1b3e5b8e8f815b31f9098fdd115e` |
| 17 | `def` | [trivial](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/trivial--364b1072efe40f7fcbfcc4cf.md) | 121 | `declaration-track:364b1072efe40f7fcbfcc4cfa1ec09cb73180c5f9748041b3dd135355ad749dc` |
| 18 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/isoofhomeo--0c5fd86b75c86da26feec96a.md) | 129 | `declaration-track:0c5fd86b75c86da26feec96abb2c28a1ead88909a9d7f5ec71f68004ff214f7b` |
| 19 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/homeoofiso--72b3caae226fdba3f6f9d066.md) | 140 | `declaration-track:72b3caae226fdba3f6f9d0665fbc9b67a913d60fb6c12c2a867cc1369666f57a` |
| 20 | `theorem` | [of_isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/of-isoofhomeo--0217152625c17af8d9d8ced3.md) | 151 | `result-track:0217152625c17af8d9d8ced3d1b77de478c50377e89b950466fb3182b0a53171` |
| 21 | `theorem` | [of_homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/of-homeoofiso--6010cc4d9182cbb47a921ae0.md) | 160 | `result-track:6010cc4d9182cbb47a921ae08f0d0dd5af26d8f5569e6f7c127561897ff341ad` |
| 22 | `theorem` | [openEmbedding_iff_comp_isIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/openembedding-iff-comp-isiso--4c74ad70e18cde03b5859ff1.md) | 169 | `result-track:4c74ad70e18cde03b5859ff174055e543a9320f469fea7da9dc16aa8e5df4dee` |
| 23 | `theorem` | [openEmbedding_iff_comp_isIso'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/openembedding-iff-comp-isiso--74b9e556e0b5a73ed66a7387.md) | 176 | `result-track:74b9e556e0b5a73ed66a73873b7226c51dea039ee87ac15f7d1576d4ac9f2282` |
| 24 | `theorem` | [openEmbedding_iff_isIso_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/openembedding-iff-isiso-comp--dcb35fb0c3ddd3966d57869d.md) | 182 | `result-track:dcb35fb0c3ddd3966d57869d53ab5531c8d15f44ec6f4f819f3e90f35ceb2c0f` |
| 25 | `theorem` | [openEmbedding_iff_isIso_comp'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant509d6550ef60436797c509737aa7ee6fa7e60e6b6f5080d2f07a439bff340d22.lean/declarations/openembedding-iff-isiso-comp--4f0c9e245bd219e6294f5716.md) | 193 | `result-track:4f0c9e245bd219e6294f57167c2e266fcc6fc79036dec3d1035469867d49a4eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
