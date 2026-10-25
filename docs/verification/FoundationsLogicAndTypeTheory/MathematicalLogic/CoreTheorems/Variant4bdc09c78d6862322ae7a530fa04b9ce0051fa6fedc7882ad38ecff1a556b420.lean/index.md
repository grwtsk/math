# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoreTheorems.Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cfa17d4280096d794a0c394b47e1d3c9f631d14",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cfa17d4280096d794a0c394b47e1d3c9f631d14`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Noninterference` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [graphCut_node_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/graphcut-node-codes-injective--d851192ccd1c1ffe6e1f7aa1.md) | 12 | `result-track:d851192ccd1c1ffe6e1f7aa163ffeaf2e2039bd0e34d14b745981cdb82dda128` |
| 2 | `theorem` | [graphCut_edge_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/graphcut-edge-codes-injective--a4222450797cc74cccd35f37.md) | 17 | `result-track:a4222450797cc74cccd35f3785de65fee8ec7e153bf14307340341315a9377eb` |
| 3 | `theorem` | [graphCut_edgeClass_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/graphcut-edgeclass-codes-injective--80c9abc763bd17133333348c.md) | 22 | `result-track:80c9abc763bd17133333348c219cb2ebd79cbd653a5f599ee6d49927dd00a66a` |
| 4 | `theorem` | [arc_reverse_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/arc-reverse-involutive--9142927d69b8c8ec342df5a9.md) | 27 | `result-track:9142927d69b8c8ec342df5a9158fb8a0072d97e750d06c81f8838789db860275` |
| 5 | `def` | [eligible_arc_decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/eligible-arc-decidable--49ba053dbb794f113a794af7.md) | 32 | `declaration-track:49ba053dbb794f113a794af761b3a5222c4ed1f18c6bb3fe46623544747ba352` |
| 6 | `theorem` | [canonical_neighbors_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/canonical-neighbors-sound--6ac0fc9e40b5b4ebabc47ff7.md) | 42 | `result-track:6ac0fc9e40b5b4ebabc47ff78960cc87ed42f4820f0777cc5c3d9f43a454ac13` |
| 7 | `theorem` | [canonical_neighbors_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/canonical-neighbors-complete--e85de4ea98c234e72f79baee.md) | 55 | `result-track:e85de4ea98c234e72f79baeea83c4df3cfd9e91b4587b7fc3f1da177f8ce4b6b` |
| 8 | `theorem` | [neighbor_enumeration_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/neighbor-enumeration-mem-iff--84ffcfcc2950ae7ee9ac4ead.md) | 68 | `result-track:84ffcfcc2950ae7ee9ac4eade5793222cd08de21dc8e948af647569e25712da9` |
| 9 | `theorem` | [neighbor_enumeration_eq_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/neighbor-enumeration-eq-canonical--a4356a9913ce9d08488eb4db.md) | 80 | `result-track:a4356a9913ce9d08488eb4db108ab8bd071f771e3a682aa0a713170af59d6274` |
| 10 | `theorem` | [neighbor_enumeration_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/neighbor-enumeration-unique--7ac272b46e780f4b76268e71.md) | 91 | `result-track:7ac272b46e780f4b76268e717ea2a830ea4641b3cacf9f18222f48e7e69bf5a4` |
| 11 | `theorem` | [authority_supports_required_capability](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/authority-supports-required-capability--76c92a222fae83eeadb3db88.md) | 100 | `result-track:76c92a222fae83eeadb3db8896def659a9db89321a859a1c71e69028c107dd56` |
| 12 | `theorem` | [supports_productKind_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/supports-productkind-eq--262233737067667c78d3eaf6.md) | 108 | `result-track:262233737067667c78d3eaf6aa0a3ffe7699990900d76337213a87d70c94b827` |
| 13 | `theorem` | [admitted_request_has_admissible_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/admitted-request-has-admissible-source--e468ffb3b77659ddc2d1bc5d.md) | 115 | `result-track:e468ffb3b77659ddc2d1bc5db10f96be05869aeea5158582de542163373d5dfe` |
| 14 | `theorem` | [admitted_request_required_target_present](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/admitted-request-required-target-present--8e4030a431d5f5951fa702a2.md) | 123 | `result-track:8e4030a431d5f5951fa702a2df8529b73344ca75a467c3a32ca638943666b0c4` |
| 15 | `theorem` | [accessMachine_encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/accessmachine-encode-injective--6b9fe235b44bc58ea529589d.md) | 132 | `result-track:6b9fe235b44bc58ea529589d4b68088db4aa263880dc3716fa528acdb2c77637` |
| 16 | `theorem` | [accessMachine_step_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/accessmachine-step-preserves-invariant--0da35758e1f90a85cee2e6e2.md) | 142 | `result-track:0da35758e1f90a85cee2e6e284ce5eccb12c7a7d82b7a052221ac125e7f4e443` |
| 17 | `theorem` | [accessMachine_continue_advances_one_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420.lean/declarations/accessmachine-continue-advances-one-step--b395892cfdf6e067f4f600e0.md) | 156 | `result-track:b395892cfdf6e067f4f600e0dfdaea4cf104615a6a4d4a7fadc740afa02bf72e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
