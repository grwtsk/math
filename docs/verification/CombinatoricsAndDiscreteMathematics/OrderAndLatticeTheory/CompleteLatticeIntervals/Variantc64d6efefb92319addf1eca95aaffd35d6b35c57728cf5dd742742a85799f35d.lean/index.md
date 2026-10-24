# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLatticeIntervals.Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad090e9032aeb6c5f3d61482c33dc83e414e919",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad090e9032aeb6c5f3d61482c33dc83e414e919`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subsetsupset--ab588aca94ec79d321029d5c.md) | 45 | `declaration-track:ab588aca94ec79d321029d5c95b4d694e5d373ec93506871a45c33606ec541ab` |
| 2 | `theorem` | [subset_sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-ssup-def--27ecaa1b7df390bd21e27438.md) | 55 | `result-track:27ecaa1b7df390bd21e274386508ecf47937c0a805f405861ecb1786debecc01` |
| 3 | `theorem` | [subset_sSup_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-ssup-of-within--cccee768530b86d1966ee98b.md) | 62 | `result-track:cccee768530b86d1966ee98bb7e3d8332bee03f9c1192818a3241a8ef70cd149` |
| 4 | `theorem` | [subset_sSup_emptyset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-ssup-emptyset--236f6232e008614ed9ef5af5.md) | 66 | `result-track:236f6232e008614ed9ef5af587577225dc460a6c7a27d8b22c7c877ae5716586` |
| 5 | `theorem` | [subset_sSup_of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-ssup-of-not-bddabove--3e337bb228656a9840cc9c34.md) | 70 | `result-track:3e337bb228656a9840cc9c345fbf9c3be94ea43318693d8876bf8c467411628c` |
| 6 | `def` | [subsetInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subsetinfset--a74323d620a3e55b515d6594.md) | 84 | `declaration-track:a74323d620a3e55b515d6594c81c62824891b14739e1e371c37652e0c911c714` |
| 7 | `theorem` | [subset_sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-sinf-def--dd79e7bde4126b89de03491e.md) | 94 | `result-track:dd79e7bde4126b89de03491e8daa79a0e5f58ab70811ad24f570e23dbee39213` |
| 8 | `theorem` | [subset_sInf_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-sinf-of-within--80d0bbe627b35d33d06c9ea1.md) | 101 | `result-track:80d0bbe627b35d33d06c9ea1d0c112874d14fd0fbdea3ca9fa2c73dcbd1685f1` |
| 9 | `theorem` | [subset_sInf_emptyset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-sinf-emptyset--0141678f9734a3e73133cc72.md) | 105 | `result-track:0141678f9734a3e73133cc723fd19d2121d4a4309d053713cff769145671605b` |
| 10 | `theorem` | [subset_sInf_of_not_bddBelow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subset-sinf-of-not-bddbelow--30e3189644571bd477997939.md) | 109 | `result-track:30e3189644571bd477997939eb9bd9d9e980a90849aa74c779dec16f1aa7380b` |
| 11 | `abbrev` | [subsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/subsetconditionallycompletelinearorder--8ec2e23622aa0420787d44fd.md) | 127 | `declaration-track:8ec2e23622aa0420787d44fd1e2d16f06e74f1cd3dcaa79a191240efada5f50a` |
| 12 | `theorem` | [sSup_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/ssup-within-of-ordconnected--29b87fa4c4466c4c4f379658.md) | 153 | `result-track:29b87fa4c4466c4c4f37965886e857b5ee5d56fde47da4223941664986716fbd` |
| 13 | `theorem` | [sInf_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/sinf-within-of-ordconnected--0fd96dc06cba5c0afbc00fa7.md) | 163 | `result-track:0fd96dc06cba5c0afbc00fa7c36481145db2df7af9d589110fefd897b733f453` |
| 14 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/ordconnectedsubsetconditionallycompletelinearorder--e51bbab3159fec0c501369ed.md) | 173 | `declaration-track:e51bbab3159fec0c501369edafa8dc52b80e3ab62ac0accce605623774135167` |
| 15 | `instance` | [Set.Icc.completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/set-icc-completelattice--79cb2b045004f9bdcbb66375.md) | 185 | `declaration-track:79cb2b045004f9bdcbb66375c47759968b489f5053e52714d6d1f8f6cf80c7ed` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/instance--bb4c9d88ded7ecea45016600.md) | 218 | `declaration-track:bb4c9d88ded7ecea450166008b9ef39685d7c175d1a95a6ae13861cf64b1e4aa` |
| 17 | `lemma` | [Set.Icc.coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/set-icc-coe-ssup--8e54faa33ed62182a6e9395e.md) | 222 | `result-track:8e54faa33ed62182a6e9395e9ace5662db0152256e0868df1b8b78f5acce5951` |
| 18 | `lemma` | [Set.Icc.coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/set-icc-coe-sinf--756605965e61f2a042f959d0.md) | 227 | `result-track:756605965e61f2a042f959d0fa675521736e7ffcf7dc3177d16e06257b760e10` |
| 19 | `lemma` | [Set.Icc.coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/set-icc-coe-isup--a41a0e7e02d0aadb13b5a2e8.md) | 232 | `result-track:a41a0e7e02d0aadb13b5a2e893600eae93cb0b8166c93ce5f3561682976847f0` |
| 20 | `lemma` | [Set.Icc.coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/set-icc-coe-iinf--8ba1e769881f4337ed5f29f2.md) | 237 | `result-track:8ba1e769881f4337ed5f29f27f6fa02b75f47dbade476328535ebabdab0a7fe4` |
| 21 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/instcompletelattice--e1b3026e29b2e637d42c6b4f.md) | 248 | `declaration-track:e1b3026e29b2e637d42c6b4f6dbacdf1ac120df13f46d860f50cffbd530c2d9a` |
| 22 | `theorem` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-ssup--b32ca71152c60f1e51bd874b.md) | 260 | `result-track:b32ca71152c60f1e51bd874bddf809f836f2141d135e158c7bffa2396ef1d8eb` |
| 23 | `theorem` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-isup--f85ad767b0c5bcb6b26b6886.md) | 262 | `result-track:f85ad767b0c5bcb6b26b688650ef6b566f433a1001525fc82c938b9ef3de7867` |
| 24 | `theorem` | [coe_biSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-bisup--3296ff37ed4192f01bbb50ea.md) | 265 | `result-track:3296ff37ed4192f01bbb50eaf7723a149af524b953377d10ab31734fc5f32e2c` |
| 25 | `theorem` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-sinf--13cfda5634954810285b318e.md) | 267 | `result-track:13cfda5634954810285b318e40df1517cd155648588d575f2715d4692f855806` |
| 26 | `theorem` | [coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-iinf--6222760ee82923f3b24c5934.md) | 269 | `result-track:6222760ee82923f3b24c593487c5d44f5b672c0cac8a0acfc1617bab53646181` |
| 27 | `theorem` | [coe_biInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc64d6efefb92319addf1eca95aaffd35d6b35c57728cf5dd742742a85799f35d.lean/declarations/coe-biinf--865f6324334c9564d6a654ab.md) | 272 | `result-track:865f6324334c9564d6a654ab3864e3a0fd8fd4b80e59f4d622673fda675af9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
