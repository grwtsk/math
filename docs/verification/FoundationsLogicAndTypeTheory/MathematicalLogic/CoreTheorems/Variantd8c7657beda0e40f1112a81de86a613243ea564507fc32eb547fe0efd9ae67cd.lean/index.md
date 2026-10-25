# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoreTheorems.Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bddf9dd7a95a0a4e04675bc133963795dc4467",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bddf9dd7a95a0a4e04675bc133963795dc4467`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Noninterference` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [graphCut_node_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/graphcut-node-codes-injective--598c3bde9135e1fe2d24a509.md) | 20 | `result-track:598c3bde9135e1fe2d24a509ed35a90646780694c360ff7be8c06faa2bdecbd3` |
| 2 | `theorem` | [graphCut_edge_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/graphcut-edge-codes-injective--ebc3453d0fff590a8a1c1163.md) | 25 | `result-track:ebc3453d0fff590a8a1c1163bc14d4a9da972d2d6e2d22516eb96d9a8bd13cf3` |
| 3 | `theorem` | [graphCut_edgeClass_codes_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/graphcut-edgeclass-codes-injective--09cbd8d1527aae1d44103e6d.md) | 30 | `result-track:09cbd8d1527aae1d44103e6d7e45e98263c2b30e7f0f15d73fd2d2c657d984f4` |
| 4 | `theorem` | [arc_reverse_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/arc-reverse-involutive--0a1be1eed47c7427dda45aee.md) | 35 | `result-track:0a1be1eed47c7427dda45aeed5708bee736737dbdb169362f7b18974179fe141` |
| 5 | `def` | [eligible_arc_decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/eligible-arc-decidable--a5ab0c101079d4eddcbd95bc.md) | 40 | `declaration-track:a5ab0c101079d4eddcbd95bc192beb4ccc9ed01644e5b5deec96097c94cbf6fe` |
| 6 | `theorem` | [canonical_neighbors_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/canonical-neighbors-sound--a92958cd1f06806390a1e326.md) | 50 | `result-track:a92958cd1f06806390a1e3260a027d013d50ce7893d952939658302d59364da2` |
| 7 | `theorem` | [canonical_neighbors_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/canonical-neighbors-complete--03e1722a8de12086207e3ed6.md) | 63 | `result-track:03e1722a8de12086207e3ed6bfff6af24fde426b0e04908e45939a156f3d70b8` |
| 8 | `theorem` | [neighbor_enumeration_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/neighbor-enumeration-mem-iff--66bbdc4709f4b6b3dba7d093.md) | 76 | `result-track:66bbdc4709f4b6b3dba7d093bf431fda40380aa704d2942d9bc69c6529831d08` |
| 9 | `theorem` | [neighbor_enumeration_eq_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/neighbor-enumeration-eq-canonical--5eccb0b3070c807893b45a47.md) | 88 | `result-track:5eccb0b3070c807893b45a47525e452fdb78ef6a65a41bd5cf9b484b6c19c2b0` |
| 10 | `theorem` | [neighbor_enumeration_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/neighbor-enumeration-unique--d26c566f1a1882b3a1d11218.md) | 99 | `result-track:d26c566f1a1882b3a1d11218a3cad51d7753cf807ce4dd4bc54038965e88022b` |
| 11 | `theorem` | [authority_supports_required_capability](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/authority-supports-required-capability--d567ea4815c6328369909c24.md) | 108 | `result-track:d567ea4815c6328369909c2452ca6709548a7452f8eff1556f7e3ad6045652bb` |
| 12 | `theorem` | [supports_productKind_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/supports-productkind-eq--84552b6a9911504330986658.md) | 116 | `result-track:84552b6a9911504330986658f8bac1d3b34db5ae595a71e273bbff4e10065e1e` |
| 13 | `theorem` | [admitted_request_has_admissible_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/admitted-request-has-admissible-source--a6535d96b4eaf43cad4272f0.md) | 123 | `result-track:a6535d96b4eaf43cad4272f0bdbf84d7e42760a16f6efb7e73c7b99b98cf9a9e` |
| 14 | `theorem` | [admitted_request_required_target_present](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/admitted-request-required-target-present--def1c10ca2ced968a5dbba45.md) | 131 | `result-track:def1c10ca2ced968a5dbba45efbf0bf1dd864d61558a5d763ff3f8f51c193a46` |
| 15 | `theorem` | [accessMachine_encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/accessmachine-encode-injective--bd1361d794314a285355e438.md) | 140 | `result-track:bd1361d794314a285355e438b4cf72634aa91ce3c303fc314135465f189150eb` |
| 16 | `theorem` | [accessMachine_step_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/accessmachine-step-preserves-invariant--8b6592cd8f1775d019c742f3.md) | 150 | `result-track:8b6592cd8f1775d019c742f35c9007f193dd00269f98b4a92f561148386a4395` |
| 17 | `theorem` | [accessMachine_continue_advances_one_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/CoreTheorems/Variantd8c7657beda0e40f1112a81de86a613243ea564507fc32eb547fe0efd9ae67cd.lean/declarations/accessmachine-continue-advances-one-step--a1b18d0e4e6f4cc0d8521d95.md) | 164 | `result-track:a1b18d0e4e6f4cc0d8521d95381f43acdca6f0e353701ef2f59dba53dde95260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
