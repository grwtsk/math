# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88273f8fb43164020b433bef976c38193aa60069",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88273f8fb43164020b433bef976c38193aa60069`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpaceMulOpposite](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/insttopologicalspacemulopposite--ed6832407c334fe4ec394ec7.md) | 40 | `declaration-track:ed6832407c334fe4ec394ec70cde393ccb9b578473fa60674c6f7b042746ed76` |
| 2 | `theorem` | [continuous_unop](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-unop--654d9068c416d7392df03801.md) | 46 | `result-track:654d9068c416d7392df0380169bd74afa93a12bfa5a9cca6c0a606ef28029d66` |
| 3 | `theorem` | [continuous_op](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-op--8e28ef0e64bd6a9442083874.md) | 52 | `result-track:8e28ef0e64bd6a9442083874193272f725fd3ce351403481423d3c7e9451fad8` |
| 4 | `def` | [opHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/ophomeomorph--7f111fda09ef0bf504a9878a.md) | 59 | `declaration-track:7f111fda09ef0bf504a9878aee7be106a195ad3598cc478b2e8ad1f1cde77dae` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/instance--5ea61fd0e42b811f67df6169.md) | 67 | `declaration-track:5ea61fd0e42b811f67df6169f8de8e73d8ec1bff4282eabf54dcf4b4dc8c78d5` |
| 6 | `theorem` | [map_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/map-op-nhds--202123725d5d31cf70e62701.md) | 71 | `result-track:202123725d5d31cf70e62701eb002830dfa44fac03b06a882a46a93db7875707` |
| 7 | `theorem` | [map_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/map-unop-nhds--27c1765d7a45812d2e10bb51.md) | 77 | `result-track:27c1765d7a45812d2e10bb5158763a61d31e3d7199143a91f1b43d6d1a61229e` |
| 8 | `theorem` | [comap_op_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/comap-op-nhds--0c5598bec65a01c4a27d926a.md) | 83 | `result-track:0c5598bec65a01c4a27d926a2a752d0ed43df1478595052e98c0dfd0005c3801` |
| 9 | `theorem` | [comap_unop_nhds](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/comap-unop-nhds--11b36d10ce56b8ead64cf2b1.md) | 89 | `result-track:11b36d10ce56b8ead64cf2b1eafc68d3e614d6b72fdc1b13a0dc54ce8a6e51a1` |
| 10 | `instance` | [instTopologicalSpaceUnits](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/insttopologicalspaceunits--f524e850ede84e59bb6deb09.md) | 105 | `declaration-track:f524e850ede84e59bb6deb091c8be9460a93c330df8fcb70a1573eb66a59f6da` |
| 11 | `theorem` | [inducing_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/inducing-embedproduct--e742dc044a9cc197743b8608.md) | 109 | `result-track:e742dc044a9cc197743b8608fb56e6a5cef947db60fec354c8b0ce284a09607d` |
| 12 | `theorem` | [embedding_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/embedding-embedproduct--3c3911c973901149a178018d.md) | 115 | `result-track:3c3911c973901149a178018d3dec1a04e66dd4eeb34d470da1364c48ccab5473` |
| 13 | `lemma` | [topology_eq_inf](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/topology-eq-inf--dcfee570371d8fb86b33f03d.md) | 120 | `result-track:dcfee570371d8fb86b33f03d32b3fe09c4c725750c884f0b0908ef78e5d65d29` |
| 14 | `lemma` | [embedding_val_mk'](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/embedding-val-mk--2cb3e7859ef8a8f2b88d780e.md) | 132 | `result-track:2cb3e7859ef8a8f2b88d780e9360be844f04f21f6c0dcb3514cd03945dec32bd` |
| 15 | `lemma` | [embedding_val_mk](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/embedding-val-mk--9a9a8c2d3ddabcb7b9895a33.md) | 146 | `result-track:9a9a8c2d3ddabcb7b9895a33ef21322fa4ee1ec28df2fa20a1ed8379ad7c969a` |
| 16 | `theorem` | [continuous_embedProduct](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-embedproduct--9b58e64a7110816789bc6460.md) | 153 | `result-track:9b58e64a7110816789bc6460e83f5446a4a225a88c156375111d877ea4fdf7d2` |
| 17 | `theorem` | [continuous_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-val--15ec24e9bcd03d8431d0cb41.md) | 159 | `result-track:15ec24e9bcd03d8431d0cb41b930d950816c90ef91371b28e04837b5b0c5d745` |
| 18 | `theorem` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-iff--3c4d62d49ae12f6c28cf395a.md) | 165 | `result-track:3c4d62d49ae12f6c28cf395ac578b24615edc787a91931cfeffbea4671699c2c` |
| 19 | `theorem` | [continuous_coe_inv](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variantacbf06ed7eaaafe8e8c8e9e7193b913decc2cce53aabf29b108da0d8b9b64d91.lean/declarations/continuous-coe-inv--41d4116ce7a4ec4885ba1cf4.md) | 174 | `result-track:41d4116ce7a4ec4885ba1cf43dda29ad1bc314e81f16d065b31ca23216078aba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
