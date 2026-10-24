# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2923c541eabc0e19b724302ee0078700cdf31ad5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2923c541eabc0e19b724302ee0078700cdf31ad5`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Hausdorff` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceMulOpposite](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/insttopologicalspacemulopposite--0232849ba5daca95f552e7e4.md) | 38 | `declaration-track:0232849ba5daca95f552e7e4e03ac8b1521bc9431d0403c72cf41b9781da0d3c` |
| 2 | `theorem` | [continuous_unop](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-unop--8361c7e252a8ed9f62b7826e.md) | 44 | `result-track:8361c7e252a8ed9f62b7826ed3dd75599fb81ff3cdd3fdeb71542b03d210564f` |
| 3 | `theorem` | [continuous_op](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-op--646a1d0ea25a6ce5b60a29f3.md) | 48 | `result-track:646a1d0ea25a6ce5b60a29f341cb6d25c150c39a7d3735ad5d734b88ee2a8910` |
| 4 | `def` | [opHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/ophomeomorph--cb6f0f6d2632f5561d89ba9c.md) | 53 | `declaration-track:cb6f0f6d2632f5561d89ba9c997a85daa607dadcd4645927e1d3eba31c05b972` |
| 5 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/instt2space--19f6f2cec8c9f9836885f1da.md) | 59 | `declaration-track:19f6f2cec8c9f9836885f1daadd3c69ff4f2a89a887b2d8d1796eed66f31cab4` |
| 6 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/instdiscretetopology--b35c1a0128ecf223669e4ee5.md) | 62 | `declaration-track:b35c1a0128ecf223669e4ee5a4ed79c286192c747bbc4e32163393e680620cbb` |
| 7 | `theorem` | [map_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/map-op-nhds--2ef0660f3c7f93810ac6381a.md) | 66 | `result-track:2ef0660f3c7f93810ac6381a4c91857fa8e39e454fbef84f6cee5ca8d0c9d762` |
| 8 | `theorem` | [map_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/map-unop-nhds--ad016f007620283c3f39e53c.md) | 70 | `result-track:ad016f007620283c3f39e53c271591c6bb7683802fb59e4f174becea2349c5e8` |
| 9 | `theorem` | [comap_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/comap-op-nhds--61101a3f23788899bd2990b7.md) | 74 | `result-track:61101a3f23788899bd2990b735ac8432ef0cf89b5dd441bec28a5bf3c34c4a36` |
| 10 | `theorem` | [comap_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/comap-unop-nhds--57e1d3c8f008009676481ed7.md) | 78 | `result-track:57e1d3c8f008009676481ed7bd4fccfa985561f6cc28ec8dcf176241e5f592f2` |
| 11 | `instance` | [instTopologicalSpaceUnits](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/insttopologicalspaceunits--af24a386dd0fabe7f419349a.md) | 92 | `declaration-track:af24a386dd0fabe7f419349a4c7242979a5fdf87e8ce082b2d4b6c2ed4b1d4a9` |
| 12 | `theorem` | [isInducing_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/isinducing-embedproduct--c8040a006a6648f0e3069163.md) | 96 | `result-track:c8040a006a6648f0e3069163748aa86a63f3f24569c09f317a0438530adaa5fa` |
| 13 | `theorem` | [isEmbedding_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/isembedding-embedproduct--3eb0a0ce7bda9c8f27a419da.md) | 101 | `result-track:3eb0a0ce7bda9c8f27a419da8115ce2bb02ebd0c044568598168bd41b64ab84f` |
| 14 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/instt2space--a28a1e2f0ade1668a03600ce.md) | 108 | `declaration-track:a28a1e2f0ade1668a03600ce131ccbe8e5b8f0fc21614c10155fd7fdf759981b` |
| 15 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/instdiscretetopology--4990296f6fd95fa7c1424d4f.md) | 111 | `declaration-track:4990296f6fd95fa7c1424d4fc2a4c2ae60745bf0409e34e54e68b459aacfdb7c` |
| 16 | `lemma` | [topology_eq_inf](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/topology-eq-inf--c90daf18d74edd10a3b1208b.md) | 114 | `result-track:c90daf18d74edd10a3b1208bdbd0e73347d2b828745023b7bb5e20fb2af1fcd9` |
| 17 | `lemma` | [isEmbedding_val_mk'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/isembedding-val-mk--feb77f6dff78a817033ab38d.md) | 124 | `result-track:feb77f6dff78a817033ab38dc798e6edefd325e30509fc30d1d9945f69bce50f` |
| 18 | `lemma` | [embedding_val_mk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/embedding-val-mk--a750407eeebaf2bfa25d5e79.md) | 141 | `result-track:a750407eeebaf2bfa25d5e79691838026a0767b6ea064175368854744a66c89a` |
| 19 | `theorem` | [continuous_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-embedproduct--0c5ee75e1118e2e2db063e76.md) | 146 | `result-track:0c5ee75e1118e2e2db063e7609736ae78381a0a51c5ca4973b9fb8f274bf43c1` |
| 20 | `theorem` | [continuous_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-val--8550293b968fdfbaf4128434.md) | 150 | `result-track:8550293b968fdfbaf4128434fa393616cf70fcac11585d377303b67cfbded462` |
| 21 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-iff--74bf545f2ad0b4dd1bb1f683.md) | 154 | `result-track:74bf545f2ad0b4dd1bb1f6839966eb2bca25da23cf1760cb558bb7f57611fc9c` |
| 22 | `theorem` | [continuous_coe_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantdf19956ea784d6cc65416e50f9530b5c249c55605d00d8f0a7202dd15f5348a8.lean/declarations/continuous-coe-inv--a6ecd3b17e9c0207a64bd0d4.md) | 161 | `result-track:a6ecd3b17e9c0207a64bd0d42db8fad17d1cc652a1425e0610d1cfa9c2495fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
