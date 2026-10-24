# Verification target: GRWTSK.Topology.GeneralTopology.Closeds.Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7994cce4e7da61c05119b1266e0fd9ed6f629fcb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7994cce4e7da61c05119b1266e0fd9ed6f629fcb`.

Source path: `GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Closeds.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/closeds-emetricspace--9da5f9f02cf44fcfe96f550e.md) | 52 | `declaration-track:9da5f9f02cf44fcfe96f550e2f072059e1183a8d7ea777555d3fbc3f07e31dac` |
| 2 | `theorem` | [continuous_infEdist_hausdorffEdist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/continuous-infedist-hausdorffedist--3e67a4b37152f8c01285c124.md) | 62 | `result-track:3e67a4b37152f8c01285c12435897c581f70a74fc9dd5d062e17764456cdaab7` |
| 3 | `theorem` | [isClosed_subsets_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/isclosed-subsets-of-isclosed--b119d817148fc9e51600fa40.md) | 80 | `result-track:b119d817148fc9e51600fa405a557ba64a96887ef5aa1b8fcc24b04996122a28` |
| 4 | `theorem` | [Closeds.edist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/closeds-edist-eq--87c528ae358983a950ed4420.md) | 97 | `result-track:87c528ae358983a950ed442064eb89e34fa45acd05e0e2df224ba8fcb9dd5361` |
| 5 | `instance` | [Closeds.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/closeds-completespace--7cf0c8cb228ef0879ddfc101.md) | 103 | `declaration-track:7cf0c8cb228ef0879ddfc101f4703e215051a924bfd4ccb703d862cfc81d8dd1` |
| 6 | `instance` | [Closeds.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/closeds-compactspace--4e33de1b6c6241d7f59c20e8.md) | 203 | `declaration-track:4e33de1b6c6241d7f59c20e82d2b9c4110c134b25b68c858eaebd577f400ebbd` |
| 7 | `instance` | [NonemptyCompacts.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-emetricspace--cd8e9adad37410d8c79a8b23.md) | 253 | `declaration-track:cd8e9adad37410d8c79a8b23ec1f3449e3778f6c3066f5d6a33789284c9b16f2` |
| 8 | `theorem` | [NonemptyCompacts.ToCloseds.uniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-tocloseds-uniformembedding--5b133d414d3bc778e399d4ba.md) | 264 | `result-track:5b133d414d3bc778e399d4bae14811bc00079f25db17524211876dce927d93ce` |
| 9 | `theorem` | [NonemptyCompacts.isClosed_in_closeds](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-isclosed-in-closeds--fc580779b6dc61de79bc5c0d.md) | 270 | `result-track:fc580779b6dc61de79bc5c0d2484f1146d3f4df498fc48804b7b8a148b9eec08` |
| 10 | `instance` | [NonemptyCompacts.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-completespace--271c59ca59a959ea3b0c3d5c.md) | 310 | `declaration-track:271c59ca59a959ea3b0c3d5c3f05f5358584aa1e34bad36817dfdc3e5eede10a` |
| 11 | `instance` | [NonemptyCompacts.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-compactspace--4f6a4694b9f30674db32e4c4.md) | 318 | `declaration-track:4f6a4694b9f30674db32e4c442c076ecad4087ca6a8a19c6a24d6ca8cf57848c` |
| 12 | `instance` | [NonemptyCompacts.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-secondcountabletopology--65703919bef350b79e3e04b3.md) | 326 | `declaration-track:65703919bef350b79e3e04b36849f448a2f650bf16dd35fde5dcf7bfe79867b2` |
| 13 | `instance` | [NonemptyCompacts.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-metricspace--11ddd9c8424cfba8a3feb8fe.md) | 416 | `declaration-track:11ddd9c8424cfba8a3feb8fed8f6233e3e8dd5c1755f7c2e2c4397559d83c00d` |
| 14 | `theorem` | [NonemptyCompacts.dist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/nonemptycompacts-dist-eq--c87091de23ca11aa52c660c7.md) | 423 | `result-track:c87091de23ca11aa52c660c7d8289f3006270d5d3308b5146983f2d28ced12a7` |
| 15 | `theorem` | [lipschitz_infDist_set](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/lipschitz-infdist-set--ad1f51dc0cd05f381e7e4211.md) | 428 | `result-track:ad1f51dc0cd05f381e7e4211120575e1614ef9853fb24d192e9023ba08fa4564` |
| 16 | `theorem` | [lipschitz_infDist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/lipschitz-infdist--6e563e52ef979ccd8d0dfa67.md) | 434 | `result-track:6e563e52ef979ccd8d0dfa6753b9961be1527f5052274fa414f91837bc82f0a4` |
| 17 | `theorem` | [uniformContinuous_infDist_Hausdorff_dist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/declarations/uniformcontinuous-infdist-hausdorff-dist--b0157bf026408dc7bd98426f.md) | 442 | `result-track:b0157bf026408dc7bd98426f19465d78e42d0622d8053b03224ff422cfad4918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
