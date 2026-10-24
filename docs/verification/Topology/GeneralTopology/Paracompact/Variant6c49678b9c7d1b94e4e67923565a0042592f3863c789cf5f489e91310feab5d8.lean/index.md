# Verification target: GRWTSK.Topology.GeneralTopology.Paracompact.Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38be5f3fa4708dbebb99bae63054faca56658191",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38be5f3fa4708dbebb99bae63054faca56658191`.

Source path: `GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ParacompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/paracompactspace--b2500a1a9a1e61639839daa9.md) | 61 | `declaration-track:b2500a1a9a1e61639839daa90709c933795069343ab271d1146b151e834702f4` |
| 2 | `theorem` | [precise_refinement](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/precise-refinement--4fd40d74afbcb554ecb73500.md) | 73 | `result-track:4fd40d74afbcb554ecb7350079d9b77990264f332a88a8395d5d3116cfdea5a7` |
| 3 | `theorem` | [precise_refinement_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/precise-refinement-set--772e31425250bd760f949d27.md) | 99 | `result-track:772e31425250bd760f949d27a0820e49e95f4771c7f28ff7c212de130d4c4e2f` |
| 4 | `theorem` | [ClosedEmbedding.paracompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/closedembedding-paracompactspace--cff17dae81de586ab87b8c62.md) | 115 | `result-track:cff17dae81de586ab87b8c62089c9dbd74e2cf41f1a045b9a87f4741a3cda9b4` |
| 5 | `theorem` | [Homeomorph.paracompactSpace_iff](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/homeomorph-paracompactspace-iff--3f4e9e3a91a4e861d0a3fff7.md) | 127 | `result-track:3f4e9e3a91a4e861d0a3fff74548448ee90e50b1a3be2bd1a304442602b04aff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/instance--e2a41da8e0e5097a8ed52f26.md) | 136 | `declaration-track:e2a41da8e0e5097a8ed52f26c55935a4e20ff03fdd9835b7f12a8297e220f419` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/instance--8c305cab04944f806ca02b91.md) | 162 | `declaration-track:8c305cab04944f806ca02b91388a46a573f9c189e4caf93dc6e7b4b18418ef6c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/instance--7f3a4c16dea4c73034afd6fe.md) | 167 | `declaration-track:7f3a4c16dea4c73034afd6fe6fbe302dca3e55628472b0dc44e8ab5600191d20` |
| 9 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis-set--52ce885b345775dce234b51c.md) | 196 | `result-track:52ce885b345775dce234b51c6ac8e126728972baba678ea7c3fa25fccad1f9c0` |
| 10 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis--d2352037d53b1cb8bcf0651c.md) | 266 | `result-track:d2352037d53b1cb8bcf0651c01fb36937549e882ec0dd1148e5e1fc6ec0e48ca` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/instance--99c10063a81f3e500b92d0ec.md) | 279 | `declaration-track:99c10063a81f3e500b92d0ecf4139521ca55b346b4e6876fca21eb2dc4feaa05` |
| 12 | `theorem` | [normal_of_paracompact_t2](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/declarations/normal-of-paracompact-t2--97f2323954ff39c4c94fb904.md) | 292 | `result-track:97f2323954ff39c4c94fb9041e81c563f40b6396b047b02c1b8abf48ed00cb43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
