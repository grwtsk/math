# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cofinal.Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d314195b19228f7890f6c996d1dcfaea82f0a5de",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d314195b19228f7890f6c996d1dcfaea82f0a5de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Indexed` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsCofinal.of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-of-isempty--c8f2710f40e79762b0000a99.md) | 39 | `result-track:c8f2710f40e79762b0000a991f1b3fbfaf61f6e0a14add8852b4f6d1189dd694` |
| 2 | `theorem` | [isCofinal_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-empty-iff--af1a43acfb162b0505e01824.md) | 42 | `result-track:af1a43acfb162b0505e01824d031fab7be83660069a10f754390c1853005c908` |
| 3 | `theorem` | [IsCofinal.nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-nonempty--dcfd425112e0b41a23fb001e.md) | 46 | `result-track:dcfd425112e0b41a23fb001e5c241937abc5f5caa69765aa5bffb90c31b34c4c` |
| 4 | `theorem` | [isCofinal_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-singleton-iff--0ada9d161e02fbfd48e29129.md) | 51 | `result-track:0ada9d161e02fbfd48e29129f8bab8138bd57c64d3b4e55c5ce3fa30389a8d44` |
| 5 | `theorem` | [IsCofinal.singleton_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-singleton-top--ce47a629b5a5670acf5f19ac.md) | 54 | `result-track:ce47a629b5a5670acf5f19ac5e2b9a0c755bbf0eba87e2b59d85524738804315` |
| 6 | `theorem` | [IsCofinal.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-mono--924a2173c9bd749b2845017e.md) | 57 | `result-track:924a2173c9bd749b2845017e269f255370ed6e9c9a7c6145f5feeafb2eab3efb` |
| 7 | `theorem` | [IsCofinal.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-univ--fe156e3f9cf28a5dde2a210e.md) | 68 | `result-track:fe156e3f9cf28a5dde2a210efc56057c11ed4bad923254bfb1abbfae9298673a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/instance--79bfe21e9a66012f65f82b28.md) | 71 | `declaration-track:79bfe21e9a66012f65f82b283f500dce3e20bca06ae704fc0221a8bc3553a3b6` |
| 9 | `theorem` | [IsCofinal.image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-image--c97e83d497d78c9bf6d8e29a.md) | 74 | `result-track:c97e83d497d78c9bf6d8e29a1dadc85f8136d9fe8ce9f30c187d5e32d4bd741e` |
| 10 | `theorem` | [IsCofinal.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-trans--fb26fa3e20c299500edbf69a.md) | 82 | `result-track:fb26fa3e20c299500edbf69a027f6ddc2de1d6544a6c18ca55b1c8a14140e41a` |
| 11 | `theorem` | [GaloisConnection.isCofinal_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/galoisconnection-iscofinal-range--682481aaaf84418170638d27.md) | 86 | `result-track:682481aaaf84418170638d2783af9ac22dece2de57e7ce4ab23ee2d0e268c726` |
| 12 | `theorem` | [GaloisConnection.map_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/galoisconnection-map-iscofinal--6e07d5fef179054c6d82ecb5.md) | 90 | `result-track:6e07d5fef179054c6d82ecb57a12cd97d1398c341e8ddab771f73ba2185610ab` |
| 13 | `theorem` | [OrderIso.map_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/orderiso-map-iscofinal--276667645a21a3a6f45a7291.md) | 97 | `result-track:276667645a21a3a6f45a7291b897ecc93c49fb9a5f40db6d6b8d2778cb2c8d93` |
| 14 | `theorem` | [OrderIso.map_isCofinal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/orderiso-map-iscofinal-iff--bc2edf8e0c10f789f3541e59.md) | 101 | `result-track:bc2edf8e0c10f789f3541e5955393a203beab1c070dbe2bafbcb95c76f65a1d2` |
| 15 | `theorem` | [isCofinal_iff_iUnion_Iic_eq_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-iff-iunion-iic-eq-univ--95865e67a81d6595359301c0.md) | 107 | `result-track:95865e67a81d6595359301c06bfe1d5d40b64234931a62f5042ff70795506e32` |
| 16 | `theorem` | [isCofinal_iff_iUnion_Iio_eq_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-iff-iunion-iio-eq-univ--dee40f91698b6a80e65363ea.md) | 111 | `result-track:dee40f91698b6a80e65363ea6725890cab50cb7acddda301c371cf640c50642d` |
| 17 | `theorem` | [IsCofinal.mem_of_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-mem-of-ismax--2eff9bb115f8e14df439e0d0.md) | 129 | `result-track:2eff9bb115f8e14df439e0d09feae2e739d34e14507a387ff409db0690905b4f` |
| 18 | `theorem` | [IsCofinal.top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-top-mem--cc49d77ba3cbb5a7126426e8.md) | 133 | `result-track:cc49d77ba3cbb5a7126426e8a10b4257b25106f48bce0ec94578d3bd1a8755ac` |
| 19 | `theorem` | [isCofinal_iff_top_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-iff-top-mem--233e8d69971ab6a21d53bc5e.md) | 137 | `result-track:233e8d69971ab6a21d53bc5e72981a2a01a2b5be443e7bb46f9463160969b936` |
| 20 | `theorem` | [not_isCofinal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/not-iscofinal-iff--0991e4e2f2c20918a873f338.md) | 145 | `result-track:0991e4e2f2c20918a873f3383241a284dacafe295ca8fb54501c981ac37068b1` |
| 21 | `theorem` | [BddAbove.of_not_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/bddabove-of-not-iscofinal--65f0db0fc30d30ae4ea1e6ea.md) | 148 | `result-track:65f0db0fc30d30ae4ea1e6ea98d939d9250b212e7f3356eb3307cfec8ab7692d` |
| 22 | `theorem` | [IsCofinal.of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-of-not-bddabove--41a22d6f48ba92d9ffcf137f.md) | 153 | `result-track:41a22d6f48ba92d9ffcf137ffb70f166182fb0c987c23e0d8e1893f24ff4f743` |
| 23 | `theorem` | [not_isCofinal_iff_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/not-iscofinal-iff-bddabove--e1a490e8ff79463af928567d.md) | 158 | `result-track:e1a490e8ff79463af928567dc3d1c0cce35adee7809466ce1d01beb28a67cd83` |
| 24 | `theorem` | [not_bddAbove_iff_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/not-bddabove-iff-iscofinal--bf50910e4a874ac4c1a9b068.md) | 166 | `result-track:bf50910e4a874ac4c1a9b068d281ba67eda189c6d9bb5e543c98eee3cc79cd70` |
| 25 | `theorem` | [isCofinal_setOfPred_imp_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-setofpred-imp-lt--9b7d2dbf463611763446189d.md) | 171 | `result-track:9b7d2dbf463611763446189d5754bdba960b86558ccaf72bb50a22c434cf7612` |
| 26 | `theorem` | [isCofinal_range_of_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/declarations/iscofinal-range-of-strictmono--7dc3c59949b1892626b3078a.md) | 181 | `result-track:7dc3c59949b1892626b3078ab0fcd596f337b85cb6ed84f9bff24e552cbe0785` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
