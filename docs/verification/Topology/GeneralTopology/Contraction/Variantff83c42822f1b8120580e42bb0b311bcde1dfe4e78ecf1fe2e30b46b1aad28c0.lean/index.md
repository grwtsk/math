# Verification target: GRWTSK.Topology.GeneralTopology.Contraction.Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8832c4d41d55e98007937570871d54623c676088",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8832c4d41d55e98007937570871d54623c676088`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PerturbationKind](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/perturbationkind--b7603069951f7873d9874996.md) | 28 | `declaration-track:b7603069951f7873d9874996f92b62be61b352c3f9395f4e4922709cd4b4eead` |
| 2 | `structure` | [PerturbationMagnitude](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/perturbationmagnitude--0354cb8386152c1218e65d1a.md) | 39 | `declaration-track:0354cb8386152c1218e65d1a6f5905fd4f18cbf51bbf5ba3a46c44adfae882d1` |
| 3 | `structure` | [ContractionCertificate](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/contractioncertificate--179cf3c4abfea5d4b9e972a4.md) | 47 | `declaration-track:179cf3c4abfea5d4b9e972a40f6fc6a11bc0455a9a78e10ac658ca18c24d0cba` |
| 4 | `theorem` | [region_isComplete](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/region-iscomplete--9ae10cf52636766064cf1463.md) | 66 | `result-track:9ae10cf52636766064cf1463947c1c27ec8be556e5a6a47b2642367c0a1aaa96` |
| 5 | `def` | [regionStep](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/regionstep--e63dd44d165da7d05f46bad0.md) | 71 | `declaration-track:e63dd44d165da7d05f46bad0a5a7d28b733ef4e54d1d6feea60b015edacd95a1` |
| 6 | `theorem` | [one_sub_factor_positive](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/one-sub-factor-positive--acd26e824980c24aa354feac.md) | 77 | `result-track:acd26e824980c24aa354feac5ecb67b05e1222e6bab64c48e599c4ee95cba90c` |
| 7 | `def` | [regionFixedPoint](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/regionfixedpoint--83ac840584006f3e60f720d9.md) | 82 | `declaration-track:83ac840584006f3e60f720d96b99926976d27edcaeb88223e0c2ab8f2074b860` |
| 8 | `theorem` | [regionFixedPoint_fixed](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/regionfixedpoint-fixed--ed431536f00e54b6fa909419.md) | 91 | `result-track:ed431536f00e54b6fa909419438e3e755ded618eeaff67e408f746f6a430ace6` |
| 9 | `def` | [certifiedFixedPoint](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/certifiedfixedpoint--f9c5f347d946fcfca8f147f3.md) | 101 | `declaration-track:f9c5f347d946fcfca8f147f3950dc61cf46740a2343c6c72867f618152dbfa71` |
| 10 | `theorem` | [certifiedFixedPoint_mem_region](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/certifiedfixedpoint-mem-region--60a3689a3430c70c3e19bb29.md) | 116 | `result-track:60a3689a3430c70c3e19bb2980e2079b4cda915192f52cba16876be1143c060d` |
| 11 | `theorem` | [fixedPoint_unique_in_region](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/fixedpoint-unique-in-region--6da338faf84a60acdc5f29de.md) | 122 | `result-track:6da338faf84a60acdc5f29de254bd615845c68b387e0428576327c5df65a4d98` |
| 12 | `theorem` | [tendsto_iterates](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/tendsto-iterates--d41e97dfcd02b3781cf4a52f.md) | 154 | `result-track:d41e97dfcd02b3781cf4a52fa8b7173682aa46001eccc531e1a5e336c30e72fa` |
| 13 | `theorem` | [iterate_distance_le](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/iterate-distance-le--1f0f11261961c15051ffb6d7.md) | 169 | `result-track:1f0f11261961c15051ffb6d78157447b5ea7ccd0bcfb30a3859fc59cedda0b15` |
| 14 | `structure` | [PointwiseOperatorPerturbationOn](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/pointwiseoperatorperturbationon--36f12d496d710f710db4247a.md) | 193 | `declaration-track:36f12d496d710f710db4247a21d99bfe2d8e3f1dd46e504b70986c488ee57628` |
| 15 | `theorem` | [fixedPoint_displacement_le](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/declarations/fixedpoint-displacement-le--967a5d66597b33af01138318.md) | 212 | `result-track:967a5d66597b33af0113831817ccf468e1b98f1db1bec900d16f6d0c99957dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
