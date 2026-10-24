# Verification target: GRWTSK.Topology.GeneralTopology.Log1p.Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5`.

Source path: `GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log1pTaylorCoeffs](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1ptaylorcoeffs--08f73a33afc63661ca76a4ee.md) | 58 | `declaration-track:08f73a33afc63661ca76a4ee9425a6385d6a4c4850a8dc09238266776c542f9c` |
| 2 | `def` | [log1pTaylorPoly](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1ptaylorpoly--3c172b29e5773bd4e6cff2ea.md) | 64 | `declaration-track:3c172b29e5773bd4e6cff2eab4ffa0f8ea9cf20ca9eefc1afcfc5dd61180d233` |
| 3 | `def` | [log1pLagrangeRemainder](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1plagrangeremainder--357f28f023a41df5de9aeb45.md) | 74 | `declaration-track:357f28f023a41df5de9aeb45e1d1c242ac8c0bab96df75ce015319ae84ef42f0` |
| 4 | `theorem` | [log1pLagrangeRemainder_nonneg](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1plagrangeremainder-nonneg--cdc194851fb8b86cbddbf7fd.md) | 85 | `result-track:cdc194851fb8b86cbddbf7fd7f095d6e3e5f9fb71029411e7960ff34bc5e1e52` |
| 5 | `def` | [tmLog1p](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/tmlog1p--7973e8f44d6b756ac4b7bd07.md) | 104 | `declaration-track:7973e8f44d6b756ac4b7bd07d785594b277dfa7ec24d6a7c9f06d87d37a43db9` |
| 6 | `theorem` | [iteratedDeriv_log1p](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/iteratedderiv-log1p--81836f31c508cea11ddcbedf.md) | 124 | `result-track:81836f31c508cea11ddcbedf99770cb07f22afda542446429282a8141c09c3ed` |
| 7 | `theorem` | [iteratedDeriv_log1p_zero](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/iteratedderiv-log1p-zero--9a87d7b6aeaa5531c8c39f89.md) | 135 | `result-track:9a87d7b6aeaa5531c8c39f89f979232e136b8a70183f757175e8236670b915d2` |
| 8 | `theorem` | [log1pTaylorCoeffs_eq_deriv](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1ptaylorcoeffs-eq-deriv--255f71cde72803a61a7f6ea2.md) | 143 | `result-track:255f71cde72803a61a7f6ea2261ca8d3b2006c0c8144594410e55d7a70e0f990` |
| 9 | `theorem` | [log1pTaylorPoly_aeval_eq_sum](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1ptaylorpoly-aeval-eq-sum--73c9cac3e77ea1de1205b4d7.md) | 172 | `result-track:73c9cac3e77ea1de1205b4d778f505b1c76a79f0faa72abc1f1153005b78d47d` |
| 10 | `theorem` | [log1p_taylor_remainder_bound](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/log1p-taylor-remainder-bound--53c94e445494ef5639194d7a.md) | 197 | `result-track:53c94e445494ef5639194d7a9b0949f5de9868879f4a899df2a8a0191ea218a1` |
| 11 | `theorem` | [tmLog1p_correct](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/tmlog1p-correct--fdc8130fb797e221ebfab56f.md) | 303 | `result-track:fdc8130fb797e221ebfab56fe2203016f1c50f9f44fc8332d47878071c27d9bc` |
| 12 | `def` | [symmetricLogCombination](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/symmetriclogcombination--92c16bd2cadfa8d39511057c.md) | 356 | `declaration-track:92c16bd2cadfa8d39511057cf45440a9c08ca3867f1c0bee6f9de44df29a9990` |
| 13 | `theorem` | [symmetricLogCombination_alt](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/symmetriclogcombination-alt--b9408aed99ebc65ff70a574d.md) | 360 | `result-track:b9408aed99ebc65ff70a574d45e469a8db2b70fdb6fc215df6594ae5d0df43b5` |
| 14 | `theorem` | [tendsto_log_one_add_div_self](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/tendsto-log-one-add-div-self--6d278af9ab8ce157bb53d986.md) | 378 | `result-track:6d278af9ab8ce157bb53d98601522a47f69820c6144a0912b50d1c9e3582c617` |
| 15 | `theorem` | [tendsto_log_one_sub_div_self](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/tendsto-log-one-sub-div-self--afbf7210b14e4ffee9f10d46.md) | 392 | `result-track:afbf7210b14e4ffee9f10d46495c61dd927a019489a451ce34d043865bb305e5` |
| 16 | `theorem` | [tendsto_log_one_sub_sq_div_sq](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/tendsto-log-one-sub-sq-div-sq--b923c8682fdfdabe6af5ff09.md) | 406 | `result-track:b923c8682fdfdabe6af5ff0959964d3a0f2cf3ed1fc6c5eae040900232a1010c` |
| 17 | `theorem` | [symmetricLogCombination_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/symmetriclogcombination-tendsto-one--ac9fca2b8fcc6eeb78c7def0.md) | 437 | `result-track:ac9fca2b8fcc6eeb78c7def0f26769b3e3e135964da83e2e5421de07138d8d5a` |
| 18 | `theorem` | [symmetricLogCombination_bounded](../../../../../mathematics/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/declarations/symmetriclogcombination-bounded--90e01d47e423d3de6b80c655.md) | 490 | `result-track:90e01d47e423d3de6b80c655ece812f97716819ce912753ac57ca4b2235c18b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
