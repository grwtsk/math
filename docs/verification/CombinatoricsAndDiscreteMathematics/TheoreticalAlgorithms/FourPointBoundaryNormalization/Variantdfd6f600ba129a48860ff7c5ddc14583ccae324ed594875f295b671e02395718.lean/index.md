# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FourPointBoundaryNormalization.Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b61843c4a3e9c5b837686fee0b6c4b87aab0647",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b61843c4a3e9c5b837686fee0b6c4b87aab0647`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.SpinDivisibilityCover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/boundarypoint--04107001b8929c11d1175744.md) | 15 | `declaration-track:04107001b8929c11d11757441994d325a8cf25b01e17fd99269f04c8d44e93c4` |
| 2 | `inductive` | [BoundaryRole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/boundaryrole--be871fc3b65efcaa5b987e06.md) | 22 | `declaration-track:be871fc3b65efcaa5b987e068c128b64ac36889633af57a2d705142513fc7830` |
| 3 | `structure` | [MarkedBoundaryRole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/markedboundaryrole--c43eec0b6e0d9d074b31284c.md) | 29 | `declaration-track:c43eec0b6e0d9d074b31284c4652073985d515b77b22813fc333e2bd3482bc1a` |
| 4 | `structure` | [DirectedBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/directedboundary--cc5eaa451bad0471574c92f6.md) | 34 | `declaration-track:cc5eaa451bad0471574c92f60a3d7bba00c333d2cc93fc72b3917fb989092c4b` |
| 5 | `def` | [allBoundaryPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/allboundarypoints--7a55e6e60a85d304b8736171.md) | 40 | `declaration-track:7a55e6e60a85d304b8736171a9b1b856600cffe1020d494cae62f09b00cdbc5d` |
| 6 | `def` | [visibleBoundaryRoles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/visibleboundaryroles--7955afe7321e0da923d5887d.md) | 43 | `declaration-track:7955afe7321e0da923d5887d87192a55ae91b455b40ce68d1042829ad54877de` |
| 7 | `def` | [directedAdditiveBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/directedadditiveboundary--d57a619f79a30bc6ed3782e2.md) | 50 | `declaration-track:d57a619f79a30bc6ed3782e2f9d696bee98f36d9f03ff8a61185d1a2c8359419` |
| 8 | `def` | [directedMultiplicativeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/directedmultiplicativeboundary--7fb53349d530743c7860506e.md) | 55 | `declaration-track:7fb53349d530743c7860506e575ab0a9add284763070c6748504288c94985340` |
| 9 | `structure` | [FourPointBoundarySurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/fourpointboundarysurface--cd2f67b827a004f75b07751e.md) | 60 | `declaration-track:cd2f67b827a004f75b07751e293e2aa85fd03ff3e4e43be6dfec50dea65ae1e1` |
| 10 | `def` | [canonicalSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonicalsurface--89ec7114f1001d44a50c871a.md) | 70 | `declaration-track:89ec7114f1001d44a50c871a55d580210a2a3feebec3c5ff8076a917b1654dda` |
| 11 | `inductive` | [ZeroLikeEventKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/zerolikeeventkind--76dcadb09197f4b943016644.md) | 79 | `declaration-track:76dcadb09197f4b9430166445bdacd05aaaec2db8a7df1bc2a9b1026d395e63f` |
| 12 | `inductive` | [ZeroLikeRouting](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/zerolikerouting--7e664ccf43e954bba0ba771e.md) | 87 | `declaration-track:7e664ccf43e954bba0ba771e13feddc64ba70d6c38ca356aa811b8b91b71f3b4` |
| 13 | `def` | [residualComplexPairedObstruction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/residualcomplexpairedobstruction--e1283106ca2e881317354d1e.md) | 92 | `declaration-track:e1283106ca2e881317354d1e596b753a0140e7cec2da0245b7dc031afae14cc9` |
| 14 | `def` | [routeZeroLikeEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/routezerolikeevent--4c9e0de3358454efdaef4c14.md) | 95 | `declaration-track:4c9e0de3358454efdaef4c1443a0f8cc0c2a877eec82ee6cdde11378b6b3b3e7` |
| 15 | `theorem` | [allBoundaryPoints_distinct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/allboundarypoints-distinct--bbb030bb6dcb4cb2b9bd3be1.md) | 107 | `result-track:bbb030bb6dcb4cb2b9bd3be1794cb478ce890e6edd8848fa3d4fc3f2d9aa6749` |
| 16 | `theorem` | [canonical_surface_has_four_points](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonical-surface-has-four-points--f73b6eee9ea6433013a40ce4.md) | 111 | `result-track:f73b6eee9ea6433013a40ce4bca358011499f76cd762313b5d596e4077210072` |
| 17 | `theorem` | [canonical_surface_additive_boundary_directed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonical-surface-additive-boundary-directed--b602e1b3b87678169f2da9fe.md) | 115 | `result-track:b602e1b3b87678169f2da9fe68ccc342efe25c89ebcf8e38fd42cb4a56e4205c` |
| 18 | `theorem` | [canonical_surface_multiplicative_boundary_directed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonical-surface-multiplicative-boundary-directed--db704195f721c59c519b177c.md) | 120 | `result-track:db704195f721c59c519b177c279e178852cca99d7cc5030cafceaf8e566bd3e8` |
| 19 | `theorem` | [canonical_surface_midpoint_is_half](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonical-surface-midpoint-is-half--beecb059933f8a280dc004f5.md) | 125 | `result-track:beecb059933f8a280dc004f5d53b811ca867b7987543406747bc0d5ef7dd784c` |
| 20 | `theorem` | [canonical_surface_is_not_theorem_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/canonical-surface-is-not-theorem-claim--3574e903621cdc91b38ab7e7.md) | 129 | `result-track:3574e903621cdc91b38ab7e7aa8cc266d62b2bea6cc6b01f7a16dc8fd3c940c9` |
| 21 | `theorem` | [route_unclassified_zero_like_to_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/route-unclassified-zero-like-to-residue--86c2d13e019bd72c38cacf90.md) | 133 | `result-track:86c2d13e019bd72c38cacf902348e9cbafa57ff88cef161606c9aabab2356ac8` |
| 22 | `theorem` | [unclassified_zero_like_is_not_zero_location_evidence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FourPointBoundaryNormalization/Variantdfd6f600ba129a48860ff7c5ddc14583ccae324ed594875f295b671e02395718.lean/declarations/unclassified-zero-like-is-not-zero-location-evidence--af010d3fa3f7b57ea1a80f45.md) | 138 | `result-track:af010d3fa3f7b57ea1a80f45a300ca6faad0910f3b4a802064c583636e4a55d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
